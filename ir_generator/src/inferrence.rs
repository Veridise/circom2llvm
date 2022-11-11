use super::codegen::{CodeGen, MAX_ARRAYSIZE};
use super::expression::resolve_uniform_array;
use super::scope::ScopeTrait;

use inkwell::types::{ArrayType, BasicType, BasicTypeEnum};
use inkwell::AddressSpace;
use program_structure::ast::{Access, Expression, Statement, VariableType};

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

fn infer_from_expr<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &mut dyn ScopeTrait<'ctx>,
) {
    match expr {
        Expression::AnonymousComp { .. } => {
            println!("Expr: AnonymousComp");
            unreachable!();
        }
        Expression::ArrayInLine { meta: _, values } => {
            for v in values {
                infer_from_expr(codegen, v, scope)
            }
        }
        Expression::Call { meta: _, id, args } => {
            scope.add_dependence(id);
            for arg in args {
                infer_from_expr(codegen, arg, scope);
            }
        }
        Expression::InfixOp {
            meta: _,
            lhe,
            infix_op: _,
            rhe,
        } => {
            infer_from_expr(codegen, lhe, scope);
            infer_from_expr(codegen, rhe, scope);
        }
        Expression::InlineSwitchOp {
            meta: _,
            cond,
            if_true,
            if_false,
        } => {
            infer_from_expr(codegen, cond, scope);
            infer_from_expr(codegen, if_true, scope);
            infer_from_expr(codegen, if_false, scope);
        }
        Expression::Number(_, _) => (),
        Expression::ParallelOp { meta: _, rhe } => infer_from_expr(codegen, rhe, scope),
        Expression::PrefixOp {
            meta: _,
            prefix_op: _,
            rhe,
        } => infer_from_expr(codegen, rhe, scope),
        Expression::Tuple { meta: _, values } => {
            for v in values {
                infer_from_expr(codegen, v, scope)
            }
        }
        Expression::UniformArray {
            meta: _,
            value,
            dimension,
        } => {
            infer_from_expr(codegen, value, scope);
            infer_from_expr(codegen, dimension, scope);
        }
        Expression::Variable {
            meta: _,
            name,
            access,
        } => resolve_access(codegen, name, access, scope),
    }
}

pub fn infer_from_statement<'ctx>(
    codegen: &CodeGen<'ctx>,
    stmt: &Statement,
    scope: &mut dyn ScopeTrait<'ctx>,
    init_xtype: &VariableType,
) {
    match stmt {
        Statement::Assert { meta: _, arg } => {
            infer_from_expr(codegen, arg, scope);
        }
        Statement::Block { meta: _, stmts } => {
            for _stmt in stmts {
                infer_from_statement(codegen, _stmt, scope, init_xtype);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            infer_from_expr(codegen, lhe, scope);
            infer_from_expr(codegen, rhe, scope);
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
                        var_ty = build_array_ty(codegen.val_ty.as_basic_type_enum(), &dims)
                            .as_basic_type_enum();
                    }
                    scope.set_var_ty(name, var_ty);
                }
                VariableType::Component => {
                    // Update
                    let strt_ty = codegen.context.opaque_struct_type(name).ptr_type(AddressSpace::Generic);
                    let var_ty;
                    if dims_len == 0 {
                        var_ty = strt_ty.as_basic_type_enum();
                    } else {
                        var_ty = build_array_ty(strt_ty.as_basic_type_enum(), &dims)
                            .as_basic_type_enum();
                    }
                    scope.set_var_ty(name, var_ty);
                    scope.add_comp_var(name);
                }
                VariableType::AnonymousComponent => {
                    println!("VariableType: AnonymousComponent");
                    unreachable!()
                }
                // We don't handle signals here because they are limited in template.
                VariableType::Signal(_, _) => (),
            }
            // Update variable table;
            scope.add_var(name);
        }
        Statement::IfThenElse {
            meta: _,
            cond,
            if_case,
            else_case,
        } => {
            infer_from_expr(codegen, cond, scope);
            infer_from_statement(codegen, if_case.as_ref(), scope, init_xtype);
            match else_case {
                Some(else_) => infer_from_statement(codegen, else_, scope, init_xtype),
                None => (),
            }
        }
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => {
            for init in initializations {
                infer_from_statement(codegen, init, scope, xtype);
            }
        }
        Statement::LogCall { .. } => (),
        Statement::MultSubstitution {
            meta: _,
            lhe,
            op: _,
            rhe,
        } => {
            infer_from_expr(codegen, lhe, scope);
            infer_from_expr(codegen, rhe, scope);
        }
        Statement::Return { meta: _, value } => infer_from_expr(codegen, value, scope),
        Statement::Substitution {
            meta: _,
            var,
            access,
            op: _,
            rhe,
        } => {
            // Collect dependencies of function.
            match rhe {
                Expression::Call {
                    meta: _,
                    id,
                    args: _,
                } => {
                    if scope.is_comp_var(var) {
                        scope.set_known_comp(var, id);
                    }
                    scope.add_dependence(id);
                }
                _ => (),
            }
            infer_from_expr(codegen, rhe, scope);
            resolve_access(codegen, var, access, scope);
        }
        Statement::While { stmt, .. } => {
            infer_from_statement(codegen, stmt.as_ref(), scope, init_xtype)
        }
    }
}

pub fn resolve_dimensions<'ctx>(dims: &Vec<Expression>) -> Vec<u32> {
    return dims
        .iter()
        .map(|dim| match dim {
            Expression::Number(_, bigint) => bigint.to_u32().unwrap(),
            _ => MAX_ARRAYSIZE,
        })
        .collect();
}

fn resolve_access<'ctx>(
    codegen: &CodeGen<'ctx>,
    name: &String,
    access: &Vec<Access>,
    scope: &mut dyn ScopeTrait<'ctx>,
) {
    if scope.has_var_ty(name) {
        return;
    }
    if access.len() == 0 {
        return;
    } else {
        let mut current_ty = codegen.val_ty.as_basic_type_enum();
        for a in access.iter().rev() {
            match a {
                Access::ArrayAccess(expr) => {
                    let dim = match expr {
                        Expression::Number(_, bigint) => bigint.to_u32().unwrap(),
                        _ => MAX_ARRAYSIZE,
                    };
                    current_ty = current_ty.array_type(dim).as_basic_type_enum();
                }
                Access::ComponentAccess(_) => {
                    current_ty = codegen
                        .context
                        .opaque_struct_type(name.as_str())
                        .ptr_type(AddressSpace::Generic)
                        .as_basic_type_enum();
                }
            }
        }
        scope.set_var_ty(name, current_ty);
    }
}

pub fn get_type_of_expr<'ctx>(
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
            let arr_ty = build_array_ty(
                codegen.val_ty.as_basic_type_enum(),
                &vec![values.len() as u32],
            );
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Call { id, .. } => {
            let called_fn = scope.match_fn_val(codegen, id);
            return Some(called_fn.get_type().get_return_type().unwrap());
        }
        Expression::InfixOp { lhe, rhe, .. } => {
            let lty = get_type_of_expr(codegen, lhe, scope);
            let rty = get_type_of_expr(codegen, rhe, scope);
            return merge_type(lty, rty);
        }
        Expression::InlineSwitchOp {
            if_true, if_false, ..
        } => {
            let lty = get_type_of_expr(codegen, if_true.as_ref(), scope);
            let rty = get_type_of_expr(codegen, if_false.as_ref(), scope);
            return merge_type(lty, rty);
        }
        Expression::Number(..) => {
            return Some(codegen.val_ty.as_basic_type_enum());
        }
        Expression::ParallelOp { rhe, .. } => {
            return get_type_of_expr(codegen, rhe.as_ref(), scope);
        }
        Expression::PrefixOp { rhe, .. } => {
            return get_type_of_expr(codegen, rhe.as_ref(), scope);
        }
        Expression::Tuple { .. } => {
            println!("Expr: Tuple");
            unreachable!();
        }
        Expression::UniformArray { .. } => {
            let mut dimensions = Vec::new();
            let _ = resolve_uniform_array(codegen, expr, scope, &mut dimensions);
            let arr_ty = build_array_ty(codegen.val_ty.as_basic_type_enum(), &dimensions);
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Variable { name, access, .. } => {
            if access.len() == 0 {
                return Some(scope.get_var_ty(name).as_basic_type_enum());
            } else {
                return None;
            }
        }
    }
}

pub fn build_array_ty<'ctx>(val_ty: BasicTypeEnum<'ctx>, dims: &Vec<u32>) -> ArrayType<'ctx> {
    assert!(dims.len() > 0);
    let mut i = 0;
    let size = dims[dims.len() - 1];
    let mut arr_ty = val_ty.array_type(size);
    for d in dims.iter().rev() {
        let mut size: u32 = *d;
        if size == 0 {
            size = MAX_ARRAYSIZE;
        }
        if i == 0 {
            // Don't array at the first iteration.
        } else {
            arr_ty = arr_ty.array_type(size);
        }
        i += 1;
    }
    return arr_ty;
}
