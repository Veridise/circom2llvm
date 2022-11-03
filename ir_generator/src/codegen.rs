use inkwell::basic_block::BasicBlock;
use inkwell::builder::Builder;
use inkwell::context::Context;
use inkwell::module::{Linkage, Module};
use inkwell::types::{FunctionType, IntType, PointerType, StringRadix, StructType};
use inkwell::{AddressSpace, IntPredicate};

use inkwell::values::{
    BasicValue, BasicValueEnum, FunctionValue, InstructionValue, IntValue, PointerValue,
};

const GLOBAL_P: &str = "12539295309507511577697735";
pub static mut APPLY_MOD: bool = true;
pub const MAX_ARRAYSIZE: u32 = 256;

pub struct CodeGen<'ctx> {
    pub context: &'ctx Context,
    pub module: Module<'ctx>,
    pub builder: Builder<'ctx>,

    pub val_ty: IntType<'ctx>,

    // Internal utils
    _global_p: IntValue<'ctx>,

    _global_constraint_fn_val: FunctionValue<'ctx>,
    _global_inlineswitch_fn_val: FunctionValue<'ctx>,
}

impl<'ctx> CodeGen<'ctx> {
    pub fn build_array_getter(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let res = unsafe {
            self.builder
                .build_in_bounds_gep(array_ptr, indexes, "array_ptr")
        };
        return self.builder.build_load(res, name);
    }

    pub fn build_array_setter<V: BasicValue<'ctx>>(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
        value: V,
    ) -> InstructionValue<'ctx> {
        let res = unsafe { self.builder.build_in_bounds_gep(array_ptr, indexes, name) };
        return self.builder.build_store(res, value);
    }

    pub fn build_constraint(&self, lval: IntValue<'ctx>, rval: IntValue<'ctx>) {
        let gv = self.module
            .add_global(self.context.bool_type(), None, "constraint");
        self.builder.build_call(
            self._global_constraint_fn_val,
            &[lval.into(), rval.into(), gv.as_basic_value_enum().into()],
            "",
        );
    }

    pub fn build_inline_switch(
        &self,
        cond: IntValue<'ctx>,
        lval: IntValue<'ctx>,
        rval: IntValue<'ctx>,
    ) -> IntValue<'ctx> {
        let inline_v_name = "inlineswitch";
        let res = self.builder.build_call(
            self._global_inlineswitch_fn_val,
            &[cond.into(), lval.into(), rval.into()],
            inline_v_name,
        );
        return res.try_as_basic_value().left().unwrap().into_int_value();
    }

    pub fn build_func(
        &self,
        name: &str,
        func_ty: FunctionType<'ctx>,
        linkage: Option<Linkage>,
        switch: bool,
    ) -> (FunctionValue<'ctx>, BasicBlock<'ctx>) {
        let func_val = self.module.add_function(name, func_ty, linkage);
        let entry_bb = self.context.append_basic_block(func_val, "entry");
        if switch {
            self.builder.position_at_end(entry_bb);
        }
        return (func_val, entry_bb);
    }

    pub fn build_result_modulo(&self, value: IntValue<'ctx>) -> IntValue<'ctx> {
        // if unsafe { APPLY_MOD } {
        //     let name = &format!("{}.mod", value.get_name().to_str().unwrap())[0..];
        //     return self
        //         .builder
        //         .build_int_signed_rem(value, self._global_p, name);
        // } else {
        //     return value;
        // }
        return value;
    }

    pub fn build_struct(&self, name: &str) -> (StructType<'ctx>, PointerType<'ctx>) {
        let struct_ty = self.context.opaque_struct_type(&name.to_lowercase());
        let struct_ptr_ty = struct_ty.ptr_type(AddressSpace::Generic);
        return (struct_ty, struct_ptr_ty);
    }

    pub fn build_struct_getter(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, "struct_ptr")
            .unwrap();
        return self.builder.build_load(res, name);
    }

    pub fn build_struct_setter<V: BasicValue<'ctx>>(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
        value: V,
    ) -> InstructionValue<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, name)
            .unwrap();
        return self.builder.build_store(res, value);
    }

    pub fn build_inline_array(&self, values: &Vec<IntValue<'ctx>>) -> PointerValue<'ctx> {
        let size = self.context.i32_type().const_int(values.len() as u64, false);
        let arr_val = self.val_ty.const_array(&values[0..]);
        let res = self.builder.build_array_alloca(self.val_ty, size, "inlinearray");
        self.builder.build_store(res, arr_val);
        return res;
    }

}

pub fn init_codegen<'ctx>(context: &'ctx Context) -> CodeGen<'ctx> {
    let module = context.create_module("main");
    let builder = context.create_builder();

    // Value Types
    let val_ty = context.i128_type();
    let bool_ty = context.bool_type();
    let constraint_gv_ptr_ty = bool_ty.ptr_type(AddressSpace::Generic);

    // Global Prime
    let global_p = val_ty
        .const_int_from_string(GLOBAL_P, StringRadix::Decimal)
        .unwrap();

    // Add constraint function
    let constraint_fn_args_ty = [val_ty.into(), val_ty.into(), constraint_gv_ptr_ty.into()];
    let constraint_fn_ret_ty = context.void_type();
    let constraint_fn_ty = constraint_fn_ret_ty.fn_type(&constraint_fn_args_ty, false);
    let constraint_fn_name = "intrinsic_add_constraint";
    let constraint_fn_val = module.add_function(constraint_fn_name, constraint_fn_ty, None);
    let constraint_fn_entry_bb = context.append_basic_block(constraint_fn_val, "entry");
    builder.position_at_end(constraint_fn_entry_bb);

    let temp_name = "constraint";
    let eq_val = builder.build_int_compare(
        IntPredicate::EQ,
        constraint_fn_val.get_first_param().unwrap().into_int_value(),
        constraint_fn_val.get_nth_param(1).unwrap().into_int_value(),
        temp_name,
    );
    let gv_val = constraint_fn_val.get_last_param().unwrap().into_pointer_value();
    builder.build_store(gv_val, eq_val);
    builder.build_return(None);

    // Add inline switch function
    let inlineswitch_fn_args_ty = [bool_ty.into(), val_ty.into(), val_ty.into()];
    let inlineswitch_fn_ret_ty = val_ty;
    let inlineswitch_fn_ty = inlineswitch_fn_ret_ty.fn_type(&inlineswitch_fn_args_ty, false);
    let inlineswitch_fn_name = "intrinsic_inline_switch";
    let inlineswitch_fn_val = module.add_function(inlineswitch_fn_name, inlineswitch_fn_ty, None);
    let inlineswitch_fn_entry_bb = context.append_basic_block(inlineswitch_fn_val, "entry");
    let inlineswitch_fn_t_bb = context.append_basic_block(inlineswitch_fn_val, "if.true");
    let inlineswitch_fn_f_bb = context.append_basic_block(inlineswitch_fn_val, "if.false");
    builder.position_at_end(inlineswitch_fn_entry_bb);

    builder.build_conditional_branch(
        inlineswitch_fn_val.get_first_param().unwrap().into_int_value(),
        inlineswitch_fn_t_bb,
        inlineswitch_fn_f_bb,
    );
    builder.position_at_end(inlineswitch_fn_t_bb);
    builder.build_return(Some(&inlineswitch_fn_val.get_nth_param(1).unwrap()));
    builder.position_at_end(inlineswitch_fn_f_bb);
    builder.build_return(Some(&inlineswitch_fn_val.get_nth_param(2).unwrap()));

    let codegen = CodeGen {
        context,
        module,
        builder,

        val_ty,
        _global_p: global_p,
        _global_constraint_fn_val: constraint_fn_val,
        _global_inlineswitch_fn_val: inlineswitch_fn_val,
    };
    return codegen;
}
