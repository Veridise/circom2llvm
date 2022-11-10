use super::codegen::CodeGen;
use super::expression::{read_signal_from_struct, resolve_expr, write_signal_to_struct};
use super::namer::name_template_fn;

use inkwell::values::{
    BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, IntValue,
};

use inkwell::types::{BasicTypeEnum};

use num_traits::ToPrimitive;
use program_structure::ast::{Access, Expression, Statement};
use std::collections::HashMap;
use std::usize;

pub trait ScopeTrait<'ctx> {
    fn add_var(&mut self, name: &String);
    fn add_dep_component(&mut self, v: &String);
    fn add_dep_function(&mut self, v: &String);
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
    fn get_var_dims_len(&self, name: &String) -> u32;
    fn get_var_dims(&self, name: &String) -> Option<&Vec<u32>>;
    fn set_var_dims(&mut self, name: &String, dims: Vec<u32>);
    fn get_var_ty(&self, name: &String) -> Option<&BasicTypeEnum<'ctx>>;
    fn set_var_ty(&mut self, name: &String, ty: BasicTypeEnum<'ctx>);
    fn get_main_fn(&self) -> FunctionValue<'ctx>;
    fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>);
    fn call(
        &self,
        codegen: &CodeGen<'ctx>,
        id: &String,
        args: &Vec<Expression>,
    ) -> BasicValueEnum<'ctx>;
    fn match_fn_val(&self, codegen: &CodeGen<'ctx>, id: &String) -> FunctionValue<'ctx>;
    fn deps(&self) -> Vec<&String>;
}

pub trait ScopeCodegenTrait<'ctx> {
    fn initial_info(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement);
    fn build_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement);
    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement);
}

pub struct Scope<'ctx> {
    pub name: String,
    pub args: Vec<String>,
    pub vars: Vec<String>,
    pub var2dims: HashMap<String, Vec<u32>>,
    pub var2ty: HashMap<String, BasicTypeEnum<'ctx>>,
    pub var2val: HashMap<String, BasicValueEnum<'ctx>>,
    pub dep_comps: Vec<String>,
    pub dep_fns: Vec<String>,

    pub main_fn_val: Option<FunctionValue<'ctx>>,
}

impl<'ctx> ScopeTrait<'ctx> for Scope<'ctx> {
    fn add_var(&mut self, name: &String) {
        self.vars.push(name.clone());
    }

    fn add_dep_component(&mut self, v: &String) {
        self.dep_comps.push(v.clone());
    }

    fn add_dep_function(&mut self, v: &String) {
        self.dep_fns.push(v.clone());
    }

    fn get_var_dims_len(&self, name: &String) -> u32 {
        let res_op = self.var2dims.get(name);
        return match res_op {
            Some(res) => res.len().to_u32().unwrap(),
            None => 0,
        };
    }

    fn get_var_dims(&self, name: &String) -> Option<&Vec<u32>> {
        return self.var2dims.get(name);
    }

    fn set_var_dims(&mut self, name: &String, mut dims: Vec<u32>) {
        let _name = name.to_string();
        let current_dims_op = self.var2dims.get(name);
        match current_dims_op {
            None => {
                self.var2dims.insert(_name, dims);
            }
            Some(current_dims) => {
                if dims.len() > current_dims.len() {
                    self.var2dims.insert(_name, dims);
                } else if dims.len() == current_dims.len() {
                    let size = dims.len();
                    let mut update = false;
                    for i in 0..size {
                        if dims[i] <= current_dims[i] {
                            dims[i] = current_dims[i]
                        } else {
                            update = true;
                        }
                    }
                    if update {
                        self.var2dims.insert(_name, dims);
                    }
                }
            }
        };
        return;
    }

    fn get_var_ty(&self, name: &String) -> Option<&BasicTypeEnum<'ctx>> {
        return self.var2ty.get(name);
    }

    fn set_var_ty(&mut self, name: &String, ty: BasicTypeEnum<'ctx>) {
        self.var2ty.insert(name.clone(), ty);
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
            // We support 3 cases:
            // 1. Get a signal from a component
            // 2. Get a signal from a component as an array, then get a value from it.
            // 3. Get a value from an array.
            let first_access = &access[0];
            let left_access: usize;
            match first_access {
                Access::ComponentAccess(val) => {
                    if access.len() == 1 {
                        let (inputs, outputs) = codegen.get_input_output_names(name);
                        return read_signal_from_struct(
                            codegen,
                            inputs,
                            outputs,
                            &val,
                            name,
                            val_or_ptr.into_pointer_value(),
                            true,
                        );
                    } else {
                        left_access = 1;
                    }
                }
                Access::ArrayAccess(_) => {
                    left_access = 0;
                }
            };
            let mut indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(_) => unreachable!(),
                    Access::ArrayAccess(expr) => {
                        resolve_expr(codegen, &expr, self).into_int_value()
                    }
                })
                .collect();
            indexes.insert(0, codegen.const_zero);
            return codegen.build_array_getter(
                val_or_ptr.into_pointer_value(),
                &indexes[0..],
                name,
            );
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
                    let ptr_op = self.var2val.get(name);
                    match ptr_op {
                        Some(ptr) => {
                            codegen.builder.build_store(ptr.into_pointer_value(), array_value);
                        },
                        None => {
                            let ptr = codegen.builder.build_alloca(array_value.get_type(), name);
                            codegen.builder.build_store(ptr, array_value);
                            self.var2val.insert(name.clone(), ptr.as_basic_value_enum());
                        }
                    }
                    
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
            // We support 3 cases:
            // 1. Get a signal from a component
            // 2. Get a signal from a component as an array, then get a value from it.
            // 3. Get a value from an array.
            let first_access = &access[0];
            let left_access: usize;
            let ptr = self.var2val.get(name).unwrap().into_pointer_value();
            match first_access {
                Access::ComponentAccess(val) => {
                    if access.len() == 1 {
                        let (inputs, outputs) = codegen.get_input_output_names(name);
                        write_signal_to_struct(
                            codegen, inputs, outputs, name, &val, ptr, false, value,
                        );
                        return;
                    } else {
                        left_access = 1;
                    }
                }
                Access::ArrayAccess(_) => {
                    left_access = 0;
                }
            };
            let mut indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(_) => unreachable!(),
                    Access::ArrayAccess(expr) => {
                        resolve_expr(codegen, &expr, self).into_int_value()
                    }
                })
                .collect();
            indexes.insert(0, codegen.const_zero);
            codegen.build_array_setter(ptr, &indexes[0..], name, value);
        }
    }

    fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.main_fn_val.unwrap();
    }

    fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>) {
        self.main_fn_val = Some(fn_val);
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
        let lower_id = &id.to_lowercase();
        if self.dep_comps.contains(lower_id) {
            fn_name = name_template_fn(&lower_id, "build");
        } else {
            fn_name = id.to_string();
        }
        return codegen.module.get_function(&fn_name).unwrap();
    }

    fn deps(&self) -> Vec<&String> {
        let mut deps = Vec::new();
        for d in &self.dep_comps {
            deps.push(d);
        }
        for d in &self.dep_fns {
            deps.push(d);
        }
        return deps;
    }

}
