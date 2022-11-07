use super::codegen::CodeGen;
use super::expression::{read_signal_from_struct, resolve_expr, write_signal_to_struct};
use super::namer::{name_fn, name_template_fn};

use inkwell::values::{
    BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, IntValue,
};

use program_structure::ast::{Access, Expression};
use std::collections::HashMap;
use std::usize;

pub trait ScopeTrait<'ctx> {
    fn add_var(&mut self, name: &String);
    fn add_component(&mut self, v: &String);
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
    fn get_var_dims_len(&self, name: &String) -> usize;
    fn set_var_dims_len(&mut self, name: &String, dims_len: usize);
    fn get_main_fn(&self) -> FunctionValue<'ctx>;
    fn set_main_fn(&mut self, fn_val: FunctionValue<'ctx>);
    fn call(
        &self,
        codegen: &CodeGen<'ctx>,
        id: &String,
        args: &Vec<Expression>,
    ) -> BasicValueEnum<'ctx>;
}

pub struct Scope<'ctx> {
    pub name: String,
    pub args: Vec<String>,
    pub vars: Vec<String>,
    pub var2dim_len: HashMap<String, usize>,
    pub var2val: HashMap<String, BasicValueEnum<'ctx>>,
    pub comps: Vec<String>,

    pub main_fn_val: Option<FunctionValue<'ctx>>,
}

impl<'ctx> ScopeTrait<'ctx> for Scope<'ctx> {
    fn add_var(&mut self, name: &String) {
        self.vars.push(name.clone());
    }

    fn add_component(&mut self, v: &String) {
        self.comps.push(v.clone());
    }

    fn get_var_dims_len(&self, name: &String) -> usize {
        let res = self.var2dim_len.get(name);
        return match res {
            None => 0,
            Some(&_res) => _res,
        };
    }

    fn set_var_dims_len(&mut self, name: &String, dims_len: usize) {
        self.var2dim_len.insert(name.to_string(), dims_len);
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
            let indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(_) => unreachable!(),
                    Access::ArrayAccess(expr) => {
                        resolve_expr(codegen, &expr, self).into_int_value()
                    }
                })
                .collect();
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
            self.var2val
                .insert(name.clone(), value.as_basic_value_enum());
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
            let indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(_) => unreachable!(),
                    Access::ArrayAccess(expr) => {
                        resolve_expr(codegen, &expr, self).into_int_value()
                    }
                })
                .collect();
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
        let fn_name: String;
        let lower_id = &id.to_lowercase();
        if self.comps.contains(lower_id) {
            fn_name = name_template_fn(&lower_id, "build");
        } else {
            fn_name = name_fn(lower_id);
        }
        let build_fn = codegen.module.get_function(&fn_name).unwrap();
        let arg_vals: Vec<BasicMetadataValueEnum<'ctx>> = args
            .iter()
            .map(|a| {
                let basic_val = resolve_expr(codegen, a, self);
                return BasicMetadataValueEnum::from(basic_val);
            })
            .collect();
        let assign_name = fn_name;
        return codegen
            .builder
            .build_call(build_fn, &arg_vals, &assign_name)
            .try_as_basic_value()
            .left()
            .unwrap();
    }
}
