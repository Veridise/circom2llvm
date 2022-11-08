; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_multiplexor2 = type { %struct_template_params_multiplexor2*, void (%struct_template_circuit_multiplexor2*)*, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_params_multiplexor2 = type {}

@constraint = external global i1
@constraint.1 = external global i1

define void @fn_intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @fn_intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i128 @llvm.powi.i128.i32(i128, i32) #0

define void @fn_template_init_multiplexor2(%struct_template_circuit_multiplexor2* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_multiplexor2, %struct_template_circuit_multiplexor2* %0, i32 0, i32 2
  %inner_input_write__multiplexor2.sel = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_multiplexor2, %struct_template_circuit_multiplexor2* %0, i32 0, i32 3
  %inner_input_write__multiplexor2.in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr1, align 8
  %in = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %in to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__multiplexor2.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %array_ptr = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 1, i128 0
  %in2 = load i128, i128* %array_ptr, align 4
  %array_ptr3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 0, i128 0
  %in4 = load i128, i128* %array_ptr3, align 4
  %sub = sub i128 %in2, %in4
  %mul = mul i128 %sub, %inner_input_write__multiplexor2.sel
  %array_ptr5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 0, i128 0
  %in6 = load i128, i128* %array_ptr5, align 4
  %add = add i128 %mul, %in6
  %out7 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  store i128 %add, i128* %out7, align 4
  %array_ptr8 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out9 = load i128, i128* %array_ptr8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %add, i1* @constraint)
  %array_ptr10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 1, i128 1
  %in11 = load i128, i128* %array_ptr10, align 4
  %array_ptr12 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 0, i128 1
  %in13 = load i128, i128* %array_ptr12, align 4
  %sub14 = sub i128 %in11, %in13
  %mul15 = mul i128 %sub14, %inner_input_write__multiplexor2.sel
  %array_ptr16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 0, i128 1
  %in17 = load i128, i128* %array_ptr16, align 4
  %add18 = add i128 %mul15, %in17
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  store i128 %add18, i128* %out19, align 4
  %array_ptr20 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  %out21 = load i128, i128* %array_ptr20, align 4
  call void @fn_intrinsic_add_constraint(i128 %out21, i128 %add18, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__multiplexor2.out = getelementptr inbounds %struct_template_circuit_multiplexor2, %struct_template_circuit_multiplexor2* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__multiplexor2.out, align 8
  ret void
}

define %struct_template_circuit_multiplexor2* @fn_template_build_multiplexor2(%struct_template_params_multiplexor2* %0) {
entry:
  %1 = alloca %struct_template_circuit_multiplexor2, align 8
  %struct_template_params_multiplexor2 = getelementptr inbounds %struct_template_circuit_multiplexor2, %struct_template_circuit_multiplexor2* %1, i32 0, i32 0
  store %struct_template_params_multiplexor2* %0, %struct_template_params_multiplexor2** %struct_template_params_multiplexor2, align 8
  %fn_template_init_multiplexor2 = getelementptr inbounds %struct_template_circuit_multiplexor2, %struct_template_circuit_multiplexor2* %1, i32 0, i32 1
  store void (%struct_template_circuit_multiplexor2*)* @fn_template_init_multiplexor2, void (%struct_template_circuit_multiplexor2*)** %fn_template_init_multiplexor2, align 8
  ret %struct_template_circuit_multiplexor2* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
