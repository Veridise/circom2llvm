use crate::expression::infer_type;

use super::codegen::CodeGen;
use super::expression::resolve_statement_initially;
use super::namer::name_entry_block;
use super::scope::{Scope, ScopeCodegenTrait, ScopeTrait};
use super::statement::resolve_stmt;

use inkwell::types::{BasicType, BasicTypeEnum};
use inkwell::values::BasicValue;
use inkwell::AddressSpace;
use program_structure::ast::{Statement, VariableType};

pub struct Function<'ctx> {
    pub scope: Scope<'ctx>,
}

impl<'ctx> Function<'ctx> {}

impl<'ctx> ScopeCodegenTrait<'ctx> for Function<'ctx> {
    fn initial_info(&mut self, codegen: &mut CodeGen<'ctx>, body: &Statement) {
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    // Variables
                    resolve_statement_initially(codegen, stmt, &mut self.scope, &VariableType::Var);
                }
            }
            _ => unreachable!(),
        }
    }
    fn build_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let CodeGen {
            context,
            module,
            val_ty,
            ..
        } = codegen;

        let fn_name = &self.scope.name;
        let mut ret_ty: BasicTypeEnum<'ctx> = val_ty.as_basic_type_enum();

        // We assume we could infer the return type from the return statement;
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    match stmt {
                        Statement::Return { meta: _, value } => {
                            let ret_ty_op = infer_type(codegen, value, &self.scope);
                            match ret_ty_op {
                                Some(new_ret_ty) => {
                                    ret_ty = new_ret_ty;
                                },
                                None => (),
                            }
                        }
                        _ => (),
                    }
                }
            }
            _ => unreachable!(),
        }

        let mut param_tys = Vec::new();
        for name in &self.scope.args {
            if self.scope.get_var_dims_len(name) == 0 {
                param_tys.push(codegen.val_ty.into());
            } else {
                let array_ty = codegen.build_array_ty(self.scope.get_var_dims(name).unwrap());
                param_tys.push(array_ty.ptr_type(AddressSpace::Generic).into());
            }
        }

        let fn_ty = ret_ty.fn_type(&param_tys, false);
        let fn_val = module.add_function(&fn_name, fn_ty, None);
        context.append_basic_block(fn_val, &name_entry_block());
        self.scope.set_main_fn(fn_val);
    }

    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let fn_val = &self.scope.get_main_fn();
        let current_bb = fn_val.get_first_basic_block().unwrap();
        codegen.builder.position_at_end(current_bb);
        // Bind args
        let mut i = 0;
        for arg in &self.scope.args {
            self.scope
                .var2val
                .insert(arg.to_string(), fn_val.get_nth_param(i).unwrap());
            i += 1;
        }
        // Initial arrays
        for (name, dims) in &self.scope.var2dims {
            let dims_len = self.scope.get_var_dims_len(name);
            if dims_len == 0 {
                continue;
            }
            if self.scope.var2val.contains_key(name) {
                let ptr = codegen
                    .builder
                    .build_alloca(codegen.build_array_ty(dims), name);
                self.scope
                    .var2val
                    .insert(name.clone(), ptr.as_basic_value_enum());
            }
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
