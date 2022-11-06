; ModuleID = 'main'
source_filename = "main"

%t_struct_decoder = type { %t_struct_param_decoder*, void (%t_struct_decoder*)*, i128, [256 x i128]*, i128 }
%t_struct_param_decoder = type { i128 }

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

define void @t_fn_init_decoder(%t_struct_decoder* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %0, i32 0, i32 0
  %param = load %t_struct_param_decoder*, %t_struct_param_decoder** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_decoder, %t_struct_param_decoder* %param, i32 0, i32 0
  %params.w = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %0, i32 0, i32 2
  %read_signal_input.inp = load i128, i128* %struct_ptr2, align 4
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add7, %loop.latch ]
  %eq = icmp eq i128 %read_signal_input.inp, %loop.i
  %inlineswitch = call i128 @intrinsic_inline_switch(i1 %eq, i128 1, i128 0)
  %out3 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %inlineswitch, i128* %out3, align 4
  %array_ptr = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out4 = load i128, i128* %array_ptr, align 4
  %sub = sub i128 %read_signal_input.inp, %loop.i
  %mul = mul i128 %out4, %sub
  call void @intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint)
  %array_ptr5 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out6 = load i128, i128* %array_ptr5, align 4
  %add = add i128 0, %out6
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add7 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add7, %params.w
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.1)
  %sub8 = sub i128 %add, 1
  %mul9 = mul i128 %add, %sub8
  call void @intrinsic_add_constraint(i128 %mul9, i128 0, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  %write_signal_output.success = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %0, i32 0, i32 4
  store i128 %add, i128* %write_signal_output.success, align 4
  ret void
}

define %t_struct_decoder* @t_fn_build_decoder(%t_struct_param_decoder* %0) {
entry:
  %1 = alloca %t_struct_decoder, align 8
  %param = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %1, i32 0, i32 0
  store %t_struct_param_decoder* %0, %t_struct_param_decoder** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_decoder, %t_struct_decoder* %1, i32 0, i32 1
  store void (%t_struct_decoder*)* @t_fn_init_decoder, void (%t_struct_decoder*)** %init_fn, align 8
  ret %t_struct_decoder* %1
}

declare noalias i8* @malloc(i32)
