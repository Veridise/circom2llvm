use inkwell::context::Context;
use ir_generator::codegen::init_codegen;
use ir_generator::generator::generate;

use clap::Parser;
use program_structure::{error_definition::Report};
use std::{fs, path::PathBuf};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    #[arg(short, long, default_value_t = String::new())]
    filepath: String,

    #[arg(short, long, action)]
    genall: bool,
}

fn main() {
    let args = Args::parse();
    let mut paths: Vec<PathBuf> = Vec::new();
    if args.genall {
        for p in fs::read_dir("./examples/test").unwrap() {
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
        println!("Current file: {}", file_path.clone().to_str().unwrap());
        let context = Context::create();
        let mut codegen = init_codegen(&context);
        let input_path = file_path.clone().into_os_string().into_string().unwrap();
        match parser::run_parser(input_path, Vec::new()) {
            Ok(ast) => {
                generate(ast, &mut codegen, None);
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
