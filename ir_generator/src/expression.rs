use super::codegen::CodeGen;

use inkwell::types::StringRadix;

use inkwell::values::{BasicValue, BasicValueEnum, IntValue};
use program_structure::ast::ExpressionPrefixOpcode;
use program_structure::ast::{
    Expression, ExpressionInfixOpcode, SignalType, Statement, VariableType,
};

pub trait Scope<'ctx, 'ast> {
    fn add_input(&mut self, v: &'ast String);
    fn add_intermediate(&mut self, v: &'ast String);
    fn add_output(&mut self, v: &'ast String);
    fn add_var(&mut self, v: &'ast String);
    fn get_variable(&self, codegen: &CodeGen<'ctx>, v: &'ast String) -> BasicValueEnum<'ctx>;
    fn set_variable(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &'ast String,
        value: BasicValueEnum<'ctx>,
    );
}

pub fn resolve_initialization<'ctx, 'ast>(codegen: &CodeGen<'ctx>, stmt: &'ast Statement, scope: &mut dyn Scope<'ctx, 'ast>) {
    match stmt {
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => match xtype {
            VariableType::Var => {
                for init in initializations {
                    match init {
                        Statement::Declaration { name, .. } => {
                            scope.add_var(name);
                        },
                        Statement::Substitution { .. } => (),
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
                                        scope.add_input(name);
                                    }
                                    SignalType::Intermediate => {
                                        scope.add_intermediate(name);
                                    }
                                    SignalType::Output => {
                                        scope.add_output(name);
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

pub fn resolve_expr<'ctx, 'ast>(
    codegen: &CodeGen<'ctx>,
    expr: &'ast Expression,
    scope: &dyn Scope<'ctx, 'ast>,
) -> BasicValueEnum<'ctx> {
    match expr {
        Expression::InfixOp {
            meta: _,
            lhe,
            infix_op,
            rhe,
        } => {
            let lval = resolve_expr(codegen, lhe.as_ref(), scope);
            let rval = resolve_expr(codegen, rhe.as_ref(), scope);

            let res = resolve_infix_op(
                codegen,
                infix_op,
                lval.into_int_value(),
                rval.into_int_value(),
            );
            return res.as_basic_value_enum();
        }
        Expression::PrefixOp {
            meta: _,
            prefix_op,
            rhe,
        } => {
            let rval = resolve_expr(codegen, rhe.as_ref(), scope);
            let res = resolve_prefix_op(codegen, prefix_op, rval.into_int_value());
            return res.as_basic_value_enum();
        }
        Expression::Variable { meta: _, name, access: _ } => scope.get_variable(codegen, name),
        Expression::Number(_, num) => {
            let val = codegen
                .val_ty
                .const_int_from_string(&num.to_string().to_owned(), StringRadix::Decimal);
            return val.unwrap().as_basic_value_enum();
        }
        _ => unreachable!(),
    }
}

fn resolve_prefix_op<'ctx>(
    codegen: &CodeGen<'ctx>,
    prefix_op: &ExpressionPrefixOpcode,
    rval: IntValue<'ctx>,
) -> IntValue<'ctx> {
    let zero = codegen.context.i128_type().const_zero();
    let temp = match prefix_op {
        ExpressionPrefixOpcode::Sub => zero.const_sub(rval),
        _ => unreachable!(),
    };
    return codegen.mod_result(temp);
}

fn resolve_infix_op<'ctx>(
    codegen: &CodeGen<'ctx>,
    infix_op: &ExpressionInfixOpcode,
    lval: IntValue<'ctx>,
    rval: IntValue<'ctx>,
) -> IntValue<'ctx> {
    let CodeGen { builder, .. } = codegen;
    let temp = match infix_op {
        ExpressionInfixOpcode::Add => builder.build_int_add(lval, rval, "add"),
        ExpressionInfixOpcode::BitAnd => builder.build_and(lval, rval, "and"),
        ExpressionInfixOpcode::BitOr => builder.build_or(lval, rval, "or"),
        ExpressionInfixOpcode::BitXor => builder.build_xor(lval, rval, "xor"),
        ExpressionInfixOpcode::Div => builder.build_int_signed_div(lval, rval, "sdiv"),
        ExpressionInfixOpcode::IntDiv => builder.build_int_signed_div(lval, rval, "sdiv"),
        ExpressionInfixOpcode::Mod => builder.build_int_signed_rem(lval, rval, "mod"),
        ExpressionInfixOpcode::Mul => builder.build_int_mul(lval, rval, "mul"),
        ExpressionInfixOpcode::Sub => builder.build_int_sub(lval, rval, "sub"),
        _ => unreachable!(),
    };
    return codegen.mod_result(temp);
}
