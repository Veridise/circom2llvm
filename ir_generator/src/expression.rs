use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::namer::name_signal;
use super::scope::ScopeTrait;

use inkwell::types::{BasicType, BasicTypeEnum, StringRadix};
use inkwell::values::{BasicValue, BasicValueEnum, InstructionValue, IntValue, PointerValue};
use inkwell::{AddressSpace, IntPredicate};
use program_structure::ast::{
    Access, Expression, ExpressionInfixOpcode, ExpressionPrefixOpcode, Statement, VariableType,
};

use num_traits::cast::ToPrimitive;

fn merge_type<'ctx>(
    a: Option<BasicTypeEnum<'ctx>>,
    b: Option<BasicTypeEnum<'ctx>>,
) -> Option<BasicTypeEnum<'ctx>> {
    match a {
        Some(..) => {
            return a;
        }
        None => match b {
            Some(..) => {
                return b;
            }
            None => {
                return None;
            }
        },
    }
}

fn infer_dimensions<'ctx>(expr: &Expression, scope: &mut dyn ScopeTrait<'ctx>) {
    match expr {
        Expression::AnonymousComp { .. } => (),
        Expression::ArrayInLine { meta: _, values } => {
            for v in values {
                infer_dimensions(v, scope)
            }
        }
        Expression::Call {
            meta: _,
            id,
            args,
        } => {
            scope.add_dep_function(id);
            for arg in args {
                infer_dimensions(arg, scope);
            }
        }
        Expression::InfixOp {
            meta: _,
            lhe,
            infix_op: _,
            rhe,
        } => {
            infer_dimensions(lhe, scope);
            infer_dimensions(rhe, scope);
        }
        Expression::InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            infer_dimensions(cond, scope);
            infer_dimensions(if_true, scope);
            infer_dimensions(if_false, scope);
        }
        Expression::Number(_, _) => (),
        Expression::ParallelOp { meta: _, rhe } => infer_dimensions(rhe, scope),
        Expression::PrefixOp {
            meta: _,
            prefix_op: _,
            rhe,
        } => infer_dimensions(rhe, scope),
        Expression::Tuple { meta: _, values } => {
            for v in values {
                infer_dimensions(v, scope)
            }
        }
        Expression::UniformArray {
            meta: _,
            value,
            dimension,
        } => {
            infer_dimensions(value, scope);
            infer_dimensions(dimension, scope);
        }
        Expression::Variable {
            meta: _,
            name,
            access,
        } => resolve_access(name, access, scope),
    }
}

pub fn infer_type<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> Option<BasicTypeEnum<'ctx>> {
    match expr {
        Expression::AnonymousComp { .. } => {
            println!("Expr: AnonymousComp");
            unreachable!();
        }
        Expression::ArrayInLine { meta: _, values } => {
            let arr_ty = codegen.build_array_ty(&vec![values.len() as u32]);
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Call { id, .. } => {
            let called_fn = scope.match_fn_val(codegen, id);
            return Some(called_fn.get_type().get_return_type().unwrap());
        }
        Expression::InfixOp { lhe, rhe, .. } => {
            let lty = infer_type(codegen, lhe, scope);
            let rty = infer_type(codegen, rhe, scope);
            return merge_type(lty, rty);
        }
        Expression::InlineSwitchOp {
            if_true, if_false, ..
        } => {
            let lty = infer_type(codegen, if_true.as_ref(), scope);
            let rty = infer_type(codegen, if_false.as_ref(), scope);
            return merge_type(lty, rty);
        }
        Expression::Number(..) => {
            return Some(codegen.val_ty.as_basic_type_enum());
        }
        Expression::ParallelOp { rhe, .. } => {
            return infer_type(codegen, rhe.as_ref(), scope);
        }
        Expression::PrefixOp { rhe, .. } => {
            return infer_type(codegen, rhe.as_ref(), scope);
        }
        Expression::Tuple { .. } => {
            println!("Expr: Tuple");
            unreachable!();
        }
        Expression::UniformArray { .. } => {
            let mut dimensions = Vec::new();
            let _ = resolve_uniform_array(codegen, expr, scope, &mut dimensions);
            let arr_ty = codegen.build_array_ty(&dimensions);
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Variable {
            name, access, ..
        } => {
            if access.len() == 0 {
                return Some(scope.get_var_ty(name).unwrap().as_basic_type_enum());
            } else {
                return None;
            }
        }
    }
}

pub fn resolve_statement_initially<'ctx>(
    codegen: &CodeGen<'ctx>,
    stmt: &Statement,
    scope: &mut dyn ScopeTrait<'ctx>,
    init_xtype: &VariableType,
) {
    match stmt {
        Statement::Assert { meta: _, arg } => {
            infer_dimensions(arg, scope);
        }
        Statement::Block { meta: _, stmts } => {
            for _stmt in stmts {
                resolve_statement_initially(codegen, _stmt, scope, init_xtype);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            infer_dimensions(lhe, scope);
            infer_dimensions(rhe, scope);
        }
        Statement::Declaration {
            meta: _,
            xtype: _,
            name,
            dimensions,
            is_constant: _,
        } => {
            let dims = resolve_dimensions(dimensions);
            let dims_len = dims.len().clone();
            match init_xtype {
                VariableType::Var => {
                    // Update type of variable;
                    let var_ty;
                    if dims_len == 0 {
                        var_ty = codegen.val_ty.as_basic_type_enum();
                    } else {
                        var_ty = codegen.build_array_ty(&dims).as_basic_type_enum()
                    }
                    scope.set_var_ty(name, var_ty);
                    // Update variable table;
                    scope.add_var(name)
                }
                VariableType::Component => scope.add_dep_component(name),
                VariableType::AnonymousComponent => {
                    println!("VariableType: AnonymousComponent");
                    unreachable!()
                }
                // We don't handle signals here because they are limited in template.
                VariableType::Signal(_, _) => (),
            }
            // Update Dimensions;
            scope.set_var_dims(name, dims);
        }
        Statement::IfThenElse {
            meta: _,
            cond,
            if_case,
            else_case,
        } => {
            infer_dimensions(cond, scope);
            resolve_statement_initially(codegen, if_case.as_ref(), scope, init_xtype);
            match else_case {
                Some(else_) => resolve_statement_initially(codegen, else_, scope, init_xtype),
                None => (),
            }
        }
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => {
            for init in initializations {
                resolve_statement_initially(codegen, init, scope, xtype);
            }
        }
        Statement::LogCall { .. } => (),
        Statement::MultSubstitution {
            meta: _,
            lhe,
            op: _,
            rhe,
        } => {
            infer_dimensions(lhe, scope);
            infer_dimensions(rhe, scope);
        }
        Statement::Return { meta: _, value } => infer_dimensions(value, scope),
        Statement::Substitution {
            meta: _,
            var,
            access,
            op: _,
            rhe,
        } => {
            infer_dimensions(rhe, scope);
            resolve_access(var, access, scope);
        }
        Statement::While { stmt, .. } => {
            resolve_statement_initially(codegen, stmt.as_ref(), scope, init_xtype)
        }
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
            if values.len() > MAX_ARRAYSIZE as usize {
                println!("Err: max arraysize is {}", MAX_ARRAYSIZE);
                unreachable!()
            }
            let mut res = Vec::new();
            for val in values {
                res.push(resolve_expr(codegen, val, scope).into_int_value());
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
            let mut dimensions = Vec::new();
            let _ = resolve_uniform_array(codegen, expr, scope, &mut dimensions);
            let arr_ty = codegen.build_array_ty(&dimensions);
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

fn resolve_uniform_array<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
    dimensions: &mut Vec<u32>,
) -> IntValue<'ctx> {
    match expr {
        Expression::UniformArray {
            meta: _,
            value,
            dimension,
        } => {
            let size = match dimension.as_ref() {
                Expression::Number(_, big_int) => big_int.to_u32().unwrap(),
                // 0 here will be converted to MAX_ARRAYSIZE when we generate
                _ => 0,
            };
            dimensions.push(size);
            return resolve_uniform_array(codegen, value, scope, dimensions);
        }
        _ => {
            let res = resolve_expr(codegen, expr, scope).into_int_value();
            return res;
        }
    }
}

pub fn resolve_dimensions<'ctx>(dims: &Vec<Expression>) -> Vec<u32> {
    return dims
        .iter()
        .map(|dim| match dim {
            Expression::Number(_, bigint) => bigint.to_u32().unwrap(),
            _ => 0,
        })
        .collect();
}

fn resolve_access<'ctx>(name: &String, access: &Vec<Access>, scope: &mut dyn ScopeTrait<'ctx>) {
    if access.len() == 0 {
        return;
    } else {
        let first_access = &access[0];
        let is_array = match first_access {
            Access::ArrayAccess(..) => true,
            Access::ComponentAccess(..) => false,
        };
        if is_array {
            let dims: Vec<u32> = access
                .iter()
                .map(|a| match a {
                    Access::ArrayAccess(expr) => match expr {
                        Expression::Number(_, bigint) => bigint.to_u32().unwrap(),
                        _ => 0,
                    },
                    Access::ComponentAccess(..) => unreachable!(),
                })
                .collect();
            scope.set_var_dims(name, dims);
        }
    }
}
