; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_binsub = type { %struct_template_params_binsub*, void (%struct_template_circuit_binsub*)*, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_params_binsub = type { i128 }

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

define void @fn_template_init_binsub(%struct_template_circuit_binsub* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_binsub, %struct_template_circuit_binsub* %0, i32 0, i32 0
  %struct_template_params_binsub = load %struct_template_params_binsub*, %struct_template_params_binsub** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_binsub, %struct_template_params_binsub* %struct_template_params_binsub, i32 0, i32 0
  %struct_template_params_binsub.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_binsub, %struct_template_circuit_binsub* %0, i32 0, i32 2
  %inner_input_write__binsub.in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr2, align 8
  %in = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %in to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__binsub.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %pow = call i128 @llvm.powi.i128.i32(i128 2, i128 %struct_template_params_binsub.n)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add9, %loop.latch ]
  %array_ptr = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 0, i128 %loop.iter
  %in3 = load i128, i128* %array_ptr, align 4
  %pow4 = call i128 @llvm.powi.i128.i32(i128 2, i128 %loop.iter)
  %mul = mul i128 %in3, %pow4
  %add = add i128 %pow, %mul
  %array_ptr5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i64 0, i128 1, i128 %loop.iter
  %in6 = load i128, i128* %array_ptr5, align 4
  %pow7 = call i128 @llvm.powi.i128.i32(i128 2, i128 %loop.iter)
  %mul8 = mul i128 %in6, %pow7
  %sub = sub i128 %add, %mul8
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add9 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add9, %struct_template_params_binsub.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body10

loop.body10:                                      ; preds = %loop.latch24, %loop.exit
  %loop.iter11 = phi i128 [ 0, %loop.exit ], [ %add25, %loop.latch24 ]
  %rshift = lshr i128 %sub, %loop.iter11
  %and = and i128 %rshift, 1
  %out12 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter11
  store i128 %and, i128* %out12, align 4
  %array_ptr13 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter11
  %out14 = load i128, i128* %array_ptr13, align 4
  %array_ptr15 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter11
  %out16 = load i128, i128* %array_ptr15, align 4
  %sub17 = sub i128 %out16, 1
  %mul18 = mul i128 %out14, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul18, i128 0, i1* @constraint)
  %array_ptr19 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter11
  %out20 = load i128, i128* %array_ptr19, align 4
  %pow21 = call i128 @llvm.powi.i128.i32(i128 2, i128 %loop.iter11)
  %mul22 = mul i128 %out20, %pow21
  %add23 = add i128 0, %mul22
  br label %loop.latch24

loop.latch24:                                     ; preds = %loop.body10
  %add25 = add i128 %loop.iter11, 1
  %slt26 = icmp slt i128 %add25, %struct_template_params_binsub.n
  br i1 %slt26, label %loop.body10, label %loop.exit27

loop.exit27:                                      ; preds = %loop.latch24
  %rshift28 = lshr i128 %sub, %struct_template_params_binsub.n
  %and29 = and i128 %rshift28, 1
  %sub30 = sub i128 %and29, 1
  %mul31 = mul i128 %and29, %sub30
  call void @fn_intrinsic_add_constraint(i128 %mul31, i128 0, i1* @constraint.1)
  %pow32 = call i128 @llvm.powi.i128.i32(i128 2, i128 %struct_template_params_binsub.n)
  %mul33 = mul i128 %and29, %pow32
  %add34 = add i128 %add23, %mul33
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %add34, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %loop.exit27
  %inner_output_write__binsub.out = getelementptr inbounds %struct_template_circuit_binsub, %struct_template_circuit_binsub* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__binsub.out, align 8
  ret void
}

define %struct_template_circuit_binsub* @fn_template_build_binsub(%struct_template_params_binsub* %0) {
entry:
  %1 = alloca %struct_template_circuit_binsub, align 8
  %struct_template_params_binsub = getelementptr inbounds %struct_template_circuit_binsub, %struct_template_circuit_binsub* %1, i32 0, i32 0
  store %struct_template_params_binsub* %0, %struct_template_params_binsub** %struct_template_params_binsub, align 8
  %fn_template_init_binsub = getelementptr inbounds %struct_template_circuit_binsub, %struct_template_circuit_binsub* %1, i32 0, i32 1
  store void (%struct_template_circuit_binsub*)* @fn_template_init_binsub, void (%struct_template_circuit_binsub*)** %fn_template_init_binsub, align 8
  ret %struct_template_circuit_binsub* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
