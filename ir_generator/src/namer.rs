pub fn name_entry_block() -> String {
    return "entry".to_string();
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

pub fn name_loop_block(is_body: bool, is_iter: bool, is_latch: bool, is_exit: bool) -> String {
    if is_body {
        return "loop.body".to_string();
    }
    if is_iter {
        return "loop.iter".to_string();
    }
    if is_latch {
        return "loop.latch".to_string();
    }
    if is_exit {
        return "loop.exit".to_string();
    }
    unreachable!();
}

pub fn name_exit_block() -> String {
    return "exit".to_string();
}

pub fn name_constraint() -> String {
    return "constraint".to_string();
}

pub fn name_intrinsinc_fn(fn_name: &str) -> String {
    return format!("fn_intrinsic_{}", fn_name).to_lowercase();
}

pub fn name_template_fn(templ_name: &str, fn_name: &str) -> String {
    return format!("fn_template_{}_{}", fn_name, templ_name).to_lowercase();
}

pub fn name_template_struct(templ_name: &str) -> String {
    return format!("struct_template_circuit_{}", templ_name).to_lowercase();
}

pub fn name_signal(templ_name: &str, signal_name: &str, is_read: bool, is_arg: bool, is_input: bool, inner: bool) -> String {
    let mut name = "".to_string();
    if is_read {
        name = format!("read{}", name);
    } else {
        name = format!("write{}", name);
    }
    if is_arg {
        name = format!("{}_arg", name);
    } else if is_input {
        name = format!("{}_input", name);
    } else {
        name = format!("{}_output", name);
    }
    if inner {
        name = format!("{}_inner", name);
    } else {
        name = format!("{}_outter", name);
    }
    name = format!("{}.{}.{}", name, templ_name, signal_name).to_lowercase();
    return name;
}

pub fn name_phi(source_variable_name: &String) -> String {
    return format!("{}.phi", source_variable_name).to_lowercase();
}
