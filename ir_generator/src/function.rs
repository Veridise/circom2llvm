use super::codegen::CodeGen;
use super::expression::resolve_initialization;
use super::namer::name_fn;
use super::scope::Scope;

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
            builder,
            ..
        } = codegen;
        let signal_ty = context.i128_type();
        let param_ty = context.i128_type();
        let void_ty = context.void_type();
        let fn_name = name_fn(&self.scope.name);
        let param_types = vec![param_ty.into(); self.scope.args.len()];
        let fn_type = void_ty.fn_type(&param_types, false);
        module.add_function(&fn_name, fn_type, None);
    }

    pub fn gen_ir(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        self._initial_variables(body);
        self._build_function(codegen);
        self._fillin_initial_function(codegen, body);
    }

    fn _fillin_initial_function(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {}
}
