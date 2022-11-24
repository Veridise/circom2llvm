use crate::codegen::{CodeGen, MAX_ARRAYSIZE};
use crate::namer::{name_opaque_struct, name_template_struct};
use crate::scope::ScopeTrait;
use crate::template::Template;
use inkwell::types::{AnyTypeEnum, ArrayType, BasicType, BasicTypeEnum};
use inkwell::AddressSpace;
use num_traits::ToPrimitive;
use program_structure::ast::{Access, Expression, SignalType, Statement, VariableType};

pub fn infer_depended_components<'ctx>(stmt: &Statement, scope: &mut dyn ScopeTrait<'ctx>) {
    match stmt {
        Statement::Declaration { xtype, name, .. } => match xtype {
            VariableType::Component => {
                scope.add_comp_var(name);
            }
            _ => (),
        },
        Statement::Substitution { var, rhe, .. } => match rhe {
            Expression::Call { id, .. } => {
                if scope.is_comp_var(var) {
                    scope.set_known_comp(var, id);
                }
                scope.add_dependence(id);
            }
            _ => (),
        },
        _ => (),
    }
}

pub fn infer_dependences<'ctx>(expr: &Expression, scope: &mut dyn ScopeTrait<'ctx>) {
    match expr {
        Expression::Call { id, .. } => {
            scope.add_dependence(id);
        }
        _ => (),
    }
}

pub fn infer_type_from_expression<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &mut dyn ScopeTrait<'ctx>,
) {
    match expr {
        Expression::Variable {
            meta: _,
            name,
            access,
        } => {
            if scope.has_var_ty(name) {
                return;
            }
            if access.len() == 0 {
                return;
            }
            let ty = get_type_from_access(codegen, name, access, scope);
            scope.set_var_ty(name, ty);
        }
        Expression::Call { meta: _, id, args } => {
            // Self-called function.
            if id == scope.get_name() {
                return;
            }
            let called_func = scope.match_fn_val(codegen, id);
            for (idx, arg) in args.iter().enumerate() {
                match arg {
                    Expression::Variable { name, access, .. } => {
                        let mut arg_ty = called_func.get_nth_param(idx as u32).unwrap().get_type();
                        if scope.is_comp_var(name) {
                            continue;
                        }
                        if arg_ty.is_pointer_type() {
                            let real_ty = arg_ty.into_pointer_type().get_element_type();
                            match real_ty {
                                AnyTypeEnum::ArrayType(arr_ty) => {
                                    arg_ty = arr_ty.as_basic_type_enum();
                                }
                                _ => (),
                            }
                        }
                        for arg in access {
                            match arg {
                                Access::ArrayAccess(dim) => {
                                    let size = resolve_dim_expr(dim);
                                    arg_ty = construct_array_ty(arg_ty, &vec![size])
                                        .as_basic_type_enum();
                                }
                                Access::ComponentAccess(..) => {
                                    println!("Error: Can't infer from struct as parameters.");
                                    unreachable!();
                                }
                            }
                        }
                        scope.set_var_ty(name, arg_ty);
                    }
                    _ => (),
                }
            }
        }
        _ => (),
    }
}

pub fn infer_type_from_statement<'ctx>(
    codegen: &CodeGen<'ctx>,
    stmt: &Statement,
    scope: &mut dyn ScopeTrait<'ctx>,
) {
    match stmt {
        Statement::Declaration {
            meta: _,
            xtype,
            name,
            dimensions,
            is_constant: _,
        } => {
            let dims: Vec<u32> = dimensions.iter().map(|d| resolve_dim_expr(d)).collect();
            let val_ty: BasicTypeEnum;
            match xtype {
                VariableType::AnonymousComponent => {
                    println!("Error: AnonymousComponent isn't supported now.");
                    unreachable!()
                }
                VariableType::Var => {
                    val_ty = codegen.val_ty.as_basic_type_enum();
                }
                VariableType::Component => {
                    let comp_name = scope.get_known_comp(name);
                    let strt_name = name_template_struct(comp_name);
                    let strt_ty_op = codegen.module.get_struct_type(&strt_name);
                    let strt_ty = match strt_ty_op {
                        Some(strt_ty) => strt_ty,
                        None => codegen
                            .context
                            .opaque_struct_type(&name_opaque_struct(&strt_name)),
                    };
                    val_ty = strt_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
                }
                VariableType::Signal(..) => {
                    val_ty = codegen.val_ty.as_basic_type_enum();
                }
            }
            let ty = get_type_from_dimensions(val_ty, dims);
            scope.set_var_ty(name, ty);
        }
        _ => (),
    }
}

pub fn collect_signal<'ctx>(stmt: &Statement, template: &mut Template<'ctx>) {
    match stmt {
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => match xtype {
            VariableType::Signal(signal_type, _) => {
                for init in initializations {
                    match init {
                        Statement::Declaration { name, .. } => {
                            match signal_type {
                                SignalType::Input => {
                                    template.add_input(name);
                                }
                                SignalType::Intermediate => {
                                    template.add_intermediate(name);
                                }
                                SignalType::Output => {
                                    template.add_output(name);
                                }
                            };
                        }
                        _ => unreachable!(),
                    }
                }
            }
            _ => (),
        },
        _ => (),
    }
}

fn resolve_dim_expr<'ctx>(dim: &Expression) -> u32 {
    // match dim {
    //     Expression::Number(_, bigint) => {
    //         let mut valid_u32 = bigint.to_u32().unwrap();
    //         if valid_u32 == 0 {
    //             valid_u32 = 1;
    //         }
    //         return valid_u32;
    //     }
    //     _ => return MAX_ARRAYSIZE,
    // }
    return MAX_ARRAYSIZE;
}

fn get_type_from_access<'ctx>(
    codegen: &CodeGen<'ctx>,
    name: &String,
    access: &Vec<Access>,
    scope: &dyn ScopeTrait<'ctx>,
) -> BasicTypeEnum<'ctx> {
    let mut current_ty = codegen.val_ty.as_basic_type_enum();
    for a in access.iter().rev() {
        match a {
            Access::ArrayAccess(expr) => {
                let size = resolve_dim_expr(expr);
                current_ty = construct_array_ty(current_ty, &vec![size]).as_basic_type_enum();
            }
            Access::ComponentAccess(_) => {
                let comp_name = scope.get_known_comp(name);
                let strt_name = name_template_struct(comp_name);
                current_ty = codegen
                    .module
                    .get_struct_type(&strt_name)
                    .unwrap()
                    .as_basic_type_enum();
            }
        }
    }
    return current_ty;
}

fn get_type_from_dimensions<'ctx>(
    val_ty: BasicTypeEnum<'ctx>,
    dims: Vec<u32>,
) -> BasicTypeEnum<'ctx> {
    if dims.len() == 0 {
        return val_ty;
    } else {
        return construct_array_ty(val_ty, &dims).as_basic_type_enum();
    }
}

pub fn get_type_from_expr<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> Option<BasicTypeEnum<'ctx>> {
    match expr {
        Expression::AnonymousComp { .. } => {
            println!("Error: AnonymousComp isn't supported now.");
            unreachable!();
        }
        Expression::ArrayInLine { meta: _, values } => {
            let mut val_ty = get_type_from_expr(codegen, &values[0], scope).unwrap();
            if val_ty.is_pointer_type() {
                if val_ty
                    .into_pointer_type()
                    .get_element_type()
                    .is_array_type()
                {
                    val_ty = val_ty
                        .into_pointer_type()
                        .get_element_type()
                        .into_array_type()
                        .as_basic_type_enum();
                }
            }
            let arr_ty = construct_array_ty(val_ty, &vec![MAX_ARRAYSIZE as u32]);
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Call { id, .. } => {
            let called_fn = scope.match_fn_val(codegen, id);
            return Some(called_fn.get_type().get_return_type().unwrap());
        }
        Expression::InfixOp { lhe, rhe, .. } => {
            let lty = get_type_from_expr(codegen, lhe, scope);
            let rty = get_type_from_expr(codegen, rhe, scope);
            return merge_type(lty, rty);
        }
        Expression::InlineSwitchOp {
            if_true, if_false, ..
        } => {
            let lty = get_type_from_expr(codegen, if_true.as_ref(), scope);
            let rty = get_type_from_expr(codegen, if_false.as_ref(), scope);
            return merge_type(lty, rty);
        }
        Expression::Number(..) => {
            return Some(codegen.val_ty.as_basic_type_enum());
        }
        Expression::ParallelOp { rhe, .. } => {
            return get_type_from_expr(codegen, rhe.as_ref(), scope);
        }
        Expression::PrefixOp { rhe, .. } => {
            return get_type_from_expr(codegen, rhe.as_ref(), scope);
        }
        Expression::Tuple { .. } => {
            println!("Error: Tuple isn't supported now.");
            unreachable!();
        }
        Expression::UniformArray { .. } => {
            let arr_ty = construct_uniform_array_ty(codegen, expr, scope);
            return Some(arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum());
        }
        Expression::Variable { name, access, .. } => {
            let mut var_ty = scope.get_var_ty(name);
            for a in access {
                match a {
                    Access::ArrayAccess(..) => {
                        var_ty = var_ty.into_array_type().get_element_type();
                    }
                    Access::ComponentAccess(..) => {
                        return None;
                    }
                }
            }
            return Some(var_ty);
        }
    }
}

pub fn construct_array_ty<'ctx>(val_ty: BasicTypeEnum<'ctx>, dims: &Vec<u32>) -> ArrayType<'ctx> {
    assert!(dims.len() > 0);
    // let size = dims[dims.len() - 1];
    // Todo
    let size = MAX_ARRAYSIZE;
    let mut arr_ty = val_ty.array_type(size);
    for (i, d) in dims.iter().rev().enumerate() {
        if i == 0 {
            continue;
        }
        let size: u32 = *d;
        if size == 0 {
            println!("Error: Arraysize is zero.");
            unreachable!();
        }
        arr_ty = arr_ty.array_type(size);
    }
    return arr_ty;
}

pub fn construct_uniform_array_ty<'ctx>(
    codegen: &CodeGen<'ctx>,
    expr: &Expression,
    scope: &dyn ScopeTrait<'ctx>,
) -> ArrayType<'ctx> {
    let mut dimensions = Vec::new();
    let mut end = false;
    let mut current_expr = expr;
    let mut val_ty = codegen.val_ty.as_basic_type_enum();
    while !end {
        match current_expr {
            Expression::UniformArray {
                meta: _,
                value,
                dimension,
            } => {
                dimensions.push(resolve_dim_expr(dimension));
                current_expr = value.as_ref();
            }
            _ => {
                val_ty = get_type_from_expr(codegen, current_expr, scope).unwrap();
                end = true;
            }
        }
    }
    return construct_array_ty(val_ty, &dimensions);
}

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
