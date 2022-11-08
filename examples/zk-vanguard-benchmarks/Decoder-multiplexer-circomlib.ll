; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_decoder = type { %struct_template_params_decoder*, void (%struct_template_circuit_decoder*)*, i128, [256 x i128]*, i128 }
%struct_template_params_decoder = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1

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

define void @fn_template_init_decoder(%struct_template_circuit_decoder* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %0, i32 0, i32 0
  %struct_template_params_decoder = load %struct_template_params_decoder*, %struct_template_params_decoder** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_decoder, %struct_template_params_decoder* %struct_template_params_decoder, i32 0, i32 0
  %struct_template_params_decoder.w = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %0, i32 0, i32 2
  %inner_input_write__decoder.inp = load i128, i128* %struct_ptr2, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add7, %loop.latch ]
  %eq = icmp eq i128 %inner_input_write__decoder.inp, %loop.iter
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 1, i128 0)
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %inline_switch, i128* %out3, align 4
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out4 = load i128, i128* %array_ptr, align 4
  %sub = sub i128 %inner_input_write__decoder.inp, %loop.iter
  %mul = mul i128 %out4, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint)
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out6 = load i128, i128* %array_ptr5, align 4
  %add = add i128 0, %out6
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add7 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add7, %struct_template_params_decoder.w
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.1)
  %sub8 = sub i128 %add, 1
  %mul9 = mul i128 %add, %sub8
  call void @fn_intrinsic_add_constraint(i128 %mul9, i128 0, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__decoder.out = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__decoder.out, align 8
  %inner_output_write__decoder.success = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %0, i32 0, i32 4
  store i128 %add, i128* %inner_output_write__decoder.success, align 4
  ret void
}

define %struct_template_circuit_decoder* @fn_template_build_decoder(%struct_template_params_decoder* %0) {
entry:
  %1 = alloca %struct_template_circuit_decoder, align 8
  %struct_template_params_decoder = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %1, i32 0, i32 0
  store %struct_template_params_decoder* %0, %struct_template_params_decoder** %struct_template_params_decoder, align 8
  %fn_template_init_decoder = getelementptr inbounds %struct_template_circuit_decoder, %struct_template_circuit_decoder* %1, i32 0, i32 1
  store void (%struct_template_circuit_decoder*)* @fn_template_init_decoder, void (%struct_template_circuit_decoder*)** %fn_template_init_decoder, align 8
  ret %struct_template_circuit_decoder* %1
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
