use crate::codegen::CodeGen;
use crate::expression::resolve_expr;
use crate::namer::{name_if_block, name_loop_block};
use crate::scope::ScopeTrait;
use inkwell::values::{BasicValue, BasicValueEnum};
use program_structure::ast::{Access, AssignOp, Statement};

pub fn resolve_stmt<'ctx>(
    scope: &mut dyn ScopeTrait<'ctx>,
    codegen: &CodeGen<'ctx>,
    stmt: &Statement,
) {
    match stmt {
        Statement::Assert { meta: _, arg } => {
            let val = resolve_expr(codegen, arg, scope);
            if val.get_type().into_int_type() == codegen.context.bool_type() {
                codegen.build_assert(val.into_int_value());
            }
        }
        Statement::Block { meta: _, stmts } => {
            for stmt in stmts {
                resolve_stmt(scope, codegen, stmt);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            let lval = resolve_expr(codegen, lhe, scope).into_int_value();
            let rval = resolve_expr(codegen, rhe, scope).into_int_value();
            codegen.build_constraint(lval, rval);
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
            let if_bb = context.append_basic_block(current_fnc, &name_if_block(true, false));
            let else_bb = context.append_basic_block(current_fnc, &name_if_block(false, false));

            // current -> if.true
            let cond = resolve_expr(codegen, cond, scope).into_int_value();
            builder.build_conditional_branch(cond, if_bb, else_bb);

            // if.true
            scope.set_current_exit_block(codegen, if_bb);

            resolve_stmt(scope, codegen, &if_case.as_ref());
            let if_end_bb = scope.get_current_exit_block();

            // if.false
            scope.set_current_exit_block(codegen, else_bb);
            match else_case {
                Some(else_stmt) => {
                    resolve_stmt(scope, codegen, &else_stmt.as_ref());
                }
                _ => (),
            }
            let else_end_bb = scope.get_current_exit_block();

            if codegen.ends_with_return(if_end_bb) && codegen.ends_with_return(else_end_bb) {
                return;
            };

            let exit_bb = context.append_basic_block(current_fnc, &name_if_block(false, true));
            // if.true -> if.exit
            codegen.build_block_transferring(if_end_bb, exit_bb);
            // if.false -> if.exit
            codegen.build_block_transferring(else_end_bb, exit_bb);

            scope.set_current_exit_block(codegen, exit_bb);
        }
        Statement::InitializationBlock {
            meta: _,
            xtype: _,
            initializations,
        } => {
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
                            scope.set_var(codegen, var, access, rval.as_basic_value_enum());
                        }
                        _ => unreachable!(),
                    },
                    Statement::Declaration {
                        name, dimensions, ..
                    } => {
                        let dims: Vec<BasicValueEnum<'ctx>> = dimensions
                            .iter()
                            .map(|d| resolve_expr(codegen, d, scope))
                            .collect();
                        scope.set_var_dims(name, dims);
                    }
                    _ => unreachable!(),
                }
            }
        }
        Statement::LogCall { .. } => (),
        Statement::MultSubstitution { .. } => {
            println!("Error: MultSubstitution isn't supported now.");
            unreachable!();
        }
        Statement::Return { meta: _, value } => {
            let rval = resolve_expr(codegen, value, scope).as_basic_value_enum();
            codegen.builder.build_return(Some(&rval));
        }
        Statement::Substitution {
            meta: _,
            var,
            access,
            op,
            rhe,
        } => {
            let res = resolve_expr(codegen, rhe, scope);
            match op {
                AssignOp::AssignConstraintSignal => {
                    let lval = scope.get_var(codegen, var, access).into_int_value();
                    let rval = res.into_int_value();
                    codegen.build_constraint(lval, rval);
                    if access.len() == 0 {
                        let self_comp_name = scope.get_name().clone();
                        let _access = vec![Access::ComponentAccess(var.clone())];
                        // Write in signal
                        scope.set_var(
                            codegen,
                            &self_comp_name,
                            &_access,
                            res.as_basic_value_enum(),
                        );
                        let new_var = scope.get_var(codegen, &self_comp_name, &_access);
                        // Read signal to local
                        scope.set_var(codegen, var, access, new_var);
                    } else {
                        scope.set_var(codegen, var, access, res.as_basic_value_enum());
                    }
                }
                AssignOp::AssignSignal => {
                    if access.len() == 0 {
                        let self_comp_name = scope.get_name().clone();
                        let _access = vec![Access::ComponentAccess(var.clone())];
                        // Write in signal
                        scope.set_var(
                            codegen,
                            &self_comp_name,
                            &_access,
                            res.as_basic_value_enum(),
                        );
                        let new_var = scope.get_var(codegen, &self_comp_name, &_access);
                        // Read signal to local
                        scope.set_var(codegen, var, access, new_var);
                    } else {
                        scope.set_var(codegen, var, access, res.as_basic_value_enum());
                    }
                }
                AssignOp::AssignVar => {
                    scope.set_var(codegen, var, access, res.as_basic_value_enum());
                }
            };
        }
        Statement::While {
            meta: _,
            cond,
            stmt,
        } => {
            let CodeGen { context, .. } = codegen;
            let current_func = scope.get_main_fn();

            // Get the body of while and the latch step of while.
            let (stmt_body, stmt_step) = match stmt.as_ref() {
                Statement::Block { meta: _, stmts } => {
                    if stmts.len() != 2 {
                        for stmt in stmts {
                            println!("Type: {}", print_stmt(stmt));
                        };
                        unreachable!();
                    }
                    let mut _iter = stmts.iter();
                    (_iter.next().unwrap(), _iter.next().unwrap())
                }
                _ => unreachable!(),
            };

            let current_bb = scope.get_current_exit_block();

            // current -> loop.body
            let loop_bb_name = name_loop_block(true, false, false, false);
            let loop_bb = context.append_basic_block(current_func, &loop_bb_name);
            codegen.build_block_transferring(current_bb, loop_bb);
            scope.set_current_exit_block(codegen, loop_bb);
            resolve_stmt(scope, codegen, stmt_body);
            let current_bb = scope.get_current_exit_block();

            // loop.body -> loop.latch
            let latch_bb_name = name_loop_block(false, false, true, false);
            let latch_bb = codegen
                .context
                .append_basic_block(current_func, &latch_bb_name);
            codegen.build_block_transferring(current_bb, latch_bb);
            scope.set_current_exit_block(codegen, latch_bb);
            resolve_stmt(scope, codegen, stmt_step);
            let cond_var = resolve_expr(codegen, cond, scope).into_int_value();

            // loop.latch -> loop.exit
            let exit_bb_name = name_loop_block(false, false, false, true);
            let exit_bb = codegen
                .context
                .append_basic_block(current_func, &exit_bb_name);
            codegen
                .builder
                .build_conditional_branch(cond_var, loop_bb, exit_bb);

            // loop.exit
            scope.set_current_exit_block(codegen, exit_bb);
        }
    }
}

pub fn flat_statements(stmt: &Statement) -> Vec<&Statement> {
    let mut all_stmts: Vec<&Statement> = vec![stmt];
    match stmt {
        Statement::Block { meta: _, stmts } => {
            for _stmt in stmts {
                all_stmts.append(&mut flat_statements(_stmt));
            }
        }
        Statement::IfThenElse {
            if_case, else_case, ..
        } => {
            all_stmts.append(&mut flat_statements(if_case.as_ref()));
            match else_case.as_ref() {
                Some(_stmt) => {
                    all_stmts.append(&mut flat_statements(_stmt.as_ref()));
                }
                None => (),
            }
        }
        Statement::InitializationBlock {
            initializations, ..
        } => {
            for init in initializations {
                all_stmts.append(&mut flat_statements(init));
            }
        }
        Statement::While { stmt, .. } => {
            all_stmts.append(&mut flat_statements(stmt.as_ref()));
        }
        _ => (),
    }
    return all_stmts;
}

pub fn print_stmt(stmt: &Statement) -> &'static str {
    match stmt {
        Statement::Assert { .. } => "Assert",
        Statement::Block { .. } => "Block",
        Statement::ConstraintEquality { .. } => "ConstraintEquality",
        Statement::Declaration { .. } => "Declaration",
        Statement::IfThenElse { .. } => "IfThenElse",
        Statement::InitializationBlock { .. } => "InitializationBlock",
        Statement::LogCall { .. } => "LogCall",
        Statement::MultSubstitution { .. } => "MultSubstitution",
        Statement::Return { .. } => "Return",
        Statement::Substitution { .. } => "Substitution",
        Statement::While { .. } => "While",
    }
}
