use clap::Parser;
use inkwell::context::Context;
use ir_generator::after_process::remove_opaque_struct_name;
use ir_generator::generator::generate;
use ir_generator::{codegen::init_codegen, summarygen::init_summarygen};
use program_structure::ast::{Definition, AST};
use program_structure::error_definition::Report;
use std::collections::HashSet;
use std::{
    env,
    fs::{self, canonicalize},
    path::PathBuf,
};

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
            "Error: output is NOT a directory, current is : {}.",
            output.display()
        );
        return;
    }

    for input_pathbuf in input_paths {
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
        let output_summary_path = output.join(input_filename).with_extension("json");
        let context = Context::create();
        let mut codegen = init_codegen(&context, input_pathbuf.clone());
        let mut summarygen = init_summarygen();
        println!("Compiling: {}", input_path);
        println!("Output: {}", output_path);
        let mut working_dir = input_pathbuf.clone();
        working_dir.pop();
        match parser::run_parser(input_path, Vec::new()) {
            Ok(ast) => {
                let mut include_pathbufs: Vec<PathBuf> = Vec::new();
                let mut generated_includes: HashSet<String> = HashSet::new();
                for i in &ast.includes {
                    let abs_path = canonicalize(working_dir.join(i))
                        .unwrap()
                        .clone()
                        .into_os_string()
                        .into_string()
                        .unwrap();
                    include_pathbufs.push(working_dir.join(i));
                    generated_includes.insert(abs_path);
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
                        let abs_path = canonicalize(working_dir.join(i))
                            .unwrap()
                            .clone()
                            .into_os_string()
                            .into_string()
                            .unwrap();
                        if generated_includes.contains(&abs_path) {
                            continue;
                        }
                        generated_includes.insert(abs_path);
                        include_pathbufs.push(working_dir.join(i));
                    }
                    ast_vec.push(last_ast);
                }
                let mut definition_names = HashSet::new();
                let mut definitions = Vec::new();
                for ast in &ast_vec {
                    for def in &ast.definitions {
                        match def {
                            Definition::Template { name, .. } => {
                                if definition_names.contains(name) {
                                    continue;
                                }
                                definition_names.insert(name.clone());
                                definitions.push(def);
                            }
                            Definition::Function { name, .. } => {
                                if definition_names.contains(name) {
                                    continue;
                                }
                                definition_names.insert(name.clone());
                                definitions.push(def);
                            }
                        }
                    }
                }
                generate(definitions, &mut codegen, &mut summarygen);
                let json_result = summarygen.print_to_file(output_summary_path);
                match json_result {
                    Ok(..) => (),
                    Err(err) => {
                        println!("Error: {}", err);
                    }
                }
                let result = codegen.module.print_to_file(&output_path);
                match result {
                    Ok(_) => {
                        remove_opaque_struct_name(&output_path);
                    }
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
