; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_bits2point = type { %struct_template_params_bits2point*, void (%struct_template_circuit_bits2point*)*, [256 x i128]*, [256 x i128]* }
%struct_template_params_bits2point = type {}

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

define void @fn_template_init_bits2point(%struct_template_circuit_bits2point* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_bits2point, %struct_template_circuit_bits2point* %0, i32 0, i32 2
  %inner_input_write__bits2point.in = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %in to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__bits2point.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__bits2point.out = getelementptr inbounds %struct_template_circuit_bits2point, %struct_template_circuit_bits2point* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__bits2point.out, align 8
  ret void
}

define %struct_template_circuit_bits2point* @fn_template_build_bits2point(%struct_template_params_bits2point* %0) {
entry:
  %1 = alloca %struct_template_circuit_bits2point, align 8
  %struct_template_params_bits2point = getelementptr inbounds %struct_template_circuit_bits2point, %struct_template_circuit_bits2point* %1, i32 0, i32 0
  store %struct_template_params_bits2point* %0, %struct_template_params_bits2point** %struct_template_params_bits2point, align 8
  %fn_template_init_bits2point = getelementptr inbounds %struct_template_circuit_bits2point, %struct_template_circuit_bits2point* %1, i32 0, i32 1
  store void (%struct_template_circuit_bits2point*)* @fn_template_init_bits2point, void (%struct_template_circuit_bits2point*)** %fn_template_init_bits2point, align 8
  ret %struct_template_circuit_bits2point* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
