; ModuleID = 'main'
source_filename = "main"

%t_struct_babyadd = type { %t_struct_param_babyadd*, void (%t_struct_babyadd*)*, i128, i128, i128, i128, i128, i128 }
%t_struct_param_babyadd = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1

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

define void @t_fn_init_babyadd(%t_struct_babyadd* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 2
  %read_signal_input.x1 = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 3
  %read_signal_input.y1 = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 4
  %read_signal_input.x2 = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 5
  %read_signal_input.y2 = load i128, i128* %struct_ptr3, align 4
  %mul = mul i128 %read_signal_input.x1, %read_signal_input.y2
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod, i1* @constraint)
  %mul4 = mul i128 %read_signal_input.y1, %read_signal_input.x2
  %mul4.mod = srem i128 %mul4, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul4.mod, i128 %mul4.mod, i1* @constraint.1)
  %mul5 = mul i128 -168700, %read_signal_input.x1
  %mul5.mod = srem i128 %mul5, 12539295309507511577697735
  %add = add i128 %mul5.mod, %read_signal_input.y1
  %add.mod = srem i128 %add, 12539295309507511577697735
  %add6 = add i128 %read_signal_input.x2, %read_signal_input.y2
  %add6.mod = srem i128 %add6, 12539295309507511577697735
  %mul7 = mul i128 %add.mod, %add6.mod
  %mul7.mod = srem i128 %mul7, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul7.mod, i128 %mul7.mod, i1* @constraint.2)
  %mul8 = mul i128 %mul.mod, %mul4.mod
  %mul8.mod = srem i128 %mul8, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul8.mod, i128 %mul8.mod, i1* @constraint.3)
  %add9 = add i128 %mul.mod, %mul4.mod
  %add9.mod = srem i128 %add9, 12539295309507511577697735
  %mul10 = mul i128 168696, %mul8.mod
  %mul10.mod = srem i128 %mul10, 12539295309507511577697735
  %add11 = add i128 1, %mul10.mod
  %add11.mod = srem i128 %add11, 12539295309507511577697735
  %sdiv = sdiv i128 %add9.mod, %add11.mod
  %sdiv.mod = srem i128 %sdiv, 12539295309507511577697735
  %mul12 = mul i128 168696, %mul8.mod
  %mul12.mod = srem i128 %mul12, 12539295309507511577697735
  %add13 = add i128 1, %mul12.mod
  %add13.mod = srem i128 %add13, 12539295309507511577697735
  %mul14 = mul i128 %add13.mod, %sdiv.mod
  %mul14.mod = srem i128 %mul14, 12539295309507511577697735
  %add15 = add i128 %mul.mod, %mul4.mod
  %add15.mod = srem i128 %add15, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul14.mod, i128 %add15.mod, i1* @constraint.4)
  %mul16 = mul i128 168700, %mul.mod
  %mul16.mod = srem i128 %mul16, 12539295309507511577697735
  %add17 = add i128 %mul7.mod, %mul16.mod
  %add17.mod = srem i128 %add17, 12539295309507511577697735
  %sub = sub i128 %add17.mod, %mul4.mod
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %mul18 = mul i128 168696, %mul8.mod
  %mul18.mod = srem i128 %mul18, 12539295309507511577697735
  %sub19 = sub i128 1, %mul18.mod
  %sub19.mod = srem i128 %sub19, 12539295309507511577697735
  %sdiv20 = sdiv i128 %sub.mod, %sub19.mod
  %sdiv20.mod = srem i128 %sdiv20, 12539295309507511577697735
  %mul21 = mul i128 168696, %mul8.mod
  %mul21.mod = srem i128 %mul21, 12539295309507511577697735
  %sub22 = sub i128 1, %mul21.mod
  %sub22.mod = srem i128 %sub22, 12539295309507511577697735
  %mul23 = mul i128 %sub22.mod, %sdiv20.mod
  %mul23.mod = srem i128 %mul23, 12539295309507511577697735
  %mul24 = mul i128 168700, %mul.mod
  %mul24.mod = srem i128 %mul24, 12539295309507511577697735
  %add25 = add i128 %mul7.mod, %mul24.mod
  %add25.mod = srem i128 %add25, 12539295309507511577697735
  %sub26 = sub i128 %add25.mod, %mul4.mod
  %sub26.mod = srem i128 %sub26, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul23.mod, i128 %sub26.mod, i1* @constraint.5)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.xout = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 6
  store i128 %sdiv.mod, i128* %write_signal_output.xout, align 4
  %write_signal_output.yout = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %0, i32 0, i32 7
  store i128 %sdiv20.mod, i128* %write_signal_output.yout, align 4
  ret void
}

define %t_struct_babyadd* @t_fn_build_babyadd(%t_struct_param_babyadd* %0) {
entry:
  %1 = alloca %t_struct_babyadd, align 8
  %param = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %1, i32 0, i32 0
  store %t_struct_param_babyadd* %0, %t_struct_param_babyadd** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_babyadd, %t_struct_babyadd* %1, i32 0, i32 1
  store void (%t_struct_babyadd*)* @t_fn_init_babyadd, void (%t_struct_babyadd*)** %init_fn, align 8
  ret %t_struct_babyadd* %1
}
