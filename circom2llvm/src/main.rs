use inkwell::builder::Builder;
use inkwell::context::Context;
use inkwell::module::Module;
use inkwell::types::{PointerType, StringRadix, StructType};
use inkwell::{AddressSpace, IntPredicate};

use inkwell::values::{
    BasicValue, BasicValueEnum, FunctionValue, InstructionValue, IntValue, PointerValue,
};
use program_structure::ast::ExpressionPrefixOpcode;
use program_structure::{
    ast::{
        AssignOp, Definition, Expression, ExpressionInfixOpcode, SignalType, Statement,
        VariableType,
    },
    error_definition::Report,
};
use std::collections::HashMap;

pub fn utils_add_symbol(mut v: Vec<String>, s: &String) {
    v.push(s.to_lowercase());
}

const GLOBAL_P: &str = "12539295309507511577697735";

struct TemplateCodeGen<'ctx, 'ast> {
    name: &'ast String,
    body: &'ast Statement,
    args: &'ast Vec<String>,

    inputs: Vec<&'ast String>,
    intermediates: Vec<&'ast String>,
    outputs: Vec<&'ast String>,

    init_func_value: Option<FunctionValue<'ctx>>,
    templ_struct_ptr: Option<PointerValue<'ctx>>,
    intermediates2value: HashMap<&'ast String, BasicValueEnum<'ctx>>,

    constraint_count: usize,
}

impl<'ctx, 'ast> TemplateCodeGen<'ctx, 'ast> {
    fn _collect_information(&mut self, codegen: &CodeGen<'ctx>) {
        match self.body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    match stmt {
                        Statement::InitializationBlock {
                            meta: _,
                            xtype,
                            initializations,
                        } => match xtype {
                            VariableType::Var => {
                                for init in initializations {
                                    match init {
                                        Statement::Substitution {
                                            meta,
                                            var,
                                            access,
                                            op,
                                            rhe,
                                        } => match rhe {
                                            Expression::Number(_, num) => match op {
                                                AssignOp::AssignVar => {
                                                    let val = codegen
                                                        .context
                                                        .i128_type()
                                                        .const_int_from_string(
                                                            &num.to_string().to_owned(),
                                                            StringRadix::Decimal,
                                                        );
                                                    self.intermediates2value.insert(
                                                        var,
                                                        val.unwrap().as_basic_value_enum(),
                                                    );
                                                }
                                                _ => unreachable!(),
                                            },
                                            _ => unreachable!(),
                                        },
                                        Statement::Declaration { name, .. } => {
                                            self.intermediates.push(name);
                                        }
                                        _ => unreachable!(),
                                    }
                                }
                            }
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
                                            match dimensions {
                                                _ => (),
                                            }
                                        }

                                        _ => unreachable!(),
                                    }
                                }
                            }
                            VariableType::Component => {}
                            VariableType::AnonymousComponent => {}
                        },
                        _ => (),
                    }
                }
            }
            _ => unreachable!(),
        };
    }

    fn _gen_struct_and_function(&mut self, codegen: &CodeGen<'ctx>) {
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
        self.init_func_value = Some(init_func_value);
        self.templ_struct_ptr = Some(
            init_func_value
                .get_first_param()
                .unwrap()
                .into_pointer_value(),
        );
    }

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            context: _,
            module: _,
            builder,
        } = codegen;
        let init_func_value = self.init_func_value.unwrap();
        builder.position_at_end(init_func_value.get_first_basic_block().unwrap());
        match self.body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    match stmt {
                        Statement::Substitution {
                            meta: _,
                            var,
                            access,
                            op,
                            rhe,
                        } => {
                            let res = self._resolve_expr(codegen, rhe);
                            self._set_value(codegen, var, res);
                            match op {
                                AssignOp::AssignConstraintSignal => {
                                    let global_name =
                                        format!("{}.contraint.{}", self.name, self.constraint_count)
                                            .to_lowercase()
                                            .to_string();
                                    self.constraint_count += 1;
                                    let lval = self._get_value(codegen, var).into_int_value();
                                    let rval = res.into_int_value();
                                    self._add_constraint(
                                        codegen,
                                        &global_name,
                                        IntPredicate::EQ,
                                        lval,
                                        rval,
                                    );
                                }
                                _ => (),
                            };
                            match access {
                                _ => (),
                            }
                        }
                        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
                            let global_name = format!("{}.contraint.{}", self.name, self.constraint_count)
                                .to_lowercase()
                                .to_string();
                            self.constraint_count += 1;
                            let lval = self._resolve_expr(codegen, lhe).into_int_value();
                            let rval = self._resolve_expr(codegen, rhe).into_int_value();
                            self._add_constraint(
                                codegen,
                                &global_name,
                                IntPredicate::EQ,
                                lval,
                                rval,
                            );
                        }
                        Statement::MultSubstitution { meta, lhe, op, rhe } => {
                            print!("Coming");
                        }
                        Statement::InitializationBlock { .. } => (),
                        Statement::Declaration { .. } => (),
                        _ => unreachable!(),
                    }
                }
            }
            _ => unreachable!(),
        }
    }

    fn _resolve_expr(
        &mut self,
        codegen: &CodeGen<'ctx>,
        expr: &Expression,
    ) -> BasicValueEnum<'ctx> {
        match expr {
            Expression::InfixOp {
                meta: _,
                lhe,
                infix_op,
                rhe,
            } => {
                let lval = self._resolve_expr(codegen, lhe.as_ref());
                let rval = self._resolve_expr(codegen, rhe.as_ref());

                let res = self._resolve_infix_op(
                    codegen,
                    infix_op,
                    lval.into_int_value(),
                    rval.into_int_value(),
                );
                return res.as_basic_value_enum();
            }
            Expression::PrefixOp {
                meta,
                prefix_op,
                rhe,
            } => {
                let rval = self._resolve_expr(codegen, rhe.as_ref());
                let res = self._resolve_prefix_op(codegen, prefix_op, rval.into_int_value());
                return res.as_basic_value_enum();
            }
            Expression::Variable { meta, name, access } => self._get_value(codegen, name),
            Expression::Number(_, num) => {
                let val = codegen
                    .context
                    .i128_type()
                    .const_int_from_string(&num.to_string().to_owned(), StringRadix::Decimal);
                return val.unwrap().as_basic_value_enum();
            }
            _ => unreachable!(),
        }
    }

    fn _resolve_prefix_op(
        &self,
        codegen: &CodeGen<'ctx>,
        prefix_op: &ExpressionPrefixOpcode,
        rval: IntValue<'ctx>,
    ) -> IntValue<'ctx> {
        let zero = codegen.context.i128_type().const_zero();
        let temp = match prefix_op {
            ExpressionPrefixOpcode::Sub => zero.const_sub(rval),
            _ => unreachable!(),
        };
        return codegen.mod_value(temp);
    }

    fn _resolve_infix_op(
        &self,
        codegen: &CodeGen<'ctx>,
        infix_op: &ExpressionInfixOpcode,
        lval: IntValue<'ctx>,
        rval: IntValue<'ctx>,
    ) -> IntValue<'ctx> {
        let temp = match infix_op {
            ExpressionInfixOpcode::Add => codegen.builder.build_int_add(lval, rval, "add"),
            ExpressionInfixOpcode::BitAnd => codegen.builder.build_and(lval, rval, "and"),
            ExpressionInfixOpcode::BitOr => codegen.builder.build_or(lval, rval, "or"),
            ExpressionInfixOpcode::BitXor => codegen.builder.build_xor(lval, rval, "xor"),
            ExpressionInfixOpcode::Div => codegen.builder.build_int_signed_div(lval, rval, "sdiv"),
            ExpressionInfixOpcode::IntDiv => {
                codegen.builder.build_int_signed_div(lval, rval, "sdiv")
            }
            ExpressionInfixOpcode::Mod => codegen.builder.build_int_signed_rem(lval, rval, "mod"),
            ExpressionInfixOpcode::Mul => codegen.builder.build_int_mul(lval, rval, "mul"),
            ExpressionInfixOpcode::Sub => codegen.builder.build_int_sub(lval, rval, "sub"),
            _ => unreachable!(),
        };
        return codegen.mod_value(temp);
    }

    fn _get_value(&self, codegen: &CodeGen<'ctx>, name: &String) -> BasicValueEnum<'ctx> {
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        if self.args.contains(name) {
            let param_struct_ptr = codegen
                .get_struct(templ_struct_ptr, 0, "param")
                .into_pointer_value();
            let index = self.args.iter().position(|s| s == name).unwrap() as u32;
            return codegen.get_struct(param_struct_ptr, index, name);
        } else if self.inputs.contains(&name) {
            let mut index = self.inputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            return codegen.get_struct(templ_struct_ptr, index, name);
        } else if self.intermediates.contains(&name) {
            return *self.intermediates2value.get(name).unwrap();
        } else if self.outputs.contains(&name) {
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            index += self.inputs.len() as u32;
            return codegen.get_struct(templ_struct_ptr, index, name);
        } else {
            unreachable!();
        }
    }

    fn _set_value(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &'ast String,
        value: BasicValueEnum<'ctx>,
    ) {
        let templ_struct_ptr = self.templ_struct_ptr.unwrap();
        if self.outputs.contains(&name) {
            let mut index = self.outputs.iter().position(|&s| s == name).unwrap() as u32;
            index += 2;
            index += self.inputs.len() as u32;
            codegen.set_struct(templ_struct_ptr, index, name, value);
        } else if self.intermediates.contains(&name) {
            self.intermediates2value
                .insert(name, value.as_basic_value_enum());
        } else {
            unreachable!();
        }
    }

    fn _add_constraint(
        &self,
        codegen: &CodeGen<'ctx>,
        global_name: &String,
        op: IntPredicate,
        lval: IntValue<'ctx>,
        rval: IntValue<'ctx>,
    ) {
        let gv = codegen
            .module
            .add_global(codegen.context.i128_type(), None, global_name);
        let eq_val = codegen
            .builder
            .build_int_compare(op, lval, rval, &global_name);
        codegen.builder.build_store(gv.as_pointer_value(), eq_val);
    }

    fn gen_ir(&mut self, codegen: &CodeGen<'ctx>) {
        self._collect_information(codegen);
        self._gen_struct_and_function(codegen);
        self._fillin_initial_function(codegen);
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

    fn mod_value(&self, value: IntValue<'ctx>) -> IntValue<'ctx> {
        let global_p = self
            .context
            .i128_type()
            .const_int_from_string(GLOBAL_P, StringRadix::Decimal)
            .unwrap();
        return value.const_signed_remainder(global_p);
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
    match parser::run_parser(
        "./examples/BabyAdd-babyjub-circomlib.circom".to_string(),
        links,
    ) {
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
                            init_func_value: None,
                            templ_struct_ptr: None,
                            intermediates2value: HashMap::new(),
                            constraint_count: 0,
                        };
                        template_codegen.gen_ir(&codegen);
                    }
                    Definition::Function {
                        meta,
                        name,
                        args,
                        arg_location,
                        body,
                    } => (),
                }
            }
            let result = codegen
                .module
                .print_to_file("./examples/BabyAdd-babyjub-circomlib.ll");
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
