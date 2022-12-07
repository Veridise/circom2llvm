use crate::codegen::CodeGen;
use crate::expression::{read_signal_from_struct, resolve_expr, write_signal_to_struct};
use crate::namer::name_template_fn;
use crate::type_check::{check_stored_value, check_used_type, check_used_value};
use inkwell::basic_block::BasicBlock;
use inkwell::types::{BasicType, BasicTypeEnum, IntType};
use inkwell::values::{
    BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, IntValue, PointerValue,
};
use inkwell::AddressSpace;
use program_structure::ast::{Access, Expression, Statement};
use std::collections::HashMap;
use std::usize;

pub trait ScopeTrait<'ctx> {
    fn get_name(&self) -> &String;
    fn is_initialized(&self, name: &String) -> bool;
    fn add_comp_var(&mut self, name: &String);
    fn is_comp_var(&self, name: &String) -> bool;
    fn get_known_comp(&self, name: &String) -> &String;
    fn set_known_comp(&mut self, name: &String, comp: &String);
    fn is_known_comp(&self, comp_or_fn: &String) -> bool;
    fn add_dependence(&mut self, v: &String);
    fn initial_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        alloca_name: &String,
        ty: &BasicTypeEnum<'ctx>,
        alloca: bool,
    ) -> PointerValue<'ctx>;
    fn get_var(
        &self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
    ) -> BasicValueEnum<'ctx>;
    fn set_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
        value: BasicValueEnum<'ctx>,
    );
    fn get_from_array(
        &self,
        codegen: &CodeGen<'ctx>,
        access: &[Access],
        arr_ptr: BasicValueEnum<'ctx>,
        name: &str,
    ) -> BasicValueEnum<'ctx>;
    fn set_to_array(
        &self,
        codegen: &CodeGen<'ctx>,
        access: &[Access],
        arr_ptr: PointerValue<'ctx>,
        name: &str,
        value: BasicValueEnum<'ctx>,
    );
    fn get_var_ty(&self, name: &String) -> BasicTypeEnum<'ctx>;
    fn get_var_ty_as_ptr(&self, name: &String) -> BasicTypeEnum<'ctx>;
    fn set_var_ty(&mut self, name: &String, ty: BasicTypeEnum<'ctx>);
    fn has_var_ty(&self, name: &String) -> bool;
    fn get_var_dims(&self, name: &String) -> Option<&Vec<BasicValueEnum<'ctx>>>;
    fn set_var_dims(&mut self, name: &String, dims: Vec<BasicValueEnum<'ctx>>);
    fn get_main_fn(&self) -> FunctionValue<'ctx>;
    fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>);
    fn get_current_exit_block(&self) -> BasicBlock<'ctx>;
    fn set_current_exit_block(&mut self, codegen: &CodeGen<'ctx>, bb: BasicBlock<'ctx>);
    fn call(
        &self,
        codegen: &CodeGen<'ctx>,
        id: &String,
        args: &Vec<Expression>,
    ) -> BasicValueEnum<'ctx>;
    fn match_fn_val(&self, codegen: &CodeGen<'ctx>, id: &String) -> FunctionValue<'ctx>;
    fn deps(&self) -> &Vec<String>;
    fn bind_argument(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        alloca_name: &String,
        val: BasicValueEnum<'ctx>,
    ) -> PointerValue<'ctx>;
}

pub trait CodegenStagesTrait<'ctx> {
    fn resolve_dependences(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement);
    fn infer_types(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement);
    fn build_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement);
    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement);
}

pub struct Scope<'ctx> {
    pub name: String,
    pub args: Vec<String>,
    pub arg_tys: Vec<BasicTypeEnum<'ctx>>,

    pub val_ty: IntType<'ctx>,

    // Stage 0: Resolve Dependences.
    pub dependences: Vec<String>,

    //Stage 1: Type inferrence.
    pub var2ty: HashMap<String, BasicTypeEnum<'ctx>>,
    pub var2comp: HashMap<String, String>,

    // Stage 2: Build Function.
    pub main_fn_val: Option<FunctionValue<'ctx>>,
    // Stage 3: Build Instructions.
    pub var2ptr: HashMap<String, PointerValue<'ctx>>,
    pub current_exit_block: Option<BasicBlock<'ctx>>,

    pub var2dims: HashMap<String, Vec<BasicValueEnum<'ctx>>>,
}

impl<'ctx> ScopeTrait<'ctx> for Scope<'ctx> {
    fn get_name(&self) -> &String {
        return &self.name;
    }

    fn is_initialized(&self, name: &String) -> bool {
        return self.var2ptr.contains_key(name);
    }
    fn add_comp_var(&mut self, name: &String) {
        if !self.var2comp.contains_key(name) {
            // Shortly use unknown, it will update by set_known_comp.
            self.var2comp.insert(name.clone(), "unknown".to_string());
        }
    }

    fn is_comp_var(&self, name: &String) -> bool {
        return self.var2comp.contains_key(name);
    }

    fn get_known_comp(&self, name: &String) -> &String {
        if name == &self.name {
            return &self.name;
        }
        match self.var2comp.get(name) {
            None => {
                println!("Unknown component of the variable: {}", name);
                unreachable!();
            }
            Some(comp_name) => comp_name,
        }
    }

    fn set_known_comp(&mut self, var: &String, comp: &String) {
        self.var2comp.insert(var.clone(), comp.clone());
    }

    fn is_known_comp(&self, comp_or_fn: &String) -> bool {
        for (_, v) in &self.var2comp {
            if v == comp_or_fn {
                return true;
            }
        }
        return false;
    }

    fn add_dependence(&mut self, name: &String) {
        if !self.dependences.contains(name) {
            self.dependences.push(name.clone());
        }
    }

    fn get_var_ty(&self, name: &String) -> BasicTypeEnum<'ctx> {
        let res_op = self.var2ty.get(name);
        return match res_op {
            Some(res) => res.clone(),
            None => self.val_ty.as_basic_type_enum(),
        };
    }

    fn get_var_ty_as_ptr(&self, name: &String) -> BasicTypeEnum<'ctx> {
        let ty = self.get_var_ty(name);
        match ty {
            BasicTypeEnum::ArrayType(arr_ty) => {
                return arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
            }
            BasicTypeEnum::StructType(strt_ty) => {
                return strt_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
            }
            _ => {
                return ty.clone();
            }
        }
    }

    fn set_var_ty(&mut self, name: &String, ty: BasicTypeEnum<'ctx>) {
        if !self.var2ty.contains_key(name) {
            self.var2ty.insert(name.clone(), ty);
        } else {
            if *self.var2ty.get(name).unwrap() != ty {
                println!("Debug: Different type!");
            }
        }
    }

    fn has_var_ty(&self, name: &String) -> bool {
        return self.var2ty.contains_key(name);
    }

    fn get_var_dims(&self, name: &String) -> Option<&Vec<BasicValueEnum<'ctx>>> {
        return self.var2dims.get(name);
    }

    fn set_var_dims(&mut self, name: &String, dims: Vec<BasicValueEnum<'ctx>>) {
        if dims.len() == 0 {
            return;
        }
        self.var2dims.insert(name.clone(), dims);
    }

    fn initial_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        alloca_name: &String,
        ty: &BasicTypeEnum<'ctx>,
        alloca: bool,
    ) -> PointerValue<'ctx> {
        let used_ty;
        if ty.is_array_type() || ty.is_struct_type() {
            used_ty = ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
        } else {
            used_ty = *ty;
        }
        check_used_type(&used_ty);
        let ptr = codegen.builder.build_alloca(used_ty, &alloca_name);
        if ty.is_array_type() {
            let arr_ptr;
            if alloca {
                arr_ptr = codegen.builder.build_alloca(ty.as_basic_type_enum(), name);
            } else {
                arr_ptr = codegen
                    .builder
                    .build_malloc(ty.as_basic_type_enum(), name)
                    .unwrap();
            }
            codegen.builder.build_store(ptr, arr_ptr);
        }
        if ty.is_int_type() {
            let init = codegen.build_initial_var(alloca_name);
            codegen.builder.build_store(ptr, init);
        }
        check_stored_value(&ptr);
        self.var2ptr.insert(name.to_string(), ptr);
        return ptr;
    }

    fn get_var(
        &self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
    ) -> BasicValueEnum<'ctx> {
        let ptr = self.var2ptr.get(name).unwrap();
        let val = codegen.builder.build_load(ptr.clone(), name);
        let res;
        if access.len() == 0 {
            res = val;
        } else {
            let mut idx_comp_access: Option<usize> = None;
            let mut signal_name = "".to_string();
            for (idx, a) in access.iter().enumerate() {
                match a {
                    Access::ArrayAccess(..) => (),
                    Access::ComponentAccess(a) => {
                        idx_comp_access = Some(idx);
                        signal_name = a.clone();
                    }
                }
            }
            match idx_comp_access {
                Some(idx) => {
                    let strt_ptr = val.into_pointer_value();
                    let comp = self.get_known_comp(name);
                    if idx == 0 {
                        let arr_ptr = read_signal_from_struct(
                            codegen,
                            comp,
                            &signal_name,
                            strt_ptr,
                            comp == self.get_name(),
                        );
                        return self.get_from_array(codegen, &access[1..], arr_ptr, name);
                    } else if idx == access.len() - 1 {
                        let arr_ptr = val;
                        let struct_ptr = self
                            .get_from_array(codegen, &access[0..idx], arr_ptr, name)
                            .into_pointer_value();
                        res = read_signal_from_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            comp == self.get_name(),
                        );
                    } else {
                        let arr_ptr = val;
                        let struct_ptr = self
                            .get_from_array(codegen, &access[0..idx], arr_ptr, name)
                            .into_pointer_value();
                        let arr_ptr = read_signal_from_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            comp == self.get_name(),
                        )
                        .into_pointer_value();
                        res = self.get_from_array(
                            codegen,
                            &access[idx + 1..],
                            arr_ptr.as_basic_value_enum(),
                            name,
                        );
                    }
                }
                None => {
                    res = self.get_from_array(codegen, access, val, name);
                }
            }
        }
        check_used_value(&res);
        return res;
    }

    fn set_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
        value: BasicValueEnum<'ctx>,
    ) {
        check_used_value(&value);
        if access.len() == 0 {
            let ptr = self.var2ptr.get(name).unwrap();
            match value {
                BasicValueEnum::IntValue(..) => {
                    codegen.builder.build_store(*ptr, value);
                }
                BasicValueEnum::PointerValue(ptr_val) => {
                    let src_ty = ptr_val.get_type().get_element_type();
                    if src_ty.is_struct_type() {
                        codegen.builder.build_store(*ptr, value);
                    } else if src_ty.is_array_type() {
                        let src_arr_ty = src_ty.into_array_type();
                        let dest_arr_ty = ptr
                            .get_type()
                            .get_element_type()
                            .into_pointer_type()
                            .get_element_type()
                            .into_array_type();
                        let src_arr_size = format!("{}", src_arr_ty.size_of().unwrap());
                        let dest_arr_size = format!("{}", dest_arr_ty.size_of().unwrap());
                        if src_arr_size == dest_arr_size {
                            codegen.builder.build_store(*ptr, value);
                        } else {
                            let dest_ptr = unsafe {
                                codegen.builder.build_in_bounds_gep(
                                    *ptr,
                                    &[codegen.const_zero],
                                    "memcpy_ptr",
                                )
                            };
                            _ = codegen.builder.build_memcpy(
                                dest_ptr,
                                4,
                                ptr_val,
                                4,
                                src_arr_ty.size_of().unwrap(),
                            );
                        }
                    } else {
                        println!(
                            "Error: Unsupported used datatype, current is: {}",
                            src_ty.print_to_string()
                        );
                        unreachable!();
                    }
                }
                _ => unreachable!(),
            }
        } else {
            let double_ptr = self.var2ptr.get(name).unwrap();
            let ptr = codegen
                .builder
                .build_load(*double_ptr, &name)
                .into_pointer_value();
            let mut idx_comp_access: Option<usize> = None;
            let mut signal_name = "".to_string();
            for (idx, a) in access.iter().enumerate() {
                match a {
                    Access::ArrayAccess(..) => (),
                    Access::ComponentAccess(a) => {
                        idx_comp_access = Some(idx);
                        signal_name = a.clone();
                    }
                }
            }
            match idx_comp_access {
                Some(idx) => {
                    let comp = self.get_known_comp(name);
                    if idx == 0 {
                        let strt_ptr = ptr;
                        if access.len() == 1 {
                            write_signal_to_struct(
                                codegen,
                                comp,
                                &signal_name,
                                strt_ptr,
                                comp == self.get_name(),
                                value,
                            );
                        } else {
                            let arr_ptr = read_signal_from_struct(
                                codegen,
                                comp,
                                &signal_name,
                                strt_ptr,
                                comp == self.get_name(),
                            )
                            .into_pointer_value();
                            self.set_to_array(codegen, &access[1..], arr_ptr, name, value);
                        }
                    } else if idx == access.len() - 1 {
                        let struct_ptr = self
                            .get_from_array(
                                codegen,
                                &access[0..idx],
                                ptr.as_basic_value_enum(),
                                name,
                            )
                            .into_pointer_value();
                        write_signal_to_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            comp == self.get_name(),
                            value,
                        );
                    } else {
                        let struct_ptr = self
                            .get_from_array(
                                codegen,
                                &access[0..idx],
                                ptr.as_basic_value_enum(),
                                name,
                            )
                            .into_pointer_value();
                        let arr_ptr = read_signal_from_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            comp == self.get_name(),
                        )
                        .into_pointer_value();
                        self.set_to_array(codegen, &access[idx + 1..], arr_ptr, name, value);
                    }
                }
                None => {
                    self.set_to_array(codegen, access, ptr, name, value);
                }
            }
        }
    }

    fn get_from_array(
        &self,
        codegen: &CodeGen<'ctx>,
        access: &[Access],
        arr_ptr: BasicValueEnum<'ctx>,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        if access.len() == 0 {
            return arr_ptr;
        }
        let mut indexes: Vec<IntValue<'ctx>> = access
            .iter()
            .map(|s| match s {
                Access::ComponentAccess(_) => unreachable!(),
                Access::ArrayAccess(expr) => resolve_expr(codegen, &expr, self).into_int_value(),
            })
            .collect();
        indexes.insert(0, codegen.const_zero);
        let mut res = codegen.build_array_getter(arr_ptr.into_pointer_value(), &indexes[0..], name);
        match res {
            BasicValueEnum::ArrayValue(arr_val) => {
                let ptr = codegen
                    .builder
                    .build_alloca(arr_val.get_type(), "spice_inline_array");
                codegen.builder.build_store(ptr, arr_val);
                res = ptr.as_basic_value_enum();
            }
            _ => (),
        }
        check_used_value(&res);
        return res;
    }

    fn set_to_array(
        &self,
        codegen: &CodeGen<'ctx>,
        access: &[Access],
        arr_ptr: PointerValue<'ctx>,
        name: &str,
        value: BasicValueEnum<'ctx>,
    ) {
        if access.len() == 0 {
            return;
        }
        let mut indexes: Vec<IntValue<'ctx>> = access
            .iter()
            .map(|s| match s {
                Access::ArrayAccess(expr) => resolve_expr(codegen, &expr, self).into_int_value(),
                Access::ComponentAccess(..) => unreachable!(),
            })
            .collect();
        indexes.insert(0, codegen.const_zero);
        if value.is_pointer_value() {
            let strt_ptr = value.into_pointer_value();
            if strt_ptr.get_type().get_element_type().is_struct_type() {
                let real_struct_ptr = codegen.get_real_strt_ptr(strt_ptr, &self.name);
                codegen.build_array_setter(arr_ptr, &indexes[0..], name, real_struct_ptr);
                return;
            }
        }
        codegen.build_array_setter(arr_ptr, &indexes[0..], name, value);
    }

    fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.main_fn_val.unwrap();
    }

    fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>) {
        self.main_fn_val = Some(fn_val);
    }

    fn get_current_exit_block(&self) -> BasicBlock<'ctx> {
        return self.current_exit_block.unwrap();
    }

    fn set_current_exit_block(&mut self, codegen: &CodeGen<'ctx>, bb: BasicBlock<'ctx>) {
        self.current_exit_block = Some(bb);
        codegen.builder.position_at_end(bb);
    }

    fn call(
        &self,
        codegen: &CodeGen<'ctx>,
        id: &String,
        args: &Vec<Expression>,
    ) -> BasicValueEnum<'ctx> {
        let called_fn = self.match_fn_val(codegen, id);
        let arg_vals: Vec<BasicMetadataValueEnum<'ctx>> = args
            .iter()
            .map(|a| {
                let basic_val = resolve_expr(codegen, a, self);
                return BasicMetadataValueEnum::from(basic_val);
            })
            .collect();
        return codegen
            .builder
            .build_call(called_fn, &arg_vals, "call")
            .try_as_basic_value()
            .left()
            .unwrap();
    }

    fn match_fn_val(&self, codegen: &CodeGen<'ctx>, id: &String) -> FunctionValue<'ctx> {
        let fn_name: String;
        if self.is_known_comp(id) {
            fn_name = name_template_fn(id, "build");
        } else {
            fn_name = id.to_string();
        }
        return codegen.module.get_function(&fn_name).unwrap();
    }

    fn deps(&self) -> &Vec<String> {
        return &self.dependences;
    }

    fn bind_argument(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        alloca_name: &String,
        val: BasicValueEnum<'ctx>,
    ) -> PointerValue<'ctx> {
        check_used_value(&val);
        let ptr = codegen.builder.build_alloca(val.get_type(), &alloca_name);
        check_stored_value(&ptr);
        self.var2ptr.insert(name.clone(), ptr);
        self.set_var(codegen, name, &Vec::new(), val);
        return ptr;
    }
}
