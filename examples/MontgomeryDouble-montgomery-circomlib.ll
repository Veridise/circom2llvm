; ModuleID = 'main'
source_filename = "main"

%t_struct_montgomerydouble = type { %t_struct_param_montgomerydouble*, void (%t_struct_montgomerydouble*)*, [256 x i128]*, [256 x i128]* }
%t_struct_param_montgomerydouble = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1

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

define void @t_fn_init_montgomerydouble(%t_struct_montgomerydouble* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_montgomerydouble, %t_struct_montgomerydouble* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %array_ptr = getelementptr inbounds i128, i128* %in, i128 0
  %in1 = load i128, i128* %array_ptr, align 4
  %array_ptr2 = getelementptr inbounds i128, i128* %in, i128 0
  %in3 = load i128, i128* %array_ptr2, align 4
  %mul = mul i128 %in1, %in3
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod, i1* @constraint)
  %mul4 = mul i128 3, %mul.mod
  %mul4.mod = srem i128 %mul4, 12539295309507511577697735
  %array_ptr5 = getelementptr inbounds i128, i128* %in, i128 0
  %in6 = load i128, i128* %array_ptr5, align 4
  %mul7 = mul i128 337396, %in6
  %mul7.mod = srem i128 %mul7, 12539295309507511577697735
  %add = add i128 %mul4.mod, %mul7.mod
  %add.mod = srem i128 %add, 12539295309507511577697735
  %add8 = add i128 %add.mod, 1
  %add8.mod = srem i128 %add8, 12539295309507511577697735
  %array_ptr9 = getelementptr inbounds i128, i128* %in, i128 1
  %in10 = load i128, i128* %array_ptr9, align 4
  %mul11 = mul i128 2, %in10
  %mul11.mod = srem i128 %mul11, 12539295309507511577697735
  %sdiv = sdiv i128 %add8.mod, %mul11.mod
  %sdiv.mod = srem i128 %sdiv, 12539295309507511577697735
  %array_ptr12 = getelementptr inbounds i128, i128* %in, i128 1
  %in13 = load i128, i128* %array_ptr12, align 4
  %mul14 = mul i128 2, %in13
  %mul14.mod = srem i128 %mul14, 12539295309507511577697735
  %mul15 = mul i128 %sdiv.mod, %mul14.mod
  %mul15.mod = srem i128 %mul15, 12539295309507511577697735
  %mul16 = mul i128 3, %mul.mod
  %mul16.mod = srem i128 %mul16, 12539295309507511577697735
  %array_ptr17 = getelementptr inbounds i128, i128* %in, i128 0
  %in18 = load i128, i128* %array_ptr17, align 4
  %mul19 = mul i128 337396, %in18
  %mul19.mod = srem i128 %mul19, 12539295309507511577697735
  %add20 = add i128 %mul16.mod, %mul19.mod
  %add20.mod = srem i128 %add20, 12539295309507511577697735
  %add21 = add i128 %add20.mod, 1
  %add21.mod = srem i128 %add21, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul15.mod, i128 %add21.mod, i1* @constraint.1)
  %mul22 = mul i128 1, %sdiv.mod
  %mul22.mod = srem i128 %mul22, 12539295309507511577697735
  %mul23 = mul i128 %mul22.mod, %sdiv.mod
  %mul23.mod = srem i128 %mul23, 12539295309507511577697735
  %sub = sub i128 %mul23.mod, 168698
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %array_ptr24 = getelementptr inbounds i128, i128* %in, i128 0
  %in25 = load i128, i128* %array_ptr24, align 4
  %mul26 = mul i128 2, %in25
  %mul26.mod = srem i128 %mul26, 12539295309507511577697735
  %sub27 = sub i128 %sub.mod, %mul26.mod
  %sub27.mod = srem i128 %sub27, 12539295309507511577697735
  %out28 = getelementptr inbounds i128, i128* %out, i128 0
  store i128 %sub27.mod, i128* %out28, align 4
  %array_ptr29 = getelementptr inbounds i128, i128* %out, i128 0
  %out30 = load i128, i128* %array_ptr29, align 4
  call void @intrinsic_add_constraint(i128 %out30, i128 %sub27.mod, i1* @constraint.2)
  %array_ptr31 = getelementptr inbounds i128, i128* %in, i128 0
  %in32 = load i128, i128* %array_ptr31, align 4
  %array_ptr33 = getelementptr inbounds i128, i128* %out, i128 0
  %out34 = load i128, i128* %array_ptr33, align 4
  %sub35 = sub i128 %in32, %out34
  %sub35.mod = srem i128 %sub35, 12539295309507511577697735
  %mul36 = mul i128 %sdiv.mod, %sub35.mod
  %mul36.mod = srem i128 %mul36, 12539295309507511577697735
  %array_ptr37 = getelementptr inbounds i128, i128* %in, i128 1
  %in38 = load i128, i128* %array_ptr37, align 4
  %sub39 = sub i128 %mul36.mod, %in38
  %sub39.mod = srem i128 %sub39, 12539295309507511577697735
  %out40 = getelementptr inbounds i128, i128* %out, i128 1
  store i128 %sub39.mod, i128* %out40, align 4
  %array_ptr41 = getelementptr inbounds i128, i128* %out, i128 1
  %out42 = load i128, i128* %array_ptr41, align 4
  call void @intrinsic_add_constraint(i128 %out42, i128 %sub39.mod, i1* @constraint.3)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.out = getelementptr inbounds %t_struct_montgomerydouble, %t_struct_montgomerydouble* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_montgomerydouble* @t_fn_build_montgomerydouble(%t_struct_param_montgomerydouble* %0) {
entry:
  %1 = alloca %t_struct_montgomerydouble, align 8
  %param = getelementptr inbounds %t_struct_montgomerydouble, %t_struct_montgomerydouble* %1, i32 0, i32 0
  store %t_struct_param_montgomerydouble* %0, %t_struct_param_montgomerydouble** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_montgomerydouble, %t_struct_montgomerydouble* %1, i32 0, i32 1
  store void (%t_struct_montgomerydouble*)* @t_fn_init_montgomerydouble, void (%t_struct_montgomerydouble*)** %init_fn, align 8
  ret %t_struct_montgomerydouble* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
