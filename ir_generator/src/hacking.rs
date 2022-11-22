use inkwell::{
    types::{ArrayType, IntType, PointerType},
    AddressSpace,
};
use std::collections::HashMap;

// Hacking is useless now.
pub fn assert_fn_ret_ty(val_ty: IntType) -> HashMap<String, PointerType> {
    let mut init: HashMap<&str, ArrayType> = HashMap::new();
    let mut result: HashMap<String, PointerType> = HashMap::new();
    for (k, v) in init {
        result.insert(k.to_string(), v.ptr_type(AddressSpace::Generic));
    }
    return result;
}
