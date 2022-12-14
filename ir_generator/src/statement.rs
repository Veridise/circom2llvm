use crate::codegen::CodeGen;
use crate::expression::resolve_expr;
use crate::namer::{name_if_block, name_loop_block};
use crate::scope::ScopeTrait;
use inkwell::values::{BasicValue, BasicValueEnum};
use program_structure::ast::{AssignOp, Statement};

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
            let lval = resolve_expr(codegen, lhe, scope);
            let rval = resolve_expr(codegen, rhe, scope);
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
            let rval = resolve_expr(codegen, rhe, scope);
            match op {
                AssignOp::AssignConstraintSignal => {
                    let lval = scope.get_var(codegen, var, access);
                    codegen.build_constraint(lval, rval);
                }
                _ => (),
            }
            match op {
                AssignOp::AssignConstraintSignal | AssignOp::AssignSignal => {
                    scope.set_var(codegen, var, access, rval);
                }
                AssignOp::AssignVar => {
                    scope.set_var(codegen, var, access, rval);
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
            let stmts = match stmt.as_ref() {
                Statement::Block { meta: _, stmts } => stmts,
                _ => unreachable!(),
            };

            let current_bb = scope.get_current_exit_block();

            // current -> loop.header
            let header_bb_name = name_loop_block(true, false, false);
            let header_bb = codegen
                .context
                .append_basic_block(current_func, &header_bb_name);
            codegen.build_block_transferring(current_bb, header_bb);
            scope.set_current_exit_block(codegen, header_bb);
            let cond_var = resolve_expr(codegen, cond, scope).into_int_value();

            // loop.header -> loop.body
            let body_bb_name = name_loop_block(false, true, false);
            let body_bb = context.append_basic_block(current_func, &body_bb_name);
            scope.set_current_exit_block(codegen, body_bb);
            for stmt in stmts {
                resolve_stmt(scope, codegen, stmt);
            }
            let current_bb = scope.get_current_exit_block();
            codegen.build_block_transferring(current_bb, header_bb);

            // loop.header -> loop.exit
            let exit_bb_name = name_loop_block(false, false, true);
            let exit_bb = codegen
                .context
                .append_basic_block(current_func, &exit_bb_name);

            codegen.builder.position_at_end(header_bb);
            codegen
                .builder
                .build_conditional_branch(cond_var, body_bb, exit_bb);

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
