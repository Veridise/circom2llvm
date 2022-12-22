use crate::codegen::CodeGen;
use crate::environment::GlobalInformation;
use crate::expression_codegen::{resolve_dimension_as_record, resolve_expr};
use crate::expression_static::{resolve_expr_static, ArgTable};
use crate::namer::{name_if_block, name_loop_block};
use crate::scope::Scope;
use crate::scope_information::ScopeInformation;
use crate::utils::is_terminated_basicblock;
use inkwell::values::BasicValue;
use program_structure::ast::{AssignOp, Statement};

pub fn resolve_stmt<'ctx>(
    env: &GlobalInformation<'ctx>,
    codegen: &CodeGen<'ctx>,
    scope: &mut Scope<'ctx>,
    stmt: &Statement,
) {
    match stmt {
        Statement::Assert { meta: _, arg } => {
            let val = resolve_expr(env, codegen, scope, arg);
            if val.get_type().into_int_type() == codegen.context.bool_type() {
                codegen.build_assert(val.into_int_value());
            }
        }
        Statement::Block { meta: _, stmts } => {
            for stmt in stmts {
                resolve_stmt(env, codegen, scope, stmt);
            }
        }
        Statement::ConstraintEquality { meta: _, lhe, rhe } => {
            let lval = resolve_expr(env, codegen, scope, lhe);
            let rval = resolve_expr(env, codegen, scope, rhe);
            codegen.build_constraint(lval, rval);
        }
        Statement::Declaration { .. } => (),
        Statement::IfThenElse {
            meta: _,
            cond,
            if_case,
            else_case,
        } => {
            let current_fnc = scope.get_main_fn();
            let if_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(true, false));
            let else_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(false, false));

            // current -> if.true
            let cond = resolve_expr(env, codegen, scope, cond).into_int_value();
            codegen
                .builder
                .build_conditional_branch(cond, if_bb, else_bb);

            // if.true
            scope.set_current_exit_block(codegen, if_bb);

            resolve_stmt(env, codegen, scope, &if_case.as_ref());
            let if_end_bb = scope.get_current_exit_block();

            // if.false
            scope.set_current_exit_block(codegen, else_bb);
            match else_case {
                Some(else_stmt) => {
                    resolve_stmt(env, codegen, scope, &else_stmt.as_ref());
                }
                _ => (),
            }
            let else_end_bb = scope.get_current_exit_block();

            if is_terminated_basicblock(&if_end_bb) && is_terminated_basicblock(&else_end_bb) {
                return;
            };

            let exit_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(false, true));
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
                            let rval = resolve_expr(env, codegen, scope, rhe);
                            scope.set_var(env, codegen, var, access, rval.as_basic_value_enum());
                        }
                        _ => unreachable!(),
                    },
                    Statement::Declaration {
                        name, dimensions, ..
                    } => {
                        let dims = dimensions
                            .iter()
                            .map(|d| resolve_dimension_as_record(env, codegen, scope, d))
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
            let rval = resolve_expr(env, codegen, scope, value).as_basic_value_enum();
            codegen.builder.build_return(Some(&rval));
        }
        Statement::Substitution {
            meta: _,
            var,
            access,
            op,
            rhe,
        } => {
            let rval = resolve_expr(env, codegen, scope, rhe);
            match op {
                AssignOp::AssignConstraintSignal => {
                    let lval = scope.get_var(env, codegen, var, access);
                    codegen.build_constraint(lval, rval);
                }
                _ => (),
            }
            match op {
                AssignOp::AssignConstraintSignal | AssignOp::AssignSignal => {
                    scope.set_var(env, codegen, var, access, rval);
                }
                AssignOp::AssignVar => {
                    scope.set_var(env, codegen, var, access, rval);
                }
            };
        }
        Statement::While {
            meta: _,
            cond,
            stmt,
        } => {
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
            let cond_var = resolve_expr(env, codegen, scope, cond).into_int_value();

            // loop.header -> loop.body
            let body_bb_name = name_loop_block(false, true, false);
            let body_bb = codegen
                .context
                .append_basic_block(current_func, &body_bb_name);
            scope.set_current_exit_block(codegen, body_bb);
            for stmt in stmts {
                resolve_stmt(env, codegen, scope, stmt);
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

pub fn rewrite_stmt<'ctx>(
    env: &GlobalInformation<'ctx>,
    scope_info: &ScopeInformation<'ctx>,
    arg2val: &mut ArgTable,
    stmt: &Statement,
) -> Statement {
    use Statement::*;
    match stmt {
        Block { meta, stmts } => {
            let stmts = stmts
                .iter()
                .map(|s| rewrite_stmt(env, scope_info, arg2val, s))
                .collect();
            Block {
                meta: meta.clone(),
                stmts,
            }
        }
        IfThenElse {
            meta,
            cond,
            if_case,
            else_case,
        } => {
            let res = resolve_expr_static(env, scope_info, &arg2val, cond);
            match res {
                Some(b) => {
                    if b == 1 {
                        if_case.as_ref().clone()
                    } else {
                        match else_case {
                            Some(else_case) => else_case.as_ref().clone(),
                            // Empty Statement
                            None => Block {
                                meta: meta.clone(),
                                stmts: Vec::new(),
                            },
                        }
                    }
                }
                None => stmt.clone(),
            }
        }
        InitializationBlock {
            meta,
            xtype,
            initializations,
        } => {
            let initializations = initializations
                .iter()
                .map(|i| rewrite_stmt(env, scope_info, arg2val, i))
                .collect();
            InitializationBlock {
                meta: meta.clone(),
                xtype: xtype.clone(),
                initializations,
            }
        }
        Substitution {
            meta: _,
            var,
            access,
            op,
            rhe,
        } => {
            if access.len() == 0 {
                match op {
                    AssignOp::AssignVar => {
                        let res = resolve_expr_static(env, scope_info, arg2val, rhe);
                        match res {
                            Some(v) => {
                                arg2val.insert(var.clone(), v as u32);
                            }
                            None => (),
                        }
                    }
                    AssignOp::AssignSignal => (),
                    AssignOp::AssignConstraintSignal => (),
                }
            }
            stmt.clone()
        }
        While {
            meta,
            cond,
            stmt: i_stmt,
        } => {
            let res = resolve_expr_static(env, scope_info, arg2val, cond);
            match res {
                Some(b) => {
                    let mut initial_cond = b;
                    let mut stmts = vec![];
                    while initial_cond != 0 {
                        stmts.push(rewrite_stmt(env, scope_info, arg2val, i_stmt));
                        initial_cond = resolve_expr_static(env, scope_info, arg2val, cond).unwrap();
                    }
                    Block {
                        meta: meta.clone(),
                        stmts,
                    }
                }
                None => stmt.clone(),
            }
        }
        _ => stmt.clone(),
    }
}
