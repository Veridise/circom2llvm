; ModuleID = 'main'
source_filename = "main"

%t_struct_edwards2montgomery = type { %t_struct_param_edwards2montgomery*, void (%t_struct_edwards2montgomery*)*, [256 x i128]*, [256 x i128]* }
%t_struct_param_edwards2montgomery = type {}

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

define void @t_fn_init_edwards2montgomery(%t_struct_edwards2montgomery* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_edwards2montgomery, %t_struct_edwards2montgomery* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %array_ptr = getelementptr inbounds i128, i128* %in, i128 1
  %in1 = load i128, i128* %array_ptr, align 4
  %add = add i128 1, %in1
  %add.mod = srem i128 %add, 12539295309507511577697735
  %array_ptr2 = getelementptr inbounds i128, i128* %in, i128 1
  %in3 = load i128, i128* %array_ptr2, align 4
  %sub = sub i128 1, %in3
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %sdiv = sdiv i128 %add.mod, %sub.mod
  %sdiv.mod = srem i128 %sdiv, 12539295309507511577697735
  %out4 = getelementptr inbounds i128, i128* %out, i128 0
  store i128 %sdiv.mod, i128* %out4, align 4
  %array_ptr5 = getelementptr inbounds i128, i128* %out, i128 0
  %out6 = load i128, i128* %array_ptr5, align 4
  %array_ptr7 = getelementptr inbounds i128, i128* %in, i128 0
  %in8 = load i128, i128* %array_ptr7, align 4
  %sdiv9 = sdiv i128 %out6, %in8
  %sdiv9.mod = srem i128 %sdiv9, 12539295309507511577697735
  %out10 = getelementptr inbounds i128, i128* %out, i128 1
  store i128 %sdiv9.mod, i128* %out10, align 4
  %array_ptr11 = getelementptr inbounds i128, i128* %out, i128 0
  %out12 = load i128, i128* %array_ptr11, align 4
  %array_ptr13 = getelementptr inbounds i128, i128* %in, i128 1
  %in14 = load i128, i128* %array_ptr13, align 4
  %sub15 = sub i128 1, %in14
  %sub15.mod = srem i128 %sub15, 12539295309507511577697735
  %mul = mul i128 %out12, %sub15.mod
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %array_ptr16 = getelementptr inbounds i128, i128* %in, i128 1
  %in17 = load i128, i128* %array_ptr16, align 4
  %add18 = add i128 1, %in17
  %add18.mod = srem i128 %add18, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %add18.mod)
  %array_ptr19 = getelementptr inbounds i128, i128* %out, i128 1
  %out20 = load i128, i128* %array_ptr19, align 4
  %array_ptr21 = getelementptr inbounds i128, i128* %in, i128 0
  %in22 = load i128, i128* %array_ptr21, align 4
  %mul23 = mul i128 %out20, %in22
  %mul23.mod = srem i128 %mul23, 12539295309507511577697735
  %array_ptr24 = getelementptr inbounds i128, i128* %out, i128 0
  %out25 = load i128, i128* %array_ptr24, align 4
  call void @intrinsic_add_constraint(i128 %mul23.mod, i128 %out25)

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_edwards2montgomery, %t_struct_edwards2montgomery* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
}

define %t_struct_edwards2montgomery @t_fn_build_edwards2montgomery(%t_struct_param_edwards2montgomery* %0) {
entry:
  %1 = alloca %t_struct_edwards2montgomery, align 8
  %param = getelementptr inbounds %t_struct_edwards2montgomery, %t_struct_edwards2montgomery* %1, i32 0, i32 0
  store %t_struct_param_edwards2montgomery* %0, %t_struct_param_edwards2montgomery** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_edwards2montgomery, %t_struct_edwards2montgomery* %1, i32 0, i32 1
  store void (%t_struct_edwards2montgomery*)* @t_fn_init_edwards2montgomery, void (%t_struct_edwards2montgomery*)** %init_fn, align 8
  ret %t_struct_edwards2montgomery* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
