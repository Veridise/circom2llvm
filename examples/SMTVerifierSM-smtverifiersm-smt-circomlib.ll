; ModuleID = 'main'
source_filename = "main"

%t_struct_smtverifiersm = type { %t_struct_param_smtverifiersm*, void (%t_struct_smtverifiersm*)*, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }
%t_struct_param_smtverifiersm = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @t_fn_init_smtverifiersm(%t_struct_smtverifiersm* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 2
  %read_signal_input.is0 = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 3
  %read_signal_input.levIns = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 4
  %read_signal_input.fnc = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 5
  %read_signal_input.prev_top = load i128, i128* %struct_ptr3, align 4
  %struct_ptr4 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 6
  %read_signal_input.prev_i0 = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 7
  %read_signal_input.prev_iold = load i128, i128* %struct_ptr5, align 4
  %struct_ptr6 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 8
  %read_signal_input.prev_inew = load i128, i128* %struct_ptr6, align 4
  %struct_ptr7 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 9
  %read_signal_input.prev_na = load i128, i128* %struct_ptr7, align 4
  %mul = mul i128 %read_signal_input.prev_top, %read_signal_input.levIns
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod, i1* @constraint)
  %mul8 = mul i128 %mul.mod, %read_signal_input.fnc
  %mul8.mod = srem i128 %mul8, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul8.mod, i128 %mul8.mod, i1* @constraint.1)
  %sub = sub i128 %read_signal_input.prev_top, %mul.mod
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %sub.mod, i128 %sub.mod, i1* @constraint.2)
  %sub9 = sub i128 %mul.mod, %mul8.mod
  %sub9.mod = srem i128 %sub9, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %sub9.mod, i128 %sub9.mod, i1* @constraint.3)
  %sub10 = sub i128 1, %read_signal_input.is0
  %sub10.mod = srem i128 %sub10, 12539295309507511577697735
  %mul11 = mul i128 %mul8.mod, %sub10.mod
  %mul11.mod = srem i128 %mul11, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul11.mod, i128 %mul11.mod, i1* @constraint.4)
  %mul12 = mul i128 %mul.mod, %read_signal_input.is0
  %mul12.mod = srem i128 %mul12, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul12.mod, i128 %mul12.mod, i1* @constraint.5)
  %add = add i128 %read_signal_input.prev_na, %read_signal_input.prev_inew
  %add.mod = srem i128 %add, 12539295309507511577697735
  %add13 = add i128 %add.mod, %read_signal_input.prev_iold
  %add13.mod = srem i128 %add13, 12539295309507511577697735
  %add14 = add i128 %add13.mod, %read_signal_input.prev_i0
  %add14.mod = srem i128 %add14, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add14.mod, i128 %add14.mod, i1* @constraint.6)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.st_top = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 10
  store i128 %sub.mod, i128* %write_signal_output.st_top, align 4
  %write_signal_output.st_i0 = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 11
  store i128 %mul12.mod, i128* %write_signal_output.st_i0, align 4
  %write_signal_output.st_iold = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 12
  store i128 %mul11.mod, i128* %write_signal_output.st_iold, align 4
  %write_signal_output.st_inew = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 13
  store i128 %sub9.mod, i128* %write_signal_output.st_inew, align 4
  %write_signal_output.st_na = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %0, i32 0, i32 14
  store i128 %add14.mod, i128* %write_signal_output.st_na, align 4
  ret void
}

define %t_struct_smtverifiersm* @t_fn_build_smtverifiersm(%t_struct_param_smtverifiersm* %0) {
entry:
  %1 = alloca %t_struct_smtverifiersm, align 8
  %param = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %1, i32 0, i32 0
  store %t_struct_param_smtverifiersm* %0, %t_struct_param_smtverifiersm** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_smtverifiersm, %t_struct_smtverifiersm* %1, i32 0, i32 1
  store void (%t_struct_smtverifiersm*)* @t_fn_init_smtverifiersm, void (%t_struct_smtverifiersm*)** %init_fn, align 8
  ret %t_struct_smtverifiersm* %1
}
