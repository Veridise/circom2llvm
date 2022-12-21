pub fn name_entry_block() -> String {
    return "entry".to_string();
}

pub fn name_exit_block() -> String {
    return "exit".to_string();
}

pub fn name_body_block() -> String {
    return "body".to_string();
}

pub fn name_if_block(true_or_false: bool, is_exit: bool) -> String {
    if is_exit {
        return "if.exit".to_string();
    }
    if true_or_false {
        return "if.true".to_string();
    } else {
        return "if.false".to_string();
    }
}

pub fn name_loop_block(is_header: bool, is_body: bool, is_exit: bool) -> String {
    if is_header {
        return "loop.header".to_string();
    }
    if is_body {
        return "loop.body".to_string();
    }
    if is_exit {
        return "loop.exit".to_string();
    }
    unreachable!();
}

pub fn name_constraint() -> String {
    return "constraint".to_string();
}

pub fn name_intrinsinc_fn(fn_name: &str) -> String {
    return format!("fn_intrinsic_{}", fn_name).to_lowercase();
}

pub fn name_template_fn(fn_name: &str, templ_signature: &str) -> String {
    return format!("fn_template_{}_{}", fn_name, templ_signature).to_lowercase();
}

pub fn name_template_struct(templ_name: &str) -> String {
    return format!("struct_template_{}", templ_name).to_lowercase();
}

pub fn name_opaque_struct(struct_name: &str) -> String {
    return format!("{}.opaque", struct_name).to_lowercase();
}

pub enum VariableTypeEnum {
    Argument,
    InputSignal,
    IntermediateSignal,
    OutputSignal,
    Component,
    Variable,
}

fn print_variable_type(var_ty: VariableTypeEnum) -> &'static str {
    match var_ty {
        VariableTypeEnum::Argument => "arg",
        VariableTypeEnum::InputSignal => "input",
        VariableTypeEnum::IntermediateSignal => "inter",
        VariableTypeEnum::OutputSignal => "output",
        VariableTypeEnum::Component => "comp",
        VariableTypeEnum::Variable => "var",
    }
}

pub fn name_initial_var(variable_name: &str, var_ty: VariableTypeEnum) -> String {
    let operator = "initial";
    let abbr = print_variable_type(var_ty);
    let name = format!("{}.{}.{}", operator, variable_name, abbr).to_lowercase();
    return name;
}

pub fn name_readwrite_var(
    templ_name: &str,
    is_read: bool,
    is_inner: bool,
    variable_name: &str,
    var_ty: VariableTypeEnum,
    is_compinput: bool,
) -> String {
    let read_abbr = if is_read { "read" } else { "write" };
    let inner_abbr = if is_inner { "inner" } else { "outter" };
    let operator = format!("{}_{}_{}", templ_name, read_abbr, inner_abbr).to_lowercase();
    let mut abbr = print_variable_type(var_ty).to_string();
    if abbr == "comp" {
        if is_compinput {
            abbr +="input"
        } else {
            abbr += "output"
        }
    }
    let name = format!("{}.{}.{}", operator, variable_name, abbr).to_lowercase();
    return name;
}

pub fn name_uniform_array(scope_name: &str) -> String {
    return format!("{}.uniform_array", scope_name).to_lowercase();
}

pub fn name_inline_array(scope_name: &str) -> String {
    return format!("{}.inline_array", scope_name).to_lowercase();
}
