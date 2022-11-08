; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_bits2num = type { %struct_template_params_bits2num*, void (%struct_template_circuit_bits2num*)*, [256 x i128]*, i128 }
%struct_template_params_bits2num = type { i128 }

@constraint = external global i1

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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %struct_template_params_bits2num = load %struct_template_params_bits2num*, %struct_template_params_bits2num** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_bits2num, %struct_template_params_bits2num* %struct_template_params_bits2num, i32 0, i32 0
  %struct_template_params_bits2num.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  %inner_input_write__bits2num.in = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %in = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %in to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__bits2num.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add4, %loop.latch ]
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 %loop.iter
  %in3 = load i128, i128* %array_ptr, align 4
  %mul = mul i128 %in3, 1
  %add = add i128 0, %mul
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add4 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add4, %struct_template_params_bits2num.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint)
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__bits2num.out = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 3
  store i128 %add, i128* %inner_output_write__bits2num.out, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(%struct_template_params_bits2num* %0) {
entry:
  %1 = alloca %struct_template_circuit_bits2num, align 8
  %struct_template_params_bits2num = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %1, i32 0, i32 0
  store %struct_template_params_bits2num* %0, %struct_template_params_bits2num** %struct_template_params_bits2num, align 8
  %fn_template_init_bits2num = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %1, i32 0, i32 1
  store void (%struct_template_circuit_bits2num*)* @fn_template_init_bits2num, void (%struct_template_circuit_bits2num*)** %fn_template_init_bits2num, align 8
  ret %struct_template_circuit_bits2num* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
