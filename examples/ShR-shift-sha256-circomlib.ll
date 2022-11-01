; ModuleID = 'main'
source_filename = "main"

%t_struct_shr = type { %t_struct_param_shr*, void (%t_struct_shr*)*, [256 x i128]*, [256 x i128]* }
%t_struct_param_shr = type { i128, i128 }

@constraint = external global i1*
@constraint.1 = external global i1*

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

define void @t_fn_init_shr(%t_struct_shr* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_shr, %t_struct_shr* %0, i32 0, i32 0
  %param = load %t_struct_param_shr*, %t_struct_param_shr** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_shr, %t_struct_param_shr* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_shr, %t_struct_shr* %0, i32 0, i32 0
  %param3 = load %t_struct_param_shr*, %t_struct_param_shr** %struct_ptr2, align 8
  %struct_ptr4 = getelementptr inbounds %t_struct_param_shr, %t_struct_param_shr* %param3, i32 0, i32 1
  %params.r = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %t_struct_shr, %t_struct_shr* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr5, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add14, %loop.latch ]
  %add = add i128 %loop.i, %params.r
  %add.mod = srem i128 %add, 12539295309507511577697735
  %sge = icmp sge i128 %add.mod, %params.n
  br i1 %sge, label %if.body, label %if.else
  br label %loop.latch

if.body:                                          ; preds = %loop.body
  %out6 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 0, i128* %out6, align 4
  %array_ptr = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out7 = load i128, i128* %array_ptr, align 4
  call void @intrinsic_add_constraint(i128 %out7, i128 0)
  br label %if.end

if.else:                                          ; preds = %loop.body
  %add8 = add i128 %loop.i, %params.r
  %add8.mod = srem i128 %add8, 12539295309507511577697735
  %array_ptr9 = getelementptr inbounds i128, i128* %in, i128 %add8.mod
  %in10 = load i128, i128* %array_ptr9, align 4
  %out11 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %in10, i128* %out11, align 4
  %array_ptr12 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out13 = load i128, i128* %array_ptr12, align 4
  call void @intrinsic_add_constraint(i128 %out13, i128 %in10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.body

loop.latch:                                       ; preds = %loop.body
  %add14 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add14, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_shr, %t_struct_shr* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
}

define %t_struct_shr @t_fn_build_shr(%t_struct_param_shr* %0) {
entry:
  %1 = alloca %t_struct_shr, align 8
  %param = getelementptr inbounds %t_struct_shr, %t_struct_shr* %1, i32 0, i32 0
  store %t_struct_param_shr* %0, %t_struct_param_shr** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_shr, %t_struct_shr* %1, i32 0, i32 1
  store void (%t_struct_shr*)* @t_fn_init_shr, void (%t_struct_shr*)** %init_fn, align 8
  ret %t_struct_shr* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
