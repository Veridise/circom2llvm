use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::namer::name_signal;
use super::scope::ScopeTrait;

use inkwell::types::StringRadix;
use inkwell::values::{BasicValue, BasicValueEnum, InstructionValue, IntValue, PointerValue};
use inkwell::IntPredicate;
use program_structure::ast::{
    Expression, ExpressionInfixOpcode, ExpressionPrefixOpcode, Statement, VariableType,
};

fn prefetch_access_from_expr<'ctx>(expr: &Expression, scope: &mut dyn ScopeTrait<'ctx>) {
    match expr {
        Expression::AnonymousComp { .. } => (),
        Expression::ArrayInLine { meta: _, values } => {
            for v in values {
                prefetch_access_from_expr(v, scope)
            }
        }
        Expression::Call { .. } => (),
        Expression::InfixOp {
            meta: _,
            lhe,
            infix_op: _,
            rhe,
        } => {
            prefetch_access_from_expr(lhe, scope);
            prefetch_access_from_expr(rhe, scope);
        }
        Expression::InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            prefetch_access_from_expr(cond, scope);
            prefetch_access_from_expr(if_true, scope);
            prefetch_access_from_expr(if_false, scope);
        }
        Expression::Number(_, _) => (),
        Expression::ParallelOp { meta: _, rhe } => prefetch_access_from_expr(rhe, scope),
        Expression::PrefixOp {
            meta: _,
            prefix_op: _,
            rhe,
        } => prefetch_access_from_expr(rhe, scope),
        Expression::Tuple { meta: _, values } => {
            for v in values {
                prefetch_access_from_expr(v, scope)
            }
        }
        Expression::UniformArray {
            meta: _,
            value,
            dimension,
        } => {
            prefetch_access_from_expr(value, scope);
            prefetch_access_from_expr(dimension, scope);
        }
        Expression::Variable {
            meta: _,
            name,
            access,
        } => scope.set_var_dims_len(name, access.len()),
    }
}

pub fn resolve_initialization<'ctx>(
    stmt: &Statement,
    scope: &mut dyn ScopeTrait<'ctx>,
    init_xtype: &VariableType,
) {
    match stmt {
        Statement::Assert { meta: _, arg } => {
            prefetch_access_from_expr(arg, scope);
        }
        Statement::Block { meta: _, stmts } => {
            for _stmt in stmts {
                resolve_initialization(_stmt, scope, init_xtype);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            prefetch_access_from_expr(lhe, scope);
            prefetch_access_from_expr(rhe, scope);
        }
        Statement::Declaration {
            meta: _,
            xtype: _,
            name,
            dimensions,
            is_constant: _,
        } => {
            scope.set_var_dims_len(name, dimensions.len());
            match init_xtype {
                VariableType::Var => scope.add_var(name),
                VariableType::Component => scope.add_component(name),
                VariableType::AnonymousComponent => {
                    println!("VariableType: AnonymousComponent");
                    unreachable!()
                }
                // We don't handle signals here because they are limited in template.
                VariableType::Signal(_, _) => (),
            }
        }
        Statement::IfThenElse {
            meta: _,
            cond,
            if_case,
            else_case,
        } => {
            prefetch_access_from_expr(cond, scope);
            resolve_initialization(if_case.as_ref(), scope, init_xtype);
            match else_case {
                Some(else_) => resolve_initialization(else_, scope, init_xtype),
                None => (),
            }
        }
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => {
            for init in initializations {
                resolve_initialization(init, scope, xtype);
            }
        }
        Statement::LogCall { .. } => (),
        Statement::MultSubstitution {
            meta: _,
            lhe,
            op: _,
            rhe,
        } => {
            prefetch_access_from_expr(lhe, scope);
            prefetch_access_from_expr(rhe, scope);
        }
        Statement::Return { meta: _, value } => prefetch_access_from_expr(value, scope),
        Statement::Substitution {
            meta: _,
            var,
            access,
            op: _,
            rhe,
        } => {
            prefetch_access_from_expr(rhe, scope);
            scope.set_var_dims_len(var, access.len())
        }
        Statement::While { stmt, .. } => resolve_initialization(stmt.as_ref(), scope, init_xtype),
    }
}

pub fn resolve_expr<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> BasicValueEnum<'ctx> {
    match expr {
        Expression::AnonymousComp { .. } => {
            println!("Expr: AnonymousComp");
            unreachable!()
        }
        Expression::ArrayInLine { meta: _, values } => {
            let mut res = Vec::new();
            for val in values {
                res.push(resolve_expr(codegen, val, scope).into_int_value());
            }
            if values.len() > MAX_ARRAYSIZE as usize {
                println!("Err: max arraysize is {}", MAX_ARRAYSIZE);
                unreachable!()
            }
            return codegen.build_inline_array(&res).as_basic_value_enum();
        }
        Expression::Call { meta: _, id, args } => {
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
            return codegen
                .build_inline_switch(
                    resolve_expr(codegen, cond.as_ref(), scope).into_int_value(),
                    resolve_expr(codegen, if_true.as_ref(), scope).into_int_value(),
                    resolve_expr(codegen, if_false.as_ref(), scope).into_int_value(),
                )
                .as_basic_value_enum();
        }
        Expression::Number(_, num) => {
            let val = codegen
                .val_ty
                .const_int_from_string(&num.to_string().to_owned(), StringRadix::Decimal);
            return val.unwrap().as_basic_value_enum();
        }
        Expression::ParallelOp { .. } => {
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
        Expression::Tuple { .. } => {
            println!("Expr: Tuple");
            unreachable!()
        }
        Expression::UniformArray { .. } => {
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
        ExpressionInfixOpcode::Pow => codegen.build_pow(&[lval.into(), rval.into()], "pow"),
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

pub fn read_signal_from_struct<'ctx>(
    codegen: &CodeGen<'ctx>,
    inputs: &Vec<String>,
    outputs: &Vec<String>,
    signal_name: &String,
    templ_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
) -> BasicValueEnum<'ctx> {
    let container: &Vec<String>;
    let offset;
    let input;
    if inputs.contains(&signal_name) {
        container = inputs;
        offset = 2;
        input = true;
    } else if outputs.contains(&signal_name) {
        container = outputs;
        offset = 2 + inputs.len() as u32;
        input = false;
    } else {
        unreachable!()
    }
    let assign_name = name_signal(signal_name, templ_name, false, input, call_from_inner);
    let mut index = container.iter().position(|s| s == signal_name).unwrap() as u32;
    index += offset;
    return codegen.build_struct_getter(struct_ptr, index, &assign_name);
}

pub fn write_signal_to_struct<'ctx>(
    codegen: &CodeGen<'ctx>,
    inputs: &Vec<String>,
    outputs: &Vec<String>,
    templ_name: &String,
    signal_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
    v: BasicValueEnum<'ctx>,
) -> InstructionValue<'ctx> {
    let container: &Vec<String>;
    let offset;
    let input;
    if inputs.contains(&signal_name) {
        container = inputs;
        offset = 2;
        input = true;
    } else if outputs.contains(&signal_name) {
        container = outputs;
        offset = 2 + inputs.len() as u32;
        input = false;
    } else {
        unreachable!()
    }
    let assign_name = name_signal(signal_name, templ_name, false, input, call_from_inner);
    let mut index = container.iter().position(|s| s == signal_name).unwrap() as u32;
    index += offset;
    return codegen.build_struct_setter(struct_ptr, index, &assign_name, v);
}
