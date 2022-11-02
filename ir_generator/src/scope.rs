use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::expression::{resolve_initialization, Scope};
use super::statement::resolve_stmt;

use inkwell::values::{
    BasicValue, BasicValueEnum, FunctionValue, InstructionValue, IntValue, PointerValue,
};
use inkwell::AddressSpace;

use program_structure::ast::{Expression, SignalType, Statement, VariableType};
use std::collections::HashMap;

pub struct TemplateScope<'ctx, 'ast> {
    pub name: &'ast String,
    pub body: &'ast Statement,
    pub args: &'ast Vec<String>,

    pub inputs: Vec<&'ast String>,
    pub inters: Vec<&'ast String>,
    pub outputs: Vec<&'ast String>,

    pub vars: Vec<&'ast String>,
    pub var2dims: HashMap<&'ast String, &'ast Vec<Expression>>,
    pub var2val: HashMap<&'ast String, BasicValueEnum<'ctx>>,

    pub init_fn_val: Option<FunctionValue<'ctx>>,
    pub templ_struct_ptr: Option<PointerValue<'ctx>>,
}

impl<'ctx, 'ast> Scope<'ctx, 'ast> for TemplateScope<'ctx, 'ast> {
    fn add_var(&mut self, name: &'ast String) {
        self.vars.push(name);
    }

    fn get_var_dims_len(&self, name: &'ast String) -> usize {
        let res = self.var2dims.get(name);
        return match res {
            None => 0,
            Some(_res) => {
                if _res.len() <= 1 {
                    return _res.len();
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
        access: &mut Vec<IntValue<'ctx>>,
    ) -> BasicValueEnum<'ctx> {
        let val_or_ptr = *self.var2val.get(name).unwrap();
        if access.len() == 0 {
            return val_or_ptr;
        } else {
            return codegen.build_array_getter(val_or_ptr.into_pointer_value(), &access[0..], name);
        }
    }

    fn set_var(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &'ast String,
        access: &mut Vec<IntValue<'ctx>>,
        value: BasicValueEnum<'ctx>,
    ) {
        if access.len() == 0 {
            self.var2val.insert(name, value.as_basic_value_enum());
            if !self.vars.contains(&name) {
                self.vars.push(&name);
            }
        } else {
            let ptr = *self.var2val.get(name).unwrap();
            codegen.build_array_setter(ptr.into_pointer_value(), &access[0..], name, value);
        }
    }

    fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.init_fn_val.unwrap();
    }
}

impl<'ctx, 'ast> TemplateScope<'ctx, 'ast> {
    fn _read_signal_from_struct(
        &self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        assign_name: &str,
        offset: u32,
        container: &Vec<&'ast String>,
    ) -> BasicValueEnum<'ctx> {
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        let mut index = container.iter().position(|&s| s == name).unwrap() as u32;
        index += offset;
        return codegen.build_struct_getter(templ_struct_ptr, index, assign_name);
    }

    fn _write_signal_to_struct(
        &self,
        codegen: &CodeGen<'ctx>,
        name: &String,
        assign_name: &str,
        offset: u32,
        container: &Vec<&'ast String>,
        v: BasicValueEnum<'ctx>,
    ) -> InstructionValue<'ctx> {
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        let mut index = container.iter().position(|&s| s == name).unwrap() as u32;
        index += offset;
        return codegen.build_struct_setter(templ_struct_ptr, index, assign_name, v);
    }

    fn _add_input(&mut self, v: &'ast String, dims: &'ast Vec<Expression>) {
        self.inputs.push(v);
        self.var2dims.insert(v, dims);
    }

    fn _add_intermediate(&mut self, v: &'ast String, dims: &'ast Vec<Expression>) {
        self.inters.push(v);
        self.var2dims.insert(v, dims);
    }

    fn _add_output(&mut self, v: &'ast String, dims: &'ast Vec<Expression>) {
        self.outputs.push(v);
        self.var2dims.insert(v, dims);
    }

    fn _initial_variables(&mut self) {
        match self.body {
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
                                            is_constant,
                                        } => {
                                            if *is_constant {
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
                                            } else {
                                                unreachable!();
                                            }
                                        }
                                        _ => unreachable!(),
                                    }
                                }
                            }
                            VariableType::Component => {}
                            VariableType::AnonymousComponent => {}
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
        let templ_name = self.name;

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
        let build_fn_ty = templ_struct_ty.ptr_type(AddressSpace::Generic).fn_type(&[param_struct_ptr_ty.into()], false);
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

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            builder, context, ..
        } = codegen;

        let array_size = context.i32_type().const_int(MAX_ARRAYSIZE as u64, false);
        builder.position_at_end(self.get_main_fn().get_first_basic_block().unwrap());

        // Bind args
        for arg in self.args {
            let assign_name: &str = &format!("params.{}", arg);
            let param_struct_ptr = codegen
                .build_struct_getter(self.templ_struct_ptr.unwrap(), 0, "param")
                .into_pointer_value();
            let index = self.args.iter().position(|s| s == arg).unwrap() as u32;
            let var = codegen.build_struct_getter(param_struct_ptr, index, assign_name);
            self.var2val.insert(arg, var);
        }

        // Bind input signals
        for input in &self.inputs {
            let assign_name: &str = &format!("read_signal_input.{}", input);
            let var = self._read_signal_from_struct(codegen, input, assign_name, 2, &self.inputs);
            if self.get_var_dims_len(input) == 0 {
                self.var2val.insert(input, var.as_basic_value_enum());
            } else {
                let ptr = builder.build_array_alloca(codegen.val_ty, array_size, input);
                _ = builder.build_memcpy(ptr, 4, var.into_pointer_value(), 4, array_size);
                self.var2val.insert(input, ptr.as_basic_value_enum());
            }
        }

        // Initial arrays
        for (name, _) in &self.var2dims {
            if !self.var2val.contains_key(name) && self.get_var_dims_len(name) > 0 {
                let ptr: PointerValue;
                if self.outputs.contains(name) {
                    ptr = builder
                        .build_array_malloc(codegen.val_ty, array_size, name)
                        .unwrap();
                } else {
                    ptr = builder.build_array_alloca(codegen.val_ty, array_size, name);
                }
                self.var2val.insert(name, ptr.as_basic_value_enum());
            }
        }

        match self.body {
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
            let assign_name: &str = &format!("write_signal_output.{}", output);
            let offset = 2 + self.inputs.len() as u32;
            let val;
            if self.get_var_dims_len(output) == 0 {
                val = self.var2val.get(output).unwrap().to_owned();
            } else {
                val = self
                    .var2val
                    .get(output)
                    .unwrap()
                    .into_pointer_value()
                    .as_basic_value_enum();
            }
            self._write_signal_to_struct(codegen, output, assign_name, offset, &self.outputs, val);
        }

        builder.build_return(None);
    }

    pub fn gen_ir(&mut self, codegen: &CodeGen<'ctx>) {
        self._initial_variables();
        self._build_function(codegen);
        self._fillin_initial_function(codegen);
    }
}

struct FunctionScope<'ctx, 'ast> {
    name: &'ast String,
    body: &'ast Statement,
    args: &'ast Vec<String>,

    vars: Vec<&'ast String>,
    var2val: HashMap<&'ast String, BasicValueEnum<'ctx>>,
}
