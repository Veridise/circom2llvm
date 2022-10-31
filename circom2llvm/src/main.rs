use inkwell::context::Context;
use ir_generator::codegen::init_codegen;
use ir_generator::scope::TemplateScope;

use program_structure::{ast::Definition, error_definition::Report};
use std::{collections::HashMap};

fn main() {
    let file_path = "./examples/ShR-shift-sha256-circomlib";
    let context = Context::create();
    let codegen = init_codegen(&context);
    match parser::run_parser(format!("{}.circom", file_path), Vec::new()) {
        Ok(ast) => {
            let definitions = ast.get_definitions();
            for defin in definitions {
                match defin {
                    Definition::Template {
                        meta: _,
                        name,
                        args,
                        arg_location: _,
                        body,
                        parallel: _,
                        is_custom_gate: _,
                    } => {
                        let mut template_codegen = TemplateScope {
                            name,
                            args,
                            body,
                            inputs: Vec::new(),
                            intermediates: Vec::new(),
                            outputs: Vec::new(),
                            vars: Vec::new(),

                            var2val: HashMap::new(),

                            init_fn_val: None,
                            templ_struct_ptr: None,
                        };
                        template_codegen.gen_ir(&codegen);
                    }
                    Definition::Function {
                        meta,
                        name,
                        args,
                        arg_location,
                        body,
                    } => (),
                }
            }
            let result = codegen
                .module
                .print_to_file(format!("{}.ll", file_path));
            match result {
                Ok(_) => {}
                Err(err) => {
                    println!("{}", err.to_string());
                }
            }
        }

        Err((file_library, report_collection)) => {
            Report::print_reports(&report_collection, &file_library);
        }
    };
}
