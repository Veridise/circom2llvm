use super::codegen::CodeGen;
use super::expression::{resolve_initialization, Scope};
use super::statement::resolve_stmt;

use inkwell::AddressSpace;
use inkwell::values::{BasicValue, BasicValueEnum, FunctionValue, PointerValue};

use program_structure::ast::{SignalType, Statement, VariableType};
use std::collections::HashMap;

pub struct TemplateScope<'ctx, 'ast> {
    pub name: &'ast String,
    pub body: &'ast Statement,
    pub args: &'ast Vec<String>,

    pub inputs: Vec<&'ast String>,
    pub intermediates: Vec<&'ast String>,
    pub outputs: Vec<&'ast String>,
    pub vars: Vec<&'ast String>,
    pub var2val: HashMap<&'ast String, BasicValueEnum<'ctx>>,

    pub init_fn_val: Option<FunctionValue<'ctx>>,
    pub templ_struct_ptr: Option<PointerValue<'ctx>>,
}

impl<'ctx, 'ast> Scope<'ctx, 'ast> for TemplateScope<'ctx, 'ast> {
    fn add_var(&mut self, v: &'ast String) {
        self.vars.push(v);
    }

    fn get_variable(&self, codegen: &CodeGen<'ctx>, v: &String) -> BasicValueEnum<'ctx> {
        let name = v;
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        if self.args.contains(name) {
            let assign_name: &str = &format!("assign_args.{}", name);
            let param_struct_ptr = codegen
                .get_from_struct(templ_struct_ptr, 0, "param")
                .into_pointer_value();
            let index = self.args.iter().position(|s| s == name).unwrap() as u32;
            return codegen.get_from_struct(param_struct_ptr, index, assign_name);
        } else if self.inputs.contains(&name) {
            let assign_name: &str = &format!("assign_signal_input.{}", name);
            let mut index = self.inputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            return codegen.get_from_struct(templ_struct_ptr, index, assign_name);
        } else if self.intermediates.contains(&name) {
            return *self.var2val.get(name).unwrap();
        } else if self.outputs.contains(&name) {
            let assign_name: &str = &format!("assign_signal_output.{}", name);
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            index += self.inputs.len() as u32;
            return codegen.get_from_struct(templ_struct_ptr, index, assign_name);
        } else if self.vars.contains(&name) {
            return *self.var2val.get(name).unwrap();
        } else {
            unreachable!();
        }
    }

    fn set_variable(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &'ast String,
        value: BasicValueEnum<'ctx>,
    ) {
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        if self.inputs.contains(&name) {
            let write_name: &str = &format!("write_signal_input.{}", name);
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            codegen.set_to_struct(templ_struct_ptr, index, write_name, value);
        } else if self.intermediates.contains(&name) {
            self.var2val.insert(name, value.as_basic_value_enum());
        } else if self.outputs.contains(&name) {
            let write_name: &str = &format!("write_signal_output.{}", name);
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            index += self.inputs.len() as u32;
            codegen.set_to_struct(templ_struct_ptr, index, write_name, value);
        } else {
            self.var2val.insert(name, value.as_basic_value_enum());
            if !self.vars.contains(&name) {
                println!("Variable {} isn't initialized!", name);
                self.vars.push(&name);
            }
        }
    }

    fn get_main_fn(&self) -> FunctionValue<'ctx> {
        return self.init_fn_val.unwrap();
    }

}

impl<'ctx, 'ast> TemplateScope<'ctx, 'ast> {

    fn _add_input(&mut self, v: &'ast String) {
        self.inputs.push(v);
    }

    fn _add_intermediate(&mut self, v: &'ast String) {
        self.intermediates.push(v);
    }

    fn _add_output(&mut self, v: &'ast String) {
        self.outputs.push(v);
    }

    fn _resolve_variables(&mut self) {
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
                                                        self._add_input(name);
                                                    }
                                                    SignalType::Intermediate => {
                                                        self._add_intermediate(name);
                                                    }
                                                    SignalType::Output => {
                                                        self._add_output(name);
                                                    }
                                                }
                                            } else {
                                                unreachable!();
                                            }
                                            match dimensions {
                                                _ => (),
                                            }
                                        }
                                        _ => unreachable!(),
                                    }
                                }
                            }
                            VariableType::Component => {}
                            VariableType::AnonymousComponent => {},
                            VariableType::Var => (),
                        },
                        _ => (),
                    }
                }
            }
            _ => unreachable!(),
        }
    }

    fn _gen_struct_and_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            context,
            module,
            builder,
            ..
        } = codegen;
        let signal_ty = context.i128_type();
        let param_ty = context.i128_type();
        let void_ty = context.void_type();
        let templ_name = self.name;

        // Parameter struct
        let param_struct_name = &format!("t_struct_param_{}", templ_name)
            .to_lowercase()
            .to_owned()[..];
        let (param_struct_ty, param_struct_ptr_ty) = codegen.define_struct(param_struct_name);
        let param_struct_fields = vec![param_ty.into(); self.args.len()];
        param_struct_ty.set_body(&param_struct_fields, false);

        // Circuit struct
        let templ_struct_name = &format!("t_struct_{}", templ_name).to_lowercase().to_owned()[..];
        let (templ_struct_ty, templ_struct_ptr_ty) = codegen.define_struct(templ_struct_name);

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
        templ_struct_fields.append(&mut vec![
            signal_ty.into();
            self.inputs.len() + self.outputs.len()
        ]);
        templ_struct_ty.set_body(&templ_struct_fields, false);

        // Function for generation of the circuit struct, called `build`
        let build_func_name = &format!("t_fn_build_{}", templ_name)
            .to_lowercase()
            .to_owned()[..];
        let build_func_type = templ_struct_ty.fn_type(&[param_struct_ptr_ty.into()], false);
        let build_func_value = module.add_function(build_func_name, build_func_type, None);
        let current_bb = context.append_basic_block(build_func_value, "entry");
        builder.position_at_end(current_bb);

        // Add instruction to the `build` function.
        let build_struct_ptr = builder.build_alloca(templ_struct_ty, "");

        let param_value = build_func_value.get_first_param().unwrap();
        codegen.set_to_struct(build_struct_ptr, 0, "param", param_value);

        let initial_func_value = init_fn_val.as_global_value().as_pointer_value();
        codegen.set_to_struct(build_struct_ptr, 1, "init_fn", initial_func_value);
        builder.build_return(Some(&build_struct_ptr));
        self.init_fn_val = Some(init_fn_val);
        self.templ_struct_ptr = Some(init_fn_val.get_first_param().unwrap().into_pointer_value());
    }

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            builder,
            ..
        } = codegen;
        builder.position_at_end(self.get_main_fn().get_first_basic_block().unwrap());
        match self.body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    resolve_stmt(self, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }
    }

    pub fn gen_ir(&mut self, codegen: &CodeGen<'ctx>) {
        self._resolve_variables();
        self._gen_struct_and_function(codegen);
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
