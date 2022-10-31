use crate::expression::resolve_access;

use super::codegen::{CodeGen, APPLY_MOD};
use super::expression::{resolve_expr, Scope};

use inkwell::types::BasicType;
use inkwell::values::BasicValue;

use program_structure::ast::{AssignOp, Expression, Statement, VariableType};

pub fn resolve_stmt<'ctx, 'ast>(
    scope: &mut dyn Scope<'ctx, 'ast>,
    codegen: &CodeGen<'ctx>,
    stmt: &'ast Statement,
) {
    match stmt {
        Statement::Assert { meta: _, arg: _ } => {
            print!("Coming Assert");
        }
        Statement::Block { meta: _, stmts } => {
            for stmt in stmts {
                resolve_stmt(scope, codegen, stmt);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            let lval = resolve_expr(codegen, lhe, scope);
            let rval = resolve_expr(codegen, rhe, scope);
            codegen.add_constraint(lval, rval);
        }
        Statement::Declaration { .. } => (),
        Statement::IfThenElse {
            meta: _,
            cond,
            if_case,
            else_case,
        } => {
            let CodeGen {
                context, builder, ..
            } = codegen;
            let current_fnc = scope.get_main_fn();
            let current_bb = current_fnc.get_last_basic_block().unwrap();
            let if_bb = context.append_basic_block(current_fnc, "if.body");
            let else_bb = context.append_basic_block(current_fnc, "if.else");
            let end_bb = context.append_basic_block(current_fnc, "if.end");
            let cond = resolve_expr(codegen, cond, scope);

            // current -> if.body
            builder.position_at_end(current_bb);
            builder.build_conditional_branch(cond, if_bb, else_bb);

            // if.body
            builder.position_at_end(if_bb);
            resolve_stmt(scope, codegen, &if_case.as_ref());
            builder.build_unconditional_branch(end_bb);

            // if.else
            builder.position_at_end(else_bb);
            if let Some(else_stmt) = else_case {
                resolve_stmt(scope, codegen, &else_stmt.as_ref());
            }
            builder.build_unconditional_branch(end_bb);

            // if.end
            builder.position_at_end(end_bb);
        }
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => match xtype {
            VariableType::Var => {
                for init in initializations {
                    match init {
                        Statement::Substitution {
                            meta: _,
                            var,
                            access,
                            op,
                            rhe,
                        } => match op {
                            AssignOp::AssignVar => {
                                let rval = resolve_expr(codegen, rhe, scope);
                                scope.set_variable(
                                    codegen,
                                    var,
                                    &mut resolve_access(codegen, scope, access),
                                    rval.as_basic_value_enum(),
                                );
                            }
                            _ => unreachable!(),
                        },
                        Statement::Declaration { .. } => (),
                        _ => unreachable!(),
                    }
                }
            }
            _ => (),
        },
        Statement::LogCall { meta, args } => {
            println!("Coming LogCall");
        }
        Statement::MultSubstitution { meta, lhe, op, rhe } => {
            println!("Coming MultSubstitution");
        }
        Statement::Return { meta: _, value } => {
            let CodeGen { builder, .. } = codegen;
            let rval = resolve_expr(codegen, value, scope).as_basic_value_enum();
            builder.build_return(Some(&rval));
        }
        Statement::Substitution {
            meta: _,
            var,
            access,
            op,
            rhe,
        } => {
            let res = resolve_expr(codegen, rhe, scope);
            let access_val = &mut resolve_access(codegen, scope, access);
            scope.set_variable(codegen, var, access_val, res.as_basic_value_enum());
            match op {
                AssignOp::AssignConstraintSignal => {
                    let lval = scope.get_variable(codegen, var, access_val);
                    let rval = res;
                    codegen.add_constraint(lval.into_int_value(), rval);
                }
                _ => (),
            };
            match access {
                _ => (),
            }
        }
        Statement::While {
            meta: _,
            cond,
            stmt,
        } => {
            let CodeGen {
                context,
                builder,
                val_ty,
                ..
            } = codegen;
            let current_func = scope.get_main_fn();
            let current_bb = current_func.get_last_basic_block().unwrap();
            let loop_bb = context.append_basic_block(current_func, "loop.body");

            let (stmt_body, stmt_step) = match stmt.as_ref() {
                Statement::Block { meta: _, stmts } => {
                    assert!(stmts.len() == 2, "Uncanonized while block!");
                    let mut _iter = stmts.iter();
                    (_iter.next().unwrap(), _iter.next().unwrap())
                }
                _ => unreachable!(),
            };

            let ctrl_var_name = match cond {
                Expression::InfixOp { lhe, .. } => match lhe.as_ref() {
                    Expression::Variable { name, .. } => name,
                    _ => unreachable!(),
                },
                _ => unreachable!(),
            };

            // current -> loop.body
            builder.position_at_end(current_bb);
            let ctrl_var_entry = scope.get_variable(codegen, ctrl_var_name, &mut Vec::new());
            builder.build_unconditional_branch(loop_bb);

            // loop.body
            builder.position_at_end(loop_bb);
            let phi = builder.build_phi(val_ty.as_basic_type_enum(), "loop.i");
            phi.add_incoming(&[(&ctrl_var_entry, current_bb)]);
            scope.set_variable(codegen, ctrl_var_name, &mut Vec::new(), phi.as_basic_value());

            resolve_stmt(scope, codegen, stmt_body);
            builder.position_at_end(loop_bb);

            let latch_bb = context.append_basic_block(current_func, "loop.latch");
            builder.build_unconditional_branch(latch_bb);

            // loop.latch
            builder.position_at_end(latch_bb);
            unsafe { APPLY_MOD = false };
            resolve_stmt(scope, codegen, stmt_step);
            unsafe { APPLY_MOD = true };
            builder.position_at_end(latch_bb);
            let ctrl_var_latch = scope.get_variable(codegen, ctrl_var_name, &mut Vec::new());
            phi.add_incoming(&[(&ctrl_var_latch, latch_bb)]);
            let cond_var = resolve_expr(codegen, cond, scope);

            let exit_bb = context.append_basic_block(current_func, "loop.exit");
            builder.build_conditional_branch(cond_var, loop_bb, exit_bb);

            //loop exit
            builder.position_at_end(exit_bb);
        }
    }
}
