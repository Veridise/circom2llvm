use inkwell::context::Context;
use ir_generator::codegen::init_codegen;
use ir_generator::generator::generate;

use clap::Parser;
use program_structure::ast::AST;
use program_structure::error_definition::Report;
use std::{fs, path::PathBuf};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    #[arg(short, long, default_value_t = String::new())]
    filepath: String,

    #[arg(short, long, action)]
    genall: bool,

    #[arg(short, long, default_value_t = String::new())]
    dir: String,
}

fn main() {
    let args = Args::parse();
    let mut paths: Vec<PathBuf> = Vec::new();
    if args.genall {
        for p in fs::read_dir(args.dir).unwrap() {
            let path = p.unwrap().path();
            let extension_op = path.extension();
            match extension_op {
                Some(ext) => {
                    if ext == "circom" {
                        paths.push(path);
                    }
                }
                _ => (),
            }
        }
        println!("Count: {}", paths.len());
    } else {
        paths.push(PathBuf::from(args.filepath));
    }
    for mut input_pathbuf in paths {
        println!("Current file: {}", input_pathbuf.clone().to_str().unwrap());
        let context = Context::create();
        let mut codegen = init_codegen(&context);
        let input_path = input_pathbuf
            .clone()
            .into_os_string()
            .into_string()
            .unwrap();
        let output_path = input_pathbuf
            .clone()
            .with_extension("ll")
            .into_os_string()
            .into_string()
            .unwrap();
        // Go to folder;
        input_pathbuf.pop();
        match parser::run_parser(input_path, Vec::new()) {
            Ok(ast) => {
                let mut includes: Vec<String> = Vec::new();
                let mut pathbufs: Vec<PathBuf> = Vec::new();
                let mut concludes: Vec<String> = Vec::new();
                for i in &ast.includes {
                    includes.push(i.clone());
                    pathbufs.push(input_pathbuf.clone());
                }
                let mut ast_vec: Vec<AST> = vec![ast];
                while includes.len() > 0 {
                    let relative_path = includes.pop().unwrap();
                    concludes.push(relative_path.clone());
                    let origin_pathbuf = pathbufs.pop().unwrap();
                    let mut include_input_pathbuf = origin_pathbuf.join(relative_path);
                    let include_input_path = include_input_pathbuf
                        .clone()
                        .into_os_string()
                        .into_string()
                        .unwrap();
                    include_input_pathbuf.pop();
                    let last_ast = match parser::run_parser(include_input_path, Vec::new()) {
                        Ok(ast) => ast,
                        Err((file_library, report_collection)) => {
                            Report::print_reports(&report_collection, &file_library);
                            unreachable!();
                        }
                    };
                    for i in &last_ast.includes {
                        if concludes.contains(i) {
                            continue;
                        }
                        includes.push(i.clone());
                        pathbufs.push(include_input_pathbuf.clone());
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
                        println!("Err: {}", err.to_string());
                    }
                }
            }

            Err((file_library, report_collection)) => {
                Report::print_reports(&report_collection, &file_library);
            }
        };
    }
}
