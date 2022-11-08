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

pub fn name_template_struct(templ_name: &str, struct_name: &str) -> String {
    return format!("struct_template_{}_{}", struct_name, templ_name).to_lowercase();
}

pub fn name_fn(fn_name: &str) -> String {
    return format!("fn_{}", fn_name).to_lowercase();
}

pub fn name_signal(signal_name: &str, templ_name: &str, is_read: bool, input: bool, inner: bool) -> String {
    let mut name = "".to_string();
    if is_read {
        name = format!("read_{}", name);
    } else {
        name = format!("write_{}", name);
    }
    if input {
        name = format!("input_{}", name);
    } else {
        name = format!("output_{}", name);
    }
    if inner {
        name = format!("inner_{}", name);
    } else {
        name = format!("outter_{}", name);
    }
    name = format!("{}_{}.{}", name, templ_name, signal_name).to_lowercase();
    return name;
}
