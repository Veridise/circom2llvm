use inkwell::basic_block::BasicBlock;
use inkwell::builder::Builder;
use inkwell::context::{self, Context};
use inkwell::execution_engine::{ExecutionEngine, JitFunction};
use inkwell::module::Module;
use inkwell::types::{BasicTypeEnum, PointerType, StructType};
use inkwell::AddressSpace;

use inkwell::values::{BasicValue, BasicValueEnum, FunctionValue, InstructionValue, PointerValue};
use inkwell::{module::Linkage, types::FunctionType};
use program_structure::{
    ast::{
        AssignOp, Definition, Expression, ExpressionInfixOpcode, SignalType, Statement,
        VariableType,
    },
    error_definition::Report,
};
use std::collections::HashMap;
use std::iter::Enumerate;
use std::ops::{Add, Index};
use std::{error::Error, ops::ControlFlow};

pub fn utils_add_symbol(mut v: Vec<String>, s: &String) {
    v.push(s.to_lowercase());
}

const GLOBAL_P: i128 = 12539295309507511577697735;

struct TemplateCodeGen<'ctx, 'ast> {
    name: &'ast String,
    body: &'ast Statement,
    args: &'ast Vec<String>,
    inputs: Vec<&'ast String>,
    intermediates: Vec<&'ast String>,
    outputs: Vec<&'ast String>,
    output2expr: HashMap<&'ast String, (&'ast AssignOp, &'ast Expression)>,
    intermediates2value: HashMap<&'ast String, BasicValueEnum<'ctx>>,
}

impl <'ctx, 'ast>TemplateCodeGen<'ctx, 'ast> {
    fn _collect_information(&mut self) {
        match self.body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    match stmt {
                        Statement::InitializationBlock {
                            meta: _,
                            xtype,
                            initializations,
                        } => match xtype {
                            VariableType::Var => {}
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
                                                        self.inputs.push(name);
                                                    }
                                                    SignalType::Intermediate => {
                                                        self.intermediates.push(name);
                                                    }
                                                    SignalType::Output => {
                                                        self.outputs.push(name);
                                                    }
                                                }
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
                        },
                        Statement::Substitution {
                            meta: _,
                            var,
                            access: _,
                            op,
                            rhe,
                        } => {
                            self.output2expr.insert(var, (op, rhe));
                        }
                        _ => {}
                    }
                }
            }
            _ => unreachable!(),
        };
    }

    fn _gen_struct_and_function(&self, codegen: &CodeGen<'ctx>) -> FunctionValue<'ctx> {
        let CodeGen {
            context,
            module,
            builder,
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
        let init_func_value = module.add_function(init_func_name, init_func_ty, None);
        let init_func_ptr_ty = init_func_ty.ptr_type(AddressSpace::Generic);
        context.append_basic_block(init_func_value, "entry");

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
        codegen.set_struct(build_struct_ptr, 0, "param", param_value);

        let initial_func_value = init_func_value.as_global_value().as_pointer_value();
        codegen.set_struct(build_struct_ptr, 1, "init_fn", initial_func_value);
        builder.build_return(Some(&build_struct_ptr));
        return init_func_value;
    }

    fn _fillin_initial_function(&self, codegen: &CodeGen<'ctx>, init_func_value: FunctionValue<'ctx>) {
        let CodeGen {
            context,
            module,
            builder,
        } = codegen;
        let templ_struct_ptr: PointerValue<'ctx> = init_func_value
            .get_first_param()
            .unwrap()
            .into_pointer_value();
        builder.position_at_end(init_func_value.get_first_basic_block().unwrap());
        for output in &self.outputs {
            let (op, expr) = self.output2expr.get(output).unwrap();
            match expr {
                Expression::InfixOp {
                    meta,
                    lhe,
                    infix_op,
                    rhe,
                } => {
                    let lval: BasicValueEnum<'ctx> = match lhe.as_ref() {
                        Expression::Variable { meta, name, access } => self._get_value(codegen, templ_struct_ptr, name),
                        _ => unreachable!(),
                    };
                    let rval: BasicValueEnum<'ctx> = match rhe.as_ref() {
                        Expression::Variable { meta, name, access } => self._get_value(codegen, templ_struct_ptr, name),
                        _ => unreachable!(),
                    };

                    match infix_op {
                        ExpressionInfixOpcode::Mul => {
                            let mul = builder.build_int_mul(lval.into_int_value(), rval.into_int_value(), "mul");
                            self._set_value(codegen, templ_struct_ptr, &output, mul);
                        }
                        _ => unreachable!(),
                    };
                }
                _ => {
                    println!("Coming")
                }
            }
        }
    }

    fn _get_value(&self, codegen: &CodeGen<'ctx>, templ_struct_ptr: PointerValue<'ctx>, name: &String) -> BasicValueEnum<'ctx> {
        if self.args.contains(name) {
            let param_struct_ptr = codegen.get_struct(templ_struct_ptr, 0, "param").into_pointer_value();
            let index = self.args.iter().position(|s| s == name).unwrap() as u32;
            return codegen.get_struct(param_struct_ptr, index, name);
        } else if self.inputs.contains(&name) {
            let mut index = self.inputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            return codegen.get_struct(templ_struct_ptr, index, name);
        } else if self.intermediates.contains(&name) {
            return *self.intermediates2value.get(name).unwrap();
        } else {
            unreachable!();
        }
    }

    fn _set_value<V: BasicValue<'ctx>>(&self, codegen: &CodeGen<'ctx>, templ_struct_ptr: PointerValue<'ctx>, name: &String, value: V) {
        if self.outputs.contains(&name) {
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            index += self.inputs.len() as u32;
            codegen.set_struct(templ_struct_ptr, index, name, value);
        } else {
            unreachable!();
        }
    }

    fn gen_ir(&mut self, codegen: &CodeGen<'ctx>) {
        self._collect_information();
        let init_func_value = self._gen_struct_and_function(codegen);
        self._fillin_initial_function(codegen, init_func_value);
    }

}

struct CodeGen<'ctx> {
    context: &'ctx Context,
    module: Module<'ctx>,
    builder: Builder<'ctx>,
}

impl<'ctx> CodeGen<'ctx> {
    fn define_struct(&self, name: &str) -> (StructType<'ctx>, PointerType<'ctx>) {
        let struct_ty = self.context.opaque_struct_type(name);
        let struct_ptr_ty = struct_ty.ptr_type(AddressSpace::Generic);
        return (struct_ty, struct_ptr_ty);
    }

    fn get_struct(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, name)
            .unwrap();
        return self.builder.build_load(res, name);
    }

    fn set_struct<V: BasicValue<'ctx>>(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
        value: V,
    ) -> InstructionValue<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, name)
            .unwrap();
        return self.builder.build_store(res, value);
    }
}

fn main() {
    let links = Vec::new();
    let context = Context::create();
    let module = context.create_module("main");
    let builder = context.create_builder();
    let codegen = CodeGen {
        context: &context,
        module,
        builder,
    };
    match parser::run_parser("./examples/AND-gates-circomlib.circom".to_string(), links) {
        Ok(ast) => {
            let definitions = ast.get_definitions();
            for defin in definitions {
                match defin {
                    Definition::Template {
                        meta: _,
                        name,
                        args,
                        arg_location: _,
                        body,
                        parallel: _,
                        is_custom_gate: _,
                    } => {
                        let mut template_codegen = TemplateCodeGen {
                            name,
                            args,
                            body,
                            inputs: Vec::new(),
                            intermediates: Vec::new(),
                            outputs: Vec::new(),
                            output2expr: HashMap::new(),
                            intermediates2value: HashMap::new(),
                        };
                        template_codegen.gen_ir(&codegen);
                    }
                    Definition::Function {
                        meta,
                        name,
                        args,
                        arg_location,
                        body,
                    } => {}
                }
            }
            let result = codegen
                .module
                .print_to_file("./examples/AND-gates-circomlib.ll");
            match result {
                Ok(_) => {}
                Err(err) => {
                    println!("{}", err.to_string());
                }
            }
        }

        Err((file_library, report_collection)) => {
            Report::print_reports(&report_collection, &file_library);
        }
    };
}
