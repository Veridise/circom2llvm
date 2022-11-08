; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_multimux4 = type { %struct_template_params_multimux4*, void (%struct_template_circuit_multimux4*)*, [256 x [256 x i128]]*, [256 x i128]*, [256 x i128]* }
%struct_template_params_multimux4 = type { i128 }

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
@constraint.10 = external global i1
@constraint.11 = external global i1
@constraint.12 = external global i1
@constraint.13 = external global i1
@constraint.14 = external global i1
@constraint.15 = external global i1
@constraint.16 = external global i1
@constraint.17 = external global i1
@constraint.18 = external global i1
@constraint.19 = external global i1
@constraint.20 = external global i1

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

define void @fn_template_init_multimux4(%struct_template_circuit_multimux4* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %0, i32 0, i32 0
  %struct_template_params_multimux4 = load %struct_template_params_multimux4*, %struct_template_params_multimux4** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_multimux4, %struct_template_params_multimux4* %struct_template_params_multimux4, i32 0, i32 0
  %struct_template_params_multimux4.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %0, i32 0, i32 2
  %inner_input_write__multimux4.c = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr2, align 8
  %c = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %c to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__multimux4.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %0, i32 0, i32 3
  %inner_input_write__multimux4.s = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %s = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %s to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__multimux4.s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %a32 = alloca [256 x i128], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %a31 = alloca [256 x i128], align 8
  %a30 = alloca [256 x i128], align 8
  %a1 = alloca [256 x i128], align 8
  %a210 = alloca [256 x i128], align 8
  %a2 = alloca [256 x i128], align 8
  %a21 = alloca [256 x i128], align 8
  %a0 = alloca [256 x i128], align 8
  %a321 = alloca [256 x i128], align 8
  %a = alloca [256 x i128], align 8
  %a320 = alloca [256 x i128], align 8
  %a310 = alloca [256 x i128], align 8
  %a20 = alloca [256 x i128], align 8
  %a3 = alloca [256 x i128], align 8
  %a3210 = alloca [256 x i128], align 8
  %a10 = alloca [256 x i128], align 8
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s4 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s6 = load i128, i128* %array_ptr5, align 4
  %mul = mul i128 %s4, %s6
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %array_ptr7 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 2
  %s8 = load i128, i128* %array_ptr7, align 4
  %array_ptr9 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s10 = load i128, i128* %array_ptr9, align 4
  %mul11 = mul i128 %s8, %s10
  call void @fn_intrinsic_add_constraint(i128 %mul11, i128 %mul11, i1* @constraint.1)
  %array_ptr12 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 2
  %s13 = load i128, i128* %array_ptr12, align 4
  %array_ptr14 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s15 = load i128, i128* %array_ptr14, align 4
  %mul16 = mul i128 %s13, %s15
  call void @fn_intrinsic_add_constraint(i128 %mul16, i128 %mul16, i1* @constraint.2)
  %array_ptr17 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s18 = load i128, i128* %array_ptr17, align 4
  %mul19 = mul i128 %mul16, %s18
  call void @fn_intrinsic_add_constraint(i128 %mul19, i128 %mul19, i1* @constraint.3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add372, %loop.latch ]
  %array_ptr20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 15
  %c21 = load i128, i128* %array_ptr20, align 4
  %array_ptr22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 14
  %c23 = load i128, i128* %array_ptr22, align 4
  %sub = sub i128 %c21, %c23
  %array_ptr24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 13
  %c25 = load i128, i128* %array_ptr24, align 4
  %sub26 = sub i128 %sub, %c25
  %array_ptr27 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 12
  %c28 = load i128, i128* %array_ptr27, align 4
  %add = add i128 %sub26, %c28
  %array_ptr29 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 11
  %c30 = load i128, i128* %array_ptr29, align 4
  %sub31 = sub i128 %add, %c30
  %array_ptr32 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 10
  %c33 = load i128, i128* %array_ptr32, align 4
  %add34 = add i128 %sub31, %c33
  %array_ptr35 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 9
  %c36 = load i128, i128* %array_ptr35, align 4
  %add37 = add i128 %add34, %c36
  %array_ptr38 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c39 = load i128, i128* %array_ptr38, align 4
  %sub40 = sub i128 %add37, %c39
  %array_ptr41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 7
  %c42 = load i128, i128* %array_ptr41, align 4
  %sub43 = sub i128 %sub40, %c42
  %array_ptr44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c45 = load i128, i128* %array_ptr44, align 4
  %add46 = add i128 %sub43, %c45
  %array_ptr47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c48 = load i128, i128* %array_ptr47, align 4
  %add49 = add i128 %add46, %c48
  %array_ptr50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c51 = load i128, i128* %array_ptr50, align 4
  %sub52 = sub i128 %add49, %c51
  %array_ptr53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c54 = load i128, i128* %array_ptr53, align 4
  %add55 = add i128 %sub52, %c54
  %array_ptr56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c57 = load i128, i128* %array_ptr56, align 4
  %sub58 = sub i128 %add55, %c57
  %array_ptr59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c60 = load i128, i128* %array_ptr59, align 4
  %sub61 = sub i128 %sub58, %c60
  %array_ptr62 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c63 = load i128, i128* %array_ptr62, align 4
  %add64 = add i128 %sub61, %c63
  %mul65 = mul i128 %add64, %mul19
  %a321066 = getelementptr inbounds [256 x i128], [256 x i128]* %a3210, i64 0, i128 %loop.iter
  store i128 %mul65, i128* %a321066, align 4
  %array_ptr67 = getelementptr inbounds [256 x i128], [256 x i128]* %a3210, i64 0, i128 %loop.iter
  %a321068 = load i128, i128* %array_ptr67, align 4
  call void @fn_intrinsic_add_constraint(i128 %a321068, i128 %mul65, i1* @constraint.4)
  %array_ptr69 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 14
  %c70 = load i128, i128* %array_ptr69, align 4
  %array_ptr71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 12
  %c72 = load i128, i128* %array_ptr71, align 4
  %sub73 = sub i128 %c70, %c72
  %array_ptr74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 10
  %c75 = load i128, i128* %array_ptr74, align 4
  %sub76 = sub i128 %sub73, %c75
  %array_ptr77 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c78 = load i128, i128* %array_ptr77, align 4
  %add79 = add i128 %sub76, %c78
  %array_ptr80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c81 = load i128, i128* %array_ptr80, align 4
  %sub82 = sub i128 %add79, %c81
  %array_ptr83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c84 = load i128, i128* %array_ptr83, align 4
  %add85 = add i128 %sub82, %c84
  %array_ptr86 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c87 = load i128, i128* %array_ptr86, align 4
  %add88 = add i128 %add85, %c87
  %array_ptr89 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c90 = load i128, i128* %array_ptr89, align 4
  %sub91 = sub i128 %add88, %c90
  %mul92 = mul i128 %sub91, %mul16
  %a32193 = getelementptr inbounds [256 x i128], [256 x i128]* %a321, i64 0, i128 %loop.iter
  store i128 %mul92, i128* %a32193, align 4
  %array_ptr94 = getelementptr inbounds [256 x i128], [256 x i128]* %a321, i64 0, i128 %loop.iter
  %a32195 = load i128, i128* %array_ptr94, align 4
  call void @fn_intrinsic_add_constraint(i128 %a32195, i128 %mul92, i1* @constraint.5)
  %array_ptr96 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 13
  %c97 = load i128, i128* %array_ptr96, align 4
  %array_ptr98 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 12
  %c99 = load i128, i128* %array_ptr98, align 4
  %sub100 = sub i128 %c97, %c99
  %array_ptr101 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 9
  %c102 = load i128, i128* %array_ptr101, align 4
  %sub103 = sub i128 %sub100, %c102
  %array_ptr104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c105 = load i128, i128* %array_ptr104, align 4
  %add106 = add i128 %sub103, %c105
  %array_ptr107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c108 = load i128, i128* %array_ptr107, align 4
  %sub109 = sub i128 %add106, %c108
  %array_ptr110 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c111 = load i128, i128* %array_ptr110, align 4
  %add112 = add i128 %sub109, %c111
  %array_ptr113 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c114 = load i128, i128* %array_ptr113, align 4
  %add115 = add i128 %add112, %c114
  %array_ptr116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c117 = load i128, i128* %array_ptr116, align 4
  %sub118 = sub i128 %add115, %c117
  %mul119 = mul i128 %sub118, %mul11
  %a320120 = getelementptr inbounds [256 x i128], [256 x i128]* %a320, i64 0, i128 %loop.iter
  store i128 %mul119, i128* %a320120, align 4
  %array_ptr121 = getelementptr inbounds [256 x i128], [256 x i128]* %a320, i64 0, i128 %loop.iter
  %a320122 = load i128, i128* %array_ptr121, align 4
  call void @fn_intrinsic_add_constraint(i128 %a320122, i128 %mul119, i1* @constraint.6)
  %array_ptr123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 11
  %c124 = load i128, i128* %array_ptr123, align 4
  %array_ptr125 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 10
  %c126 = load i128, i128* %array_ptr125, align 4
  %sub127 = sub i128 %c124, %c126
  %array_ptr128 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 9
  %c129 = load i128, i128* %array_ptr128, align 4
  %sub130 = sub i128 %sub127, %c129
  %array_ptr131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c132 = load i128, i128* %array_ptr131, align 4
  %add133 = add i128 %sub130, %c132
  %array_ptr134 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c135 = load i128, i128* %array_ptr134, align 4
  %sub136 = sub i128 %add133, %c135
  %array_ptr137 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c138 = load i128, i128* %array_ptr137, align 4
  %add139 = add i128 %sub136, %c138
  %array_ptr140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c141 = load i128, i128* %array_ptr140, align 4
  %add142 = add i128 %add139, %c141
  %array_ptr143 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c144 = load i128, i128* %array_ptr143, align 4
  %sub145 = sub i128 %add142, %c144
  %mul146 = mul i128 %sub145, %mul
  %a310147 = getelementptr inbounds [256 x i128], [256 x i128]* %a310, i64 0, i128 %loop.iter
  store i128 %mul146, i128* %a310147, align 4
  %array_ptr148 = getelementptr inbounds [256 x i128], [256 x i128]* %a310, i64 0, i128 %loop.iter
  %a310149 = load i128, i128* %array_ptr148, align 4
  call void @fn_intrinsic_add_constraint(i128 %a310149, i128 %mul146, i1* @constraint.7)
  %array_ptr150 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 12
  %c151 = load i128, i128* %array_ptr150, align 4
  %array_ptr152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c153 = load i128, i128* %array_ptr152, align 4
  %sub154 = sub i128 %c151, %c153
  %array_ptr155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c156 = load i128, i128* %array_ptr155, align 4
  %sub157 = sub i128 %sub154, %c156
  %array_ptr158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c159 = load i128, i128* %array_ptr158, align 4
  %add160 = add i128 %sub157, %c159
  %array_ptr161 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 2
  %s162 = load i128, i128* %array_ptr161, align 4
  %mul163 = mul i128 %add160, %s162
  %a32164 = getelementptr inbounds [256 x i128], [256 x i128]* %a32, i64 0, i128 %loop.iter
  store i128 %mul163, i128* %a32164, align 4
  %array_ptr165 = getelementptr inbounds [256 x i128], [256 x i128]* %a32, i64 0, i128 %loop.iter
  %a32166 = load i128, i128* %array_ptr165, align 4
  call void @fn_intrinsic_add_constraint(i128 %a32166, i128 %mul163, i1* @constraint.8)
  %array_ptr167 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 10
  %c168 = load i128, i128* %array_ptr167, align 4
  %array_ptr169 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c170 = load i128, i128* %array_ptr169, align 4
  %sub171 = sub i128 %c168, %c170
  %array_ptr172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c173 = load i128, i128* %array_ptr172, align 4
  %sub174 = sub i128 %sub171, %c173
  %array_ptr175 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c176 = load i128, i128* %array_ptr175, align 4
  %add177 = add i128 %sub174, %c176
  %array_ptr178 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s179 = load i128, i128* %array_ptr178, align 4
  %mul180 = mul i128 %add177, %s179
  %a31181 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i64 0, i128 %loop.iter
  store i128 %mul180, i128* %a31181, align 4
  %array_ptr182 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i64 0, i128 %loop.iter
  %a31183 = load i128, i128* %array_ptr182, align 4
  call void @fn_intrinsic_add_constraint(i128 %a31183, i128 %mul180, i1* @constraint.9)
  %array_ptr184 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 9
  %c185 = load i128, i128* %array_ptr184, align 4
  %array_ptr186 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c187 = load i128, i128* %array_ptr186, align 4
  %sub188 = sub i128 %c185, %c187
  %array_ptr189 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c190 = load i128, i128* %array_ptr189, align 4
  %sub191 = sub i128 %sub188, %c190
  %array_ptr192 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c193 = load i128, i128* %array_ptr192, align 4
  %add194 = add i128 %sub191, %c193
  %array_ptr195 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s196 = load i128, i128* %array_ptr195, align 4
  %mul197 = mul i128 %add194, %s196
  %a30198 = getelementptr inbounds [256 x i128], [256 x i128]* %a30, i64 0, i128 %loop.iter
  store i128 %mul197, i128* %a30198, align 4
  %array_ptr199 = getelementptr inbounds [256 x i128], [256 x i128]* %a30, i64 0, i128 %loop.iter
  %a30200 = load i128, i128* %array_ptr199, align 4
  call void @fn_intrinsic_add_constraint(i128 %a30200, i128 %mul197, i1* @constraint.10)
  %array_ptr201 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 8
  %c202 = load i128, i128* %array_ptr201, align 4
  %array_ptr203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c204 = load i128, i128* %array_ptr203, align 4
  %sub205 = sub i128 %c202, %c204
  %a3206 = getelementptr inbounds [256 x i128], [256 x i128]* %a3, i64 0, i128 %loop.iter
  store i128 %sub205, i128* %a3206, align 4
  %array_ptr207 = getelementptr inbounds [256 x i128], [256 x i128]* %a3, i64 0, i128 %loop.iter
  %a3208 = load i128, i128* %array_ptr207, align 4
  call void @fn_intrinsic_add_constraint(i128 %a3208, i128 %sub205, i1* @constraint.11)
  %array_ptr209 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 7
  %c210 = load i128, i128* %array_ptr209, align 4
  %array_ptr211 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c212 = load i128, i128* %array_ptr211, align 4
  %sub213 = sub i128 %c210, %c212
  %array_ptr214 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c215 = load i128, i128* %array_ptr214, align 4
  %sub216 = sub i128 %sub213, %c215
  %array_ptr217 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c218 = load i128, i128* %array_ptr217, align 4
  %add219 = add i128 %sub216, %c218
  %array_ptr220 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c221 = load i128, i128* %array_ptr220, align 4
  %sub222 = sub i128 %add219, %c221
  %array_ptr223 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c224 = load i128, i128* %array_ptr223, align 4
  %add225 = add i128 %sub222, %c224
  %array_ptr226 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c227 = load i128, i128* %array_ptr226, align 4
  %add228 = add i128 %add225, %c227
  %array_ptr229 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c230 = load i128, i128* %array_ptr229, align 4
  %sub231 = sub i128 %add228, %c230
  %mul232 = mul i128 %sub231, %mul19
  %a210233 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  store i128 %mul232, i128* %a210233, align 4
  %array_ptr234 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  %a210235 = load i128, i128* %array_ptr234, align 4
  call void @fn_intrinsic_add_constraint(i128 %a210235, i128 %mul232, i1* @constraint.12)
  %array_ptr236 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 6
  %c237 = load i128, i128* %array_ptr236, align 4
  %array_ptr238 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c239 = load i128, i128* %array_ptr238, align 4
  %sub240 = sub i128 %c237, %c239
  %array_ptr241 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c242 = load i128, i128* %array_ptr241, align 4
  %sub243 = sub i128 %sub240, %c242
  %array_ptr244 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c245 = load i128, i128* %array_ptr244, align 4
  %add246 = add i128 %sub243, %c245
  %mul247 = mul i128 %add246, %mul16
  %a21248 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  store i128 %mul247, i128* %a21248, align 4
  %array_ptr249 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  %a21250 = load i128, i128* %array_ptr249, align 4
  call void @fn_intrinsic_add_constraint(i128 %a21250, i128 %mul247, i1* @constraint.13)
  %array_ptr251 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 5
  %c252 = load i128, i128* %array_ptr251, align 4
  %array_ptr253 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c254 = load i128, i128* %array_ptr253, align 4
  %sub255 = sub i128 %c252, %c254
  %array_ptr256 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c257 = load i128, i128* %array_ptr256, align 4
  %sub258 = sub i128 %sub255, %c257
  %array_ptr259 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c260 = load i128, i128* %array_ptr259, align 4
  %add261 = add i128 %sub258, %c260
  %mul262 = mul i128 %add261, %mul11
  %a20263 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  store i128 %mul262, i128* %a20263, align 4
  %array_ptr264 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  %a20265 = load i128, i128* %array_ptr264, align 4
  call void @fn_intrinsic_add_constraint(i128 %a20265, i128 %mul262, i1* @constraint.14)
  %array_ptr266 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c267 = load i128, i128* %array_ptr266, align 4
  %array_ptr268 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c269 = load i128, i128* %array_ptr268, align 4
  %sub270 = sub i128 %c267, %c269
  %array_ptr271 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c272 = load i128, i128* %array_ptr271, align 4
  %sub273 = sub i128 %sub270, %c272
  %array_ptr274 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c275 = load i128, i128* %array_ptr274, align 4
  %add276 = add i128 %sub273, %c275
  %mul277 = mul i128 %add276, %mul
  %a10278 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  store i128 %mul277, i128* %a10278, align 4
  %array_ptr279 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a10280 = load i128, i128* %array_ptr279, align 4
  call void @fn_intrinsic_add_constraint(i128 %a10280, i128 %mul277, i1* @constraint.15)
  %array_ptr281 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 4
  %c282 = load i128, i128* %array_ptr281, align 4
  %array_ptr283 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c284 = load i128, i128* %array_ptr283, align 4
  %sub285 = sub i128 %c282, %c284
  %array_ptr286 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 2
  %s287 = load i128, i128* %array_ptr286, align 4
  %mul288 = mul i128 %sub285, %s287
  %a2289 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  store i128 %mul288, i128* %a2289, align 4
  %array_ptr290 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  %a2291 = load i128, i128* %array_ptr290, align 4
  call void @fn_intrinsic_add_constraint(i128 %a2291, i128 %mul288, i1* @constraint.16)
  %array_ptr292 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c293 = load i128, i128* %array_ptr292, align 4
  %array_ptr294 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c295 = load i128, i128* %array_ptr294, align 4
  %sub296 = sub i128 %c293, %c295
  %array_ptr297 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s298 = load i128, i128* %array_ptr297, align 4
  %mul299 = mul i128 %sub296, %s298
  %a1300 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  store i128 %mul299, i128* %a1300, align 4
  %array_ptr301 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a1302 = load i128, i128* %array_ptr301, align 4
  call void @fn_intrinsic_add_constraint(i128 %a1302, i128 %mul299, i1* @constraint.17)
  %array_ptr303 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c304 = load i128, i128* %array_ptr303, align 4
  %array_ptr305 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c306 = load i128, i128* %array_ptr305, align 4
  %sub307 = sub i128 %c304, %c306
  %array_ptr308 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s309 = load i128, i128* %array_ptr308, align 4
  %mul310 = mul i128 %sub307, %s309
  %a0311 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  store i128 %mul310, i128* %a0311, align 4
  %array_ptr312 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a0313 = load i128, i128* %array_ptr312, align 4
  call void @fn_intrinsic_add_constraint(i128 %a0313, i128 %mul310, i1* @constraint.18)
  %array_ptr314 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c315 = load i128, i128* %array_ptr314, align 4
  %a316 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  store i128 %c315, i128* %a316, align 4
  %array_ptr317 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a318 = load i128, i128* %array_ptr317, align 4
  call void @fn_intrinsic_add_constraint(i128 %a318, i128 %c315, i1* @constraint.19)
  %array_ptr319 = getelementptr inbounds [256 x i128], [256 x i128]* %a3210, i64 0, i128 %loop.iter
  %a3210320 = load i128, i128* %array_ptr319, align 4
  %array_ptr321 = getelementptr inbounds [256 x i128], [256 x i128]* %a321, i64 0, i128 %loop.iter
  %a321322 = load i128, i128* %array_ptr321, align 4
  %add323 = add i128 %a3210320, %a321322
  %array_ptr324 = getelementptr inbounds [256 x i128], [256 x i128]* %a320, i64 0, i128 %loop.iter
  %a320325 = load i128, i128* %array_ptr324, align 4
  %add326 = add i128 %add323, %a320325
  %array_ptr327 = getelementptr inbounds [256 x i128], [256 x i128]* %a310, i64 0, i128 %loop.iter
  %a310328 = load i128, i128* %array_ptr327, align 4
  %add329 = add i128 %add326, %a310328
  %array_ptr330 = getelementptr inbounds [256 x i128], [256 x i128]* %a32, i64 0, i128 %loop.iter
  %a32331 = load i128, i128* %array_ptr330, align 4
  %add332 = add i128 %add329, %a32331
  %array_ptr333 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i64 0, i128 %loop.iter
  %a31334 = load i128, i128* %array_ptr333, align 4
  %add335 = add i128 %add332, %a31334
  %array_ptr336 = getelementptr inbounds [256 x i128], [256 x i128]* %a30, i64 0, i128 %loop.iter
  %a30337 = load i128, i128* %array_ptr336, align 4
  %add338 = add i128 %add335, %a30337
  %array_ptr339 = getelementptr inbounds [256 x i128], [256 x i128]* %a3, i64 0, i128 %loop.iter
  %a3340 = load i128, i128* %array_ptr339, align 4
  %add341 = add i128 %add338, %a3340
  %array_ptr342 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 3
  %s343 = load i128, i128* %array_ptr342, align 4
  %mul344 = mul i128 %add341, %s343
  %array_ptr345 = getelementptr inbounds [256 x i128], [256 x i128]* %a210, i64 0, i128 %loop.iter
  %a210346 = load i128, i128* %array_ptr345, align 4
  %array_ptr347 = getelementptr inbounds [256 x i128], [256 x i128]* %a21, i64 0, i128 %loop.iter
  %a21348 = load i128, i128* %array_ptr347, align 4
  %add349 = add i128 %a210346, %a21348
  %array_ptr350 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i64 0, i128 %loop.iter
  %a20351 = load i128, i128* %array_ptr350, align 4
  %add352 = add i128 %add349, %a20351
  %array_ptr353 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a10354 = load i128, i128* %array_ptr353, align 4
  %add355 = add i128 %add352, %a10354
  %array_ptr356 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i64 0, i128 %loop.iter
  %a2357 = load i128, i128* %array_ptr356, align 4
  %add358 = add i128 %add355, %a2357
  %array_ptr359 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a1360 = load i128, i128* %array_ptr359, align 4
  %add361 = add i128 %add358, %a1360
  %array_ptr362 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a0363 = load i128, i128* %array_ptr362, align 4
  %add364 = add i128 %add361, %a0363
  %array_ptr365 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a366 = load i128, i128* %array_ptr365, align 4
  %add367 = add i128 %add364, %a366
  %add368 = add i128 %mul344, %add367
  %out369 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add368, i128* %out369, align 4
  %array_ptr370 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out371 = load i128, i128* %array_ptr370, align 4
  call void @fn_intrinsic_add_constraint(i128 %out371, i128 %add368, i1* @constraint.20)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add372 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add372, %struct_template_params_multimux4.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__multimux4.out = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__multimux4.out, align 8
  ret void
}

define %struct_template_circuit_multimux4* @fn_template_build_multimux4(%struct_template_params_multimux4* %0) {
entry:
  %1 = alloca %struct_template_circuit_multimux4, align 8
  %struct_template_params_multimux4 = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %1, i32 0, i32 0
  store %struct_template_params_multimux4* %0, %struct_template_params_multimux4** %struct_template_params_multimux4, align 8
  %fn_template_init_multimux4 = getelementptr inbounds %struct_template_circuit_multimux4, %struct_template_circuit_multimux4* %1, i32 0, i32 1
  store void (%struct_template_circuit_multimux4*)* @fn_template_init_multimux4, void (%struct_template_circuit_multimux4*)** %fn_template_init_multimux4, align 8
  ret %struct_template_circuit_multimux4* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
