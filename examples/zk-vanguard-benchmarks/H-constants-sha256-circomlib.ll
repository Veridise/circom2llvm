; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_h = type { %struct_template_params_h*, void (%struct_template_circuit_h*)*, [256 x i128]* }
%struct_template_params_h = type { i128 }

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

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %struct_template_params_h = load %struct_template_params_h*, %struct_template_params_h** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_h, %struct_template_params_h* %struct_template_params_h, i32 0, i32 0
  %struct_template_params_h.x = load i128, i128* %struct_ptr1, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %c = alloca [256 x i128], align 8
  %inline_array = alloca [8 x i128], align 8
  store [8 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225], [8 x i128]* %inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [8 x i128], [8 x i128]* %inline_array, i64 0, i128 %struct_template_params_h.x
  %c2 = load i128, i128* %array_ptr, align 4
  %rshift = lshr i128 %c2, %loop.iter
  %and = and i128 %rshift, 1
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %and, i128* %out3, align 4
  %array_ptr4 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out5 = load i128, i128* %array_ptr4, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %and, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__h.out = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 2
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__h.out, align 8
  ret void
}

define %struct_template_circuit_h* @fn_template_build_h(%struct_template_params_h* %0) {
entry:
  %1 = alloca %struct_template_circuit_h, align 8
  %struct_template_params_h = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %1, i32 0, i32 0
  store %struct_template_params_h* %0, %struct_template_params_h** %struct_template_params_h, align 8
  %fn_template_init_h = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %1, i32 0, i32 1
  store void (%struct_template_circuit_h*)* @fn_template_init_h, void (%struct_template_circuit_h*)** %fn_template_init_h, align 8
  ret %struct_template_circuit_h* %1
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
