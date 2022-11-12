use inkwell::context::Context;
use ir_generator::codegen::init_codegen;
use ir_generator::generator::generate;

use clap::Parser;
use program_structure::ast::AST;
use program_structure::error_definition::Report;
use std::{env, fs, path::PathBuf};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// Path of the input file or folder.
    #[arg(short, long)]
    input: String,

    /// Path of the output folder, default is the cwd.
    #[arg(short, long, default_value_t = String::new())]
    output: String,
}

fn main() {
    let args = Args::parse();
    let input = PathBuf::from(args.input);
    let input_paths: Vec<PathBuf>;
    if input.is_dir() {
        let files_res = fs::read_dir(input);
        match files_res {
            Ok(files) => {
                input_paths = files
                    .map(|i| i.unwrap().path())
                    .filter(|p| {
                        let ext_op = p.extension();
                        match ext_op {
                            Some(ext) => ext == "circom",
                            None => false,      
                        }
                    })
                    .collect();
            }
            Err(err) => {
                println!("Error: {}", err);
                return;
            }
        }
    } else {
        input_paths = vec![input];
    }

    let output;
    if args.output == String::new() {
        output = env::current_dir().unwrap();
    } else {
        output = PathBuf::from(args.output);
    }
    if !output.is_dir() {
        println!(
            "Error: output is NOT a directory, current is : {}",
            output.display()
        );
        return;
    }

    for input_pathbuf in input_paths {
        let context = Context::create();
        let mut codegen = init_codegen(&context);
        let input_path = input_pathbuf
            .clone()
            .into_os_string()
            .into_string()
            .unwrap();
        let input_filename = input_pathbuf.file_name().unwrap();
        let output_path = output
            .join(input_filename)
            .with_extension("ll")
            .into_os_string()
            .into_string()
            .unwrap();
        println!("Compiling: {}", input_path);
        println!("Output: {}", output_path);
        let mut working_dir = input_pathbuf.clone();
        working_dir.pop();
        match parser::run_parser(input_path, Vec::new()) {
            Ok(ast) => {
                let mut include_pathbufs: Vec<PathBuf> = Vec::new();
                let mut generated_includes: Vec<String> = Vec::new();
                for i in &ast.includes {
                    include_pathbufs.push(working_dir.join(i));
                    generated_includes.push(i.clone());
                }
                let mut ast_vec: Vec<AST> = vec![ast];
                while include_pathbufs.len() > 0 {
                    let include_input_pathbuf = include_pathbufs.pop().unwrap();
                    let include_input_path = include_input_pathbuf
                        .clone()
                        .into_os_string()
                        .into_string()
                        .unwrap();
                    working_dir = include_input_pathbuf.clone();
                    working_dir.pop();
                    let last_ast = match parser::run_parser(include_input_path, Vec::new()) {
                        Ok(ast) => ast,
                        Err((file_library, report_collection)) => {
                            Report::print_reports(&report_collection, &file_library);
                            unreachable!();
                        }
                    };
                    for i in &last_ast.includes {
                        if generated_includes.contains(&i) {
                            continue;
                        }
                        generated_includes.push(i.clone());
                        include_pathbufs.push(working_dir.join(i));
                    }
                    ast_vec.push(last_ast);
                }
                let mut definitions = Vec::new();
                for ast in &ast_vec {
                    for def in &ast.definitions {
                        definitions.push(def);
                    }
                }
                generate(definitions, &mut codegen, None);
                let result = codegen.module.print_to_file(output_path);
                match result {
                    Ok(_) => {}
                    Err(err) => {
                        println!("Error: {}", err.to_string());
                    }
                }
            }

            Err((file_library, report_collection)) => {
                Report::print_reports(&report_collection, &file_library);
            }
        };
    }
}
