use crate::codegen;
use crate::expression::{read_signal_from_struct, write_signal_to_struct};

use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::expression::{resolve_expr, resolve_initialization, Scope};
use super::statement::resolve_stmt;

use inkwell::values::{BasicValue, BasicValueEnum, FunctionValue, IntValue, PointerValue, BasicMetadataValueEnum};
use inkwell::AddressSpace;

use program_structure::ast::{Access, Expression, SignalType, Statement, VariableType};
use std::collections::HashMap;
use std::usize;

pub struct TemplateScope<'ctx> {
    pub name: String,
    pub args: Vec<String>,

    pub inputs: Vec<String>,
    pub inters: Vec<String>,
    pub outputs: Vec<String>,
    pub comps: Vec<String>,

    pub vars: Vec<String>,
    pub var2dim_len: HashMap<String, usize>,
    pub var2val: HashMap<String, BasicValueEnum<'ctx>>,

    pub init_fn_val: Option<FunctionValue<'ctx>>,
    pub templ_struct_ptr: Option<PointerValue<'ctx>>,
}

impl<'ctx> Scope<'ctx> for TemplateScope<'ctx> {
    fn add_var(&mut self, name: &String) {
        self.vars.push(name.clone());
    }

    fn get_var_dims_len(&self, name: &String) -> usize {
        let res = self.var2dim_len.get(name);
        return match res {
            None => 0,
            Some(&_res) => {
                if _res <= 1 {
                    return _res;
                } else {
                    println!("Dimensions more than 2 isn't supported now.");
                    unreachable!();
                }
            }
        };
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
                            val_or_ptr.into_pointer_value(),
                            true,
                        );
                    } else {
                        left_access = 1;
                    }
                }
                Access::ArrayAccess(expr) => {
                    left_access = 0;
                }
            };
            let indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(val) => unreachable!(),
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
                        write_signal_to_struct(codegen, inputs, outputs, &val, ptr, false, value);
                        return;
                    } else {
                        left_access = 1;
                    }
                }
                Access::ArrayAccess(expr) => {
                    left_access = 0;
                }
            };
            let indexes: Vec<IntValue<'ctx>> = access[left_access..]
                .iter()
                .map(|s| match s {
                    Access::ComponentAccess(val) => unreachable!(),
                    Access::ArrayAccess(expr) => {
                        resolve_expr(codegen, &expr, self).into_int_value()
                    }
                })
                .collect();
            codegen.build_array_setter(ptr, &indexes[0..], name, value);
        }
    }

    fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.init_fn_val.unwrap();
    }

    fn call(&self, codegen: &CodeGen<'ctx>, id: &String, args: &Vec<Expression>) -> BasicValueEnum<'ctx> {
        let fn_name: String;
        let assign_name: String;
        let lower_id = &id.to_lowercase();
        if self.comps.contains(lower_id) {
            fn_name = format!("t_fn_build_{}", lower_id);
            assign_name = format!("build_component_{}", lower_id);
        } else {
            fn_name = format!("{}", lower_id);
            assign_name = format!("fn_call_{}", lower_id);
        }
        let build_fn = codegen.module.get_function(&fn_name).unwrap();
        let arg_vals: Vec<BasicMetadataValueEnum<'ctx>> = args.iter().map(|a| {
            let basic_val = resolve_expr(codegen, a, self);
            return BasicMetadataValueEnum::from(basic_val);
        }).collect();
        return codegen.builder.build_call(build_fn, &arg_vals, &assign_name).try_as_basic_value().left().unwrap();
    }

}

impl<'ctx> TemplateScope<'ctx> {
    fn _add_input(&mut self, v: &String, dims: &Vec<Expression>) {
        self.inputs.push(v.clone());
        self.var2dim_len.insert(v.clone(), dims.len());
    }

    fn _add_intermediate(&mut self, v: &String, dims: &Vec<Expression>) {
        self.inters.push(v.clone());
        self.var2dim_len.insert(v.clone(), dims.len());
    }

    fn _add_output(&mut self, v: &String, dims: &Vec<Expression>) {
        self.outputs.push(v.clone());
        self.var2dim_len.insert(v.clone(), dims.len());
    }

    fn _add_component(&mut self, v: &String) {
        self.comps.push(v.clone());
    }

    fn _initial_variables(&mut self, body: &Statement) {
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    // Variables
                    resolve_initialization(stmt, self);

                    // Signals
                    match stmt {
                        Statement::InitializationBlock {
                            meta: _,
                            xtype,
                            initializations,
                        } => match xtype {
                            VariableType::Signal(signal_type, _) => {
                                for init in initializations {
                                    match init {
                                        Statement::Declaration {
                                            meta: _,
                                            xtype: _,
                                            name,
                                            dimensions,
                                            is_constant: _,
                                        } => {
                                            match signal_type {
                                                SignalType::Input => {
                                                    self._add_input(name, dimensions);
                                                }
                                                SignalType::Intermediate => {
                                                    self._add_intermediate(name, dimensions);
                                                }
                                                SignalType::Output => {
                                                    self._add_output(name, dimensions);
                                                }
                                            };
                                        }
                                        _ => unreachable!(),
                                    }
                                }
                            }
                            VariableType::Component => {
                                for init in initializations {
                                    match init {
                                        Statement::Declaration {
                                            meta: _,
                                            xtype: _,
                                            name,
                                            dimensions,
                                            is_constant: _,
                                        } => {
                                            if dimensions.len() > 0 {
                                                unreachable!()
                                            }
                                            self._add_component(name);
                                        },
                                        Statement::Substitution { .. } => {
                                            // Will handle them later
                                            // Do nothing
                                        }
                                        _ => unreachable!(),
                                    }
                                }
                            }
                            VariableType::AnonymousComponent => {
                                println!("Coming AnonymousComponent");
                                unreachable!()
                            }
                            VariableType::Var => (),
                        },
                        _ => (),
                    }
                }
            }
            _ => unreachable!(),
        }
    }

    fn _build_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            context,
            module,
            builder,
            ..
        } = codegen;
        let signal_ty = context.i128_type();
        let signal_arr_ptr_ty = signal_ty
            .array_type(MAX_ARRAYSIZE)
            .ptr_type(AddressSpace::Generic);
        let param_ty = context.i128_type();
        let void_ty = context.void_type();
        let templ_name = &self.name;

        // Parameter struct
        let param_struct_name = &format!("t_struct_param_{}", templ_name)
            .to_lowercase()
            .to_owned()[..];
        let (param_struct_ty, param_struct_ptr_ty) = codegen.build_struct(param_struct_name);
        let param_struct_fields = vec![param_ty.into(); self.args.len()];
        param_struct_ty.set_body(&param_struct_fields, false);

        // Circuit struct
        let templ_struct_name = &format!("t_struct_{}", templ_name).to_lowercase().to_owned()[..];
        let (templ_struct_ty, templ_struct_ptr_ty) = codegen.build_struct(templ_struct_name);

        // Function for initialization of the circuit struct, called `init`
        let init_func_name = &format!("t_fn_init_{}", templ_name)
            .to_lowercase()
            .to_owned()[..];
        let init_func_ty = void_ty.fn_type(&[templ_struct_ptr_ty.into()], false);
        let init_fn_val = module.add_function(init_func_name, init_func_ty, None);
        let init_func_ptr_ty = init_func_ty.ptr_type(AddressSpace::Generic);
        context.append_basic_block(init_fn_val, "entry");

        // Set body for circuit struct
        let mut templ_struct_fields = vec![param_struct_ptr_ty.into(), init_func_ptr_ty.into()];
        for name in &self.inputs {
            if self.get_var_dims_len(name) == 0 {
                templ_struct_fields.push(signal_ty.into());
            } else {
                templ_struct_fields.push(signal_arr_ptr_ty.into());
            }
        }
        for name in &self.outputs {
            if self.get_var_dims_len(name) == 0 {
                templ_struct_fields.push(signal_ty.into());
            } else {
                templ_struct_fields.push(signal_arr_ptr_ty.into());
            }
        }
        templ_struct_ty.set_body(&templ_struct_fields, false);

        // Function for generation of the circuit struct, called `build`
        let build_fn_name = &format!("t_fn_build_{}", templ_name)
            .to_lowercase()
            .to_owned()[..];
        let build_fn_ty = templ_struct_ty
            .ptr_type(AddressSpace::Generic)
            .fn_type(&[param_struct_ptr_ty.into()], false);
        let build_fn_val = module.add_function(build_fn_name, build_fn_ty, None);
        let current_bb = context.append_basic_block(build_fn_val, "entry");
        builder.position_at_end(current_bb);

        // Add instruction to the `build` function.
        let build_struct_ptr = builder.build_alloca(templ_struct_ty, "");

        let param_val = build_fn_val.get_first_param().unwrap();
        codegen.build_struct_setter(build_struct_ptr, 0, "param", param_val);

        let init_fn_ptr = init_fn_val.as_global_value().as_pointer_value();
        codegen.build_struct_setter(build_struct_ptr, 1, "init_fn", init_fn_ptr);
        builder.build_return(Some(&build_struct_ptr));
        self.init_fn_val = Some(init_fn_val);
        self.templ_struct_ptr = Some(init_fn_val.get_first_param().unwrap().into_pointer_value());
    }

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let CodeGen {
            builder, context, ..
        } = codegen;

        let templ_struct_ptr = self.templ_struct_ptr.unwrap();

        let array_size = context.i32_type().const_int(MAX_ARRAYSIZE as u64, false);
        builder.position_at_end(self.get_main_fn().get_first_basic_block().unwrap());

        // Bind args
        for arg in &self.args {
            let assign_name: &str = &format!("params.{}", arg);
            let param_struct_ptr = codegen
                .build_struct_getter(templ_struct_ptr, 0, "param")
                .into_pointer_value();
            let index = self.args.iter().position(|s| s == arg).unwrap() as u32;
            let var = codegen.build_struct_getter(param_struct_ptr, index, assign_name);
            self.var2val.insert(arg.clone(), var);
        }

        // Bind input signals
        for input in &self.inputs {
            let assign_name: &str = &format!("read_signal_input.{}", input);
            let var = read_signal_from_struct(
                codegen,
                &self.inputs,
                &self.outputs,
                input,
                templ_struct_ptr,
                true,
            );
            if self.get_var_dims_len(input) == 0 {
                self.var2val
                    .insert(input.clone(), var.as_basic_value_enum());
            } else {
                let ptr = builder.build_array_alloca(codegen.val_ty, array_size, input);
                _ = builder.build_memcpy(ptr, 4, var.into_pointer_value(), 4, array_size);
                self.var2val
                    .insert(input.clone(), ptr.as_basic_value_enum());
            }
        }

        // Initial arrays
        for (name, _) in &self.var2dim_len {
            if !self.var2val.contains_key(name) && self.get_var_dims_len(name) > 0 {
                let ptr: PointerValue;
                if self.outputs.contains(name) {
                    ptr = builder
                        .build_array_malloc(codegen.val_ty, array_size, name)
                        .unwrap();
                } else {
                    ptr = builder.build_array_alloca(codegen.val_ty, array_size, name);
                }
                self.var2val.insert(name.clone(), ptr.as_basic_value_enum());
            }
        }

        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    resolve_stmt(self, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }

        // Write-in output signals
        let exit_bb = context.append_basic_block(self.init_fn_val.unwrap(), "exit");
        builder.build_unconditional_branch(exit_bb);
        builder.position_at_end(exit_bb);

        for output in &self.outputs {
            let val = self.var2val.get(output).unwrap().to_owned();
            write_signal_to_struct(
                codegen,
                &self.inputs,
                &self.outputs,
                output,
                templ_struct_ptr,
                true,
                val,
            );
        }

        builder.build_return(None);
    }

    pub fn gen_ir(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        self._initial_variables(body);
        self._build_function(codegen);
        self._fillin_initial_function(codegen, body);
    }
}

struct FunctionScope<'ctx> {
    name: String,
    args: Vec<String>,

    vars: Vec<String>,
    var2val: HashMap<String, BasicValueEnum<'ctx>>,
}
