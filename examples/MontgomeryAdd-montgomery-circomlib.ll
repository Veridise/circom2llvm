; ModuleID = 'main'
source_filename = "main"

%t_struct_montgomeryadd = type { %t_struct_param_montgomeryadd*, void (%t_struct_montgomeryadd*)*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%t_struct_param_montgomeryadd = type {}

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

define void @t_fn_init_montgomeryadd(%t_struct_montgomeryadd* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_montgomeryadd, %t_struct_montgomeryadd* %0, i32 0, i32 2
  %read_signal_input.in1 = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in1 = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in1 to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %struct_ptr1 = getelementptr inbounds %t_struct_montgomeryadd, %t_struct_montgomeryadd* %0, i32 0, i32 3
  %read_signal_input.in2 = load [256 x i128]*, [256 x i128]** %struct_ptr1, align 8
  %in2 = alloca i128, i32 256, align 8
  %3 = bitcast i128* %in2 to i8*
  %4 = bitcast [256 x i128]* %read_signal_input.in2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %array_ptr = getelementptr inbounds i128, i128* %in2, i128 1
  %in22 = load i128, i128* %array_ptr, align 4
  %array_ptr3 = getelementptr inbounds i128, i128* %in1, i128 1
  %in14 = load i128, i128* %array_ptr3, align 4
  %sub = sub i128 %in22, %in14
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %array_ptr5 = getelementptr inbounds i128, i128* %in2, i128 0
  %in26 = load i128, i128* %array_ptr5, align 4
  %array_ptr7 = getelementptr inbounds i128, i128* %in1, i128 0
  %in18 = load i128, i128* %array_ptr7, align 4
  %sub9 = sub i128 %in26, %in18
  %sub9.mod = srem i128 %sub9, 12539295309507511577697735
  %sdiv = sdiv i128 %sub.mod, %sub9.mod
  %sdiv.mod = srem i128 %sdiv, 12539295309507511577697735
  %array_ptr10 = getelementptr inbounds i128, i128* %in2, i128 0
  %in211 = load i128, i128* %array_ptr10, align 4
  %array_ptr12 = getelementptr inbounds i128, i128* %in1, i128 0
  %in113 = load i128, i128* %array_ptr12, align 4
  %sub14 = sub i128 %in211, %in113
  %sub14.mod = srem i128 %sub14, 12539295309507511577697735
  %mul = mul i128 %sdiv.mod, %sub14.mod
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %array_ptr15 = getelementptr inbounds i128, i128* %in2, i128 1
  %in216 = load i128, i128* %array_ptr15, align 4
  %array_ptr17 = getelementptr inbounds i128, i128* %in1, i128 1
  %in118 = load i128, i128* %array_ptr17, align 4
  %sub19 = sub i128 %in216, %in118
  %sub19.mod = srem i128 %sub19, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %sub19.mod, i1* @constraint)
  %mul20 = mul i128 1, %sdiv.mod
  %mul20.mod = srem i128 %mul20, 12539295309507511577697735
  %mul21 = mul i128 %mul20.mod, %sdiv.mod
  %mul21.mod = srem i128 %mul21, 12539295309507511577697735
  %sub22 = sub i128 %mul21.mod, 168698
  %sub22.mod = srem i128 %sub22, 12539295309507511577697735
  %array_ptr23 = getelementptr inbounds i128, i128* %in1, i128 0
  %in124 = load i128, i128* %array_ptr23, align 4
  %sub25 = sub i128 %sub22.mod, %in124
  %sub25.mod = srem i128 %sub25, 12539295309507511577697735
  %array_ptr26 = getelementptr inbounds i128, i128* %in2, i128 0
  %in227 = load i128, i128* %array_ptr26, align 4
  %sub28 = sub i128 %sub25.mod, %in227
  %sub28.mod = srem i128 %sub28, 12539295309507511577697735
  %out29 = getelementptr inbounds i128, i128* %out, i128 0
  store i128 %sub28.mod, i128* %out29, align 4
  %array_ptr30 = getelementptr inbounds i128, i128* %out, i128 0
  %out31 = load i128, i128* %array_ptr30, align 4
  call void @intrinsic_add_constraint(i128 %out31, i128 %sub28.mod, i1* @constraint.1)
  %array_ptr32 = getelementptr inbounds i128, i128* %in1, i128 0
  %in133 = load i128, i128* %array_ptr32, align 4
  %array_ptr34 = getelementptr inbounds i128, i128* %out, i128 0
  %out35 = load i128, i128* %array_ptr34, align 4
  %sub36 = sub i128 %in133, %out35
  %sub36.mod = srem i128 %sub36, 12539295309507511577697735
  %mul37 = mul i128 %sdiv.mod, %sub36.mod
  %mul37.mod = srem i128 %mul37, 12539295309507511577697735
  %array_ptr38 = getelementptr inbounds i128, i128* %in1, i128 1
  %in139 = load i128, i128* %array_ptr38, align 4
  %sub40 = sub i128 %mul37.mod, %in139
  %sub40.mod = srem i128 %sub40, 12539295309507511577697735
  %out41 = getelementptr inbounds i128, i128* %out, i128 1
  store i128 %sub40.mod, i128* %out41, align 4
  %array_ptr42 = getelementptr inbounds i128, i128* %out, i128 1
  %out43 = load i128, i128* %array_ptr42, align 4
  call void @intrinsic_add_constraint(i128 %out43, i128 %sub40.mod, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.out = getelementptr inbounds %t_struct_montgomeryadd, %t_struct_montgomeryadd* %0, i32 0, i32 4
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_montgomeryadd* @t_fn_build_montgomeryadd(%t_struct_param_montgomeryadd* %0) {
entry:
  %1 = alloca %t_struct_montgomeryadd, align 8
  %param = getelementptr inbounds %t_struct_montgomeryadd, %t_struct_montgomeryadd* %1, i32 0, i32 0
  store %t_struct_param_montgomeryadd* %0, %t_struct_param_montgomeryadd** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_montgomeryadd, %t_struct_montgomeryadd* %1, i32 0, i32 1
  store void (%t_struct_montgomeryadd*)* @t_fn_init_montgomeryadd, void (%t_struct_montgomeryadd*)** %init_fn, align 8
  ret %t_struct_montgomeryadd* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
