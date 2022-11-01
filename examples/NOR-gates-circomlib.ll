; ModuleID = 'main'
source_filename = "main"

%t_struct_nor = type { %t_struct_param_nor*, void (%t_struct_nor*)*, i128, i128, i128 }
%t_struct_param_nor = type {}

@constraint = external global i1*

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
}

define i128 @intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @t_fn_init_nor(%t_struct_nor* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_nor, %t_struct_nor* %0, i32 0, i32 2
  %read_signal_input.a = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_nor, %t_struct_nor* %0, i32 0, i32 3
  %read_signal_input.b = load i128, i128* %struct_ptr1, align 4
  %mul = mul i128 %read_signal_input.a, %read_signal_input.b
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %add = add i128 %mul.mod, 1
  %add.mod = srem i128 %add, 12539295309507511577697735
  %sub = sub i128 %add.mod, %read_signal_input.a
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %sub2 = sub i128 %sub.mod, %read_signal_input.b
  %sub2.mod = srem i128 %sub2, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %sub2.mod, i128 %sub2.mod)

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_nor, %t_struct_nor* %0, i32 0, i32 4
  store i128 %sub2.mod, i128* %write_signal_output.out, align 4
}

define %t_struct_nor @t_fn_build_nor(%t_struct_param_nor* %0) {
entry:
  %1 = alloca %t_struct_nor, align 8
  %param = getelementptr inbounds %t_struct_nor, %t_struct_nor* %1, i32 0, i32 0
  store %t_struct_param_nor* %0, %t_struct_param_nor** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_nor, %t_struct_nor* %1, i32 0, i32 1
  store void (%t_struct_nor*)* @t_fn_init_nor, void (%t_struct_nor*)** %init_fn, align 8
  ret %t_struct_nor* %1
}
