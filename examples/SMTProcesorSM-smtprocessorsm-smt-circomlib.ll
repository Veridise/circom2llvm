; ModuleID = 'main'
source_filename = "main"

%t_struct_smtprocessorsm = type { %t_struct_param_smtprocessorsm*, void (%t_struct_smtprocessorsm*)*, i128, i128, i128, [256 x i128]*, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }
%t_struct_param_smtprocessorsm = type {}

@constraint = external global i1*
@constraint.1 = external global i1*
@constraint.2 = external global i1*
@constraint.3 = external global i1*
@constraint.4 = external global i1*
@constraint.5 = external global i1*
@constraint.6 = external global i1*
@constraint.7 = external global i1*

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

define void @t_fn_init_smtprocessorsm(%t_struct_smtprocessorsm* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 2
  %read_signal_input.xor = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 3
  %read_signal_input.is0 = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 4
  %read_signal_input.levIns = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 5
  %read_signal_input.fnc = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %fnc = alloca i128, i32 256, align 8
  %1 = bitcast i128* %fnc to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.fnc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %struct_ptr4 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 6
  %read_signal_input.prev_top = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 7
  %read_signal_input.prev_old0 = load i128, i128* %struct_ptr5, align 4
  %struct_ptr6 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 8
  %read_signal_input.prev_bot = load i128, i128* %struct_ptr6, align 4
  %struct_ptr7 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 9
  %read_signal_input.prev_new1 = load i128, i128* %struct_ptr7, align 4
  %struct_ptr8 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 10
  %read_signal_input.prev_na = load i128, i128* %struct_ptr8, align 4
  %struct_ptr9 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 11
  %read_signal_input.prev_upd = load i128, i128* %struct_ptr9, align 4
  %mul = mul i128 %read_signal_input.prev_top, %read_signal_input.levIns
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod)
  %array_ptr = getelementptr inbounds i128, i128* %fnc, i128 0
  %fnc10 = load i128, i128* %array_ptr, align 4
  %mul11 = mul i128 %mul.mod, %fnc10
  %mul11.mod = srem i128 %mul11, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul11.mod, i128 %mul11.mod)
  %sub = sub i128 %read_signal_input.prev_top, %mul.mod
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %sub.mod, i128 %sub.mod)
  %mul12 = mul i128 %mul11.mod, %read_signal_input.is0
  %mul12.mod = srem i128 %mul12, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul12.mod, i128 %mul12.mod)
  %sub13 = sub i128 %mul11.mod, %mul12.mod
  %sub13.mod = srem i128 %sub13, 12539295309507511577697735
  %add = add i128 %sub13.mod, %read_signal_input.prev_bot
  %add.mod = srem i128 %add, 12539295309507511577697735
  %mul14 = mul i128 %add.mod, %read_signal_input.xor
  %mul14.mod = srem i128 %mul14, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul14.mod, i128 %mul14.mod)
  %sub15 = sub i128 1, %read_signal_input.xor
  %sub15.mod = srem i128 %sub15, 12539295309507511577697735
  %sub16 = sub i128 %mul11.mod, %mul12.mod
  %sub16.mod = srem i128 %sub16, 12539295309507511577697735
  %add17 = add i128 %sub16.mod, %read_signal_input.prev_bot
  %add17.mod = srem i128 %add17, 12539295309507511577697735
  %mul18 = mul i128 %sub15.mod, %add17.mod
  %mul18.mod = srem i128 %mul18, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul18.mod, i128 %mul18.mod)
  %sub19 = sub i128 %mul.mod, %mul11.mod
  %sub19.mod = srem i128 %sub19, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %sub19.mod, i128 %sub19.mod)
  %add20 = add i128 %read_signal_input.prev_new1, %read_signal_input.prev_old0
  %add20.mod = srem i128 %add20, 12539295309507511577697735
  %add21 = add i128 %add20.mod, %read_signal_input.prev_na
  %add21.mod = srem i128 %add21, 12539295309507511577697735
  %add22 = add i128 %add21.mod, %read_signal_input.prev_upd
  %add22.mod = srem i128 %add22, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add22.mod, i128 %add22.mod)

exit:                                             ; No predecessors!
  %write_signal_output.st_top = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 12
  store i128 %sub.mod, i128* %write_signal_output.st_top, align 4
  %write_signal_output.st_old0 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 13
  store i128 %mul12.mod, i128* %write_signal_output.st_old0, align 4
  %write_signal_output.st_bot = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 14
  store i128 %mul18.mod, i128* %write_signal_output.st_bot, align 4
  %write_signal_output.st_new1 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 15
  store i128 %mul14.mod, i128* %write_signal_output.st_new1, align 4
  %write_signal_output.st_na = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 16
  store i128 %add22.mod, i128* %write_signal_output.st_na, align 4
  %write_signal_output.st_upd = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 17
  store i128 %sub19.mod, i128* %write_signal_output.st_upd, align 4
}

define %t_struct_smtprocessorsm @t_fn_build_smtprocessorsm(%t_struct_param_smtprocessorsm* %0) {
entry:
  %1 = alloca %t_struct_smtprocessorsm, align 8
  %param = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %1, i32 0, i32 0
  store %t_struct_param_smtprocessorsm* %0, %t_struct_param_smtprocessorsm** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %1, i32 0, i32 1
  store void (%t_struct_smtprocessorsm*)* @t_fn_init_smtprocessorsm, void (%t_struct_smtprocessorsm*)** %init_fn, align 8
  ret %t_struct_smtprocessorsm* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn }
