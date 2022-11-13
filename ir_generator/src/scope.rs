use super::codegen::CodeGen;
use super::expression::{read_signal_from_struct, resolve_expr, write_signal_to_struct};
use super::namer::name_template_fn;

use inkwell::basic_block::BasicBlock;
use inkwell::values::{
    BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, IntValue, PointerValue,
};
use inkwell::AddressSpace;

use inkwell::types::{BasicType, BasicTypeEnum, IntType};

use program_structure::ast::{Access, Expression, Statement};
use std::collections::HashMap;
use std::usize;

pub trait ScopeTrait<'ctx> {
    fn add_var(&mut self, name: &String);
    fn add_comp_var(&mut self, name: &String);
    fn is_comp_var(&self, name: &String) -> bool;
    fn get_known_comp(&self, name: &String) -> &String;
    fn set_known_comp(&mut self, name: &String, comp: &String);
    fn is_known_comp(&self, comp_or_fn: &String) -> bool;
    fn add_dependence(&mut self, v: &String);
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
    fn bind_variable(&mut self, codegen: &CodeGen<'ctx>, name: &String, val: BasicValueEnum<'ctx>);
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

    pub val_ty: IntType<'ctx>,

    // Stage 0: Resolve Dependences.
    pub dependences: Vec<String>,

    //Stage 1: Type inferrence.
    pub vars: Vec<String>,
    pub var2ty: HashMap<String, BasicTypeEnum<'ctx>>,
    pub var2comp: HashMap<String, String>,

    // Stage 2: Build Function.
    pub main_fn_val: Option<FunctionValue<'ctx>>,
    // Stage 3: Build Instructions.
    pub var2val: HashMap<String, BasicValueEnum<'ctx>>,
    pub current_exit_block: Option<BasicBlock<'ctx>>,
}

impl<'ctx> ScopeTrait<'ctx> for Scope<'ctx> {
    fn add_var(&mut self, name: &String) {
        self.vars.push(name.clone());
    }

    fn add_comp_var(&mut self, name: &String) {
        if !self.var2comp.contains_key(name) {
            self.var2comp.insert(name.clone(), "unknown".to_string());
        }
    }

    fn is_comp_var(&self, name: &String) -> bool {
        return self.var2comp.contains_key(name);
    }

    fn get_known_comp(&self, name: &String) -> &String {
        return &self.var2comp[name];
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
        self.var2ty.insert(name.clone(), ty);
    }

    fn has_var_ty(&self, name: &String) -> bool {
        return self.var2ty.contains_key(name);
    }

    fn get_var(
        &self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
    ) -> BasicValueEnum<'ctx> {
        let val_or_ptr = *self.var2val.get(name).unwrap();
        if access.len() == 0 {
            return val_or_ptr;
        } else {
            let ptr = val_or_ptr.into_pointer_value();
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
                        let arr_ptr =
                            read_signal_from_struct(codegen, comp, &signal_name, ptr, false);
                        return self.get_from_array(codegen, &access[1..], arr_ptr, name);
                    } else if idx == access.len() - 1 {
                        let struct_ptr = self
                            .get_from_array(
                                codegen,
                                &access[0..idx],
                                ptr.as_basic_value_enum(),
                                name,
                            )
                            .into_pointer_value();
                        return read_signal_from_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            false,
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
                        let arr_ptr =
                            read_signal_from_struct(codegen, comp, &signal_name, struct_ptr, false)
                                .into_pointer_value();
                        return self.get_from_array(
                            codegen,
                            &access[idx + 1..],
                            arr_ptr.as_basic_value_enum(),
                            name,
                        );
                    }
                }
                None => {
                    return self.get_from_array(codegen, access, ptr.as_basic_value_enum(), name);
                }
            }
        }
    }

    fn set_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
        value: BasicValueEnum<'ctx>,
    ) {
        if access.len() == 0 {
            match value {
                BasicValueEnum::ArrayValue(array_value) => {
                    let ptr = self.var2val.get(name).unwrap().into_pointer_value();
                    codegen.builder.build_store(ptr, array_value);
                }
                _ => {
                    self.var2val
                        .insert(name.clone(), value.as_basic_value_enum());
                }
            }
            if !self.vars.contains(&name) {
                self.vars.push(name.clone());
            }
        } else {
            let ptr = self.var2val.get(name).unwrap();
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
                        let strt_ptr = ptr.into_pointer_value();
                        if access.len() == 1 {
                            write_signal_to_struct(
                                codegen,
                                comp,
                                &signal_name,
                                strt_ptr,
                                false,
                                value,
                            );
                        } else {
                            let arr_ptr = read_signal_from_struct(
                                codegen,
                                comp,
                                &signal_name,
                                strt_ptr,
                                false,
                            )
                            .into_pointer_value();
                            self.set_to_array(codegen, &access[1..], arr_ptr, name, value);
                        }
                    } else if idx == access.len() - 1 {
                        let struct_ptr = self
                            .get_from_array(codegen, &access[0..idx], *ptr, name)
                            .into_pointer_value();
                        write_signal_to_struct(
                            codegen,
                            comp,
                            &signal_name,
                            struct_ptr,
                            false,
                            value,
                        );
                    } else {
                        let struct_ptr = self
                            .get_from_array(codegen, &access[0..idx], *ptr, name)
                            .into_pointer_value();
                        let arr_ptr =
                            read_signal_from_struct(codegen, comp, &signal_name, struct_ptr, false)
                                .into_pointer_value();
                        self.set_to_array(codegen, &access[idx + 1..], arr_ptr, name, value);
                    }
                }
                None => {
                    self.set_to_array(codegen, access, ptr.into_pointer_value(), name, value);
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
        return codegen.build_array_getter(arr_ptr.into_pointer_value(), &indexes[0..], name);
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

    fn bind_variable(&mut self, codegen: &CodeGen<'ctx>, name: &String, val: BasicValueEnum<'ctx>) {
        let ty = self.get_var_ty(name);
        match ty {
            BasicTypeEnum::IntType(..) => {
                self.var2val.insert(name.clone(), val);
            }
            BasicTypeEnum::PointerType(..) => {
                self.var2val.insert(name.clone(), val);
            }
            BasicTypeEnum::ArrayType(arr_ty) => {
                let ptr = codegen.builder.build_alloca(ty.clone(), name);
                _ = codegen.builder.build_memcpy(
                    ptr,
                    4,
                    val.into_pointer_value(),
                    4,
                    arr_ty.size_of().unwrap(),
                );
                self.var2val.insert(name.clone(), ptr.as_basic_value_enum());
            }
            _ => {
                println!("Error: Try to bind datatype that isn't supported.");
                unreachable!();
            }
        }
    }
}
