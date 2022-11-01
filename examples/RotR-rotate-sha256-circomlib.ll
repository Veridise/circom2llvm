; ModuleID = 'main'
source_filename = "main"

%t_struct_rotr = type { %t_struct_param_rotr*, void (%t_struct_rotr*)*, [256 x i128]*, [256 x i128]* }
%t_struct_param_rotr = type { i128, i128 }

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

define void @t_fn_init_rotr(%t_struct_rotr* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %0, i32 0, i32 0
  %param = load %t_struct_param_rotr*, %t_struct_param_rotr** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_rotr, %t_struct_param_rotr* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %0, i32 0, i32 0
  %param3 = load %t_struct_param_rotr*, %t_struct_param_rotr** %struct_ptr2, align 8
  %struct_ptr4 = getelementptr inbounds %t_struct_param_rotr, %t_struct_param_rotr* %param3, i32 0, i32 1
  %params.r = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr5, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add10, %loop.latch ]
  %add = add i128 %loop.i, %params.r
  %add.mod = srem i128 %add, 12539295309507511577697735
  %mod = srem i128 %add.mod, %params.n
  %mod.mod = srem i128 %mod, 12539295309507511577697735
  %array_ptr = getelementptr inbounds i128, i128* %in, i128 %mod.mod
  %in6 = load i128, i128* %array_ptr, align 4
  %out7 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %in6, i128* %out7, align 4
  %array_ptr8 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out9 = load i128, i128* %array_ptr8, align 4
  call void @intrinsic_add_constraint(i128 %out9, i128 %in6)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add10 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add10, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
}

define %t_struct_rotr @t_fn_build_rotr(%t_struct_param_rotr* %0) {
entry:
  %1 = alloca %t_struct_rotr, align 8
  %param = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %1, i32 0, i32 0
  store %t_struct_param_rotr* %0, %t_struct_param_rotr** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_rotr, %t_struct_rotr* %1, i32 0, i32 1
  store void (%t_struct_rotr*)* @t_fn_init_rotr, void (%t_struct_rotr*)** %init_fn, align 8
  ret %t_struct_rotr* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
