use crate::inferrence::construct_uniform_array_ty;
use crate::namer::name_template_struct;

use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::namer::name_signal;
use super::scope::ScopeTrait;

use inkwell::types::{BasicTypeEnum, StringRadix};
use inkwell::values::{
    ArrayValue, BasicValue, BasicValueEnum, InstructionValue, IntValue, PointerValue,
};
use inkwell::{AddressSpace, IntPredicate};
use program_structure::ast::{
    Access, Expression, ExpressionInfixOpcode, ExpressionPrefixOpcode, Statement,
};

pub fn resolve_expr<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> BasicValueEnum<'ctx> {
    match expr {
        Expression::AnonymousComp { .. } => {
            println!("Error: AnonymousComp isn't supported now.");
            unreachable!()
        }
        Expression::ArrayInLine { .. } => {
            let array_val = resolve_inline_array(codegen, expr, scope).into_array_value();
            return codegen.build_inline_array(array_val).as_basic_value_enum();
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
            println!("Error: ParallelOp isn't supported now.");
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
            println!("Error: Tuple isn't supported now.");
            unreachable!()
        }
        Expression::UniformArray { .. } => {
            let arr_ty = construct_uniform_array_ty(codegen, expr, scope);
            let ptr = codegen.builder.build_alloca(arr_ty, "uniform_array");
            return ptr.as_basic_value_enum();
        }
        Expression::Variable {
            meta: _,
            name,
            access,
        } => scope.get_var(codegen, name, access),
    }
}

fn resolve_inline_array<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> BasicValueEnum<'ctx> {
    match expr {
        Expression::ArrayInLine { meta: _, values } => {
            if values.len() > MAX_ARRAYSIZE as usize {
                println!(
                    "Error: Max arraysize is {}, current is {}.",
                    MAX_ARRAYSIZE,
                    values.len()
                );
                unreachable!()
            }
            let mut array_values = Vec::new();
            for val in values {
                array_values.push(resolve_inline_array(codegen, val, scope));
            }
            let array_ty = array_values[0].get_type();
            let array_val = match array_ty {
                BasicTypeEnum::ArrayType(ty) => {
                    let values: Vec<ArrayValue> =
                        array_values.iter().map(|v| v.into_array_value()).collect();
                    ty.const_array(&values)
                }
                BasicTypeEnum::IntType(ty) => {
                    let values: Vec<IntValue> =
                        array_values.iter().map(|v| v.into_int_value()).collect();
                    ty.const_array(&values)
                }
                _ => unreachable!(),
            };
            return array_val.as_basic_value_enum();
        }
        _ => return resolve_expr(codegen, expr, scope),
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
    templ_name: &String,
    signal_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
) -> BasicValueEnum<'ctx> {
    let container: &Vec<String>;
    let offset;
    let input;
    let (inputs, outputs) = codegen.get_input_output_names(templ_name).unwrap();
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
    let strt_ty = struct_ptr.get_type().get_element_type().into_struct_type();
    let real_struct_ptr;
    if strt_ty.count_fields() == 0 {
        let real_strt_ty = codegen
            .module
            .get_struct_type(&name_template_struct(templ_name, "circuit"))
            .unwrap();
        real_struct_ptr = codegen.builder.build_pointer_cast(
            struct_ptr,
            real_strt_ty.ptr_type(AddressSpace::Generic),
            "ptr_cast",
        );
    } else {
        real_struct_ptr = struct_ptr;
    }
    return codegen.build_struct_getter(real_struct_ptr, index, &assign_name);
}

pub fn write_signal_to_struct<'ctx>(
    codegen: &CodeGen<'ctx>,
    templ_name: &String,
    signal_name: &String,
    struct_ptr: PointerValue<'ctx>,
    call_from_inner: bool,
    v: BasicValueEnum<'ctx>,
) -> InstructionValue<'ctx> {
    let container: &Vec<String>;
    let offset;
    let input;
    let (inputs, outputs) = codegen.get_input_output_names(templ_name).unwrap();
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

pub fn flat_expressions<'ctx>(expr: &Expression) -> Vec<&Expression> {
    let mut all_exprs: Vec<&Expression> = vec![expr];
    match expr {
        Expression::AnonymousComp {
            params, signals, ..
        } => {
            for p in params {
                all_exprs.append(&mut flat_expressions(p));
            }
            for s in signals {
                all_exprs.append(&mut flat_expressions(s));
            }
        }
        Expression::ArrayInLine { values, .. } => {
            for v in values {
                all_exprs.append(&mut flat_expressions(v));
            }
        }
        Expression::Call { args, .. } => {
            for a in args {
                all_exprs.append(&mut flat_expressions(a));
            }
        }
        Expression::InfixOp { lhe, rhe, .. } => {
            all_exprs.append(&mut flat_expressions(lhe.as_ref()));
            all_exprs.append(&mut flat_expressions(rhe.as_ref()));
        }
        Expression::InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            all_exprs.append(&mut flat_expressions(cond.as_ref()));
            all_exprs.append(&mut flat_expressions(if_true.as_ref()));
            all_exprs.append(&mut flat_expressions(if_false.as_ref()));
        }
        Expression::Number(..) => (),
        Expression::ParallelOp { meta: _, rhe } => {
            all_exprs.append(&mut flat_expressions(rhe.as_ref()));
        }
        Expression::PrefixOp { rhe, .. } => {
            all_exprs.append(&mut flat_expressions(rhe.as_ref()));
        }
        Expression::Tuple { meta: _, values } => {
            for v in values {
                all_exprs.append(&mut flat_expressions(v));
            }
        }
        Expression::UniformArray {
            meta: _,
            value,
            dimension,
        } => {
            all_exprs.append(&mut flat_expressions(value.as_ref()));
            all_exprs.append(&mut flat_expressions(dimension.as_ref()));
        }
        Expression::Variable { .. } => (),
    }
    return all_exprs;
}

pub fn flat_expressions_from_statement<'ctx>(stmt: &Statement) -> Vec<&Expression> {
    let mut all_exprs: Vec<&Expression> = vec![];
    match stmt {
        Statement::Assert { meta: _, arg } => {
            all_exprs.append(&mut flat_expressions(arg));
        }
        Statement::Block { .. } => (),
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            all_exprs.append(&mut flat_expressions(lhe));
            all_exprs.append(&mut flat_expressions(rhe));
        }
        Statement::Declaration { dimensions, .. } => {
            for d in dimensions {
                all_exprs.append(&mut flat_expressions(d));
            }
        }
        Statement::IfThenElse { cond, .. } => {
            all_exprs.append(&mut flat_expressions(cond));
        }
        Statement::InitializationBlock { .. } => (),
        Statement::LogCall { .. } => (),
        Statement::MultSubstitution { lhe, rhe, .. } => {
            all_exprs.append(&mut flat_expressions(lhe));
            all_exprs.append(&mut flat_expressions(rhe));
        }
        Statement::Return { meta: _, value } => {
            all_exprs.append(&mut flat_expressions(value));
        }
        Statement::Substitution { access, rhe, .. } => {
            for a in access {
                match a {
                    Access::ArrayAccess(expr) => {
                        all_exprs.append(&mut flat_expressions(expr));
                    }
                    Access::ComponentAccess(..) => (),
                }
            }
            all_exprs.append(&mut flat_expressions(rhe));
        }
        Statement::While { cond, .. } => {
            all_exprs.append(&mut flat_expressions(cond));
        }
    }
    return all_exprs;
}
