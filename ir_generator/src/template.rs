use crate::expression::resolve_dimensions;

use super::codegen::CodeGen;
use super::expression::{read_signal_from_struct, resolve_initialization, write_signal_to_struct};
use super::namer::{name_entry_block, name_exit_block, name_template_fn, name_template_struct};
use super::scope::{Scope, ScopeCodegenTrait, ScopeTrait};
use super::statement::resolve_stmt;

use inkwell::values::{BasicValue, PointerValue};
use inkwell::AddressSpace;
use program_structure::ast::{Expression, SignalType, Statement, VariableType};

pub struct Template<'ctx> {
    pub scope: Scope<'ctx>,

    pub inputs: Vec<String>,
    pub inters: Vec<String>,
    pub outputs: Vec<String>,
    pub templ_struct_ptr: Option<PointerValue<'ctx>>,
}

impl<'ctx> Template<'ctx> {
    fn _add_input(&mut self, v: &String, dims: &Vec<Expression>) {
        self.inputs.push(v.clone());
        self.scope.set_var_dims(v, resolve_dimensions(dims));
    }

    fn _add_intermediate(&mut self, v: &String, dims: &Vec<Expression>) {
        self.inters.push(v.clone());
        self.scope.set_var_dims(v, resolve_dimensions(dims));
    }

    fn _add_output(&mut self, v: &String, dims: &Vec<Expression>) {
        self.outputs.push(v.clone());
        self.scope.set_var_dims(v, resolve_dimensions(dims));
    }
}

impl<'ctx> ScopeCodegenTrait<'ctx> for Template<'ctx> {
    fn initial_name_symbol(&mut self, _codegen: &CodeGen<'ctx>, body: &Statement) {
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    // Variables
                    resolve_initialization(stmt, &mut self.scope, &VariableType::Var);

                    // We only handle signals here.
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
                            _ => (),
                        },
                        _ => (),
                    }
                }
            }
            _ => unreachable!(),
        }
    }

    fn build_function(&mut self, codegen: &CodeGen<'ctx>, _body: &Statement) {
        let CodeGen {
            context,
            module,
            builder,
            ..
        } = codegen;

        let void_ty = context.void_type();
        let templ_name = &self.scope.name;

        // Parameter struct
        let param_struct_name = name_template_struct(templ_name, "params");
        let (param_struct_ty, param_struct_ptr_ty) = codegen.build_struct(&param_struct_name);

        let mut param_struct_fields = Vec::new();
        for name in &self.scope.args {
            if self.scope.get_var_dims_len(name) == 0 {
                param_struct_fields.push(codegen.val_ty.into());
            } else {
                param_struct_fields.push(
                    codegen
                        .build_array_ty(self.scope.get_var_dims(name).unwrap())
                        .ptr_type(AddressSpace::Generic)
                        .into(),
                );
            }
        }

        param_struct_ty.set_body(&param_struct_fields, false);

        // Circuit struct
        let templ_struct_name = name_template_struct(templ_name, "circuit");
        let (templ_struct_ty, templ_struct_ptr_ty) = codegen.build_struct(&templ_struct_name);

        // Function for initialization of the circuit struct, called `init`
        let init_fn_name = &name_template_fn(templ_name, "init");
        let init_fn_ty = void_ty.fn_type(&[templ_struct_ptr_ty.into()], false);
        let init_fn_val = module.add_function(init_fn_name, init_fn_ty, None);
        let init_fn_ptr_ty = init_fn_ty.ptr_type(AddressSpace::Generic);
        context.append_basic_block(init_fn_val, &name_entry_block());

        // Set body for circuit struct
        let mut templ_struct_fields = vec![param_struct_ptr_ty.into(), init_fn_ptr_ty.into()];
        for name in &self.inputs {
            if self.scope.get_var_dims_len(name) == 0 {
                templ_struct_fields.push(codegen.val_ty.into());
            } else {
                templ_struct_fields.push(
                    codegen
                        .build_array_ty(self.scope.get_var_dims(name).unwrap())
                        .ptr_type(AddressSpace::Generic)
                        .into(),
                );
            }
        }
        for name in &self.outputs {
            if self.scope.get_var_dims_len(name) == 0 {
                templ_struct_fields.push(codegen.val_ty.into());
            } else {
                templ_struct_fields.push(
                    codegen
                        .build_array_ty(self.scope.get_var_dims(name).unwrap())
                        .ptr_type(AddressSpace::Generic)
                        .into(),
                );
            }
        }
        templ_struct_ty.set_body(&templ_struct_fields, false);

        // Function for generation of the circuit struct, called `build`
        let build_fn_name = name_template_fn(templ_name, "build");
        let build_fn_ty = templ_struct_ty
            .ptr_type(AddressSpace::Generic)
            .fn_type(&[param_struct_ptr_ty.into()], false);
        let build_fn_val = module.add_function(&build_fn_name, build_fn_ty, None);
        let current_bb = context.append_basic_block(build_fn_val, &name_entry_block());
        builder.position_at_end(current_bb);

        // Add instruction to the `build` function.
        let build_struct_ptr = builder.build_alloca(templ_struct_ty, "");

        let param_val = build_fn_val.get_first_param().unwrap();
        let assign_name = name_template_struct(templ_name, "params");
        codegen.build_struct_setter(build_struct_ptr, 0, &assign_name, param_val);

        let init_fn_ptr = init_fn_val.as_global_value().as_pointer_value();
        let assign_name = name_template_fn(templ_name, "init");
        codegen.build_struct_setter(build_struct_ptr, 1, &assign_name, init_fn_ptr);
        builder.build_return(Some(&build_struct_ptr));
        self.scope.set_main_fn(init_fn_val);
        self.templ_struct_ptr = Some(init_fn_val.get_first_param().unwrap().into_pointer_value());
    }

    fn build_instrustions(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement) {
        let templ_name = &self.scope.name;
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        let current_bb = self.scope.get_main_fn().get_first_basic_block().unwrap();
        codegen.builder.position_at_end(current_bb);

        // Bind args
        for arg in &self.scope.args {
            let assign_name0 = name_template_struct(templ_name, "params");
            let param_struct_ptr = codegen
                .build_struct_getter(templ_struct_ptr, 0, &assign_name0)
                .into_pointer_value();
            let index = self.scope.args.iter().position(|s| s == arg).unwrap() as u32;
            let assign_name: &str = &format!("{}.{}", assign_name0, arg);
            let var = codegen.build_struct_getter(param_struct_ptr, index, assign_name);
            let dims_len = self.scope.get_var_dims_len(arg);
            if dims_len == 0 {
                self.scope
                    .var2val
                    .insert(arg.clone(), var.as_basic_value_enum());
            } else {
                let arr_val_ty = codegen.build_array_ty(self.scope.get_var_dims(arg).unwrap());
                let ptr = codegen.builder.build_alloca(arr_val_ty, arg);
                _ = codegen.builder.build_memcpy(
                    ptr,
                    4,
                    var.into_pointer_value(),
                    4,
                    arr_val_ty.size_of().unwrap(),
                );
                self.scope
                    .var2val
                    .insert(arg.clone(), ptr.as_basic_value_enum());
            }
        }

        // Bind input signals
        for input in &self.inputs {
            let var = read_signal_from_struct(
                codegen,
                &self.inputs,
                &self.outputs,
                input,
                &self.scope.name,
                templ_struct_ptr,
                true,
            );
            let dims_len = self.scope.get_var_dims_len(input);
            if dims_len == 0 {
                self.scope
                    .var2val
                    .insert(input.clone(), var.as_basic_value_enum());
            } else {
                let arr_val_ty = codegen.build_array_ty(self.scope.get_var_dims(input).unwrap());
                let ptr = codegen.builder.build_alloca(arr_val_ty, input);
                _ = codegen.builder.build_memcpy(
                    ptr,
                    4,
                    var.into_pointer_value(),
                    4,
                    arr_val_ty.size_of().unwrap(),
                );
                self.scope
                    .var2val
                    .insert(input.clone(), ptr.as_basic_value_enum());
            }
        }

        // Initial arrays
        for (name, dims) in &self.scope.var2dims {
            if !self.scope.var2val.contains_key(name) && !(dims.len() == 0) {
                let ptr: PointerValue;
                let arr_val_ty = codegen.build_array_ty(dims);
                if self.outputs.contains(name) {
                    ptr = codegen.builder.build_malloc(arr_val_ty, name).unwrap();
                } else {
                    ptr = codegen.builder.build_alloca(arr_val_ty, name);
                }
                self.scope
                    .var2val
                    .insert(name.clone(), ptr.as_basic_value_enum());
            }
        }

        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    resolve_stmt(&mut self.scope, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }

        // Write-in output signals
        let exit_bb = codegen
            .context
            .append_basic_block(self.scope.main_fn_val.unwrap(), &name_exit_block());
        codegen.builder.build_unconditional_branch(exit_bb);
        codegen.builder.position_at_end(exit_bb);

        for output in &self.outputs {
            let val = self.scope.var2val.get(output).unwrap().to_owned();
            write_signal_to_struct(
                codegen,
                &self.inputs,
                &self.outputs,
                &self.scope.name,
                output,
                templ_struct_ptr,
                true,
                val,
            );
        }

        codegen.builder.build_return(None);
    }
}
