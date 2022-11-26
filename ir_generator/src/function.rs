use crate::codegen::CodeGen;
use crate::expression::flat_expressions_from_statement;
use crate::inferrence::{
    get_type_from_expr, infer_type_from_expression, infer_type_from_statement,
};
use crate::info_collector::{collect_depended_components, collect_dependences};
use crate::namer::{name_arraydim_block, name_entry_block, name_initial_var, name_exit_block};
use crate::scope::{CodegenStagesTrait, Scope, ScopeTrait};
use crate::statement::{flat_statements, resolve_stmt};
use inkwell::types::BasicType;
use inkwell::values::IntValue;
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
            collect_depended_components(stmt, &mut self.scope);
            exprs.append(&mut flat_expressions_from_statement(stmt));
        }
        for expr in exprs {
            collect_dependences(expr, &mut self.scope);
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

        let hacking_key = format!("{}.return", fn_name);
        if codegen.hacking_ret_ty.contains_key(&hacking_key) {
            ret_ty = codegen
                .hacking_ret_ty
                .get(&hacking_key)
                .unwrap()
                .as_basic_type_enum();
        }

        let mut arg_tys = Vec::new();
        for name in &self.scope.args.clone() {
            let arg_ty = self.scope.get_var_ty_as_ptr(&name);
            self.scope.arg_tys.push(arg_ty);
            arg_tys.push(arg_ty.into());
        }

        let fn_ty = ret_ty.fn_type(&arg_tys[0..], false);
        let fn_val = module.add_function(&fn_name, fn_ty, None);
        context.append_basic_block(fn_val, &name_entry_block());
        self.scope.set_main_fn(fn_val);
    }

    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let fn_val = self.scope.get_main_fn();
        let current_bb = fn_val.get_first_basic_block().unwrap();
        let CodeGen {
            context, builder, ..
        } = codegen;
        self.scope.set_current_exit_block(codegen, current_bb);

        // Bind args
        for (idx, arg) in self.scope.args.clone().iter().enumerate() {
            let val = fn_val.get_nth_param(idx as u32).unwrap();
            let alloca_name = name_initial_var(&self.scope.name, arg, true, false, false);
            self.scope.bind_argument(codegen, arg, &alloca_name, val);
        }

        // Initial variable
        for (name, ty) in &self.scope.var2ty.clone() {
            if self.scope.is_initialized(name) {
                continue;
            };
            let alloca_name = name;
            self.scope.initial_var(codegen, name, alloca_name, ty, true);
        }

        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    if stmt.is_return() {
                        let current_bb = fn_val.get_last_basic_block().unwrap();
                        let arraydim_bb = context.append_basic_block(fn_val, &name_arraydim_block());
                        codegen.build_block_transferring(current_bb, arraydim_bb);
                
                        for (name, ptr) in &self.scope.var2ptr {
                            let dims_op = self.scope.get_var_dims(name);
                            match dims_op {
                                Some(dims) => {
                                    let _dims: Vec<IntValue<'ctx>> =
                                        dims.iter().map(|d| d.into_int_value()).collect();
                                    let default_ptr_ty = codegen.val_ty.ptr_type(AddressSpace::Generic);
                                    let _ptr = builder.build_pointer_cast(ptr.clone(), default_ptr_ty, "ptr_cast");
                                    codegen.build_arraydim(_ptr, &_dims);
                                }
                                None => (),
                            }
                        }

                        let exit_bb = context.append_basic_block(fn_val, &name_exit_block());
                        codegen.build_block_transferring(arraydim_bb, exit_bb);
                    }
                    resolve_stmt(&mut self.scope, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }
    }
}
