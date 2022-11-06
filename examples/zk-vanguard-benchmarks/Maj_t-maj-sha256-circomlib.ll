; ModuleID = 'main'
source_filename = "main"

%t_struct_maj_t = type { %t_struct_param_maj_t*, void (%t_struct_maj_t*)*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%t_struct_param_maj_t = type { i128 }

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

define void @t_fn_init_maj_t(%t_struct_maj_t* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %0, i32 0, i32 0
  %param = load %t_struct_param_maj_t*, %t_struct_param_maj_t** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_maj_t, %t_struct_param_maj_t* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %0, i32 0, i32 2
  %read_signal_input.a = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %a = alloca i128, i32 256, align 8
  %1 = bitcast i128* %a to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %struct_ptr3 = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %0, i32 0, i32 3
  %read_signal_input.b = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %b = alloca i128, i32 256, align 8
  %3 = bitcast i128* %b to i8*
  %4 = bitcast [256 x i128]* %read_signal_input.b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 256, i1 false)
  %struct_ptr4 = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %0, i32 0, i32 4
  %read_signal_input.c = load [256 x i128]*, [256 x i128]** %struct_ptr4, align 8
  %c = alloca i128, i32 256, align 8
  %5 = bitcast i128* %c to i8*
  %6 = bitcast [256 x i128]* %read_signal_input.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %5, i8* align 4 %6, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %mid = alloca i128, i32 256, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add27, %loop.latch ]
  %array_ptr = getelementptr inbounds i128, i128* %b, i128 %loop.i
  %b5 = load i128, i128* %array_ptr, align 4
  %array_ptr6 = getelementptr inbounds i128, i128* %c, i128 %loop.i
  %c7 = load i128, i128* %array_ptr6, align 4
  %mul = mul i128 %b5, %c7
  %mid8 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  store i128 %mul, i128* %mid8, align 4
  %array_ptr9 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  %mid10 = load i128, i128* %array_ptr9, align 4
  call void @intrinsic_add_constraint(i128 %mid10, i128 %mul, i1* @constraint)
  %array_ptr11 = getelementptr inbounds i128, i128* %a, i128 %loop.i
  %a12 = load i128, i128* %array_ptr11, align 4
  %array_ptr13 = getelementptr inbounds i128, i128* %b, i128 %loop.i
  %b14 = load i128, i128* %array_ptr13, align 4
  %array_ptr15 = getelementptr inbounds i128, i128* %c, i128 %loop.i
  %c16 = load i128, i128* %array_ptr15, align 4
  %add = add i128 %b14, %c16
  %array_ptr17 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  %mid18 = load i128, i128* %array_ptr17, align 4
  %mul19 = mul i128 2, %mid18
  %sub = sub i128 %add, %mul19
  %mul20 = mul i128 %a12, %sub
  %array_ptr21 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  %mid22 = load i128, i128* %array_ptr21, align 4
  %add23 = add i128 %mul20, %mid22
  %out24 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %add23, i128* %out24, align 4
  %array_ptr25 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out26 = load i128, i128* %array_ptr25, align 4
  call void @intrinsic_add_constraint(i128 %out26, i128 %add23, i1* @constraint.1)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add27 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add27, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %0, i32 0, i32 5
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_maj_t* @t_fn_build_maj_t(%t_struct_param_maj_t* %0) {
entry:
  %1 = alloca %t_struct_maj_t, align 8
  %param = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %1, i32 0, i32 0
  store %t_struct_param_maj_t* %0, %t_struct_param_maj_t** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_maj_t, %t_struct_maj_t* %1, i32 0, i32 1
  store void (%t_struct_maj_t*)* @t_fn_init_maj_t, void (%t_struct_maj_t*)** %init_fn, align 8
  ret %t_struct_maj_t* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
