use crate::hacking::assert_fn_ret_ty;
use crate::namer::{
    name_constraint, name_entry_block, name_if_block, name_intrinsinc_fn, name_template_struct,
};
use inkwell::basic_block::BasicBlock;
use inkwell::builder::Builder;
use inkwell::context::Context;
use inkwell::intrinsics::Intrinsic;
use inkwell::module::Module;
use inkwell::types::{IntType, PointerType, StringRadix};
use inkwell::values::{
    AnyValue, BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, InstructionOpcode,
    InstructionValue, IntValue, PointerValue,
};
use inkwell::{AddressSpace, IntPredicate};
use std::collections::HashMap;
use std::path::PathBuf;

pub const GLOBAL_P: &str = "12539295309507511577697735";
pub const APPLY_MOD: bool = false;
pub const MAX_ARRAYSIZE: u32 = if option_env!("CIRCOM2LLVM_LARGEARRAY").is_none() {
    256
} else {
    4096
};

type Fields = (Vec<String>, Vec<String>, Vec<String>, Vec<String>);

pub struct CodeGen<'ctx> {
    pub context: &'ctx Context,
    pub module: Module<'ctx>,
    pub builder: Builder<'ctx>,

    pub val_ty: IntType<'ctx>,

    pub const_p: IntValue<'ctx>,
    pub const_zero: IntValue<'ctx>,

    pub hacking_ret_ty: HashMap<String, PointerType<'ctx>>,

    // Internal utils
    _utils_constraint_fn_val: FunctionValue<'ctx>,
    _utils_constraint_array_fn_val: FunctionValue<'ctx>,
    _utils_switch_fn_val: FunctionValue<'ctx>,
    _utils_powi_fn_val: FunctionValue<'ctx>,
    _utils_init_fn_val: FunctionValue<'ctx>,
    _utils_assert_fn_val: FunctionValue<'ctx>,
    _utils_arraydim_fn_val: FunctionValue<'ctx>,

    // Global Information
    _global_template_fields: HashMap<String, Fields>,
}

impl<'ctx> CodeGen<'ctx> {
    pub fn build_array_getter(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let res = unsafe { self.builder.build_in_bounds_gep(array_ptr, indexes, name) };
        return self.builder.build_load(res, name);
    }

    pub fn build_array_setter<V: BasicValue<'ctx>>(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
        value: V,
    ) {
        let res = unsafe { self.builder.build_in_bounds_gep(array_ptr, indexes, name) };
        let val_ty = value.as_basic_value_enum().get_type();
        if val_ty.is_pointer_type()
            && val_ty
                .into_pointer_type()
                .get_element_type()
                .is_array_type()
        {
            let val_ptr = value.as_basic_value_enum().into_pointer_value();
            let val_arr_ty = val_ty
                .into_pointer_type()
                .get_element_type()
                .into_array_type();
            _ = self
                .builder
                .build_memcpy(res, 4, val_ptr, 4, val_arr_ty.size_of().unwrap());
        } else {
            self.builder.build_store(res, value);
        }
    }

    pub fn build_constraint(&self, lval: BasicValueEnum<'ctx>, rval: BasicValueEnum<'ctx>) {
        let gv = self
            .module
            .add_global(self.context.bool_type(), None, &name_constraint());
        if lval.get_type() != rval.get_type() {
            println!(
                "Error: Left value and right value should be the same type in the constraint."
            );
            println!("Left value is: {}", lval.print_to_string());
            println!("Right value is: {}", rval.print_to_string());
            unreachable!();
        }
        if lval.is_int_value() {
            self.builder.build_call(
                self._utils_constraint_fn_val,
                &[
                    lval.into_int_value().into(),
                    rval.into_int_value().into(),
                    gv.as_basic_value_enum().into(),
                ],
                &name_constraint(),
            );
        }
        if lval.is_array_value() {
            self.builder.build_call(
                self._utils_constraint_array_fn_val,
                &[
                    lval.into_pointer_value().into(),
                    rval.into_pointer_value().into(),
                    gv.as_basic_value_enum().into(),
                ],
                &name_constraint(),
            );
        }
    }

    pub fn build_switch(
        &self,
        cond: IntValue<'ctx>,
        lval: IntValue<'ctx>,
        rval: IntValue<'ctx>,
    ) -> IntValue<'ctx> {
        let assign_name = "utils_switch";
        let res = self.builder.build_call(
            self._utils_switch_fn_val,
            &[cond.into(), lval.into(), rval.into()],
            assign_name,
        );
        return res.try_as_basic_value().left().unwrap().into_int_value();
    }

    // Prevent constant folding
    pub fn build_initial_var(&self, assign_name: &String) -> BasicValueEnum<'ctx> {
        let res = self
            .builder
            .build_call(self._utils_init_fn_val, &[], assign_name);
        return res.try_as_basic_value().left().unwrap();
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

    pub fn build_struct_getter(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let assign_name = "struct_getter";
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, assign_name)
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

    pub fn build_pow(&self, args: &[BasicMetadataValueEnum<'ctx>], name: &str) -> IntValue<'ctx> {
        return self
            .builder
            .build_call(self._utils_powi_fn_val, args, name)
            .try_as_basic_value()
            .unwrap_left()
            .into_int_value();
    }

    pub fn get_template_fields(&self, templ_name: &String) -> Option<&Fields> {
        return self._global_template_fields.get(templ_name);
    }

    pub fn set_template_fields(&mut self, templ_name: &String, v: Fields) {
        self._global_template_fields.insert(templ_name.clone(), v);
    }

    pub fn ends_with_return(&self, bb: BasicBlock<'ctx>) -> bool {
        let last_inst_op = bb.get_last_instruction();
        let has_return = match last_inst_op {
            Some(last_inst) => last_inst.get_opcode() == InstructionOpcode::Return,
            None => false,
        };
        return has_return;
    }

    pub fn build_block_transferring(
        &self,
        source_bb: BasicBlock<'ctx>,
        destination_bb: BasicBlock<'ctx>,
    ) {
        if !self.ends_with_return(source_bb) {
            self.builder.position_at_end(source_bb);
            self.builder.build_unconditional_branch(destination_bb);
        }
        self.builder.position_at_end(destination_bb);
    }

    pub fn build_assert(&self, val: IntValue<'ctx>) {
        self.builder
            .build_call(self._utils_assert_fn_val, &[val.into()], "assert");
    }

    pub fn build_arraydim(&self, ptr: PointerValue<'ctx>, dims: &Vec<IntValue<'ctx>>) {
        let mut vals = vec![ptr.into()];
        for d in dims {
            vals.push(d.clone().into());
        }
        self.builder
            .build_call(self._utils_arraydim_fn_val, &vals, "arraydim");
    }

    pub fn get_real_strt_ptr(
        &self,
        struct_ptr: PointerValue<'ctx>,
        templ_name: &str,
    ) -> PointerValue<'ctx> {
        let strt_ty = struct_ptr.get_type().get_element_type().into_struct_type();
        let real_struct_ptr;
        if strt_ty.count_fields() == 0 {
            let real_strt_ty = self
                .module
                .get_struct_type(&name_template_struct(templ_name))
                .unwrap();
            real_struct_ptr = self.builder.build_pointer_cast(
                struct_ptr,
                real_strt_ty.ptr_type(AddressSpace::Generic),
                "ptr_cast",
            );
        } else {
            real_struct_ptr = struct_ptr;
        }
        return real_struct_ptr;
    }
}

pub fn init_codegen<'ctx>(context: &'ctx Context, input_path: &PathBuf) -> CodeGen<'ctx> {
    let file_path = input_path.as_os_str().to_str().unwrap();
    let file_name = input_path.file_name().unwrap().to_str().unwrap();
    let module = context.create_module(file_name);
    module.set_source_file_name(file_path);
    let builder = context.create_builder();

    // Value Types
    let val_ty = context.i128_type();
    let bool_ty = context.bool_type();
    let utils_constraint_gv_ptr_ty = bool_ty.ptr_type(AddressSpace::Generic);

    // Global Prime
    let const_p = val_ty
        .const_int_from_string(GLOBAL_P, StringRadix::Decimal)
        .unwrap();

    let const_zero = val_ty.const_zero();

    // Add constraint function
    let utils_constraint_fn_args_ty = [
        val_ty.into(),
        val_ty.into(),
        utils_constraint_gv_ptr_ty.into(),
    ];
    let utils_constraint_fn_ret_ty = context.void_type();
    let utils_constraint_fn_ty =
        utils_constraint_fn_ret_ty.fn_type(&utils_constraint_fn_args_ty, false);
    let utils_constraint_fn_name = name_intrinsinc_fn("utils_constraint");
    let utils_constraint_fn_val =
        module.add_function(&utils_constraint_fn_name, utils_constraint_fn_ty, None);
    let utils_constraint_fn_entry_bb =
        context.append_basic_block(utils_constraint_fn_val, &name_entry_block());
    builder.position_at_end(utils_constraint_fn_entry_bb);

    let assign_name = name_constraint();
    let eq_val = builder.build_int_compare(
        IntPredicate::EQ,
        utils_constraint_fn_val
            .get_first_param()
            .unwrap()
            .into_int_value(),
        utils_constraint_fn_val
            .get_nth_param(1)
            .unwrap()
            .into_int_value(),
        &assign_name,
    );
    let gv_val = utils_constraint_fn_val
        .get_last_param()
        .unwrap()
        .into_pointer_value();
    builder.build_store(gv_val, eq_val);
    builder.build_return(None);

    // Add constraint array function
    let utils_constraint_array_fn_args_ty = [
        val_ty
            .array_type(MAX_ARRAYSIZE)
            .ptr_type(AddressSpace::Generic)
            .into(),
        val_ty
            .array_type(MAX_ARRAYSIZE)
            .ptr_type(AddressSpace::Generic)
            .into(),
        utils_constraint_gv_ptr_ty.into(),
    ];
    let utils_constraint_array_fn_ret_ty = context.void_type();
    let utils_constraint_array_fn_ty =
        utils_constraint_array_fn_ret_ty.fn_type(&utils_constraint_array_fn_args_ty, false);
    let utils_constraint_array_fn_name = name_intrinsinc_fn("utils_constraint_array");
    let utils_constraint_array_fn_val = module.add_function(
        &utils_constraint_array_fn_name,
        utils_constraint_array_fn_ty,
        None,
    );
    let utils_constraint_array_fn_entry_bb =
        context.append_basic_block(utils_constraint_array_fn_val, &name_entry_block());
    builder.position_at_end(utils_constraint_array_fn_entry_bb);
    builder.build_return(None);

    // Add inline switch function
    let utils_switch_fn_args_ty = [bool_ty.into(), val_ty.into(), val_ty.into()];
    let utils_switch_fn_ret_ty = val_ty;
    let utils_switch_fn_ty = utils_switch_fn_ret_ty.fn_type(&utils_switch_fn_args_ty, false);
    let utils_switch_fn_name = name_intrinsinc_fn("utils_switch");
    let utils_switch_fn_val = module.add_function(&utils_switch_fn_name, utils_switch_fn_ty, None);
    let utils_switch_fn_entry_bb =
        context.append_basic_block(utils_switch_fn_val, &name_entry_block());
    let utils_switch_fn_t_bb =
        context.append_basic_block(utils_switch_fn_val, &name_if_block(true, false));
    let utils_switch_fn_f_bb =
        context.append_basic_block(utils_switch_fn_val, &name_if_block(false, false));
    builder.position_at_end(utils_switch_fn_entry_bb);

    builder.build_conditional_branch(
        utils_switch_fn_val
            .get_first_param()
            .unwrap()
            .into_int_value(),
        utils_switch_fn_t_bb,
        utils_switch_fn_f_bb,
    );
    builder.position_at_end(utils_switch_fn_t_bb);
    builder.build_return(Some(&utils_switch_fn_val.get_nth_param(1).unwrap()));
    builder.position_at_end(utils_switch_fn_f_bb);
    builder.build_return(Some(&utils_switch_fn_val.get_nth_param(2).unwrap()));

    // Add powi function
    let powi_base_ty = context.f128_type();
    let powi_power_ty = context.i32_type();
    let powi_intrinsic = Intrinsic::find("llvm.powi").unwrap();
    let powi_fn_val = powi_intrinsic
        .get_declaration(&module, &[powi_base_ty.into(), powi_power_ty.into()])
        .unwrap();

    let utils_powi_fn_args_ty = [val_ty.into(), val_ty.into()];
    let utils_powi_fn_ret_ty = val_ty;
    let utils_powi_fn_ty = utils_powi_fn_ret_ty.fn_type(&utils_powi_fn_args_ty, false);
    let utils_powi_fn_name = name_intrinsinc_fn("utils_powi");
    let utils_powi_fn_val = module.add_function(&utils_powi_fn_name, utils_powi_fn_ty, None);
    let utils_powi_fn_entry_bb = context.append_basic_block(utils_powi_fn_val, &name_entry_block());
    builder.position_at_end(utils_powi_fn_entry_bb);

    let origin_base = utils_powi_fn_val
        .get_first_param()
        .unwrap()
        .into_int_value();
    let origin_power = utils_powi_fn_val.get_last_param().unwrap().into_int_value();
    let base = builder.build_unsigned_int_to_float(origin_base, powi_base_ty, "utils_powi.base");
    let power = builder.build_int_cast(origin_power, powi_power_ty, "utils_powi.power");
    let powi = builder
        .build_call(powi_fn_val, &[base.into(), power.into()], "utils_powi.cal")
        .try_as_basic_value()
        .unwrap_left();
    let ret =
        builder.build_float_to_unsigned_int(powi.into_float_value(), val_ty, "utils_powi.ret");
    builder.build_return(Some(&ret));

    let utils_init_fn_ret_ty = val_ty;
    let utils_init_fn_ty = utils_init_fn_ret_ty.fn_type(&[], false);
    let utils_init_fn_name = name_intrinsinc_fn("utils_init");
    let utils_init_fn_val = module.add_function(&utils_init_fn_name, utils_init_fn_ty, None);
    let utils_init_fn_entry_bb = context.append_basic_block(utils_init_fn_val, &name_entry_block());
    builder.position_at_end(utils_init_fn_entry_bb);
    builder.build_return(Some(&const_zero));

    let utils_assert_fn_args_ty = [context.bool_type().into()];
    let utils_assert_fn_ret_ty = context.void_type();
    let utils_assert_fn_ty = utils_assert_fn_ret_ty.fn_type(&utils_assert_fn_args_ty, false);
    let utils_assert_fn_name = name_intrinsinc_fn("utils_assert");
    let utils_assert_fn_val = module.add_function(&utils_assert_fn_name, utils_assert_fn_ty, None);
    let utils_assert_fn_entry_bb =
        context.append_basic_block(utils_assert_fn_val, &name_entry_block());
    builder.position_at_end(utils_assert_fn_entry_bb);
    builder.build_return(None);

    let default_ptr_ty = val_ty.ptr_type(AddressSpace::Generic);
    let utils_arraydim_fn_args_ty = [default_ptr_ty.into()];
    let utils_arraydim_fn_ret_ty = context.void_type();
    let utils_arraydim_fn_ty = utils_arraydim_fn_ret_ty.fn_type(&utils_arraydim_fn_args_ty, true);
    let utils_arraydim_fn_name = name_intrinsinc_fn("utils_arraydim");
    let utils_arraydim_fn_val =
        module.add_function(&utils_arraydim_fn_name, utils_arraydim_fn_ty, None);
    let utils_arraydim_fn_entry_bb =
        context.append_basic_block(utils_arraydim_fn_val, &name_entry_block());
    builder.position_at_end(utils_arraydim_fn_entry_bb);
    builder.build_return(None);

    let codegen = CodeGen {
        context,
        module,
        builder,

        val_ty,
        const_p,
        const_zero,

        hacking_ret_ty: assert_fn_ret_ty(val_ty),

        _utils_constraint_fn_val: utils_constraint_fn_val,
        _utils_constraint_array_fn_val: utils_constraint_array_fn_val,
        _utils_switch_fn_val: utils_switch_fn_val,
        _utils_powi_fn_val: utils_powi_fn_val,
        _utils_init_fn_val: utils_init_fn_val,
        _utils_assert_fn_val: utils_assert_fn_val,
        _utils_arraydim_fn_val: utils_arraydim_fn_val,
        _global_template_fields: HashMap::new(),
    };
    return codegen;
}
