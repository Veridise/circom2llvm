; ModuleID = 'main'
source_filename = "main"

%t_struct_xor3 = type { %t_struct_param_xor3*, void (%t_struct_xor3*)*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%t_struct_param_xor3 = type { i128 }

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

define void @t_fn_init_xor3(%t_struct_xor3* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %0, i32 0, i32 0
  %param = load %t_struct_param_xor3*, %t_struct_param_xor3** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_xor3, %t_struct_param_xor3* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %0, i32 0, i32 2
  %read_signal_input.a = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %a = alloca i128, i32 256, align 8
  %1 = bitcast i128* %a to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %struct_ptr3 = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %0, i32 0, i32 3
  %read_signal_input.b = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %b = alloca i128, i32 256, align 8
  %3 = bitcast i128* %b to i8*
  %4 = bitcast [256 x i128]* %read_signal_input.b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 256, i1 false)
  %struct_ptr4 = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %0, i32 0, i32 4
  %read_signal_input.c = load [256 x i128]*, [256 x i128]** %struct_ptr4, align 8
  %c = alloca i128, i32 256, align 8
  %5 = bitcast i128* %c to i8*
  %6 = bitcast [256 x i128]* %read_signal_input.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %5, i8* align 4 %6, i32 256, i1 false)
  %mid = alloca i128, i32 256, align 8
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add37, %loop.latch ]
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
  %mul15 = mul i128 2, %b14
  %sub = sub i128 1, %mul15
  %array_ptr16 = getelementptr inbounds i128, i128* %c, i128 %loop.i
  %c17 = load i128, i128* %array_ptr16, align 4
  %mul18 = mul i128 2, %c17
  %sub19 = sub i128 %sub, %mul18
  %array_ptr20 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  %mid21 = load i128, i128* %array_ptr20, align 4
  %mul22 = mul i128 4, %mid21
  %add = add i128 %sub19, %mul22
  %mul23 = mul i128 %a12, %add
  %array_ptr24 = getelementptr inbounds i128, i128* %b, i128 %loop.i
  %b25 = load i128, i128* %array_ptr24, align 4
  %add26 = add i128 %mul23, %b25
  %array_ptr27 = getelementptr inbounds i128, i128* %c, i128 %loop.i
  %c28 = load i128, i128* %array_ptr27, align 4
  %add29 = add i128 %add26, %c28
  %array_ptr30 = getelementptr inbounds i128, i128* %mid, i128 %loop.i
  %mid31 = load i128, i128* %array_ptr30, align 4
  %mul32 = mul i128 2, %mid31
  %sub33 = sub i128 %add29, %mul32
  %out34 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %sub33, i128* %out34, align 4
  %array_ptr35 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out36 = load i128, i128* %array_ptr35, align 4
  call void @intrinsic_add_constraint(i128 %out36, i128 %sub33, i1* @constraint.1)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add37 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add37, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %0, i32 0, i32 5
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_xor3* @t_fn_build_xor3(%t_struct_param_xor3* %0) {
entry:
  %1 = alloca %t_struct_xor3, align 8
  %param = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %1, i32 0, i32 0
  store %t_struct_param_xor3* %0, %t_struct_param_xor3** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_xor3, %t_struct_xor3* %1, i32 0, i32 1
  store void (%t_struct_xor3*)* @t_fn_init_xor3, void (%t_struct_xor3*)** %init_fn, align 8
  ret %t_struct_xor3* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
