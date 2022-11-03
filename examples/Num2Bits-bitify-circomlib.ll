; ModuleID = 'main'
source_filename = "main"

%t_struct_num2bits = type { %t_struct_param_num2bits*, void (%t_struct_num2bits*)*, i128, [256 x i128]* }
%t_struct_param_num2bits = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1

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

define void @t_fn_init_num2bits(%t_struct_num2bits* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_num2bits, %t_struct_num2bits* %0, i32 0, i32 0
  %param = load %t_struct_param_num2bits*, %t_struct_param_num2bits** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_num2bits, %t_struct_param_num2bits* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_num2bits, %t_struct_num2bits* %0, i32 0, i32 2
  %read_signal_input.in = load i128, i128* %struct_ptr2, align 4
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add10, %loop.latch ]
  %rshift = lshr i128 %read_signal_input.in, %loop.i
  %and = and i128 %rshift, 1
  %out3 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %and, i128* %out3, align 4
  %array_ptr = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out4 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out6 = load i128, i128* %array_ptr5, align 4
  %sub = sub i128 %out6, 1
  %mul = mul i128 %out4, %sub
  call void @intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint)
  %array_ptr7 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out8 = load i128, i128* %array_ptr7, align 4
  %mul9 = mul i128 %out8, 1
  %add = add i128 0, %mul9
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add10 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add10, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @intrinsic_add_constraint(i128 %add, i128 %read_signal_input.in, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_num2bits, %t_struct_num2bits* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_num2bits* @t_fn_build_num2bits(%t_struct_param_num2bits* %0) {
entry:
  %1 = alloca %t_struct_num2bits, align 8
  %param = getelementptr inbounds %t_struct_num2bits, %t_struct_num2bits* %1, i32 0, i32 0
  store %t_struct_param_num2bits* %0, %t_struct_param_num2bits** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_num2bits, %t_struct_num2bits* %1, i32 0, i32 1
  store void (%t_struct_num2bits*)* @t_fn_init_num2bits, void (%t_struct_num2bits*)** %init_fn, align 8
  ret %t_struct_num2bits* %1
}

declare noalias i8* @malloc(i32)
