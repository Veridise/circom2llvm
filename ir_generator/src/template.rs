use crate::codegen::CodeGen;
use crate::expression::{
    flat_expressions_from_statement, read_signal_from_struct, write_signal_to_struct,
};
use crate::inferrence::{
    collect_signal, infer_depended_components, infer_dependences, infer_type_from_expression,
    infer_type_from_statement,
};
use crate::namer::{
    name_entry_block, name_exit_block, name_initial_var, name_template_fn, name_template_struct,
};
use crate::scope::{CodegenStagesTrait, Scope, ScopeTrait};
use crate::statement::{flat_statements, resolve_stmt};
use inkwell::values::BasicValue;
use inkwell::AddressSpace;
use program_structure::ast::Statement;

pub struct Template<'ctx> {
    pub scope: Scope<'ctx>,

    pub inputs: Vec<String>,
    pub inters: Vec<String>,
    pub outputs: Vec<String>,
}

impl<'ctx> Template<'ctx> {
    pub fn add_input(&mut self, v: &String) {
        self.inputs.push(v.clone());
    }

    pub fn add_intermediate(&mut self, v: &String) {
        self.inters.push(v.clone());
    }

    pub fn add_output(&mut self, v: &String) {
        self.outputs.push(v.clone());
    }
}

impl<'ctx> CodegenStagesTrait<'ctx> for Template<'ctx> {
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
            collect_signal(stmt, self);
        }
        codegen.set_template_fields(
            &self.scope.name,
            (
                self.scope.args.to_vec(),
                self.inputs.to_vec(),
                self.inters.to_vec(),
                self.outputs.to_vec(),
            ),
        );
        for expr in exprs {
            infer_type_from_expression(codegen, expr, &mut self.scope);
        }
    }

    fn build_function(&mut self, codegen: &CodeGen<'ctx>, _body: &Statement) {
        let CodeGen {
            context, module, ..
        } = codegen;

        let void_ty = context.void_type();
        let templ_name = &self.scope.name.clone();
        let templ_struct_name = name_template_struct(templ_name);
        let mut templ_build_arg_tys = Vec::new();
        let mut templ_struct_fields = Vec::new();

        for arg in &self.scope.args {
            let arg_meta_ty = self.scope.get_var_ty_as_ptr(arg);
            templ_build_arg_tys.push(arg_meta_ty.into());
            self.scope.arg_tys.push(arg_meta_ty);
        }

        for arg in &self.scope.args.clone() {
            let field_ty = self.scope.get_var_ty_as_ptr(arg).into();
            templ_struct_fields.push(field_ty);
        }

        for input in &self.inputs {
            let field_ty = self.scope.get_var_ty_as_ptr(input);
            templ_struct_fields.push(field_ty);
        }

        for inter in &self.inters {
            let field_ty = self.scope.get_var_ty_as_ptr(inter);
            templ_struct_fields.push(field_ty);
        }

        for output in &self.outputs {
            let field_ty = self.scope.get_var_ty_as_ptr(output);
            templ_struct_fields.push(field_ty);
        }

        let templ_struct_ty = codegen.context.opaque_struct_type(&templ_struct_name);
        templ_struct_ty.set_body(&templ_struct_fields[0..], false);

        let templ_struct_ptr_ty = templ_struct_ty.ptr_type(AddressSpace::Generic);

        // Function for initialization of the circuit struct, called `init`, it returns void.
        let init_fn_name = &name_template_fn(templ_name, "init");
        let init_fn_ty = void_ty.fn_type(&[templ_struct_ptr_ty.into()], false);
        let init_fn_val = module.add_function(init_fn_name, init_fn_ty, None);
        context.append_basic_block(init_fn_val, &name_entry_block());

        // Function for generation of the circuit struct, called `build`, it returns the circuit struct.
        let build_fn_name = name_template_fn(templ_name, "build");
        let build_fn_ty = templ_struct_ptr_ty.fn_type(&templ_build_arg_tys[0..], false);
        let build_fn_val = module.add_function(&build_fn_name, build_fn_ty, None);
        context.append_basic_block(build_fn_val, &name_entry_block());

        self.scope.set_main_fn(init_fn_val);
    }

    fn build_instrustions(&mut self, codegen: &CodeGen<'ctx>, body: &Statement) {
        let CodeGen {
            context,
            module,
            builder,
            ..
        } = codegen;

        let templ_name = &self.scope.name.clone();

        // Build instruction in build function first.
        let build_fn_name = name_template_fn(templ_name, "build");
        let build_fn_val = module.get_function(&build_fn_name).unwrap();
        let current_bb = build_fn_val.get_first_basic_block().unwrap();
        self.scope.set_current_exit_block(codegen, current_bb);

        let templ_struct_name = &name_template_struct(templ_name);
        let templ_struct_ty = module.get_struct_type(templ_struct_name).unwrap();
        let templ_struct_val_ptr = builder.build_alloca(templ_struct_ty, templ_struct_name);

        // Bind args
        for (idx, arg) in self.scope.args.iter().enumerate() {
            let val = build_fn_val.get_nth_param(idx as u32).unwrap();
            write_signal_to_struct(codegen, templ_name, arg, templ_struct_val_ptr, true, val);
        }

        builder.build_return(Some(&templ_struct_val_ptr));

        // Build instruction in init function then.
        let init_fn_name = name_template_fn(templ_name, "init");
        let init_fn_val = module.get_function(&init_fn_name).unwrap();
        let current_bb = init_fn_val.get_first_basic_block().unwrap();
        self.scope.set_current_exit_block(codegen, current_bb);

        let templ_struct_val_ptr = init_fn_val.get_first_param().unwrap().into_pointer_value();

        // Bind struct
        self.scope.bind_argument(
            codegen,
            templ_name,
            templ_name,
            templ_struct_val_ptr.as_basic_value_enum(),
        );

        // Bind args
        for arg in &self.scope.args.clone() {
            let val = read_signal_from_struct(codegen, templ_name, arg, templ_struct_val_ptr, true);
            let alloca_name = name_initial_var(&templ_name, arg, true, false, false);
            self.scope.bind_argument(codegen, arg, &alloca_name, val);
        }

        // Bind input signals
        for input in &self.inputs {
            let val =
                read_signal_from_struct(codegen, templ_name, input, templ_struct_val_ptr, true);
            let alloca_name = name_initial_var(&templ_name, &input, false, true, false);
            self.scope.bind_argument(codegen, input, &alloca_name, val);
        }

        // Initial variables
        for (name, ty) in &self.scope.var2ty.clone() {
            if self.scope.is_initialized(name) {
                continue;
            };
            let alloca = !(self.outputs.contains(&name) || self.inters.contains(&name));
            let alloca_name: String;
            if self.inters.contains(&name) {
                alloca_name = name_initial_var(&templ_name, name, false, false, true);
            } else if self.outputs.contains(&name) {
                alloca_name = name_initial_var(&templ_name, name, false, false, false);
            } else {
                alloca_name = name.clone();
            }
            self.scope
                .initial_var(codegen, name, &alloca_name, &ty, alloca);
        }

        match body {
            Statement::Block { meta: _, stmts } => {
                for stmt in stmts {
                    resolve_stmt(&mut self.scope, codegen, stmt);
                }
            }
            _ => unreachable!(),
        }

        // Write-in output signals
        let current_bb = init_fn_val.get_last_basic_block().unwrap();
        let exit_bb = context.append_basic_block(init_fn_val, &name_exit_block());
        codegen.build_block_transferring(current_bb, exit_bb);

        // Notice that the name is perhaps been modified by index.
        for inter in &self.inters {
            let val = self.scope.get_var(codegen, inter, &Vec::new());
            write_signal_to_struct(codegen, templ_name, inter, templ_struct_val_ptr, true, val);
        }

        for output in &self.outputs {
            let val = self.scope.get_var(codegen, output, &Vec::new());
            write_signal_to_struct(codegen, templ_name, output, templ_struct_val_ptr, true, val);
        }

        codegen.builder.build_return(None);
    }
}
