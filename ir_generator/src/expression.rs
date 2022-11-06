use crate::codegen::MAX_ARRAYSIZE;

use super::codegen::CodeGen;

use inkwell::types::StringRadix;
use inkwell::IntPredicate;

use inkwell::values::{BasicValue, BasicValueEnum, FunctionValue, IntValue, PointerValue, InstructionValue};
use program_structure::ast::{Access, ExpressionPrefixOpcode};
use program_structure::ast::{Expression, ExpressionInfixOpcode, Statement, VariableType};

pub trait Scope<'ctx> {
    fn add_var(&mut self, name: &String);
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
    fn get_main_fn(&self) -> FunctionValue<'ctx>;
    fn call(&self, codegen: &CodeGen<'ctx>, id: &String, args: &Vec<Expression>) -> BasicValueEnum<'ctx>;
}

pub fn resolve_initialization<'ctx>(
    stmt: &Statement,
    scope: &mut dyn Scope<'ctx>,
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

pub fn resolve_expr<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn Scope<'ctx>,
) -> BasicValueEnum<'ctx> {
    match expr {
        Expression::AnonymousComp {
            meta,
            id,
            is_parallel,
            params,
            signals,
        } => {
            println!("Expr: AnonymousComp");
            unreachable!()
        }
        Expression::ArrayInLine { meta: _, values } => {
            let mut res = Vec::new();
            for val in values {
                res.push(resolve_expr(codegen, val, scope).into_int_value());
            }
            if values.len() > MAX_ARRAYSIZE as usize {
                unreachable!()
            }
            return codegen.build_inline_array(&res).as_basic_value_enum();
        }
        Expression::Call { meta, id, args } => {
            return scope.call(codegen, id, args);
        }
        Expression::InfixOp {
            meta: _,
            lhe,
            infix_op,
            rhe,
        } => {
            let lval = resolve_expr(codegen, lhe.as_ref(), scope).into_int_value();
            let rval = resolve_expr(codegen, rhe.as_ref(), scope).into_int_value();

            let res = resolve_infix_op(codegen, infix_op, lval, rval);
            return res.as_basic_value_enum();
        }
        Expression::InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            return codegen.build_inline_switch(
                resolve_expr(codegen, cond.as_ref(), scope).into_int_value(),
                resolve_expr(codegen, if_true.as_ref(), scope).into_int_value(),
                resolve_expr(codegen, if_false.as_ref(), scope).into_int_value(),
            ).as_basic_value_enum();
        }
        Expression::Number(_, num) => {
            let val = codegen
                .val_ty
                .const_int_from_string(&num.to_string().to_owned(), StringRadix::Decimal);
            return val.unwrap().as_basic_value_enum();
        }
        Expression::ParallelOp { meta, rhe } => {
            println!("Expr: ParallelOp");
            unreachable!()
        }
        Expression::PrefixOp {
            meta: _,
            prefix_op,
            rhe,
        } => {
            let rval = resolve_expr(codegen, rhe.as_ref(), scope).into_int_value();
            let res = resolve_prefix_op(codegen, prefix_op, rval);
            return res.as_basic_value_enum();
        }
        Expression::Tuple { meta, values } => {
            println!("Expr: ParallelOp");
            unreachable!()
        }
        Expression::UniformArray {
            meta,
            value,
            dimension,
        } => {
            println!("Expr: UniformArray");
            unreachable!()
        }
        Expression::Variable {
            meta: _,
            name,
            access,
        } => scope.get_var(codegen, name, access),
    }
}

fn resolve_prefix_op<'ctx>(
    codegen: &CodeGen<'ctx>,
    prefix_op: &ExpressionPrefixOpcode,
    rval: IntValue<'ctx>,
) -> IntValue<'ctx> {
    let zero = codegen.val_ty.const_zero();
    let temp = match prefix_op {
        ExpressionPrefixOpcode::Sub => zero.const_sub(rval),
        _ => unreachable!(),
    };
    return codegen.build_result_modulo(temp);
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
        return codegen.build_result_modulo(temp);
    } else {
        return temp;
    }
}

pub fn read_signal_from_struct<'ctx> (
    codegen: &CodeGen<'ctx>,
    inputs: &Vec<String>,
    outputs: &Vec<String>,
    signal_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
) -> BasicValueEnum<'ctx> {
    let mut assign_name;
    if call_from_inner {
        assign_name = format!("{}", signal_name);
    } else {
        assign_name = format!("outter_{}", signal_name);
    }
    let container: &Vec<String>;
    let offset;
    if inputs.contains(&signal_name) {
        container = inputs;
        offset = 2;
        assign_name = format!("read_signal_input_{}", assign_name);
    } else if outputs.contains(&signal_name) {
        container = outputs;
        offset = 2 + inputs.len() as u32;
        assign_name = format!("read_signal_output_{}", assign_name);
    } else {
        unreachable!()
    }
    let mut index = container.iter().position(|s| s == signal_name).unwrap() as u32;
    index += offset;
    return codegen.build_struct_getter(struct_ptr, index, &assign_name);
}

pub fn write_signal_to_struct<'ctx> (
    codegen: &CodeGen<'ctx>,
    inputs: &Vec<String>,
    outputs: &Vec<String>,
    signal_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
    v: BasicValueEnum<'ctx>,
) -> InstructionValue<'ctx> {
    let mut assign_name;
    if call_from_inner {
        assign_name = format!("{}", signal_name);
    } else {
        assign_name = format!("outter_{}", signal_name);
    }
    let container: &Vec<String>;
    let offset;
    if inputs.contains(&signal_name) {
        container = inputs;
        offset = 2;
        assign_name = format!("write_signal_input_{}", assign_name);
    } else if outputs.contains(&signal_name) {
        container = outputs;
        offset = 2 + inputs.len() as u32;
        assign_name = format!("write_signal_output_{}", assign_name);
    } else {
        unreachable!()
    }
    let mut index = container.iter().position(|s| s == signal_name).unwrap() as u32;
    index += offset;
    return codegen.build_struct_setter(struct_ptr, index, &assign_name, v);
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
