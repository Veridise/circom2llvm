use super::codegen::CodeGen;

use inkwell::types::StringRadix;
use inkwell::IntPredicate;

use inkwell::values::{BasicValueEnum, FunctionValue, IntValue};
use program_structure::ast::ExpressionPrefixOpcode;
use program_structure::ast::{Expression, ExpressionInfixOpcode, Statement, VariableType};

pub trait Scope<'ctx, 'ast> {
    fn add_var(&mut self, v: &'ast String);
    fn get_variable(&self, codegen: &CodeGen<'ctx>, v: &'ast String) -> BasicValueEnum<'ctx>;
    fn set_variable(
        &mut self,
        codegen: &CodeGen<'ctx>,
        name: &'ast String,
        value: BasicValueEnum<'ctx>,
    );
    fn get_main_fn(&self) -> FunctionValue<'ctx>;
}

pub fn resolve_initialization<'ctx, 'ast>(
    stmt: &'ast Statement,
    scope: &mut dyn Scope<'ctx, 'ast>,
) {
    match stmt {
        Statement::Block { meta: _, stmts } => {
            for _stmt in stmts {
                resolve_initialization(_stmt, scope);
            }
        }
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
                        }
                        _ => (),
                    }
                }
            }
            _ => (),
        },
        _ => (),
    }
}

pub fn resolve_expr<'ctx, 'ast>(
    codegen: &CodeGen<'ctx>,
    expr: &'ast Expression,
    scope: &dyn Scope<'ctx, 'ast>,
) -> IntValue<'ctx> {
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
                lval,
                rval,
            );
            return res;
        }
        Expression::PrefixOp {
            meta: _,
            prefix_op,
            rhe,
        } => {
            let rval = resolve_expr(codegen, rhe.as_ref(), scope);
            let res = resolve_prefix_op(codegen, prefix_op, rval);
            return res;
        }
        Expression::Variable {
            meta: _,
            name,
            access: _,
        } => scope.get_variable(codegen, name).into_int_value(),
        Expression::Number(_, num) => {
            let val = codegen
                .val_ty
                .const_int_from_string(&num.to_string().to_owned(), StringRadix::Decimal);
            return val.unwrap();
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
    let mut _apply_mod = true;
    let temp = match infix_op {
        ExpressionInfixOpcode::Add => builder.build_int_add(lval, rval, "add"),
        ExpressionInfixOpcode::BitAnd => builder.build_and(lval, rval, "and"),
        ExpressionInfixOpcode::BitOr => builder.build_or(lval, rval, "or"),
        ExpressionInfixOpcode::BitXor => builder.build_xor(lval, rval, "xor"),
        ExpressionInfixOpcode::BoolAnd => builder.build_and(lval, rval, "and"),
        ExpressionInfixOpcode::BoolOr => builder.build_and(lval, rval, "or"),
        ExpressionInfixOpcode::Div => builder.build_int_signed_div(lval, rval, "sdiv"),
        ExpressionInfixOpcode::IntDiv => builder.build_int_signed_div(lval, rval, "sdiv"),
        ExpressionInfixOpcode::Mod => builder.build_int_signed_rem(lval, rval, "mod"),
        ExpressionInfixOpcode::Mul => builder.build_int_mul(lval, rval, "mul"),
        ExpressionInfixOpcode::Pow => unreachable!(),
        ExpressionInfixOpcode::ShiftL => builder.build_left_shift(lval, rval, "lshift"),
        ExpressionInfixOpcode::ShiftR => builder.build_right_shift(lval, rval, false, "rshift"),
        ExpressionInfixOpcode::Sub => builder.build_int_sub(lval, rval, "sub"),

        // Comparison
        ExpressionInfixOpcode::Eq => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::EQ, lval, rval, "eq")
        }
        ExpressionInfixOpcode::Greater => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::SGT, lval, rval, "sgt")
        }
        ExpressionInfixOpcode::GreaterEq => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::SGE, lval, rval, "sge")
        }

        ExpressionInfixOpcode::NotEq => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::NE, lval, rval, "ne")
        }

        ExpressionInfixOpcode::Lesser => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::SLT, lval, rval, "slt")
        }

        ExpressionInfixOpcode::LesserEq => {
            _apply_mod = false;
            builder.build_int_compare(IntPredicate::SLE, lval, rval, "sle")
        }
    };
    if _apply_mod {
        return codegen.mod_result(temp);
    } else {
        return temp;
    }
}

pub fn judge_stmt(stmt: &Statement) -> &str {
    return match stmt {
        Statement::Assert { .. } => "Is Assert",
        Statement::Block { .. } => "Is Block",
        Statement::ConstraintEquality { .. } => "Is ConstraintEquality",
        Statement::Declaration { .. } => "Is Declaration",
        Statement::IfThenElse { .. } => "Is IfThenElse",
        Statement::InitializationBlock { .. } => "Is InitializationBlock",
        Statement::LogCall { .. } => "Is LogCall",
        Statement::MultSubstitution { .. } => "Is MultSubstitution",
        Statement::Return { .. } => "Is Return",
        Statement::Substitution { .. } => "Is Substitution",
        Statement::While { .. } => "Is While",
    };
}
