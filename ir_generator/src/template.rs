use crate::inferrence::{build_array_ty, resolve_dimensions};

use super::codegen::CodeGen;
use super::expression::{read_signal_from_struct, write_signal_to_struct};
use super::inferrence::infer_from_statement;
use super::namer::{name_entry_block, name_exit_block, name_template_fn, name_template_struct};
use super::scope::{Scope, ScopeCodegenTrait, ScopeTrait};
use super::statement::resolve_stmt;

use inkwell::types::{BasicType, BasicTypeEnum};
use inkwell::values::{BasicValue, PointerValue};
use inkwell::AddressSpace;
use program_structure::ast::{SignalType, Statement, VariableType};

pub struct Template<'ctx> {
    pub scope: Scope<'ctx>,

    pub inputs: Vec<String>,
    pub inters: Vec<String>,
    pub outputs: Vec<String>,
    pub templ_struct_ptr: Option<PointerValue<'ctx>>,
}

impl<'ctx> Template<'ctx> {
    fn _add_input(&mut self, v: &String) {
        self.inputs.push(v.clone());
    }

    fn _add_intermediate(&mut self, v: &String) {
        self.inters.push(v.clone());
    }

    fn _add_output(&mut self, v: &String) {
        self.outputs.push(v.clone());
    }

    fn infer_signal_from_statement(&mut self, codegen: &CodeGen<'ctx>, stmt: &Statement) {
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
                                        self._add_input(name);
                                    }
                                    SignalType::Intermediate => {
                                        self._add_intermediate(name);
                                    }
                                    SignalType::Output => {
                                        self._add_output(name);
                                    }
                                };
                                let dims = resolve_dimensions(dimensions);
                                let dims_len = dims.len().clone();
                                let var_ty;
                                if dims_len == 0 {
                                    var_ty = codegen.val_ty.as_basic_type_enum();
                                } else {
                                    var_ty =
                                        build_array_ty(codegen.val_ty.as_basic_type_enum(), &dims)
                                            .as_basic_type_enum();
                                }
                                self.scope.set_var_ty(name, var_ty);
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

impl<'ctx> ScopeCodegenTrait<'ctx> for Template<'ctx> {
    fn initial_info(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement) {
        // Collect variables, types, dimensions of array and dependences.
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    // Collect information from statements as more as possible;
                    infer_from_statement(codegen, stmt, &mut self.scope, &VariableType::Var);

                    // We only handle signals here.
                    self.infer_signal_from_statement(codegen, stmt);
                }
            }
            _ => unreachable!(),
        }
        codegen.set_input_output_names(
            &self.scope.name,
            (self.inputs.to_vec(), self.outputs.to_vec()),
        );
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
            let arg_ty = self.scope.get_var_ty_as_ptr(name);
            param_struct_fields.push(arg_ty);
        }

        param_struct_ty.set_body(&param_struct_fields[0..], false);

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
            let field_ty = self.scope.get_var_ty_as_ptr(name);
            templ_struct_fields.push(field_ty);
        }
        for name in &self.outputs {
            let field_ty = self.scope.get_var_ty_as_ptr(name);
            templ_struct_fields.push(field_ty);
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

    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let templ_name = self.scope.name.clone();
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        let current_bb = self.scope.get_main_fn().get_first_basic_block().unwrap();
        codegen.builder.position_at_end(current_bb);

        // Bind args
        let args = self.scope.args.clone();
        for arg in &args {
            let assign_name0 = name_template_struct(&templ_name, "params");
            let param_struct_ptr = codegen
                .build_struct_getter(templ_struct_ptr, 0, &assign_name0)
                .into_pointer_value();
            let index = args.iter().position(|s| s == arg).unwrap() as u32;
            let assign_name: &str = &format!("{}.{}", assign_name0, arg);
            let val = codegen.build_struct_getter(param_struct_ptr, index, assign_name);
            self.scope.bind_variable(codegen, arg, val);
        }

        // Bind input signals
        for input in &self.inputs {
            let val =
                read_signal_from_struct(codegen, &self.scope.name, input, templ_struct_ptr, true);
            self.scope.bind_variable(codegen, input, val);
        }

        // Initial arrays
        for (name, ty) in &self.scope.var2ty {
            if self.scope.var2val.contains_key(name) {
                continue;
            } else {
                match ty {
                    BasicTypeEnum::ArrayType(arr_ty) => {
                        let ptr;
                        if self.outputs.contains(name) {
                            ptr = codegen.builder.build_malloc(arr_ty.clone(), name).unwrap();
                        } else {
                            ptr = codegen.builder.build_alloca(arr_ty.clone(), name);
                        }
                        self.scope
                            .var2val
                            .insert(name.clone(), ptr.as_basic_value_enum());
                    }
                    _ => (),
                }
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
