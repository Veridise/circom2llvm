use inkwell::context::Context;
use ir_generator::codegen::init_codegen;
use ir_generator::scope::TemplateScope;

use clap::Parser;
use program_structure::{ast::Definition, error_definition::Report};
use std::{collections::HashMap, fs, path::PathBuf};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    #[arg(short, long, default_value_t = String::new())]
    filepath: String,

    #[arg(short, long, action)]
    testall: bool,
}

fn main() {
    let args = Args::parse();
    let mut paths: Vec<PathBuf> = Vec::new();
    if args.testall {
        for p in fs::read_dir("./examples").unwrap() {
            let path = p.unwrap().path();
            if path.extension().unwrap() == "circom" {
                paths.push(path);
            }
        }
        println!("Count: {}", paths.len());
    } else {
        paths.push(PathBuf::from(args.filepath));
    }
    for file_path in paths {
        let context = Context::create();
        let codegen = init_codegen(&context);
        let input_path = file_path.clone().into_os_string().into_string().unwrap();
        match parser::run_parser(input_path, Vec::new()) {
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
                                inters: Vec::new(),
                                outputs: Vec::new(),
                                
                                vars: Vec::new(),
                                var2dims: HashMap::new(),
                                var2val: HashMap::new(),

                                init_fn_val: None,
                                templ_struct_ptr: None,
                            };
                            println!("Current file: {}", file_path.clone().to_str().unwrap());
                            template_codegen.gen_ir(&codegen)
                        }
                        Definition::Function {
                            meta,
                            name,
                            args,
                            arg_location,
                            body,
                        } => unreachable!(),
                    }
                }
                let output_path = file_path
                    .with_extension("ll")
                    .into_os_string()
                    .into_string()
                    .unwrap();
                let result = codegen.module.print_to_file(output_path);
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
}
