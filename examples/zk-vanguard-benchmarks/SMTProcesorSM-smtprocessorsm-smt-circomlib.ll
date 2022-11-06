; ModuleID = 'main'
source_filename = "main"

%t_struct_smtprocessorsm = type { %t_struct_param_smtprocessorsm*, void (%t_struct_smtprocessorsm*)*, i128, i128, i128, [256 x i128]*, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }
%t_struct_param_smtprocessorsm = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1
@constraint.7 = external global i1

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
  call void @intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %array_ptr = getelementptr inbounds i128, i128* %fnc, i128 0
  %fnc10 = load i128, i128* %array_ptr, align 4
  %mul11 = mul i128 %mul, %fnc10
  call void @intrinsic_add_constraint(i128 %mul11, i128 %mul11, i1* @constraint.1)
  %sub = sub i128 %read_signal_input.prev_top, %mul
  call void @intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint.2)
  %mul12 = mul i128 %mul11, %read_signal_input.is0
  call void @intrinsic_add_constraint(i128 %mul12, i128 %mul12, i1* @constraint.3)
  %sub13 = sub i128 %mul11, %mul12
  %add = add i128 %sub13, %read_signal_input.prev_bot
  %mul14 = mul i128 %add, %read_signal_input.xor
  call void @intrinsic_add_constraint(i128 %mul14, i128 %mul14, i1* @constraint.4)
  %sub15 = sub i128 1, %read_signal_input.xor
  %sub16 = sub i128 %mul11, %mul12
  %add17 = add i128 %sub16, %read_signal_input.prev_bot
  %mul18 = mul i128 %sub15, %add17
  call void @intrinsic_add_constraint(i128 %mul18, i128 %mul18, i1* @constraint.5)
  %sub19 = sub i128 %mul, %mul11
  call void @intrinsic_add_constraint(i128 %sub19, i128 %sub19, i1* @constraint.6)
  %add20 = add i128 %read_signal_input.prev_new1, %read_signal_input.prev_old0
  %add21 = add i128 %add20, %read_signal_input.prev_na
  %add22 = add i128 %add21, %read_signal_input.prev_upd
  call void @intrinsic_add_constraint(i128 %add22, i128 %add22, i1* @constraint.7)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.st_top = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 12
  store i128 %sub, i128* %write_signal_output.st_top, align 4
  %write_signal_output.st_old0 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 13
  store i128 %mul12, i128* %write_signal_output.st_old0, align 4
  %write_signal_output.st_bot = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 14
  store i128 %mul18, i128* %write_signal_output.st_bot, align 4
  %write_signal_output.st_new1 = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 15
  store i128 %mul14, i128* %write_signal_output.st_new1, align 4
  %write_signal_output.st_na = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 16
  store i128 %add22, i128* %write_signal_output.st_na, align 4
  %write_signal_output.st_upd = getelementptr inbounds %t_struct_smtprocessorsm, %t_struct_smtprocessorsm* %0, i32 0, i32 17
  store i128 %sub19, i128* %write_signal_output.st_upd, align 4
  ret void
}

define %t_struct_smtprocessorsm* @t_fn_build_smtprocessorsm(%t_struct_param_smtprocessorsm* %0) {
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
