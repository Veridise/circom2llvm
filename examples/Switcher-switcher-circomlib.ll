; ModuleID = 'main'
source_filename = "main"

%t_struct_switcher = type { %t_struct_param_switcher*, void (%t_struct_switcher*)*, i128, i128, i128, i128, i128 }
%t_struct_param_switcher = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1

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

define void @t_fn_init_switcher(%t_struct_switcher* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %0, i32 0, i32 2
  %read_signal_input.sel = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %0, i32 0, i32 3
  %read_signal_input.L = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %0, i32 0, i32 4
  %read_signal_input.R = load i128, i128* %struct_ptr2, align 4
  %sub = sub i128 %read_signal_input.R, %read_signal_input.L
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %mul = mul i128 %sub.mod, %read_signal_input.sel
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod, i1* @constraint)
  %add = add i128 %mul.mod, %read_signal_input.L
  %add.mod = srem i128 %add, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add.mod, i128 %add.mod, i1* @constraint.1)
  %add3 = add i128 srem (i128 sub (i128 0, i128 %mul.mod), i128 12539295309507511577697735), %read_signal_input.R
  %add3.mod = srem i128 %add3, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add3.mod, i128 %add3.mod, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.outL = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %0, i32 0, i32 5
  store i128 %add.mod, i128* %write_signal_output.outL, align 4
  %write_signal_output.outR = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %0, i32 0, i32 6
  store i128 %add3.mod, i128* %write_signal_output.outR, align 4
  ret void
}

define %t_struct_switcher* @t_fn_build_switcher(%t_struct_param_switcher* %0) {
entry:
  %1 = alloca %t_struct_switcher, align 8
  %param = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %1, i32 0, i32 0
  store %t_struct_param_switcher* %0, %t_struct_param_switcher** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_switcher, %t_struct_switcher* %1, i32 0, i32 1
  store void (%t_struct_switcher*)* @t_fn_init_switcher, void (%t_struct_switcher*)** %init_fn, align 8
  ret %t_struct_switcher* %1
}
