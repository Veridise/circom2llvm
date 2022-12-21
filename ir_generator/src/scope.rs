use crate::codegen::CodeGen;
use crate::environment::GlobalInformation;
use crate::expression_codegen::resolve_expr;
use crate::expression_static::ArgTable;
use crate::namer::{name_exit_block, name_readwrite_var, name_template_fn};
use crate::scope_information::ScopeInformation;
use crate::type_check::{
    check_stored_value, check_used_type, check_used_value, stored_type2used_type,
};
use inkwell::basic_block::BasicBlock;
use inkwell::types::{BasicType, BasicTypeEnum};
use inkwell::values::{BasicValueEnum, FunctionValue, IntValue, PointerValue};
use inkwell::AddressSpace;
use program_structure::ast::{Access, Expression};
use std::collections::HashMap;

pub struct Scope<'ctx> {
    pub info: ScopeInformation<'ctx>,
    pub fn_val: Option<FunctionValue<'ctx>>,
    pub instantiation: ArgTable,

    signature: String,

    current_exit_block: Option<BasicBlock<'ctx>>,

    arg2val: HashMap<String, BasicValueEnum<'ctx>>,

    var2ptr: HashMap<String, PointerValue<'ctx>>,
    var2dims: HashMap<String, Vec<IntValue<'ctx>>>,
}

impl<'ctx> Scope<'ctx> {
    pub fn get_name(&self) -> &String {
        return self.info.get_name();
    }

    pub fn get_signature(&self) -> &String {
        &self.signature
    }

    pub fn canonicalize_fn_name(&self, fn_name: &String) -> String {
        let res = if self.info.is_component(fn_name) {
            name_template_fn(fn_name, "build")
        } else {
            fn_name.clone()
        };
        res
    }

    pub fn initial_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        alloca_name: &String,
        ty: &BasicTypeEnum<'ctx>,
        alloca: bool,
    ) -> PointerValue<'ctx> {
        let used_ty = stored_type2used_type(ty);
        check_used_type(&used_ty);
        let ptr = codegen.build_alloca(used_ty, alloca_name);
        if ty.is_array_type() {
            let basic_ty = ty.as_basic_type_enum();
            let arr_ptr = if alloca {
                codegen.build_alloca(basic_ty, name)
            } else {
                codegen.builder.build_malloc(basic_ty, name).unwrap()
            };
            codegen.builder.build_store(ptr, arr_ptr);
        }
        check_stored_value(&ptr);
        self.var2ptr.insert(name.clone(), ptr);
        return ptr;
    }

    pub fn get_var(
        &self,
        env: &GlobalInformation<'ctx>,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
    ) -> BasicValueEnum<'ctx> {
        let val: BasicValueEnum;
        if self.info.is_arg(name) {
            val = self.arg2val[name];
        } else {
            let ptr = self.var2ptr[name];
            val = codegen.builder.build_load(ptr, name);
        }
        let mut res: BasicValueEnum = val;
        for a in access {
            match a {
                Access::ArrayAccess(expr) => {
                    let gep = self.build_array_gep(
                        env,
                        codegen,
                        expr,
                        res.into_pointer_value(),
                        "array_access",
                    );
                    res = codegen.builder.build_load(gep, "load");
                }
                Access::ComponentAccess(signal) => {
                    let templ_name = self.info.get_component_name(name);
                    let gep = self.build_struct_gep(
                        env,
                        codegen,
                        templ_name,
                        signal,
                        res.into_pointer_value(),
                        true,
                        false,
                    );
                    res = codegen.builder.build_load(gep, "load");
                }
            }
        }
        check_used_value(&res);
        return res;
    }

    pub fn set_var(
        &mut self,
        env: &GlobalInformation<'ctx>,
        codegen: &CodeGen<'ctx>,
        name: &String,
        access: &Vec<Access>,
        value: BasicValueEnum<'ctx>,
    ) {
        check_used_value(&value);
        let mut ptr = self.var2ptr[name];
        if access.len() == 0 {
            codegen.builder.build_store(ptr, value);
        } else {
            ptr = codegen.builder.build_load(ptr, name).into_pointer_value();
            for a in access {
                match a {
                    Access::ArrayAccess(expr) => {
                        ptr = self.build_array_gep(env, codegen, expr, ptr, "array_access");
                    }
                    Access::ComponentAccess(signal) => {
                        let templ_name = self.info.get_component_name(name);
                        ptr = self.build_struct_gep(env, codegen, templ_name, signal, ptr, false, false);
                    }
                }
            }
            codegen.builder.build_store(ptr, value);
        }
    }

    pub fn build_array_gep(
        &self,
        env: &GlobalInformation<'ctx>,
        codegen: &CodeGen<'ctx>,
        access_expr: &Expression,
        ptr: PointerValue<'ctx>,
        assign_name: &str,
    ) -> PointerValue<'ctx> {
        let indexes = [
            env.const_zero,
            resolve_expr(env, codegen, self, access_expr).into_int_value(),
        ];
        return unsafe {
            codegen
                .builder
                .build_in_bounds_gep(ptr, &indexes, assign_name)
        };
    }

    pub fn build_struct_gep(
        &self,
        env: &GlobalInformation<'ctx>,
        codegen: &CodeGen<'ctx>,
        templ_name: &String,
        signal_name: &String,
        ptr: PointerValue<'ctx>,
        is_read: bool,
        is_inner: bool,
    ) -> PointerValue<'ctx> {
        let template_info = env.get_template_info(templ_name);
        let (index, var_ty) = template_info.get_signal_info(signal_name);
        let assign_name =
            name_readwrite_var(templ_name, is_read, is_inner, signal_name, var_ty, false);
        let real_struct_ptr = self.build_struct_ptr_cast(env, codegen, templ_name, ptr);
        let res = codegen
            .builder
            .build_struct_gep(real_struct_ptr, index, &assign_name)
            .unwrap();
        res
    }

    pub fn build_struct_ptr_cast(
        &self,
        env: &GlobalInformation<'ctx>,
        codegen: &CodeGen<'ctx>,
        templ_name: &String,
        struct_ptr: PointerValue<'ctx>,
    ) -> PointerValue<'ctx> {
        let strt_ty = struct_ptr.get_type().get_element_type().into_struct_type();
        let real_struct_ptr;
        if strt_ty.count_fields() == 0 {
            let real_strt_ty = env.get_scope_ret_ty(templ_name);
            real_struct_ptr = codegen.builder.build_pointer_cast(
                struct_ptr,
                real_strt_ty.ptr_type(AddressSpace::Generic),
                "ptr_cast",
            );
        } else {
            real_struct_ptr = struct_ptr;
        }
        return real_struct_ptr;
    }

    pub fn set_arg_val(&mut self, arg_name: &String, value: &BasicValueEnum<'ctx>) {
        self.arg2val.insert(arg_name.clone(), value.clone());
    }

    pub fn get_var_dims(&self, name: &String) -> Option<&Vec<IntValue<'ctx>>> {
        return self.var2dims.get(name);
    }

    pub fn set_var_dims(&mut self, name: &String, dims: Vec<IntValue<'ctx>>) {
        if dims.len() == 0 {
            return;
        }
        self.var2dims.insert(name.clone(), dims);
    }

    pub fn build_exit(&self, codegen: &CodeGen<'ctx>) {
        let current_bb = codegen.builder.get_insert_block().unwrap();
        let fn_val = self.get_main_fn();

        let exit_bb = codegen
            .context
            .append_basic_block(fn_val, &name_exit_block());
        codegen.build_block_transferring(current_bb, exit_bb);

        for (name, ptr) in &self.var2ptr {
            let dims_op = self.get_var_dims(name);
            match dims_op {
                Some(dims) => {
                    codegen.build_arraydim(ptr, &dims);
                }
                None => (),
            }
        }
    }

    pub fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.fn_val.unwrap();
    }

    pub fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>) {
        self.fn_val = Some(fn_val);
    }

    pub fn get_current_exit_block(&self) -> BasicBlock<'ctx> {
        return self.current_exit_block.unwrap();
    }

    pub fn set_current_exit_block(&mut self, codegen: &CodeGen<'ctx>, bb: BasicBlock<'ctx>) {
        self.current_exit_block = Some(bb);
        codegen.builder.position_at_end(bb);
    }
}

pub fn init_scope<'ctx>(info: ScopeInformation<'ctx>, instantiation: ArgTable) -> Scope<'ctx> {
    let signature = info.gen_signature(&instantiation);
    return Scope {
        info,
        instantiation,
        signature,

        fn_val: None,
        current_exit_block: None,

        arg2val: HashMap::new(),
        var2ptr: HashMap::new(),
        var2dims: HashMap::new(),
    };
}
