use crate::namer::{name_if_block, name_loop_block};

use super::codegen::{CodeGen, APPLY_MOD};
use super::expression::resolve_expr;
use super::scope::ScopeTrait;

use inkwell::types::{BasicMetadataTypeEnum, BasicType, BasicTypeEnum};
use inkwell::values::{BasicValue, AnyValue};

use program_structure::ast::{AssignOp, Expression, Statement};

pub fn resolve_stmt<'ctx>(
    scope: &mut dyn ScopeTrait<'ctx>,
    codegen: &mut CodeGen<'ctx>,
    stmt: &Statement,
) {
    match stmt {
        Statement::Assert { .. } => {
            println!("Statement: Assert");
            unreachable!();
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
            let current_fnc = scope.get_main_fn();
            let current_bb = current_fnc.get_last_basic_block().unwrap();
            let if_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(true, false));
            let else_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(false, false));
            let end_bb = codegen
                .context
                .append_basic_block(current_fnc, &name_if_block(false, true));
            let cond = resolve_expr(codegen, cond, scope).into_int_value();

            // current -> if.body
            codegen.builder.position_at_end(current_bb);
            codegen
                .builder
                .build_conditional_branch(cond, if_bb, else_bb);

            // if.body
            codegen.builder.position_at_end(if_bb);
            resolve_stmt(scope, codegen, &if_case.as_ref());
            codegen.builder.build_unconditional_branch(end_bb);

            // if.else
            codegen.builder.position_at_end(else_bb);
            if let Some(else_stmt) = else_case {
                resolve_stmt(scope, codegen, &else_stmt.as_ref());
            }
            codegen.builder.build_unconditional_branch(end_bb);

            // if.end
            codegen.builder.position_at_end(end_bb);
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
                    Statement::Declaration { .. } => (),
                    _ => unreachable!(),
                }
            }
        }
        Statement::LogCall { .. } => {
            println!("Statement: LogCall");
            unreachable!();
        }
        Statement::MultSubstitution { .. } => {
            println!("Statement: MultSubstitution");
            unreachable!();
        }
        Statement::Return { meta: _, value } => {
            let mut rval = resolve_expr(codegen, value, scope).as_basic_value_enum();
            
            let ret = codegen.builder.build_return(Some(&rval));
            let current_fn_val = ret.get_parent().unwrap().get_parent().unwrap();
            let current_ret_ty = current_fn_val.get_type().get_return_type().unwrap();
            if current_ret_ty == rval.get_type() {
                //Do nothing;
            } else {
                let fn_name = current_fn_val.get_name().to_str().unwrap();
                let params: Vec<BasicMetadataTypeEnum> = current_fn_val
                    .get_params()
                    .iter()
                    .map(|s| s.get_type().into())
                    .collect();
                let fn_ty = match rval.get_type() {
                    BasicTypeEnum::IntType(ret_ty) => ret_ty.fn_type(&params, false),
                    BasicTypeEnum::PointerType(ret_ty) => ret_ty.fn_type(&params, false),
                    _ => {
                        println!("Ret: {} \n", rval.print_to_string());              
                        unreachable!()
                    },
                };
                let fn_val = codegen.module.add_function(fn_name, fn_ty, None);
                current_fn_val.replace_all_uses_with(fn_val);
                for bb in current_fn_val.get_basic_blocks() {
                    let new_bb = codegen
                        .context
                        .append_basic_block(fn_val, bb.get_name().to_str().unwrap());
                    codegen.builder.position_at_end(new_bb);
                    let first_inst_op = bb.get_first_instruction();
                    match first_inst_op {
                        Some(mut first_inst) => {
                            let name: Option<&str> = match first_inst.get_name() {
                                Some(_name) => Some(_name.to_str().unwrap()),
                                None => None,
                            };
                            codegen
                                .builder
                                .insert_instruction(&first_inst.clone(), name);
                            while let Some(next_inst) = first_inst.get_next_instruction() {
                                let name: Option<&str> = match next_inst.get_name() {
                                    Some(_name) => Some(_name.to_str().unwrap()),
                                    None => None,
                                };
                                codegen.builder.insert_instruction(&next_inst.clone(), name);
                                first_inst = next_inst;
                            }
                        }
                        None => (),
                    }
                }
                println!(
                    "Old: {}, New: {}",
                    fn_name.to_string(),
                    fn_val.get_name().to_str().unwrap()
                );
                codegen
                    .set_fn_name_rewrite(&fn_name.to_string(), fn_val.get_name().to_str().unwrap());
            }
        }
        Statement::Substitution {
            meta: _,
            var,
            access,
            op,
            rhe,
        } => {
            let res = resolve_expr(codegen, rhe, scope);
            scope.set_var(codegen, var, access, res.as_basic_value_enum());
            match op {
                AssignOp::AssignConstraintSignal => {
                    let lval = scope.get_var(codegen, var, access).into_int_value();
                    let rval = res.into_int_value();
                    codegen.build_constraint(lval, rval);
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
            let current_func = scope.get_main_fn();
            let current_bb = current_func.get_last_basic_block().unwrap();
            let loop_bb = codegen
                .context
                .append_basic_block(current_func, &name_loop_block(true, false, false, false));

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
            codegen.builder.position_at_end(current_bb);
            let ctrl_var_entry = scope.get_var(codegen, ctrl_var_name, &mut Vec::new());
            codegen.builder.build_unconditional_branch(loop_bb);

            // loop.body
            codegen.builder.position_at_end(loop_bb);
            let phi = codegen.builder.build_phi(
                codegen.val_ty.as_basic_type_enum(),
                &name_loop_block(false, true, false, false),
            );
            phi.add_incoming(&[(&ctrl_var_entry, current_bb)]);
            scope.set_var(
                codegen,
                ctrl_var_name,
                &mut Vec::new(),
                phi.as_basic_value(),
            );

            resolve_stmt(scope, codegen, stmt_body);
            codegen.builder.position_at_end(loop_bb);

            let latch_bb = codegen
                .context
                .append_basic_block(current_func, &name_loop_block(false, false, true, false));
            codegen.builder.build_unconditional_branch(latch_bb);

            // loop.latch
            codegen.builder.position_at_end(latch_bb);
            unsafe { APPLY_MOD = false };
            resolve_stmt(scope, codegen, stmt_step);
            unsafe { APPLY_MOD = true };
            codegen.builder.position_at_end(latch_bb);
            let ctrl_var_latch = scope.get_var(codegen, ctrl_var_name, &mut Vec::new());
            phi.add_incoming(&[(&ctrl_var_latch, latch_bb)]);
            let cond_var = resolve_expr(codegen, cond, scope).into_int_value();

            let exit_bb = codegen
                .context
                .append_basic_block(current_func, &name_loop_block(false, false, false, true));
            codegen
                .builder
                .build_conditional_branch(cond_var, loop_bb, exit_bb);

            //loop exit
            codegen.builder.position_at_end(exit_bb);
        }
    }
}
