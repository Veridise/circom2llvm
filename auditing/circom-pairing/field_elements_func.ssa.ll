; ModuleID = './auditing/circom-pairing/field_elements_func.ll'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/field_elements_func.circom"

define void @fn_intrinsic_utils_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @fn_intrinsic_utils_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare fp128 @llvm.powi.f128.i32(fp128, i32) #0

define i128 @fn_intrinsic_utils_powi(i128 %0, i128 %1) {
entry:
  %utils_powi.base = uitofp i128 %0 to fp128
  %utils_powi.power = trunc i128 %1 to i32
  %utils_powi.cal = call fp128 @llvm.powi.f128.i32(fp128 %utils_powi.base, i32 %utils_powi.power)
  %utils_powi.ret = fptoui fp128 %utils_powi.cal to i128
  ret i128 %utils_powi.ret
}

define i128 @fn_intrinsic_utils_init() {
entry:
  ret i128 0
}

define void @fn_intrinsic_utils_assert(i1 %0) {
entry:
  ret void
}

define void @fn_intrinsic_utils_arraydim(i128* %0, ...) {
entry:
  ret void
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a4 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %a4, %2
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %mul, %a8
  %out10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.0
  store i128 %sub, i128* %out10, align 4
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a14 = load i128, i128* %array_getter13, align 4
  %array_getter17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a18 = load i128, i128* %array_getter17, align 4
  %mul20 = mul i128 %a18, %2
  %add = add i128 %a14, %mul20
  %out23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.0
  store i128 %add, i128* %out23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add25 = add i128 %i.0, 1
  %slt = icmp slt i128 %add25, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x i128]]* %uniform_array
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %slt = icmp slt i128 %0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %temp1 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add35, %loop.latch33 ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %out11 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.1
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %2, %b14
  %add15 = add i128 %out11, %mul
  %lshift = shl i128 1, %0
  %mod = srem i128 %add15, %lshift
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 %mod, i128* %out19, align 4
  %add22 = add i128 %i.1, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %lshift27 = shl i128 1, %0
  %sdiv = sdiv i128 %add15, %lshift27
  %add28 = add i128 %out24, %sdiv
  %add31 = add i128 %i.1, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %add35 = add i128 %i.1, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  ret [256 x i128]* %uniform_array
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %idx2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch13, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add15, %loop.latch13 ]
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %idx.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0, i128 %idx.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0, i128 %idx.0
  %b10 = load i128, i128* %array_getter9, align 4
  %ne = icmp ne i128 %a6, %b10
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body3
  ret i128 0

if.false:                                         ; preds = %loop.body3
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.exit
  %add15 = add i128 %i.0, 1
  %slt17 = icmp slt i128 %add15, 2
  br i1 %slt17, label %loop.body, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  ret i128 1
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %borrow2 = call i128 @fn_intrinsic_utils_init()
  %carry3 = call i128 @fn_intrinsic_utils_init()
  %X5 = call i128 @fn_intrinsic_utils_init()
  %MAXL7 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %i.1 = phi i128 [ %1, %loop.exit ], [ %add22, %loop.latch20 ]
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.1
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %add22 = add i128 %i.1, 1
  %sle = icmp sle i128 %add22, 50
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %lshift = shl i128 1, %0
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %i.2 = phi i128 [ 0, %loop.exit25 ], [ %add85, %loop.latch83 ]
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp34 = load i128, i128* %array_getter33, align 4
  %mod = srem i128 %temp34, %lshift
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %mod, i128* %out38, align 4
  %add41 = add i128 %i.2, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp47 = load i128, i128* %array_getter46, align 4
  %sdiv = sdiv i128 %temp47, %lshift
  %add49 = add i128 %temp43, %sdiv
  %add52 = add i128 %i.2, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %add59 = add i128 %neg, %lshift
  %sub = sub i128 %add59, 1
  %sdiv61 = sdiv i128 %sub, %lshift
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp65 = load i128, i128* %array_getter64, align 4
  %mul = mul i128 %sdiv61, %lshift
  %add68 = add i128 %temp65, %mul
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %add68, i128* %out71, align 4
  %add74 = add i128 %i.2, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %sub78 = sub i128 %temp76, %sdiv61
  %add81 = add i128 %i.2, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %add85 = add i128 %i.2, 1
  %slt88 = icmp slt i128 %add85, 50
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp100 = load i128, i128* %array_getter99, align 4
  %eq = icmp eq i128 %temp100, 0
  call void @fn_intrinsic_utils_assert(i1 %eq)
  %out103 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 0, i128* %out103, align 4
  ret [256 x i128]* %uniform_array

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit105

if.exit105:                                       ; preds = %if.false91
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch114, %if.exit105
  %i.3 = phi i128 [ 0, %if.exit105 ], [ %add116, %loop.latch114 ]
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.3
  %a110 = load i128, i128* %array_getter109, align 4
  %temp113 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.3
  store i128 %a110, i128* %temp113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body106
  %add116 = add i128 %i.3, 1
  %slt119 = icmp slt i128 %add116, %1
  br i1 %slt119, label %loop.body106, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch126, %loop.exit120
  %i.4 = phi i128 [ %1, %loop.exit120 ], [ %add128, %loop.latch126 ]
  %temp125 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.4
  store i128 0, i128* %temp125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body122
  %add128 = add i128 %i.4, 1
  %sle131 = icmp sle i128 %add128, 50
  br i1 %sle131, label %loop.body122, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch202, %loop.exit132
  %i.5 = phi i128 [ 0, %loop.exit132 ], [ %add204, %loop.latch202 ]
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp139 = load i128, i128* %array_getter138, align 4
  %slt140 = icmp slt i128 %temp139, 0
  br i1 %slt140, label %if.true134, label %if.false135

if.true134:                                       ; preds = %loop.body133
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp144 = load i128, i128* %array_getter143, align 4
  %neg145 = sub i128 0, %temp144
  %sdiv147 = sdiv i128 %neg145, %lshift
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp151 = load i128, i128* %array_getter150, align 4
  %mul154 = mul i128 %sdiv147, %lshift
  %add155 = add i128 %temp151, %mul154
  %out158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %add155, i128* %out158, align 4
  %add161 = add i128 %i.5, 1
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add161
  %temp163 = load i128, i128* %array_getter162, align 4
  %sub165 = sub i128 %temp163, %sdiv147
  %add168 = add i128 %i.5, 1
  %temp169 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add168
  store i128 %sub165, i128* %temp169, align 4
  br label %if.exit201

if.false135:                                      ; preds = %loop.body133
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp173 = load i128, i128* %array_getter172, align 4
  %add175 = add i128 %temp173, %lshift
  %sub176 = sub i128 %add175, 1
  %sdiv178 = sdiv i128 %sub176, %lshift
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp182 = load i128, i128* %array_getter181, align 4
  %mul185 = mul i128 %sdiv178, %lshift
  %sub186 = sub i128 %temp182, %mul185
  %out189 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %sub186, i128* %out189, align 4
  %add192 = add i128 %i.5, 1
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add192
  %temp194 = load i128, i128* %array_getter193, align 4
  %add196 = add i128 %temp194, %sdiv178
  %add199 = add i128 %i.5, 1
  %temp200 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add199
  store i128 %add196, i128* %temp200, align 4
  br label %if.exit201

if.exit201:                                       ; preds = %if.false135, %if.true134
  br label %loop.latch202

loop.latch202:                                    ; preds = %if.exit201
  %add204 = add i128 %i.5, 1
  %slt207 = icmp slt i128 %add204, 50
  br i1 %slt207, label %loop.body133, label %loop.exit208

loop.exit208:                                     ; preds = %loop.latch202
  %array_getter211 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp212 = load i128, i128* %array_getter211, align 4
  %eq213 = icmp eq i128 %temp212, 0
  call void @fn_intrinsic_utils_assert(i1 %eq213)
  %out216 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 1, i128* %out216, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %var_inline_array = alloca [256 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %add = add i128 %1, %2
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %0, %lshift11
  %lshift13 = shl i128 1, %3
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [256 x i128]* %var_inline_array
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %idx1 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %1, i128 0, i128 %idx.0
  %a3 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a3, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %sub = sub i128 %1, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ %sub, %entry ], [ %sub19, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a3 = load i128, i128* %array_getter, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter11, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b16 = load i128, i128* %array_getter15, align 4
  %slt = icmp slt i128 %a12, %b16
  br i1 %slt, label %if.true7, label %if.false8

if.true7:                                         ; preds = %if.exit
  ret i128 0

if.false8:                                        ; preds = %if.exit
  br label %if.exit17

if.exit17:                                        ; preds = %if.false8
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit17
  %sub19 = sub i128 %i.0, 1
  %sge = icmp sge i128 %sub19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %sgt = icmp sgt i128 %0, %1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %sgn11 = call i128 @fn_intrinsic_utils_init()
  %z2 = call i128 @fn_intrinsic_utils_init()
  %sgn03 = call i128 @fn_intrinsic_utils_init()
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 0
  %a4 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a4, 2
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 0
  %a7 = load i128, i128* %array_getter6, align 4
  %mod8 = srem i128 %a7, 2
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %0, [256 x i128]* %spice_inline_array)
  %and = and i128 %call, %mod8
  %or = or i128 %mod, %and
  ret i128 %or
}

define [256 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %var_inline_array = alloca [256 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [256 x i128]* %var_inline_array
}

define i128 @log_ceil(i128 %0) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %n_temp2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %n_temp.0 = phi i128 [ %0, %entry ], [ %sdiv, %loop.latch ]
  %eq = icmp eq i128 %n_temp.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 %i.0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %sdiv = sdiv i128 %n_temp.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array4 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add106, %loop.latch ]
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a46 = load i128, i128* %array_getter45, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b50 = load i128, i128* %array_getter49, align 4
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter15, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub, i128* %diff22, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %lshift = shl i128 1, %0
  %add = add i128 %sub34, %lshift
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %diff37, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a61 = load i128, i128* %array_getter60, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %sub69 = sub i128 %i.0, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub72, i128* %diff75, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %lshift80 = shl i128 1, %0
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %sub93 = sub i128 %i.0, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub96, i128* %diff99, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %add106 = add i128 %i.0, 1
  %slt = icmp slt i128 %add106, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %carry2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry28, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %5, i128 0, i128 %i.0
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %add19 = add i128 %add17, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add19, i128 %0, i128 %0)
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add30 = add i128 %i.0, 1
  %slt = icmp slt i128 %add30, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry28, i128* %sum35, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %a_idx1 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add62, %loop.latch60 ]
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val9, align 4
  %slt = icmp slt i128 %i.0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %sub31 = sub i128 %i.0, %1
  %add32 = add i128 %sub31, 1
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add26, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val14 = load i128, i128* %array_getter, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.0
  %a17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %i.0, %a_idx.0
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %add26 = add i128 %a_idx.0, 1
  %sle = icmp sle i128 %add26, %i.0
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %a_idx.1 = phi i128 [ %add32, %if.false ], [ %add55, %loop.latch53 ]
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.1
  %a41 = load i128, i128* %array_getter40, align 4
  %sub45 = sub i128 %i.0, %a_idx.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %add55 = add i128 %a_idx.1, 1
  %slt58 = icmp slt i128 %add55, %1
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %add62 = add i128 %i.0, 1
  %mul65 = mul i128 2, %1
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %add62, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %i.1 = phi i128 [ 0, %loop.exit68 ], [ %add83, %loop.latch81 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %0, i128 %0, i128 %0)
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.1
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %add83 = add i128 %i.1, 1
  %mul86 = mul i128 2, %1
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %add83, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %mul101 = mul i128 2, %1
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %call112 = call [256 x i128]* @SplitFn(i128 %add109, i128 %0, i128 %0)
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %call112, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %call112, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %mul127 = mul i128 2, %1
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit202

loop.body130:                                     ; preds = %loop.latch168, %if.true124
  %i.2 = phi i128 [ 2, %if.true124 ], [ %add170, %loop.latch168 ]
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.2, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %sub137 = sub i128 %i.2, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %sub143 = sub i128 %i.2, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %sub149 = sub i128 %i.2, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %call155 = call [256 x i128]* @SplitFn(i128 %add152, i128 %0, i128 %0)
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %call155, i128 0, i128 0
  %sumAndCarry158 = load i128, i128* %array_getter157, align 4
  %out161 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %i.2
  store i128 %sumAndCarry158, i128* %out161, align 4
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %call155, i128 0, i128 1
  %sumAndCarry164 = load i128, i128* %array_getter163, align 4
  %carry167 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %i.2
  store i128 %sumAndCarry164, i128* %carry167, align 4
  br label %loop.latch168

loop.latch168:                                    ; preds = %loop.body130
  %add170 = add i128 %i.2, 1
  %mul173 = mul i128 2, %1
  %sub174 = sub i128 %mul173, 1
  %slt175 = icmp slt i128 %add170, %sub174
  br i1 %slt175, label %loop.body130, label %loop.exit176

loop.exit176:                                     ; preds = %loop.latch168
  %mul179 = mul i128 2, %1
  %sub180 = sub i128 %mul179, 2
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub180, i128 1
  %split182 = load i128, i128* %array_getter181, align 4
  %mul185 = mul i128 2, %1
  %sub186 = sub i128 %mul185, 3
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %split182, %split188
  %mul192 = mul i128 2, %1
  %sub193 = sub i128 %mul192, 2
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %mul199 = mul i128 2, %1
  %sub200 = sub i128 %mul199, 1
  %out201 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %sub200
  store i128 %add196, i128* %out201, align 4
  br label %if.exit202

if.exit202:                                       ; preds = %loop.exit176, %if.false125
  ret [256 x i128]* %uniform_array69
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %qhat1 = call i128 @fn_intrinsic_utils_init()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %1
  %a3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %0
  %mul = mul i128 %a3, %lshift
  %sub = sub i128 %1, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %sub9 = sub i128 %1, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  %lshift14 = shl i128 1, %0
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %sdiv, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %lshift17 = shl i128 1, %0
  %sub18 = sub i128 %lshift17, 1
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %qhat.0 = phi i128 [ %sub18, %if.true ], [ %sdiv, %if.false ]
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %qhat.0, [256 x i128]* %3)
  %add27 = add i128 %1, 1
  %call30 = call i128 @long_gt(i128 %0, i128 %add27, [256 x i128]* %call, [256 x i128]* %2)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %add33 = add i128 %1, 1
  %call36 = call [256 x i128]* @long_sub(i128 %0, i128 %add33, [256 x i128]* %call, [256 x i128]* %3)
  %add41 = add i128 %1, 1
  %call44 = call i128 @long_gt(i128 %0, i128 %add41, [256 x i128]* %call36, [256 x i128]* %2)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  ret i128 %qhat.0

if.true37:                                        ; preds = %if.true23
  %sub47 = sub i128 %qhat.0, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %sub49 = sub i128 %qhat.0, 1
  ret i128 %sub49
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %j1 = call i128 @fn_intrinsic_utils_init()
  %j22 = call i128 @fn_intrinsic_utils_init()
  %i13 = call i128 @fn_intrinsic_utils_init()
  %i25 = call i128 @fn_intrinsic_utils_init()
  %i9 = call i128 @fn_intrinsic_utils_init()
  %j112 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch19, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add21, %loop.latch19 ]
  br label %loop.body13

loop.body13:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.0, i128 %i.0
  store i128 0, i128* %prod_val16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body13
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body13, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.exit
  %add21 = add i128 %i.0, 1
  %mul23 = mul i128 2, %1
  %sub24 = sub i128 %mul23, 1
  %slt25 = icmp slt i128 %add21, %sub24
  br i1 %slt25, label %loop.body, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch19
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch78, %loop.exit26
  %i1.0 = phi i128 [ 0, %loop.exit26 ], [ %add80, %loop.latch78 ]
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch71, %loop.body27
  %i2.0 = phi i128 [ 0, %loop.body27 ], [ %add73, %loop.latch71 ]
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch64, %loop.body28
  %j111.0 = phi i128 [ 0, %loop.body28 ], [ %add66, %loop.latch64 ]
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch57, %loop.body29
  %j2.0 = phi i128 [ 0, %loop.body29 ], [ %add59, %loop.latch57 ]
  %add34 = add i128 %j111.0, %j2.0
  %add37 = add i128 %i1.0, %i2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add34, i128 %add37
  %prod_val38 = load i128, i128* %array_getter, align 4
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j111.0, i128 %i1.0
  %a42 = load i128, i128* %array_getter41, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %4, i128 0, i128 %j2.0, i128 %i2.0
  %b46 = load i128, i128* %array_getter45, align 4
  %mul47 = mul i128 %a42, %b46
  %add48 = add i128 %prod_val38, %mul47
  %add52 = add i128 %j111.0, %j2.0
  %add55 = add i128 %i1.0, %i2.0
  %prod_val56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add52, i128 %add55
  store i128 %add48, i128* %prod_val56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body30
  %add59 = add i128 %j2.0, 1
  %slt62 = icmp slt i128 %add59, %2
  br i1 %slt62, label %loop.body30, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %add66 = add i128 %j111.0, 1
  %slt69 = icmp slt i128 %add66, %2
  br i1 %slt69, label %loop.body29, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %add73 = add i128 %i2.0, 1
  %slt76 = icmp slt i128 %add73, %1
  br i1 %slt76, label %loop.body28, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit77
  %add80 = add i128 %i1.0, 1
  %slt83 = icmp slt i128 %add80, %1
  br i1 %slt83, label %loop.body27, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %uniform_array85 = alloca [256 x [256 x i128]], align 8
  %uniform_array86 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch109, %loop.exit84
  %j.1 = phi i128 [ 0, %loop.exit84 ], [ %add111, %loop.latch109 ]
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch100, %loop.body87
  %i.1 = phi i128 [ 0, %loop.body87 ], [ %add102, %loop.latch100 ]
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.1, i128 %i.1
  %prod_val93 = load i128, i128* %array_getter92, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val93, i128 %0, i128 %0, i128 %0)
  %split99 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.1, i128 %i.1
  %5 = bitcast [256 x i128]* %split99 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body88
  %add102 = add i128 %i.1, 1
  %mul105 = mul i128 2, %1
  %sub106 = sub i128 %mul105, 1
  %slt107 = icmp slt i128 %add102, %sub106
  br i1 %slt107, label %loop.body88, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch100
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.exit108
  %add111 = add i128 %j.1, 1
  %mul115 = mul i128 2, %2
  %sub116 = sub i128 %mul115, 1
  %slt117 = icmp slt i128 %add111, %sub116
  br i1 %slt117, label %loop.body87, label %loop.exit118

loop.exit118:                                     ; preds = %loop.latch109
  %uniform_array119 = alloca [256 x [256 x i128]], align 8
  %uniform_array120 = alloca [256 x [256 x i128]], align 8
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch258, %loop.exit118
  %j.2 = phi i128 [ 0, %loop.exit118 ], [ %add260, %loop.latch258 ]
  %carry124 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 0
  store i128 0, i128* %carry124, align 4
  %array_getter127 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 0
  %split128 = load i128, i128* %array_getter127, align 4
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 0
  store i128 %split128, i128* %out131, align 4
  %mul133 = mul i128 2, %1
  %sub134 = sub i128 %mul133, 1
  %sgt = icmp sgt i128 %sub134, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body121
  %array_getter137 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 1
  %split138 = load i128, i128* %array_getter137, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 1, i128 0
  %split142 = load i128, i128* %array_getter141, align 4
  %add143 = add i128 %split138, %split142
  %call146 = call [256 x i128]* @SplitFn(i128 %add143, i128 %0, i128 %0)
  %sumAndCarry149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2
  %7 = bitcast [256 x i128]* %sumAndCarry149 to i8*
  %8 = bitcast [256 x i128]* %call146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 0
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %out156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry153, i128* %out156, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 1
  %sumAndCarry160 = load i128, i128* %array_getter159, align 4
  %carry163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry160, i128* %carry163, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body121
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %mul167 = mul i128 2, %1
  %sub168 = sub i128 %mul167, 1
  %sgt169 = icmp sgt i128 %sub168, 2
  br i1 %sgt169, label %if.true164, label %if.false165

if.true164:                                       ; preds = %if.exit
  br label %loop.body170

if.false165:                                      ; preds = %if.exit
  br label %if.exit257

loop.body170:                                     ; preds = %loop.latch219, %if.true164
  %i.2 = phi i128 [ 2, %if.true164 ], [ %add221, %loop.latch219 ]
  %array_getter174 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %i.2, i128 0
  %split175 = load i128, i128* %array_getter174, align 4
  %sub179 = sub i128 %i.2, 1
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %split175, %split181
  %sub186 = sub i128 %i.2, 2
  %array_getter187 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %split188
  %sub193 = sub i128 %i.2, 1
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %call199 = call [256 x i128]* @SplitFn(i128 %add196, i128 %0, i128 %0)
  %sumAndCarry202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2
  %9 = bitcast [256 x i128]* %sumAndCarry202 to i8*
  %10 = bitcast [256 x i128]* %call199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 0
  %sumAndCarry206 = load i128, i128* %array_getter205, align 4
  %out210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry206, i128* %out210, align 4
  %array_getter213 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 1
  %sumAndCarry214 = load i128, i128* %array_getter213, align 4
  %carry218 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry214, i128* %carry218, align 4
  br label %loop.latch219

loop.latch219:                                    ; preds = %loop.body170
  %add221 = add i128 %i.2, 1
  %mul224 = mul i128 2, %1
  %sub225 = sub i128 %mul224, 1
  %slt226 = icmp slt i128 %add221, %sub225
  br i1 %slt226, label %loop.body170, label %loop.exit227

loop.exit227:                                     ; preds = %loop.latch219
  %mul231 = mul i128 2, %1
  %sub232 = sub i128 %mul231, 2
  %array_getter233 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub232, i128 1
  %split234 = load i128, i128* %array_getter233, align 4
  %mul238 = mul i128 2, %1
  %sub239 = sub i128 %mul238, 3
  %array_getter240 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub239, i128 2
  %split241 = load i128, i128* %array_getter240, align 4
  %add242 = add i128 %split234, %split241
  %mul246 = mul i128 2, %1
  %sub247 = sub i128 %mul246, 2
  %array_getter248 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %sub247
  %carry249 = load i128, i128* %array_getter248, align 4
  %add250 = add i128 %add242, %carry249
  %mul254 = mul i128 2, %1
  %sub255 = sub i128 %mul254, 1
  %out256 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub255
  store i128 %add250, i128* %out256, align 4
  br label %if.exit257

if.exit257:                                       ; preds = %loop.exit227, %if.false165
  br label %loop.latch258

loop.latch258:                                    ; preds = %if.exit257
  %add260 = add i128 %j.2, 1
  %mul263 = mul i128 2, %2
  %sub264 = sub i128 %mul263, 1
  %slt265 = icmp slt i128 %add260, %sub264
  br i1 %slt265, label %loop.body121, label %loop.exit266

loop.exit266:                                     ; preds = %loop.latch258
  ret [256 x [256 x i128]]* %uniform_array85
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %carry1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %carry.1, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add41, %loop.latch ]
  %slt = icmp slt i128 %i.0, %2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %add12 = add i128 %add, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add12, i128 %0, i128 %0)
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a25 = load i128, i128* %array_getter24, align 4
  %add27 = add i128 %a25, %carry.0
  %call30 = call [256 x i128]* @SplitFn(i128 %add27, i128 %0, i128 %0)
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %call30, i128 0, i128 0
  %sumAndCarry33 = load i128, i128* %array_getter32, align 4
  %sum36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry33, i128* %sum36, align 4
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %call30, i128 0, i128 1
  %sumAndCarry39 = load i128, i128* %array_getter38, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry.1 = phi i128 [ %sumAndCarry21, %if.true ], [ %sumAndCarry39, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add41 = add i128 %i.0, 1
  %slt43 = icmp slt i128 %add41, %1
  br i1 %slt43, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum47 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %carry.1, i128* %sum47, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %carry4 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry20, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %add11 = add i128 %add, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add11, i128 %0, i128 %0)
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add22 = add i128 %i.0, 1
  %slt = icmp slt i128 %add22, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry20, i128* %sum27, align 4
  ret [256 x i128]* %uniform_array
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %scale2 = call i128 @fn_intrinsic_utils_init()
  %ret4 = call i128 @fn_intrinsic_utils_init()
  %lshift = shl i128 1, %0
  %sub = sub i128 %1, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  %add8 = add i128 %1, 1
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %add8, i128 %sdiv, [256 x i128]* %2)
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %sdiv, [256 x i128]* %3)
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call14, i128 0, i128 %1
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add21 = add i128 %1, 1
  %call24 = call i128 @short_div_norm(i128 %0, i128 %add21, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.false:                                         ; preds = %entry
  %call29 = call i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret.0 = phi i128 [ %call24, %if.true ], [ %call29, %if.false ]
  ret i128 %ret.0
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %j4 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add15 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %remainder.0 = phi [256 x i128]* [ %uniform_array8, %loop.exit ], [ %call116, %loop.latch117 ]
  %i.1 = phi i128 [ %2, %loop.exit ], [ %sub119, %loop.latch117 ]
  %eq = icmp eq i128 %i.1, %2
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %1
  store i128 0, i128* %dividend23, align 4
  %sub = sub i128 %1, 1
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %j.0 = phi i128 [ %sub, %if.true ], [ %sub37, %loop.latch35 ]
  %add29 = add i128 %j.0, %2
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.0
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %sub37 = sub i128 %j.0, 1
  %sge = icmp sge i128 %sub37, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %j.1 = phi i128 [ %1, %if.false ], [ %sub53, %loop.latch51 ]
  %add45 = add i128 %j.1, %i.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.1
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %sub53 = sub i128 %j.1, 1
  %sge55 = icmp sge i128 %sub53, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %call = call i128 @short_div(i128 %0, i128 %1, [256 x i128]* %uniform_array16, [256 x i128]* %4)
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  store i128 %call, i128* %out61, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  %out67 = load i128, i128* %array_getter66, align 4
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %out67, [256 x i128]* %4)
  %uniform_array70 = alloca [256 x i128], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %j.2 = phi i128 [ 0, %if.exit ], [ %add77, %loop.latch75 ]
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %j.2
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %add77 = add i128 %j.2, 1
  %add81 = add i128 %2, %1
  %slt82 = icmp slt i128 %add77, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %j.3 = phi i128 [ 0, %loop.exit83 ], [ %add106, %loop.latch104 ]
  %add89 = add i128 %i.1, %j.3
  %add92 = add i128 %2, %1
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %call69, i128 0, i128 %j.3
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %add101 = add i128 %i.1, %j.3
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %add106 = add i128 %j.3, 1
  %sle = icmp sle i128 %add106, %1
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %add113 = add i128 %2, %1
  %call116 = call [256 x i128]* @long_sub(i128 %0, i128 %add113, [256 x i128]* %remainder.0, [256 x i128]* %uniform_array70)
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %sub119 = sub i128 %i.1, 1
  %sge121 = icmp sge i128 %sub119, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %i.2 = phi i128 [ 0, %loop.exit122 ], [ %add133, %loop.latch131 ]
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %call116, i128 0, i128 %i.2
  %remainder127 = load i128, i128* %array_getter126, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.2
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %add133 = add i128 %i.2, 1
  %slt136 = icmp slt i128 %add133, %1
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out140, align 4
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x [256 x i128]]* %call
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %j3 = call i128 @fn_intrinsic_utils_init()
  %bitlength6 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch33 ]
  %bitlength.0 = phi i128 [ 0, %entry ], [ %bitlength.2, %loop.latch33 ]
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add30, %loop.latch ]
  %bitlength.1 = phi i128 [ %bitlength.0, %loop.body ], [ %bitlength.2, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e10 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e10, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %mul19 = mul i128 %0, %i.0
  %add20 = add i128 %j.0, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %mul26 = mul i128 %0, %i.0
  %add27 = add i128 %j.0, %mul26
  %add28 = add i128 %add27, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitlength.2 = phi i128 [ %add28, %if.true ], [ %bitlength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add30 = add i128 %j.0, 1
  %slt = icmp slt i128 %add30, %0
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %add35 = add i128 %i.0, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %i.1 = phi i128 [ 0, %loop.exit38 ], [ %add46, %loop.latch44 ]
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 %i.1
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %add46 = add i128 %i.1, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %sub = sub i128 %bitlength.2, 1
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %i.2 = phi i128 [ %sub, %loop.exit49 ], [ %sub96, %loop.latch94 ]
  %out.0 = phi [256 x i128]* [ %uniform_array39, %loop.exit49 ], [ %out.2, %loop.latch94 ]
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.0, [256 x i128]* %2)
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %3)
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call69, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %out.1 = phi [256 x i128]* [ %spice_inline_array, %if.true54 ], [ %out.0, %if.false55 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  %call82 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.1, [256 x i128]* %out.1)
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call82, [256 x i128]* %3)
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call88, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  %out.2 = phi [256 x i128]* [ %spice_inline_array92, %if.true74 ], [ %out.1, %if.false75 ]
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %sub96 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub96, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  ret [256 x i128]* %out.2
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %2)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call7 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %3)
  %call8 = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %call13 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x i128]* %call13
}

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %carry2 = call i128 @fn_intrinsic_utils_init()
  %Y_is_zero3 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %3)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 50
  %a_short9 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short9, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call13 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %call, [256 x i128]* %4)
  br label %if.exit139

if.false:                                         ; preds = %entry
  %uniform_array14 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %i.0 = phi i128 [ 0, %if.false ], [ %add, %loop.latch ]
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 %i.0
  %a_short18 = load i128, i128* %array_getter17, align 4
  %neg = sub i128 0, %a_short18
  %a_pos20 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 %i.0
  store i128 %neg, i128* %a_pos20, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add25 = add i128 %1, %2
  %slt = icmp slt i128 %add, %add25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call31 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %uniform_array14, [256 x i128]* %4)
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch39, %loop.exit
  %Y_is_zero.0 = phi i128 [ 1, %loop.exit ], [ %Y_is_zero.1, %loop.latch39 ]
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add41, %loop.latch39 ]
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1, i128 %i.1
  %X38 = load i128, i128* %array_getter37, align 4
  %ne = icmp ne i128 %X38, 0
  br i1 %ne, label %if.true33, label %if.false34

if.true33:                                        ; preds = %loop.body32
  br label %if.exit

if.false34:                                       ; preds = %loop.body32
  br label %if.exit

if.exit:                                          ; preds = %if.false34, %if.true33
  %Y_is_zero.1 = phi i128 [ 0, %if.true33 ], [ %Y_is_zero.0, %if.false34 ]
  br label %loop.latch39

loop.latch39:                                     ; preds = %if.exit
  %add41 = add i128 %i.1, 1
  %slt44 = icmp slt i128 %add41, %1
  br i1 %slt44, label %loop.body32, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %eq49 = icmp eq i128 %Y_is_zero.1, 1
  br i1 %eq49, label %if.true46, label %if.false47

if.true46:                                        ; preds = %loop.exit45
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X52 = load [256 x i128], [256 x i128]* %array_getter51, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X52, [256 x i128]* %spice_inline_array, align 4
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out54 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit122

if.false47:                                       ; preds = %loop.exit45
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X60 = load [256 x i128], [256 x i128]* %array_getter59, align 4
  %spice_inline_array61 = alloca [256 x i128], align 8
  store [256 x i128] %X60, [256 x i128]* %spice_inline_array61, align 4
  %call62 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %spice_inline_array61)
  %out64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out64 to i8*
  %8 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X67 = load i128, i128* %array_getter66, align 4
  %add68 = add i128 %X67, 1
  %X70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  store i128 %add68, i128* %X70, align 4
  %array_getter74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X75 = load i128, i128* %array_getter74, align 4
  %lshift = shl i128 1, %0
  %sge = icmp sge i128 %X75, %lshift
  br i1 %sge, label %if.true71, label %if.false72

if.true71:                                        ; preds = %if.false47
  br label %loop.body77

if.false72:                                       ; preds = %if.false47
  br label %if.exit121

loop.body77:                                      ; preds = %loop.latch105, %if.true71
  %i.2 = phi i128 [ 0, %if.true71 ], [ %add107, %loop.latch105 ]
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X81 = load i128, i128* %array_getter80, align 4
  %lshift83 = shl i128 1, %0
  %sdiv = sdiv i128 %X81, %lshift83
  %add86 = add i128 %i.2, 1
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add86
  %X88 = load i128, i128* %array_getter87, align 4
  %add90 = add i128 %X88, %sdiv
  %add93 = add i128 %i.2, 1
  %X94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add93
  store i128 %add90, i128* %X94, align 4
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X98 = load i128, i128* %array_getter97, align 4
  %lshift101 = shl i128 1, %0
  %mul = mul i128 %sdiv, %lshift101
  %sub = sub i128 %X98, %mul
  %X104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  store i128 %sub, i128* %X104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body77
  %add107 = add i128 %i.2, 1
  %sub110 = sub i128 %2, 1
  %slt111 = icmp slt i128 %add107, %sub110
  br i1 %slt111, label %loop.body77, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch105
  %sub115 = sub i128 %2, 1
  %array_getter116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %sub115
  %X117 = load i128, i128* %array_getter116, align 4
  %lshift119 = shl i128 1, %0
  %slt120 = icmp slt i128 %X117, %lshift119
  call void @fn_intrinsic_utils_assert(i1 %slt120)
  br label %if.exit121

if.exit121:                                       ; preds = %loop.exit112, %if.false72
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true46
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch132, %if.exit122
  %i.3 = phi i128 [ 0, %if.exit122 ], [ %add134, %loop.latch132 ]
  %array_getter126 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.3
  %X127 = load i128, i128* %array_getter126, align 4
  %neg128 = sub i128 0, %X127
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.3
  store i128 %neg128, i128* %out131, align 4
  br label %loop.latch132

loop.latch132:                                    ; preds = %loop.body123
  %add134 = add i128 %i.3, 1
  %slt137 = icmp slt i128 %add134, %2
  br i1 %slt137, label %loop.body123, label %loop.exit138

loop.exit138:                                     ; preds = %loop.latch132
  br label %if.exit139

if.exit139:                                       ; preds = %loop.exit138, %if.true
  %out.0 = phi [256 x [256 x i128]]* [ %call13, %if.true ], [ %uniform_array, %loop.exit138 ]
  ret [256 x [256 x i128]]* %out.0
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i3 = call i128 @fn_intrinsic_utils_init()
  %ka7 = call i128 @fn_intrinsic_utils_init()
  %l10 = call i128 @fn_intrinsic_utils_init()
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 0, [256 x i128]* %2, [256 x i128]* %3)
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array16 = alloca [256 x i128], align 8
  %uniform_array17 = alloca [256 x i128], align 8
  %uniform_array18 = alloca [256 x i128], align 8
  %uniform_array19 = alloca [256 x i128], align 8
  %uniform_array20 = alloca [256 x i128], align 8
  %uniform_array21 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %amodp24 = load i128, i128* %array_getter, align 4
  %a26 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %amodp24, i128* %a26, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %p30 = load i128, i128* %array_getter29, align 4
  %b33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.0
  store i128 %p30, i128* %b33, align 4
  %x36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.0
  store i128 0, i128* %x36, align 4
  %y39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.0
  store i128 0, i128* %y39, align 4
  %u42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.0
  store i128 0, i128* %u42, align 4
  %v45 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.0
  store i128 0, i128* %v45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %y50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 0
  store i128 1, i128* %y50, align 4
  %u52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 0
  store i128 1, i128* %u52, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch210, %loop.exit
  %l.0 = phi i128 [ 0, %loop.exit ], [ %add212, %loop.latch210 ]
  br label %loop.body54

loop.body54:                                      ; preds = %loop.latch61, %loop.body53
  %ka.0 = phi i128 [ 0, %loop.body53 ], [ %ka.1, %loop.latch61 ]
  %i.1 = phi i128 [ 0, %loop.body53 ], [ %add63, %loop.latch61 ]
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %a58 = load i128, i128* %array_getter57, align 4
  %ne = icmp ne i128 %a58, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body54
  %add60 = add i128 %i.1, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body54
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ka.1 = phi i128 [ %add60, %if.true ], [ %ka.0, %if.false ]
  br label %loop.latch61

loop.latch61:                                     ; preds = %if.exit
  %add63 = add i128 %i.1, 1
  %slt66 = icmp slt i128 %add63, %1
  br i1 %slt66, label %loop.body54, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  %eq = icmp eq i128 %ka.1, 0
  br i1 %eq, label %if.true68, label %if.false69

if.true68:                                        ; preds = %loop.exit67
  br label %loop.body71

if.false69:                                       ; preds = %loop.exit67
  br label %if.exit87

loop.body71:                                      ; preds = %loop.latch79, %if.true68
  %i.2 = phi i128 [ 0, %if.true68 ], [ %add81, %loop.latch79 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.2
  %x75 = load i128, i128* %array_getter74, align 4
  %ret78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array21, i128 0, i128 %i.2
  store i128 %x75, i128* %ret78, align 4
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body71
  %add81 = add i128 %i.2, 1
  %slt84 = icmp slt i128 %add81, %1
  br i1 %slt84, label %loop.body71, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  ret [256 x i128]* %uniform_array21

if.exit87:                                        ; preds = %if.false69
  %sub = sub i128 %1, %ka.1
  %call94 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %ka.1, i128 %sub, [256 x i128]* %uniform_array16, [256 x i128]* %uniform_array)
  %uniform_array95 = alloca [256 x i128], align 8
  br label %loop.body96

loop.body96:                                      ; preds = %loop.latch104, %if.exit87
  %i.3 = phi i128 [ 0, %if.exit87 ], [ %add106, %loop.latch104 ]
  %array_getter99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 0, i128 %i.3
  %r100 = load i128, i128* %array_getter99, align 4
  %q103 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.3
  store i128 %r100, i128* %q103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body96
  %add106 = add i128 %i.3, 1
  %sub110 = sub i128 %1, %ka.1
  %add111 = add i128 %sub110, 1
  %slt112 = icmp slt i128 %add106, %add111
  br i1 %slt112, label %loop.body96, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch104
  %sub116 = sub i128 %1, %ka.1
  %add117 = add i128 %sub116, 1
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit113
  %i.4 = phi i128 [ %add117, %loop.exit113 ], [ %add124, %loop.latch122 ]
  %q121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.4
  store i128 0, i128* %q121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %add124 = add i128 %i.4, 1
  %slt127 = icmp slt i128 %add124, %1
  br i1 %slt127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  %call137 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array19, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call139 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array17, [256 x i128]* %call137, [256 x i128]* %3)
  %call148 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array20, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call150 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array18, [256 x i128]* %call148, [256 x i128]* %3)
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch203, %loop.exit128
  %i.5 = phi i128 [ 0, %loop.exit128 ], [ %add205, %loop.latch203 ]
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  %a155 = load i128, i128* %array_getter154, align 4
  %b158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.5
  store i128 %a155, i128* %b158, align 4
  %slt163 = icmp slt i128 %i.5, %ka.1
  br i1 %slt163, label %if.true159, label %if.false160

if.true159:                                       ; preds = %loop.body151
  %array_getter166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 1, i128 %i.5
  %r167 = load i128, i128* %array_getter166, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %r167, i128* %a170, align 4
  br label %if.exit174

if.false160:                                      ; preds = %loop.body151
  %a173 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 0, i128* %a173, align 4
  br label %if.exit174

if.exit174:                                       ; preds = %if.false160, %if.true159
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  %u178 = load i128, i128* %array_getter177, align 4
  %x181 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.5
  store i128 %u178, i128* %x181, align 4
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  %v185 = load i128, i128* %array_getter184, align 4
  %y188 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.5
  store i128 %v185, i128* %y188, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %call139, i128 0, i128 %i.5
  %newu192 = load i128, i128* %array_getter191, align 4
  %u195 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  store i128 %newu192, i128* %u195, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %call150, i128 0, i128 %i.5
  %newv199 = load i128, i128* %array_getter198, align 4
  %v202 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  store i128 %newv199, i128* %v202, align 4
  br label %loop.latch203

loop.latch203:                                    ; preds = %if.exit174
  %add205 = add i128 %i.5, 1
  %slt208 = icmp slt i128 %add205, %1
  br i1 %slt208, label %loop.body151, label %loop.exit209

loop.exit209:                                     ; preds = %loop.latch203
  br label %loop.latch210

loop.latch210:                                    ; preds = %loop.exit209
  %add212 = add i128 %l.0, 1
  %slt214 = icmp slt i128 %add212, 1000
  br i1 %slt214, label %loop.body53, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch210
  call void @fn_intrinsic_utils_assert(i1 false)
  ret [256 x i128]* %uniform_array21
}

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %spice_inline_array, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.0
  %5 = bitcast [256 x [256 x i128]]* %out6 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %isZero2 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %isZero.0 = phi i128 [ 1, %entry ], [ %isZero.1, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %isZero.1 = phi i128 [ 0, %if.true ], [ %isZero.0, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %eq = icmp eq i128 %isZero.1, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %i.1 = phi i128 [ 0, %if.true12 ], [ %add20, %loop.latch18 ]
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %add20 = add i128 %i.1, 1
  %slt23 = icmp slt i128 %add20, %1
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  ret [256 x i128]* %uniform_array

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i.2 = phi i128 [ 0, %if.exit26 ], [ %add46, %loop.latch44 ]
  %slt33 = icmp slt i128 %i.2, %1
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.2
  %p36 = load i128, i128* %array_getter35, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %add46 = add i128 %i.2, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %i.3 = phi i128 [ 0, %loop.exit49 ], [ %add57, %loop.latch55 ]
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 %i.3
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %add57 = add i128 %i.3, 1
  %slt59 = icmp slt i128 %add57, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %uniform_array27, [256 x i128]* %uniform_array50)
  %uniform_array67 = alloca [256 x i128], align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %uniform_array27, [256 x i128]* %call)
  ret [256 x i128]* %call73
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %j1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array5 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch18 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0
  %a8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j.0
  %b11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %b11, [256 x i128]* %spice_inline_array12, align 4
  %call = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array12, [256 x i128]* %4)
  %ab15 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 %i.0, i128 %j.0
  %5 = bitcast [256 x i128]* %ab15 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %add = add i128 %j.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %add20 = add i128 %i.0, 1
  %slt22 = icmp slt i128 %add20, 2
  br i1 %slt22, label %loop.body, label %loop.exit23

loop.exit23:                                      ; preds = %loop.latch18
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 0
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %array_getter31 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 1
  %ab32 = load [256 x i128], [256 x i128]* %array_getter31, align 4
  %spice_inline_array33 = alloca [256 x i128], align 8
  store [256 x i128] %ab32, [256 x i128]* %spice_inline_array33, align 4
  %call35 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array29, [256 x i128]* %spice_inline_array33, [256 x i128]* %4)
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out37 to i8*
  %8 = bitcast [256 x i128]* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 1
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 0
  %ab46 = load [256 x i128], [256 x i128]* %array_getter45, align 4
  %spice_inline_array47 = alloca [256 x i128], align 8
  store [256 x i128] %ab46, [256 x i128]* %spice_inline_array47, align 4
  %call49 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %spice_inline_array47, [256 x i128]* %4)
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out51 to i8*
  %10 = bitcast [256 x i128]* %call49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  %mul = mul i128 2, %1
  %call32 = call [256 x i128]* @long_add(i128 %0, i128 %mul, [256 x i128]* %call, [256 x i128]* %call27)
  %add = add i128 %1, 1
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %add, [256 x i128]* %call32, [256 x i128]* %3)
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call37, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %call45 = call [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %3)
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %spice_inline_array52)
  %call58 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call53, [256 x i128]* %3)
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call58, i128 0, i128 1
  %out0_div61 = load [256 x i128], [256 x i128]* %array_getter60, align 4
  %spice_inline_array62 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div61, [256 x i128]* %spice_inline_array62, align 4
  %out63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out63 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %spice_inline_array70)
  %call76 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %call71)
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call76, [256 x i128]* %3)
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call81, i128 0, i128 1
  %out1_div84 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div84, [256 x i128]* %spice_inline_array85, align 4
  %out87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out87 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %bitLength1 = call i128 @fn_intrinsic_utils_init()
  %j3 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %bitLength.0 = phi i128 [ 0, %entry ], [ %bitLength.2, %loop.latch31 ]
  %i.0 = phi i128 [ 0, %entry ], [ %add33, %loop.latch31 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %bitLength.1 = phi i128 [ %bitLength.0, %loop.body ], [ %bitLength.2, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add28, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e8 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e8, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits12, align 4
  %mul17 = mul i128 %0, %i.0
  %add18 = add i128 %j.0, %mul17
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add18
  %eBits20 = load i128, i128* %array_getter19, align 4
  %eq = icmp eq i128 %eBits20, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body6
  %mul24 = mul i128 %0, %i.0
  %add25 = add i128 %j.0, %mul24
  %add26 = add i128 %add25, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body6
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitLength.2 = phi i128 [ %add26, %if.true ], [ %bitLength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add28 = add i128 %j.0, 1
  %slt = icmp slt i128 %add28, %0
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %add33 = add i128 %i.0, 1
  %mul35 = mul i128 2, %1
  %slt36 = icmp slt i128 %add33, %mul35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  %uniform_array38 = alloca [256 x [256 x i128]], align 8
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.exit37
  %i.1 = phi i128 [ 0, %loop.exit37 ], [ %add48, %loop.latch46 ]
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 %i.1
  store i128 0, i128* %out42, align 4
  %out45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 1, i128 %i.1
  store i128 0, i128* %out45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body39
  %add48 = add i128 %i.1, 1
  %slt50 = icmp slt i128 %add48, 50
  br i1 %slt50, label %loop.body39, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch46
  %out53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 0
  store i128 1, i128* %out53, align 4
  %sub = sub i128 %bitLength.2, 1
  br label %loop.body55

loop.body55:                                      ; preds = %loop.latch77, %loop.exit51
  %out.0 = phi [256 x [256 x i128]]* [ %uniform_array38, %loop.exit51 ], [ %out.2, %loop.latch77 ]
  %i.2 = phi i128 [ %sub, %loop.exit51 ], [ %sub79, %loop.latch77 ]
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits61 = load i128, i128* %array_getter60, align 4
  %eq62 = icmp eq i128 %eBits61, 1
  br i1 %eq62, label %if.true56, label %if.false57

if.true56:                                        ; preds = %loop.body55
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.0, [256 x [256 x i128]]* %2, [256 x i128]* %3)
  br label %if.exit66

if.false57:                                       ; preds = %loop.body55
  br label %if.exit66

if.exit66:                                        ; preds = %if.false57, %if.true56
  %out.1 = phi [256 x [256 x i128]]* [ %call, %if.true56 ], [ %out.0, %if.false57 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %call75 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.1, [256 x [256 x i128]]* %out.1, [256 x i128]* %3)
  br label %if.exit76

if.false68:                                       ; preds = %if.exit66
  br label %if.exit76

if.exit76:                                        ; preds = %if.false68, %if.true67
  %out.2 = phi [256 x [256 x i128]]* [ %call75, %if.true67 ], [ %out.1, %if.false68 ]
  br label %loop.latch77

loop.latch77:                                     ; preds = %if.exit76
  %sub79 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub79, 0
  br i1 %sge, label %loop.body55, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch77
  ret [256 x [256 x i128]]* %out.2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
