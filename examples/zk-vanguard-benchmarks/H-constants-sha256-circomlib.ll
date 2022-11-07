; ModuleID = 'main'
source_filename = "main"

%t_struct_h = type { %t_struct_param_h*, void (%t_struct_h*)*, [256 x i128]* }
%t_struct_param_h = type { i128 }

@constraint = external global i1

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

define void @t_fn_init_h(%t_struct_h* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_h, %t_struct_h* %0, i32 0, i32 0
  %param = load %t_struct_param_h*, %t_struct_param_h** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_h, %t_struct_param_h* %param, i32 0, i32 0
  %params.x = load i128, i128* %struct_ptr1, align 4
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %inlinearray = alloca i128, i32 8, align 8
  store [8 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225], i128* %inlinearray, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds i128, i128* %inlinearray, i128 %params.x
  %c = load i128, i128* %array_ptr, align 4
  %rshift = lshr i128 %c, %loop.i
  %and = and i128 %rshift, 1
  %out2 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %and, i128* %out2, align 4
  %array_ptr3 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out4 = load i128, i128* %array_ptr3, align 4
  call void @intrinsic_add_constraint(i128 %out4, i128 %and, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.i, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_h, %t_struct_h* %0, i32 0, i32 2
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_h* @t_fn_build_h(%t_struct_param_h* %0) {
entry:
  %1 = alloca %t_struct_h, align 8
  %param = getelementptr inbounds %t_struct_h, %t_struct_h* %1, i32 0, i32 0
  store %t_struct_param_h* %0, %t_struct_param_h** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_h, %t_struct_h* %1, i32 0, i32 1
  store void (%t_struct_h*)* @t_fn_init_h, void (%t_struct_h*)** %init_fn, align 8
  ret %t_struct_h* %1
}

declare noalias i8* @malloc(i32)