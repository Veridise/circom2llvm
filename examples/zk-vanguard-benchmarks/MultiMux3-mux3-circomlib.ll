; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_multimux3 = type { %struct_template_params_multimux3*, void (%struct_template_circuit_multimux3*)*, [256 x [256 x i128]]*, [256 x i128]*, [256 x i128]* }
%struct_template_params_multimux3 = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1
@constraint.7 = external global i1
@constraint.8 = external global i1
@constraint.9 = external global i1

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

define void @fn_template_init_multimux3(%struct_template_circuit_multimux3* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %0, i32 0, i32 0
  %struct_template_params_multimux3 = load %struct_template_params_multimux3*, %struct_template_params_multimux3** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_multimux3, %struct_template_params_multimux3* %struct_template_params_multimux3, i32 0, i32 0
  %struct_template_params_multimux3.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %0, i32 0, i32 2
  %inner_input_write__multimux3.c = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr2, align 8
  %c = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %c to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__multimux3.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %0, i32 0, i32 3
  %inner_input_write__multimux3.s = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %s = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %s to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__multimux3.s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %a20 = alloca [256 x i128], align 8
  %a21 = alloca [256 x i128], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %a0 = alloca [256 x i128], align 8
  %a1 = alloca [256 x i128], align 8
  %a210 = alloca [256 x i128], align 8
  %a = alloca [256 x i128], align 8
  %a10 = alloca [256 x i128], align 8
  %a2 = alloca [256 x i128], align 8
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s4 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s6 = load i128, i128* %array_ptr5, align 4
  %mul = mul i128 %s4, %s6
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add145, %loop.latch ]
  %array_ptr7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 7
  %c8 = load i128, i128* %array_ptr7, align 4
  %array_ptr9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c10 = load i128, i128* %array_ptr9, align 4
  %sub = sub i128 %c8, %c10
  %array_ptr11 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c12 = load i128, i128* %array_ptr11, align 4
  %sub13 = sub i128 %sub, %c12
  %array_ptr14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c15 = load i128, i128* %array_ptr14, align 4
  %add = add i128 %sub13, %c15
  %array_ptr16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c17 = load i128, i128* %array_ptr16, align 4
  %sub18 = sub i128 %add, %c17
  %array_ptr19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c20 = load i128, i128* %array_ptr19, align 4
  %add21 = add i128 %sub18, %c20
  %array_ptr22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c23 = load i128, i128* %array_ptr22, align 4
  %add24 = add i128 %add21, %c23
  %array_ptr25 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c26 = load i128, i128* %array_ptr25, align 4
  %sub27 = sub i128 %add24, %c26
  %mul28 = mul i128 %sub27, %mul
  %a21029 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  store i128 %mul28, i128* %a21029, align 4
  %array_ptr30 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  %a21031 = load i128, i128* %array_ptr30, align 4
  call void @fn_intrinsic_add_constraint(i128 %a21031, i128 %mul28, i1* @constraint.1)
  %array_ptr32 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c33 = load i128, i128* %array_ptr32, align 4
  %array_ptr34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c35 = load i128, i128* %array_ptr34, align 4
  %sub36 = sub i128 %c33, %c35
  %array_ptr37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c38 = load i128, i128* %array_ptr37, align 4
  %sub39 = sub i128 %sub36, %c38
  %array_ptr40 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c41 = load i128, i128* %array_ptr40, align 4
  %add42 = add i128 %sub39, %c41
  %array_ptr43 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s44 = load i128, i128* %array_ptr43, align 4
  %mul45 = mul i128 %add42, %s44
  %a2146 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  store i128 %mul45, i128* %a2146, align 4
  %array_ptr47 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  %a2148 = load i128, i128* %array_ptr47, align 4
  call void @fn_intrinsic_add_constraint(i128 %a2148, i128 %mul45, i1* @constraint.2)
  %array_ptr49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c50 = load i128, i128* %array_ptr49, align 4
  %array_ptr51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c52 = load i128, i128* %array_ptr51, align 4
  %sub53 = sub i128 %c50, %c52
  %array_ptr54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c55 = load i128, i128* %array_ptr54, align 4
  %sub56 = sub i128 %sub53, %c55
  %array_ptr57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c58 = load i128, i128* %array_ptr57, align 4
  %add59 = add i128 %sub56, %c58
  %array_ptr60 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s61 = load i128, i128* %array_ptr60, align 4
  %mul62 = mul i128 %add59, %s61
  %a2063 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  store i128 %mul62, i128* %a2063, align 4
  %array_ptr64 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  %a2065 = load i128, i128* %array_ptr64, align 4
  call void @fn_intrinsic_add_constraint(i128 %a2065, i128 %mul62, i1* @constraint.3)
  %array_ptr66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c67 = load i128, i128* %array_ptr66, align 4
  %array_ptr68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c69 = load i128, i128* %array_ptr68, align 4
  %sub70 = sub i128 %c67, %c69
  %a271 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  store i128 %sub70, i128* %a271, align 4
  %array_ptr72 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  %a273 = load i128, i128* %array_ptr72, align 4
  call void @fn_intrinsic_add_constraint(i128 %a273, i128 %sub70, i1* @constraint.4)
  %array_ptr74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c75 = load i128, i128* %array_ptr74, align 4
  %array_ptr76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c77 = load i128, i128* %array_ptr76, align 4
  %sub78 = sub i128 %c75, %c77
  %array_ptr79 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c80 = load i128, i128* %array_ptr79, align 4
  %sub81 = sub i128 %sub78, %c80
  %array_ptr82 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c83 = load i128, i128* %array_ptr82, align 4
  %add84 = add i128 %sub81, %c83
  %mul85 = mul i128 %add84, %mul
  %a1086 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  store i128 %mul85, i128* %a1086, align 4
  %array_ptr87 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a1088 = load i128, i128* %array_ptr87, align 4
  call void @fn_intrinsic_add_constraint(i128 %a1088, i128 %mul85, i1* @constraint.5)
  %array_ptr89 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c90 = load i128, i128* %array_ptr89, align 4
  %array_ptr91 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c92 = load i128, i128* %array_ptr91, align 4
  %sub93 = sub i128 %c90, %c92
  %array_ptr94 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s95 = load i128, i128* %array_ptr94, align 4
  %mul96 = mul i128 %sub93, %s95
  %a197 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  store i128 %mul96, i128* %a197, align 4
  %array_ptr98 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a199 = load i128, i128* %array_ptr98, align 4
  call void @fn_intrinsic_add_constraint(i128 %a199, i128 %mul96, i1* @constraint.6)
  %array_ptr100 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c101 = load i128, i128* %array_ptr100, align 4
  %array_ptr102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c103 = load i128, i128* %array_ptr102, align 4
  %sub104 = sub i128 %c101, %c103
  %array_ptr105 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s106 = load i128, i128* %array_ptr105, align 4
  %mul107 = mul i128 %sub104, %s106
  %a0108 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  store i128 %mul107, i128* %a0108, align 4
  %array_ptr109 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a0110 = load i128, i128* %array_ptr109, align 4
  call void @fn_intrinsic_add_constraint(i128 %a0110, i128 %mul107, i1* @constraint.7)
  %array_ptr111 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c112 = load i128, i128* %array_ptr111, align 4
  %a113 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  store i128 %c112, i128* %a113, align 4
  %array_ptr114 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a115 = load i128, i128* %array_ptr114, align 4
  call void @fn_intrinsic_add_constraint(i128 %a115, i128 %c112, i1* @constraint.8)
  %array_ptr116 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  %a210117 = load i128, i128* %array_ptr116, align 4
  %array_ptr118 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  %a21119 = load i128, i128* %array_ptr118, align 4
  %add120 = add i128 %a210117, %a21119
  %array_ptr121 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  %a20122 = load i128, i128* %array_ptr121, align 4
  %add123 = add i128 %add120, %a20122
  %array_ptr124 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  %a2125 = load i128, i128* %array_ptr124, align 4
  %add126 = add i128 %add123, %a2125
  %array_ptr127 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 2
  %s128 = load i128, i128* %array_ptr127, align 4
  %mul129 = mul i128 %add126, %s128
  %array_ptr130 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a10131 = load i128, i128* %array_ptr130, align 4
  %array_ptr132 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a1133 = load i128, i128* %array_ptr132, align 4
  %add134 = add i128 %a10131, %a1133
  %array_ptr135 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a0136 = load i128, i128* %array_ptr135, align 4
  %add137 = add i128 %add134, %a0136
  %array_ptr138 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a139 = load i128, i128* %array_ptr138, align 4
  %add140 = add i128 %add137, %a139
  %add141 = add i128 %mul129, %add140
  %out142 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add141, i128* %out142, align 4
  %array_ptr143 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out144 = load i128, i128* %array_ptr143, align 4
  call void @fn_intrinsic_add_constraint(i128 %out144, i128 %add141, i1* @constraint.9)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add145 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add145, %struct_template_params_multimux3.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__multimux3.out = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__multimux3.out, align 8
  ret void
}

define %struct_template_circuit_multimux3* @fn_template_build_multimux3(%struct_template_params_multimux3* %0) {
entry:
  %1 = alloca %struct_template_circuit_multimux3, align 8
  %struct_template_params_multimux3 = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %1, i32 0, i32 0
  store %struct_template_params_multimux3* %0, %struct_template_params_multimux3** %struct_template_params_multimux3, align 8
  %fn_template_init_multimux3 = getelementptr inbounds %struct_template_circuit_multimux3, %struct_template_circuit_multimux3* %1, i32 0, i32 1
  store void (%struct_template_circuit_multimux3*)* @fn_template_init_multimux3, void (%struct_template_circuit_multimux3*)** %fn_template_init_multimux3, align 8
  ret %struct_template_circuit_multimux3* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
