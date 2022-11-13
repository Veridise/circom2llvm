use crate::expression::flat_expressions_from_statement;
use crate::inferrence::{
    get_type_from_expr, infer_depended_components, infer_dependences, infer_type_from_expression,
    infer_type_from_statement,
};
use crate::statement::flat_statements;

use super::codegen::CodeGen;
use super::namer::name_entry_block;
use super::scope::{CodegenStagesTrait, Scope, ScopeTrait};
use super::statement::resolve_stmt;

use inkwell::types::BasicType;
use inkwell::AddressSpace;
use program_structure::ast::Statement;

pub struct Function<'ctx> {
    pub scope: Scope<'ctx>,
}

impl<'ctx> Function<'ctx> {}

impl<'ctx> CodegenStagesTrait<'ctx> for Function<'ctx> {
    fn resolve_dependences(&mut self, _codegen: &mut CodeGen<'ctx>, body: &Statement) {
        let stmts = flat_statements(body);
        let mut exprs = Vec::new();
        for stmt in stmts {
            infer_depended_components(stmt, &mut self.scope);
            exprs.append(&mut flat_expressions_from_statement(stmt));
        }
        for expr in exprs {
            infer_dependences(expr, &mut self.scope);
        }
    }

    fn infer_types(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement) {
        let stmts = flat_statements(body);
        let mut exprs = Vec::new();
        for stmt in stmts {
            infer_type_from_statement(codegen, stmt, &mut self.scope);
            exprs.append(&mut flat_expressions_from_statement(stmt));
        }
        for expr in exprs {
            infer_type_from_expression(codegen, expr, &mut self.scope);
        }
    }
    fn build_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let CodeGen {
            context, module, ..
        } = codegen;

        let fn_name = self.scope.name.clone();
        let mut ret_ty = codegen.val_ty.as_basic_type_enum();
        let stmts = flat_statements(body);
        for stmt in stmts {
            match stmt {
                Statement::Return { meta: _, value } => {
                    let ret_ty_op = get_type_from_expr(codegen, value, &self.scope);
                    match ret_ty_op {
                        Some(_ret_ty) => {
                            ret_ty = _ret_ty;
                        }
                        None => {}
                    }
                    break;
                }
                _ => (),
            }
        }
        if ret_ty.is_array_type() {
            ret_ty = ret_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
        }

        let mut arg_tys = Vec::new();
        for name in &self.scope.args.clone() {
            let arg_ty = self.scope.get_var_ty_as_ptr(&name);
            arg_tys.push(arg_ty.into());
            self.scope.set_var_ty(&name, arg_ty);
        }

        let fn_ty = ret_ty.fn_type(&arg_tys[0..], false);
        let fn_val = module.add_function(&fn_name, fn_ty, None);
        context.append_basic_block(fn_val, &name_entry_block());
        self.scope.set_main_fn(fn_val);
    }

    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let fn_val = self.scope.get_main_fn();
        let current_bb = fn_val.get_first_basic_block().unwrap();
        self.scope.set_current_exit_block(codegen, current_bb);

        // Bind args
        for (idx, arg) in self.scope.args.clone().iter().enumerate() {
            let val = fn_val.get_nth_param(idx as u32).unwrap();
            self.scope.bind_argument(codegen, arg, val);
        }

        // Initial variable
        for (name, ty) in &self.scope.var2ty.clone() {
            if self.scope.is_initialized(name) {
                continue;
            };
            self.scope.initial_var(codegen, name, ty, true);
        }

        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    resolve_stmt(&mut self.scope, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }
    }
}
