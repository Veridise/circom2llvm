use std::collections::HashMap;

use crate::{environment::GlobalInformation, type_infer::construct_array_ty};
use crate::scope_information::ScopeInformation;
use inkwell::types::{BasicType, ArrayType};
use inkwell::values::ArrayValue;
use num_traits::ToPrimitive;
use program_structure::ast::{Expression, ExpressionInfixOpcode, ExpressionPrefixOpcode};

pub type Instantiation = Vec<u32>;
pub type ArgTable = HashMap<String, u32>;

pub fn resolve_expr_static<'ctx>(
    env: &GlobalInformation<'ctx>,
    scope_info: &ScopeInformation,
    expr: &Expression,
) -> Option<i64> {
    use Expression::*;
    match expr {
        InfixOp {
            meta: _,
            lhe,
            infix_op,
            rhe,
        } => {
            let lval = resolve_expr_static(env, scope_info, lhe.as_ref());
            let rval = resolve_expr_static(env, scope_info, rhe.as_ref());
            if lval.is_none() || rval.is_none() {
                None
            } else {
                Some(resolve_infix_op_static(
                    infix_op,
                    lval.unwrap(),
                    rval.unwrap(),
                ))
            }
        }
        InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            let cond = resolve_expr_static(env, scope_info, cond.as_ref());
            let lval = resolve_expr_static(env, scope_info, if_true.as_ref());
            let rval = resolve_expr_static(env, scope_info, if_false.as_ref());
            match cond {
                Some(v) => {
                    if v == 1 {
                        lval
                    } else {
                        rval
                    }
                }
                None => None,
            }
        }
        PrefixOp {
            meta: _,
            prefix_op,
            rhe,
        } => {
            let rval = resolve_expr_static(env, scope_info, rhe.as_ref());
            if rval.is_none() {
                None
            } else {
                Some(resolve_prefix_op_static(prefix_op, rval.unwrap()))
            }
        }
        Variable {
            meta: _,
            name,
            access,
        } => {
            if access.len() != 0 {
                None
            } else {
                let i = env.get_current_instantiation(scope_info.get_name());
                if i.contains_key(name) {
                    Some(i.get(name).unwrap().clone() as i64)
                } else {
                    None
                }
            }
        }
        Number { .. } => Some(resolve_number_static(expr)),
        _ => None,
    }
}

fn resolve_prefix_op_static<'ctx>(prefix_op: &ExpressionPrefixOpcode, rval: i64) -> i64 {
    use ExpressionPrefixOpcode::*;
    match prefix_op {
        Sub => -rval,
        BoolNot => !rval as i64,
        Complement => {
            println!("Error: Complement isn't supported now.");
            unreachable!();
        }
    }
}

fn resolve_infix_op_static<'ctx>(infix_op: &ExpressionInfixOpcode, lval: i64, rval: i64) -> i64 {
    use ExpressionInfixOpcode::*;
    match infix_op {
        Add => lval + rval,
        BitAnd => lval & rval,
        BitOr => lval | rval,
        BitXor => lval ^ rval,
        BoolAnd => lval & rval,
        BoolOr => lval | rval,
        Div => lval / rval,
        IntDiv => lval / rval,
        Mod => lval % rval,
        Mul => lval * rval,
        Pow => lval.pow(rval as u32),
        ShiftL => lval << rval,
        ShiftR => lval >> rval,
        Sub => lval - rval,

        // Comparison
        Eq => (lval == rval) as i64,
        Greater => (lval > rval) as i64,
        GreaterEq => (lval >= rval) as i64,
        NotEq => (lval != rval) as i64,
        Lesser => (lval < rval) as i64,
        LesserEq => (lval <= rval) as i64,
    }
}

pub fn resolve_uniform_array_static<'ctx>(
    env: &GlobalInformation<'ctx>,
    scope_info: &ScopeInformation,
    expr: &Expression,
) -> ArrayValue<'ctx> {
    let mut dims = 0;
    let mut end = false;
    let mut current_expr = expr;
    let mut element_val: u64 = 0;
    while !end {
        match current_expr {
            Expression::UniformArray {
                meta: _,
                value,
                dimension: _,
            } => {
                dims += 1;
                current_expr = value.as_ref();
            }
            _ => {
                match resolve_expr_static(env, scope_info, expr) {
                    Some(v) => element_val = v as u64,
                    None => (),
                }
                end = true;
            }
        }
    }
    let val = env.val_ty.const_int(element_val, true);
    let mut res = env.val_ty.const_array(&vec![val; env.arraysize as usize]);
    for _ in 1..dims {
        res = res.get_type().const_array(&vec![res; env.arraysize as usize]);
    }
    res
}

pub fn resolve_inline_array_static<'ctx>(
    env: &GlobalInformation<'ctx>,
    expr: &Expression,
) -> (ArrayType<'ctx>, Vec<u32>) {
    let mut dims = 0;
    let mut end = false;
    let mut current_expr = expr;
    let mut dims_record = Vec::new();
    while !end {
        match current_expr {
            Expression::ArrayInLine { meta: _, values } => {
                dims += 1;
                dims_record.push(values.len() as u32);
                current_expr = &values[0];
            }
            _ => {
                end = true;
            }
        }
    }
    let ty = construct_array_ty(env, env.val_ty.as_basic_type_enum(), dims);
    (ty, dims_record)
}

pub fn resolve_number_static<'ctx>(expr: &Expression) -> i64 {
    use Expression::*;
    match expr {
        Number(_, bigint) => bigint.to_i64().unwrap(),
        _ => {
            println!("Error: Unknown number expression: {}", print_expr(&expr));
            unreachable!()
        }
    }
}

pub fn resolve_component_instantiation<'ctx>(
    env: &GlobalInformation<'ctx>,
    scope_info: &ScopeInformation,
    expr: &Expression,
) -> Option<(String, Instantiation)> {
    match expr {
        Expression::Call { meta: _, id, args } => {
            if scope_info.is_component(id) {
                let instantiation: Instantiation = args
                    .iter()
                    .map(|a| {
                        resolve_expr_static(env, scope_info, a).unwrap() as u32
                    })
                    .collect();
                Some((id.clone(), instantiation))
            } else {
                None
            }
        }
        _ => {
            println!(
                "Error: Unknown main component instantiation expression: {}",
                print_expr(&expr)
            );
            unreachable!();
        }
    }
}

pub fn print_expr(expr: &Expression) -> &'static str {
    use Expression::*;
    match expr {
        AnonymousComp { .. } => "AnonymousComp",
        ArrayInLine { .. } => "ArrayInLine",
        Call { .. } => "Call",
        InfixOp { .. } => "InfixOp",
        InlineSwitchOp { .. } => "InlineSwitchOp",
        Number(..) => "Number",
        ParallelOp { .. } => "ParallelOp",
        PrefixOp { .. } => "PrefixOp",
        Tuple { .. } => "Tuple",
        UniformArray { .. } => "UniformArray",
        Variable { .. } => "Variable",
    }
}
