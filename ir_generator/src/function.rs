use super::codegen::CodeGen;
use super::expression::resolve_initialization;
use super::namer::name_entry_block;
use super::scope::{Scope, ScopeTrait};
use super::statement::resolve_stmt;

use inkwell::values::BasicValue;
use inkwell::AddressSpace;
use program_structure::ast::{Statement, VariableType};

pub struct Function<'ctx> {
    pub scope: Scope<'ctx>,
}

impl<'ctx> Function<'ctx> {
    fn _initial_variables(&mut self, body: &Statement) {
        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    // Variables
                    resolve_initialization(stmt, &mut self.scope, &VariableType::Var);
                }
            }
            _ => unreachable!(),
        }
    }

    fn _build_function(&mut self, codegen: &CodeGen<'ctx>) {
        let CodeGen {
            context,
            module,
            val_ty,
            ..
        } = codegen;

        let fn_name = &self.scope.name;

        let mut param_tys = Vec::new();
        for name in &self.scope.args {
            if self.scope.get_var_dims_len(name) == 0 {
                param_tys.push(codegen.val_ty.into());
            } else {
                param_tys.push(
                    codegen
                        .build_arr_val_ty(self.scope.get_var_dims_len(name))
                        .ptr_type(AddressSpace::Generic)
                        .into(),
                );
            }
        }

        let fn_ty = val_ty.fn_type(&param_tys, false);
        let fn_val = module.add_function(&fn_name, fn_ty, None);
        context.append_basic_block(fn_val, &name_entry_block());
        self.scope.set_main_fn(fn_val);
    }

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let CodeGen { builder, .. } = codegen;
        let fn_val = &self.scope.get_main_fn();
        builder.position_at_end(fn_val.get_first_basic_block().unwrap());
        // Bind args
        let mut i = 0;
        for arg in &self.scope.args {
            self.scope
                .var2val
                .insert(arg.to_string(), fn_val.get_nth_param(i).unwrap());
            i += 1;
        }
        // Initial arrays
        for (name, _) in &self.scope.var2dim_len {
            let dims_len = self.scope.get_var_dims_len(name);
            if dims_len == 0 {
                continue;
            }
            if self.scope.var2val.contains_key(name) {
                let ptr = builder.build_alloca(codegen.build_arr_val_ty(dims_len), name);
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

    pub fn gen_ir(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        self._initial_variables(body);
        self._build_function(codegen);
        self._fillin_initial_function(codegen, body);
    }
}
