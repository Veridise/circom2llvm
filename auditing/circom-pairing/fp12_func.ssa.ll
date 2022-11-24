; ModuleID = './auditing/circom-pairing/fp12_func.ll'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp12_func.circom"

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

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %X3 = call i128 @fn_intrinsic_utils_init()
  %carry4 = call i128 @fn_intrinsic_utils_init()
  %MAXL5 = call i128 @fn_intrinsic_utils_init()
  %borrow7 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %temp2 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %carry1 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry20, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
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

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %carry2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add41, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %carry.1, %loop.latch ]
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

define i128 @log_ceil(i128 %0) {
entry:
  %n_temp1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp.0 = phi i128 [ %0, %entry ], [ %sdiv, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
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

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %idx1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %carry2 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
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

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %a_idx7 = call i128 @fn_intrinsic_utils_init()
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

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %i12 = call i128 @fn_intrinsic_utils_init()
  %i24 = call i128 @fn_intrinsic_utils_init()
  %j15 = call i128 @fn_intrinsic_utils_init()
  %j26 = call i128 @fn_intrinsic_utils_init()
  %i8 = call i128 @fn_intrinsic_utils_init()
  %j9 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch18 ]
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.0, i128 %i.0
  store i128 0, i128* %prod_val15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %add20 = add i128 %i.0, 1
  %mul22 = mul i128 2, %1
  %sub23 = sub i128 %mul22, 1
  %slt24 = icmp slt i128 %add20, %sub23
  br i1 %slt24, label %loop.body, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch18
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch77, %loop.exit25
  %i1.0 = phi i128 [ 0, %loop.exit25 ], [ %add79, %loop.latch77 ]
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch70, %loop.body26
  %i2.0 = phi i128 [ 0, %loop.body26 ], [ %add72, %loop.latch70 ]
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch63, %loop.body27
  %j1.0 = phi i128 [ 0, %loop.body27 ], [ %add65, %loop.latch63 ]
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch56, %loop.body28
  %j2.0 = phi i128 [ 0, %loop.body28 ], [ %add58, %loop.latch56 ]
  %add33 = add i128 %j1.0, %j2.0
  %add36 = add i128 %i1.0, %i2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add33, i128 %add36
  %prod_val37 = load i128, i128* %array_getter, align 4
  %array_getter40 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j1.0, i128 %i1.0
  %a41 = load i128, i128* %array_getter40, align 4
  %array_getter44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %4, i128 0, i128 %j2.0, i128 %i2.0
  %b45 = load i128, i128* %array_getter44, align 4
  %mul46 = mul i128 %a41, %b45
  %add47 = add i128 %prod_val37, %mul46
  %add51 = add i128 %j1.0, %j2.0
  %add54 = add i128 %i1.0, %i2.0
  %prod_val55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add51, i128 %add54
  store i128 %add47, i128* %prod_val55, align 4
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body29
  %add58 = add i128 %j2.0, 1
  %slt61 = icmp slt i128 %add58, %2
  br i1 %slt61, label %loop.body29, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.exit62
  %add65 = add i128 %j1.0, 1
  %slt68 = icmp slt i128 %add65, %2
  br i1 %slt68, label %loop.body28, label %loop.exit69

loop.exit69:                                      ; preds = %loop.latch63
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.exit69
  %add72 = add i128 %i2.0, 1
  %slt75 = icmp slt i128 %add72, %1
  br i1 %slt75, label %loop.body27, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch70
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.exit76
  %add79 = add i128 %i1.0, 1
  %slt82 = icmp slt i128 %add79, %1
  br i1 %slt82, label %loop.body26, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  %uniform_array84 = alloca [256 x [256 x i128]], align 8
  %uniform_array85 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch108, %loop.exit83
  %j.1 = phi i128 [ 0, %loop.exit83 ], [ %add110, %loop.latch108 ]
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch99, %loop.body86
  %i.1 = phi i128 [ 0, %loop.body86 ], [ %add101, %loop.latch99 ]
  %array_getter91 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.1, i128 %i.1
  %prod_val92 = load i128, i128* %array_getter91, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val92, i128 %0, i128 %0, i128 %0)
  %split98 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.1, i128 %i.1
  %5 = bitcast [256 x i128]* %split98 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body87
  %add101 = add i128 %i.1, 1
  %mul104 = mul i128 2, %1
  %sub105 = sub i128 %mul104, 1
  %slt106 = icmp slt i128 %add101, %sub105
  br i1 %slt106, label %loop.body87, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch99
  br label %loop.latch108

loop.latch108:                                    ; preds = %loop.exit107
  %add110 = add i128 %j.1, 1
  %mul113 = mul i128 2, %2
  %sub114 = sub i128 %mul113, 1
  %slt115 = icmp slt i128 %add110, %sub114
  br i1 %slt115, label %loop.body86, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch108
  %uniform_array117 = alloca [256 x [256 x i128]], align 8
  %uniform_array118 = alloca [256 x [256 x i128]], align 8
  br label %loop.body119

loop.body119:                                     ; preds = %loop.latch257, %loop.exit116
  %j.2 = phi i128 [ 0, %loop.exit116 ], [ %add259, %loop.latch257 ]
  %carry122 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array117, i128 0, i128 %j.2, i128 0
  store i128 0, i128* %carry122, align 4
  %array_getter125 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 0, i128 0
  %split126 = load i128, i128* %array_getter125, align 4
  %out129 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array84, i128 0, i128 %j.2, i128 0
  store i128 %split126, i128* %out129, align 4
  %mul131 = mul i128 2, %1
  %sub132 = sub i128 %mul131, 1
  %sgt = icmp sgt i128 %sub132, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body119
  %array_getter135 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 0, i128 1
  %split136 = load i128, i128* %array_getter135, align 4
  %array_getter140 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 1, i128 0
  %split141 = load i128, i128* %array_getter140, align 4
  %add142 = add i128 %split136, %split141
  %call145 = call [256 x i128]* @SplitFn(i128 %add142, i128 %0, i128 %0)
  %sumAndCarry148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2
  %7 = bitcast [256 x i128]* %sumAndCarry148 to i8*
  %8 = bitcast [256 x i128]* %call145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 0
  %sumAndCarry152 = load i128, i128* %array_getter151, align 4
  %out155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array84, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry152, i128* %out155, align 4
  %array_getter158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 1
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %carry162 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array117, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry159, i128* %carry162, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body119
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %mul166 = mul i128 2, %1
  %sub167 = sub i128 %mul166, 1
  %sgt168 = icmp sgt i128 %sub167, 2
  br i1 %sgt168, label %if.true163, label %if.false164

if.true163:                                       ; preds = %if.exit
  br label %loop.body169

if.false164:                                      ; preds = %if.exit
  br label %if.exit256

loop.body169:                                     ; preds = %loop.latch218, %if.true163
  %i.2 = phi i128 [ 2, %if.true163 ], [ %add220, %loop.latch218 ]
  %array_getter173 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 %i.2, i128 0
  %split174 = load i128, i128* %array_getter173, align 4
  %sub178 = sub i128 %i.2, 1
  %array_getter179 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub178, i128 1
  %split180 = load i128, i128* %array_getter179, align 4
  %add181 = add i128 %split174, %split180
  %sub185 = sub i128 %i.2, 2
  %array_getter186 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub185, i128 2
  %split187 = load i128, i128* %array_getter186, align 4
  %add188 = add i128 %add181, %split187
  %sub192 = sub i128 %i.2, 1
  %array_getter193 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array117, i128 0, i128 %j.2, i128 %sub192
  %carry194 = load i128, i128* %array_getter193, align 4
  %add195 = add i128 %add188, %carry194
  %call198 = call [256 x i128]* @SplitFn(i128 %add195, i128 %0, i128 %0)
  %sumAndCarry201 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2
  %9 = bitcast [256 x i128]* %sumAndCarry201 to i8*
  %10 = bitcast [256 x i128]* %call198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter204 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 0
  %sumAndCarry205 = load i128, i128* %array_getter204, align 4
  %out209 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array84, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry205, i128* %out209, align 4
  %array_getter212 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 1
  %sumAndCarry213 = load i128, i128* %array_getter212, align 4
  %carry217 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array117, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry213, i128* %carry217, align 4
  br label %loop.latch218

loop.latch218:                                    ; preds = %loop.body169
  %add220 = add i128 %i.2, 1
  %mul223 = mul i128 2, %1
  %sub224 = sub i128 %mul223, 1
  %slt225 = icmp slt i128 %add220, %sub224
  br i1 %slt225, label %loop.body169, label %loop.exit226

loop.exit226:                                     ; preds = %loop.latch218
  %mul230 = mul i128 2, %1
  %sub231 = sub i128 %mul230, 2
  %array_getter232 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub231, i128 1
  %split233 = load i128, i128* %array_getter232, align 4
  %mul237 = mul i128 2, %1
  %sub238 = sub i128 %mul237, 3
  %array_getter239 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub238, i128 2
  %split240 = load i128, i128* %array_getter239, align 4
  %add241 = add i128 %split233, %split240
  %mul245 = mul i128 2, %1
  %sub246 = sub i128 %mul245, 2
  %array_getter247 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array117, i128 0, i128 %j.2, i128 %sub246
  %carry248 = load i128, i128* %array_getter247, align 4
  %add249 = add i128 %add241, %carry248
  %mul253 = mul i128 2, %1
  %sub254 = sub i128 %mul253, 1
  %out255 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array84, i128 0, i128 %j.2, i128 %sub254
  store i128 %add249, i128* %out255, align 4
  br label %if.exit256

if.exit256:                                       ; preds = %loop.exit226, %if.false164
  br label %loop.latch257

loop.latch257:                                    ; preds = %if.exit256
  %add259 = add i128 %j.2, 1
  %mul262 = mul i128 2, %2
  %sub263 = sub i128 %mul262, 1
  %slt264 = icmp slt i128 %add259, %sub263
  br i1 %slt264, label %loop.body119, label %loop.exit265

loop.exit265:                                     ; preds = %loop.latch257
  ret [256 x [256 x i128]]* %uniform_array84
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

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %sgn11 = call i128 @fn_intrinsic_utils_init()
  %sgn02 = call i128 @fn_intrinsic_utils_init()
  %z3 = call i128 @fn_intrinsic_utils_init()
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

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %qhat2 = call i128 @fn_intrinsic_utils_init()
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

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %ret3 = call i128 @fn_intrinsic_utils_init()
  %scale4 = call i128 @fn_intrinsic_utils_init()
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %2, i128 0, i128 %i.0
  %a4 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a4, [256 x [256 x i128]]* %spice_inline_array, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %i.0
  %b7 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b7, [256 x [256 x i128]]* %spice_inline_array8, align 4
  %call = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array8, [256 x i128]* %4)
  %out10 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.0
  %5 = bitcast [256 x [256 x i128]]* %out10 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i5 = call i128 @fn_intrinsic_utils_init()
  %j7 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %j2 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %isZero3 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
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

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %ka8 = call i128 @fn_intrinsic_utils_init()
  %i10 = call i128 @fn_intrinsic_utils_init()
  %l14 = call i128 @fn_intrinsic_utils_init()
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
  %i.1 = phi i128 [ 0, %loop.body53 ], [ %add63, %loop.latch61 ]
  %ka.0 = phi i128 [ 0, %loop.body53 ], [ %ka.1, %loop.latch61 ]
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %j3 = call i128 @fn_intrinsic_utils_init()
  %i9 = call i128 @fn_intrinsic_utils_init()
  %l20 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array29 = alloca [256 x [256 x i128]], align 8
  %uniform_array31 = alloca [256 x [256 x i128]], align 8
  %uniform_array33 = alloca [256 x [256 x i128]], align 8
  %uniform_array35 = alloca [256 x [256 x i128]], align 8
  %uniform_array37 = alloca [256 x [256 x i128]], align 8
  %uniform_array39 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch75, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add77, %loop.latch75 ]
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %2, i128 0, i128 %i.0, i128 0, i128 %j.0
  %a43 = load i128, i128* %array_getter, align 4
  %a046 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.0, i128 %j.0
  store i128 %a43, i128* %a046, align 4
  %array_getter50 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %2, i128 0, i128 %i.0, i128 1, i128 %j.0
  %a51 = load i128, i128* %array_getter50, align 4
  %a155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array29, i128 0, i128 %i.0, i128 %j.0
  store i128 %a51, i128* %a155, align 4
  %array_getter58 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %i.0, i128 0, i128 %j.0
  %b59 = load i128, i128* %array_getter58, align 4
  %b063 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array31, i128 0, i128 %i.0, i128 %j.0
  store i128 %b59, i128* %b063, align 4
  %array_getter67 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %i.0, i128 1, i128 %j.0
  %b68 = load i128, i128* %array_getter67, align 4
  %b172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array33, i128 0, i128 %i.0, i128 %j.0
  store i128 %b68, i128* %b172, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body40
  %add = add i128 %j.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body40, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.exit
  %add77 = add i128 %i.0, 1
  %slt80 = icmp slt i128 %add77, 6
  br i1 %slt80, label %loop.body, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch75
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch103, %loop.exit81
  %i.1 = phi i128 [ 0, %loop.exit81 ], [ %add105, %loop.latch103 ]
  %array_getter86 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array31, i128 0, i128 %i.1
  %b087 = load [256 x i128], [256 x i128]* %array_getter86, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %b087, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %spice_inline_array)
  %neg_b090 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array35, i128 0, i128 %i.1
  %5 = bitcast [256 x i128]* %neg_b090 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter96 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array33, i128 0, i128 %i.1
  %b197 = load [256 x i128], [256 x i128]* %array_getter96, align 4
  %spice_inline_array98 = alloca [256 x i128], align 8
  store [256 x i128] %b197, [256 x i128]* %spice_inline_array98, align 4
  %call99 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %spice_inline_array98)
  %neg_b1102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array37, i128 0, i128 %i.1
  %7 = bitcast [256 x i128]* %neg_b1102 to i8*
  %8 = bitcast [256 x i128]* %call99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.body82
  %add105 = add i128 %i.1, 1
  %slt108 = icmp slt i128 %add105, 6
  br i1 %slt108, label %loop.body82, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %uniform_array110 = alloca [256 x [256 x i128]], align 8
  %uniform_array111 = alloca [256 x [256 x i128]], align 8
  %uniform_array112 = alloca [256 x [256 x i128]], align 8
  %call118 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]* %uniform_array31)
  %call124 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array29, [256 x [256 x i128]]* %uniform_array37)
  %call130 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]* %uniform_array33)
  %call136 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array29, [256 x [256 x i128]]* %uniform_array31)
  %call142 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]* %uniform_array37)
  %call148 = call [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 6, [256 x [256 x i128]]* %uniform_array29, [256 x [256 x i128]]* %uniform_array35)
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch200, %loop.exit109
  %i.2 = phi i128 [ 0, %loop.exit109 ], [ %add202, %loop.latch200 ]
  %mul = mul i128 2, %1
  %array_getter154 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call118, i128 0, i128 %i.2
  %a0b0_var155 = load [256 x i128], [256 x i128]* %array_getter154, align 4
  %spice_inline_array156 = alloca [256 x i128], align 8
  store [256 x i128] %a0b0_var155, [256 x i128]* %spice_inline_array156, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call124, i128 0, i128 %i.2
  %a1b1_neg160 = load [256 x i128], [256 x i128]* %array_getter159, align 4
  %spice_inline_array161 = alloca [256 x i128], align 8
  store [256 x i128] %a1b1_neg160, [256 x i128]* %spice_inline_array161, align 4
  %call162 = call [256 x i128]* @long_add(i128 %0, i128 %mul, [256 x i128]* %spice_inline_array156, [256 x i128]* %spice_inline_array161)
  %real_init165 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array110, i128 0, i128 %i.2
  %9 = bitcast [256 x i128]* %real_init165 to i8*
  %10 = bitcast [256 x i128]* %call162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mul168 = mul i128 2, %1
  %array_getter171 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call130, i128 0, i128 %i.2
  %a0b1_var172 = load [256 x i128], [256 x i128]* %array_getter171, align 4
  %spice_inline_array173 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_var172, [256 x i128]* %spice_inline_array173, align 4
  %array_getter176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call136, i128 0, i128 %i.2
  %a1b0_var177 = load [256 x i128], [256 x i128]* %array_getter176, align 4
  %spice_inline_array178 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_var177, [256 x i128]* %spice_inline_array178, align 4
  %call179 = call [256 x i128]* @long_add(i128 %0, i128 %mul168, [256 x i128]* %spice_inline_array173, [256 x i128]* %spice_inline_array178)
  %imag_init182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array111, i128 0, i128 %i.2
  %11 = bitcast [256 x i128]* %imag_init182 to i8*
  %12 = bitcast [256 x i128]* %call179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mul185 = mul i128 2, %1
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call142, i128 0, i128 %i.2
  %a0b1_neg189 = load [256 x i128], [256 x i128]* %array_getter188, align 4
  %spice_inline_array190 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_neg189, [256 x i128]* %spice_inline_array190, align 4
  %array_getter193 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call148, i128 0, i128 %i.2
  %a1b0_neg194 = load [256 x i128], [256 x i128]* %array_getter193, align 4
  %spice_inline_array195 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_neg194, [256 x i128]* %spice_inline_array195, align 4
  %call196 = call [256 x i128]* @long_add(i128 %0, i128 %mul185, [256 x i128]* %spice_inline_array190, [256 x i128]* %spice_inline_array195)
  %imag_init_neg199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array112, i128 0, i128 %i.2
  %13 = bitcast [256 x i128]* %imag_init_neg199 to i8*
  %14 = bitcast [256 x i128]* %call196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch200

loop.latch200:                                    ; preds = %loop.body149
  %add202 = add i128 %i.2, 1
  %mul205 = mul i128 2, 6
  %sub = sub i128 %mul205, 1
  %slt206 = icmp slt i128 %add202, %sub
  br i1 %slt206, label %loop.body149, label %loop.exit207

loop.exit207:                                     ; preds = %loop.latch200
  %uniform_array209 = alloca [256 x [256 x i128]], align 8
  %uniform_array211 = alloca [256 x [256 x i128]], align 8
  %uniform_array213 = alloca [256 x [256 x i128]], align 8
  %uniform_array215 = alloca [256 x [256 x i128]], align 8
  %uniform_array216 = alloca [256 x i128], align 8
  br label %loop.body217

loop.body217:                                     ; preds = %loop.latch221, %loop.exit207
  %i.3 = phi i128 [ 0, %loop.exit207 ], [ %add223, %loop.latch221 ]
  %zeros220 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array216, i128 0, i128 %i.3
  store i128 0, i128* %zeros220, align 4
  br label %loop.latch221

loop.latch221:                                    ; preds = %loop.body217
  %add223 = add i128 %i.3, 1
  %slt225 = icmp slt i128 %add223, 50
  br i1 %slt225, label %loop.body217, label %loop.exit226

loop.exit226:                                     ; preds = %loop.latch221
  br label %loop.body227

loop.body227:                                     ; preds = %loop.latch295, %loop.exit226
  %i.4 = phi i128 [ 0, %loop.exit226 ], [ %add297, %loop.latch295 ]
  %sub230 = sub i128 6, 1
  %eq = icmp eq i128 %i.4, %sub230
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body227
  %mul233 = mul i128 2, %1
  %add234 = add i128 %mul233, 1
  %call237 = call [256 x i128]* @long_add(i128 %0, i128 %add234, [256 x i128]* %uniform_array216, [256 x i128]* %uniform_array216)
  %real_carry240 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array209, i128 0, i128 %i.4
  %15 = bitcast [256 x i128]* %real_carry240 to i8*
  %16 = bitcast [256 x i128]* %call237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mul243 = mul i128 2, %1
  %add244 = add i128 %mul243, 1
  %call247 = call [256 x i128]* @long_add(i128 %0, i128 %add244, [256 x i128]* %uniform_array216, [256 x i128]* %uniform_array216)
  %imag_carry250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array211, i128 0, i128 %i.4
  %17 = bitcast [256 x i128]* %imag_carry250 to i8*
  %18 = bitcast [256 x i128]* %call247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body227
  %mul253 = mul i128 2, %1
  %add254 = add i128 %mul253, 1
  %add258 = add i128 %i.4, 6
  %array_getter259 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array110, i128 0, i128 %add258
  %real_init260 = load [256 x i128], [256 x i128]* %array_getter259, align 4
  %spice_inline_array261 = alloca [256 x i128], align 8
  store [256 x i128] %real_init260, [256 x i128]* %spice_inline_array261, align 4
  %add265 = add i128 %i.4, 6
  %array_getter266 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array112, i128 0, i128 %add265
  %imag_init_neg267 = load [256 x i128], [256 x i128]* %array_getter266, align 4
  %spice_inline_array268 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init_neg267, [256 x i128]* %spice_inline_array268, align 4
  %call269 = call [256 x i128]* @long_add(i128 %0, i128 %add254, [256 x i128]* %spice_inline_array261, [256 x i128]* %spice_inline_array268)
  %real_carry272 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array209, i128 0, i128 %i.4
  %19 = bitcast [256 x i128]* %real_carry272 to i8*
  %20 = bitcast [256 x i128]* %call269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mul275 = mul i128 2, %1
  %add276 = add i128 %mul275, 1
  %add280 = add i128 %i.4, 6
  %array_getter281 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array111, i128 0, i128 %add280
  %imag_init282 = load [256 x i128], [256 x i128]* %array_getter281, align 4
  %spice_inline_array283 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init282, [256 x i128]* %spice_inline_array283, align 4
  %add287 = add i128 %i.4, 6
  %array_getter288 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array110, i128 0, i128 %add287
  %real_init289 = load [256 x i128], [256 x i128]* %array_getter288, align 4
  %spice_inline_array290 = alloca [256 x i128], align 8
  store [256 x i128] %real_init289, [256 x i128]* %spice_inline_array290, align 4
  %call291 = call [256 x i128]* @long_add(i128 %0, i128 %add276, [256 x i128]* %spice_inline_array283, [256 x i128]* %spice_inline_array290)
  %imag_carry294 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array211, i128 0, i128 %i.4
  %21 = bitcast [256 x i128]* %imag_carry294 to i8*
  %22 = bitcast [256 x i128]* %call291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch295

loop.latch295:                                    ; preds = %if.exit
  %add297 = add i128 %i.4, 1
  %slt300 = icmp slt i128 %add297, 6
  br i1 %slt300, label %loop.body227, label %loop.exit301

loop.exit301:                                     ; preds = %loop.latch295
  br label %loop.body302

loop.body302:                                     ; preds = %loop.latch345, %loop.exit301
  %i.5 = phi i128 [ 0, %loop.exit301 ], [ %add347, %loop.latch345 ]
  %mul305 = mul i128 2, %1
  %add306 = add i128 %mul305, 2
  %mul308 = mul i128 2, %1
  %add309 = add i128 %mul308, 1
  %array_getter312 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array209, i128 0, i128 %i.5
  %real_carry313 = load [256 x i128], [256 x i128]* %array_getter312, align 4
  %spice_inline_array314 = alloca [256 x i128], align 8
  store [256 x i128] %real_carry313, [256 x i128]* %spice_inline_array314, align 4
  %array_getter317 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array110, i128 0, i128 %i.5
  %real_init318 = load [256 x i128], [256 x i128]* %array_getter317, align 4
  %spice_inline_array319 = alloca [256 x i128], align 8
  store [256 x i128] %real_init318, [256 x i128]* %spice_inline_array319, align 4
  %call320 = call [256 x i128]* @long_add_unequal(i128 %0, i128 %add306, i128 %add309, [256 x i128]* %spice_inline_array314, [256 x i128]* %spice_inline_array319)
  %real_final323 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array213, i128 0, i128 %i.5
  %23 = bitcast [256 x i128]* %real_final323 to i8*
  %24 = bitcast [256 x i128]* %call320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mul326 = mul i128 2, %1
  %add327 = add i128 %mul326, 2
  %mul329 = mul i128 2, %1
  %add330 = add i128 %mul329, 1
  %array_getter333 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array211, i128 0, i128 %i.5
  %imag_carry334 = load [256 x i128], [256 x i128]* %array_getter333, align 4
  %spice_inline_array335 = alloca [256 x i128], align 8
  store [256 x i128] %imag_carry334, [256 x i128]* %spice_inline_array335, align 4
  %array_getter338 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array111, i128 0, i128 %i.5
  %imag_init339 = load [256 x i128], [256 x i128]* %array_getter338, align 4
  %spice_inline_array340 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init339, [256 x i128]* %spice_inline_array340, align 4
  %call341 = call [256 x i128]* @long_add_unequal(i128 %0, i128 %add327, i128 %add330, [256 x i128]* %spice_inline_array335, [256 x i128]* %spice_inline_array340)
  %imag_final344 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array215, i128 0, i128 %i.5
  %25 = bitcast [256 x i128]* %imag_final344 to i8*
  %26 = bitcast [256 x i128]* %call341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch345

loop.latch345:                                    ; preds = %loop.body302
  %add347 = add i128 %i.5, 1
  %slt350 = icmp slt i128 %add347, 6
  br i1 %slt350, label %loop.body302, label %loop.exit351

loop.exit351:                                     ; preds = %loop.latch345
  %uniform_array353 = alloca [256 x [256 x [256 x i128]]], align 8
  %uniform_array355 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body356

loop.body356:                                     ; preds = %loop.latch385, %loop.exit351
  %i.6 = phi i128 [ 0, %loop.exit351 ], [ %add387, %loop.latch385 ]
  %add360 = add i128 %1, 3
  %array_getter363 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array213, i128 0, i128 %i.6
  %real_final364 = load [256 x i128], [256 x i128]* %array_getter363, align 4
  %spice_inline_array365 = alloca [256 x i128], align 8
  store [256 x i128] %real_final364, [256 x i128]* %spice_inline_array365, align 4
  %call367 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %add360, [256 x i128]* %spice_inline_array365, [256 x i128]* %4)
  %XYreal_temp370 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array353, i128 0, i128 %i.6
  %27 = bitcast [256 x [256 x i128]]* %XYreal_temp370 to i8*
  %28 = bitcast [256 x [256 x i128]]* %call367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %add374 = add i128 %1, 3
  %array_getter377 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array215, i128 0, i128 %i.6
  %imag_final378 = load [256 x i128], [256 x i128]* %array_getter377, align 4
  %spice_inline_array379 = alloca [256 x i128], align 8
  store [256 x i128] %imag_final378, [256 x i128]* %spice_inline_array379, align 4
  %call381 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %add374, [256 x i128]* %spice_inline_array379, [256 x i128]* %4)
  %XYimag_temp384 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array355, i128 0, i128 %i.6
  %29 = bitcast [256 x [256 x i128]]* %XYimag_temp384 to i8*
  %30 = bitcast [256 x [256 x i128]]* %call381 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch385

loop.latch385:                                    ; preds = %loop.body356
  %add387 = add i128 %i.6, 1
  %slt390 = icmp slt i128 %add387, 6
  br i1 %slt390, label %loop.body356, label %loop.exit391

loop.exit391:                                     ; preds = %loop.latch385
  br label %loop.body392

loop.body392:                                     ; preds = %loop.latch419, %loop.exit391
  %i.7 = phi i128 [ 0, %loop.exit391 ], [ %add421, %loop.latch419 ]
  br label %loop.body393

loop.body393:                                     ; preds = %loop.latch412, %loop.body392
  %j.1 = phi i128 [ 0, %loop.body392 ], [ %add414, %loop.latch412 ]
  %array_getter397 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array353, i128 0, i128 %i.7, i128 1, i128 %j.1
  %XYreal_temp398 = load i128, i128* %array_getter397, align 4
  %out402 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array39, i128 0, i128 %i.7, i128 0, i128 %j.1
  store i128 %XYreal_temp398, i128* %out402, align 4
  %array_getter406 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array355, i128 0, i128 %i.7, i128 1, i128 %j.1
  %XYimag_temp407 = load i128, i128* %array_getter406, align 4
  %out411 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array39, i128 0, i128 %i.7, i128 1, i128 %j.1
  store i128 %XYimag_temp407, i128* %out411, align 4
  br label %loop.latch412

loop.latch412:                                    ; preds = %loop.body393
  %add414 = add i128 %j.1, 1
  %slt417 = icmp slt i128 %add414, %1
  br i1 %slt417, label %loop.body393, label %loop.exit418

loop.exit418:                                     ; preds = %loop.latch412
  br label %loop.latch419

loop.latch419:                                    ; preds = %loop.exit418
  %add421 = add i128 %i.7, 1
  %slt424 = icmp slt i128 %add421, 6
  br i1 %slt424, label %loop.body392, label %loop.exit425

loop.exit425:                                     ; preds = %loop.latch419
  ret [256 x [256 x [256 x i128]]]* %uniform_array39
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

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i3 = call i128 @fn_intrinsic_utils_init()
  %carry5 = call i128 @fn_intrinsic_utils_init()
  %Y_is_zero6 = call i128 @fn_intrinsic_utils_init()
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
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add41, %loop.latch39 ]
  %Y_is_zero.0 = phi i128 [ 1, %loop.exit ], [ %Y_is_zero.1, %loop.latch39 ]
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_sum(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %2, i128 0, i128 %i.0
  %a4 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a4, [256 x [256 x i128]]* %spice_inline_array, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %i.0
  %b7 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b7, [256 x [256 x i128]]* %spice_inline_array8, align 4
  %call = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array8, [256 x i128]* %4)
  %out10 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.0
  %5 = bitcast [256 x [256 x i128]]* %out10 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x [256 x i128]]]* %uniform_array
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

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %j4 = call i128 @fn_intrinsic_utils_init()
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

define [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %5) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %m12 = call i128 @fn_intrinsic_utils_init()
  %j32 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %3, [256 x i128]* %2)
  %call38 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %4, [256 x i128]* %2)
  %call43 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %5, [256 x [256 x i128]]* %5, [256 x i128]* %2)
  %call49 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4, [256 x i128]* %2)
  %call55 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %5, [256 x i128]* %2)
  %call61 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %5, [256 x i128]* %2)
  %call67 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call49, [256 x [256 x i128]]* %5, [256 x i128]* %2)
  %uniform_array68 = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch81, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add83, %loop.latch81 ]
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %eq = icmp eq i128 %j.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body69
  %v373 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array68, i128 0, i128 %i.0, i128 %j.0
  store i128 1, i128* %v373, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body69
  %v377 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array68, i128 0, i128 %i.0, i128 %j.0
  store i128 0, i128* %v377, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %j.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body69, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.exit
  %add83 = add i128 %i.0, 1
  %slt85 = icmp slt i128 %add83, 2
  br i1 %slt85, label %loop.body, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch81
  %uniform_array87 = alloca [256 x [256 x i128]], align 8
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch110, %loop.exit86
  %i.1 = phi i128 [ 0, %loop.exit86 ], [ %add112, %loop.latch110 ]
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch103, %loop.body88
  %j.1 = phi i128 [ 0, %loop.body88 ], [ %add105, %loop.latch103 ]
  %eq93 = icmp eq i128 %j.1, 0
  br i1 %eq93, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.body89
  %three_v397 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %i.1, i128 %j.1
  store i128 3, i128* %three_v397, align 4
  br label %if.exit102

if.false91:                                       ; preds = %loop.body89
  %three_v3101 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %i.1, i128 %j.1
  store i128 0, i128* %three_v3101, align 4
  br label %if.exit102

if.exit102:                                       ; preds = %if.false91, %if.true90
  br label %loop.latch103

loop.latch103:                                    ; preds = %if.exit102
  %add105 = add i128 %j.1, 1
  %slt108 = icmp slt i128 %add105, %1
  br i1 %slt108, label %loop.body89, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.exit109
  %add112 = add i128 %i.1, 1
  %slt114 = icmp slt i128 %add112, 2
  br i1 %slt114, label %loop.body88, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  %uniform_array116 = alloca [256 x [256 x i128]], align 8
  br label %loop.body117

loop.body117:                                     ; preds = %loop.latch141, %loop.exit115
  %i.2 = phi i128 [ 0, %loop.exit115 ], [ %add143, %loop.latch141 ]
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch134, %loop.body117
  %j.2 = phi i128 [ 0, %loop.body117 ], [ %add136, %loop.latch134 ]
  %eq122 = icmp eq i128 %i.2, 1
  %eq124 = icmp eq i128 %j.2, 0
  %and = and i1 %eq122, %eq124
  br i1 %and, label %if.true119, label %if.false120

if.true119:                                       ; preds = %loop.body118
  %v6128 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array116, i128 0, i128 %i.2, i128 %j.2
  store i128 2, i128* %v6128, align 4
  br label %if.exit133

if.false120:                                      ; preds = %loop.body118
  %v6132 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array116, i128 0, i128 %i.2, i128 %j.2
  store i128 0, i128* %v6132, align 4
  br label %if.exit133

if.exit133:                                       ; preds = %if.false120, %if.true119
  br label %loop.latch134

loop.latch134:                                    ; preds = %if.exit133
  %add136 = add i128 %j.2, 1
  %slt139 = icmp slt i128 %add136, %1
  br i1 %slt139, label %loop.body118, label %loop.exit140

loop.exit140:                                     ; preds = %loop.latch134
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.exit140
  %add143 = add i128 %i.2, 1
  %slt145 = icmp slt i128 %add143, 2
  br i1 %slt145, label %loop.body117, label %loop.exit146

loop.exit146:                                     ; preds = %loop.latch141
  %call152 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call61, [256 x [256 x i128]]* %uniform_array68, [256 x i128]* %2)
  %call158 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %call, [256 x [256 x i128]]* %call152, [256 x i128]* %2)
  %call164 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call43, [256 x [256 x i128]]* %uniform_array68, [256 x i128]* %2)
  %call170 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %call164, [256 x [256 x i128]]* %call49, [256 x i128]* %2)
  %call176 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %call38, [256 x [256 x i128]]* %call55, [256 x i128]* %2)
  %call182 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %call, [256 x i128]* %2)
  %call188 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %call38, [256 x i128]* %2)
  %call194 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %5, [256 x [256 x i128]]* %call43, [256 x i128]* %2)
  %call200 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call188, [256 x [256 x i128]]* %uniform_array68, [256 x i128]* %2)
  %call206 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call194, [256 x [256 x i128]]* %uniform_array116, [256 x i128]* %2)
  %call212 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call67, [256 x [256 x i128]]* %uniform_array87, [256 x i128]* %2)
  %call218 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %call182, [256 x [256 x i128]]* %call200, [256 x i128]* %2)
  %call224 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %call206, [256 x [256 x i128]]* %call212, [256 x i128]* %2)
  %call230 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %call218, [256 x [256 x i128]]* %call224, [256 x i128]* %2)
  %call235 = call [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %call230, [256 x i128]* %2)
  %call241 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call158, [256 x [256 x i128]]* %call235, [256 x i128]* %2)
  %call247 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call170, [256 x [256 x i128]]* %call235, [256 x i128]* %2)
  %call253 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %call176, [256 x [256 x i128]]* %call235, [256 x i128]* %2)
  br label %loop.body254

loop.body254:                                     ; preds = %loop.latch283, %loop.exit146
  %i.3 = phi i128 [ 1, %loop.exit146 ], [ %add285, %loop.latch283 ]
  br label %loop.body255

loop.body255:                                     ; preds = %loop.latch277, %loop.body254
  %j.3 = phi i128 [ 0, %loop.body254 ], [ %add279, %loop.latch277 ]
  br label %loop.body256

loop.body256:                                     ; preds = %loop.latch271, %loop.body255
  %m.0 = phi i128 [ 0, %loop.body255 ], [ %add273, %loop.latch271 ]
  %sgt = icmp sgt i128 %i.3, 1
  br i1 %sgt, label %if.true257, label %if.false258

if.true257:                                       ; preds = %loop.body256
  %out264 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.3, i128 %j.3, i128 %m.0
  store i128 0, i128* %out264, align 4
  br label %if.exit270

if.false258:                                      ; preds = %loop.body256
  %out269 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.3, i128 %j.3, i128 %m.0
  store i128 0, i128* %out269, align 4
  br label %if.exit270

if.exit270:                                       ; preds = %if.false258, %if.true257
  br label %loop.latch271

loop.latch271:                                    ; preds = %if.exit270
  %add273 = add i128 %m.0, 1
  %slt275 = icmp slt i128 %add273, 50
  br i1 %slt275, label %loop.body256, label %loop.exit276

loop.exit276:                                     ; preds = %loop.latch271
  br label %loop.latch277

loop.latch277:                                    ; preds = %loop.exit276
  %add279 = add i128 %j.3, 1
  %slt281 = icmp slt i128 %add279, 2
  br i1 %slt281, label %loop.body255, label %loop.exit282

loop.exit282:                                     ; preds = %loop.latch277
  br label %loop.latch283

loop.latch283:                                    ; preds = %loop.exit282
  %add285 = add i128 %i.3, 2
  %slt287 = icmp slt i128 %add285, 6
  br i1 %slt287, label %loop.body254, label %loop.exit288

loop.exit288:                                     ; preds = %loop.latch283
  %out291 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0
  %6 = bitcast [256 x [256 x i128]]* %out291 to i8*
  %7 = bitcast [256 x [256 x i128]]* %call241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %out294 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2
  %8 = bitcast [256 x [256 x i128]]* %out294 to i8*
  %9 = bitcast [256 x [256 x i128]]* %call247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %out297 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 4
  %10 = bitcast [256 x [256 x i128]]* %out297 to i8*
  %11 = bitcast [256 x [256 x i128]]* %call253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %j1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
  %bitLength5 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add33, %loop.latch31 ]
  %bitLength.0 = phi i128 [ 0, %entry ], [ %bitLength.2, %loop.latch31 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add28, %loop.latch ]
  %bitLength.1 = phi i128 [ %bitLength.0, %loop.body ], [ %bitLength.2, %loop.latch ]
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
  %i.2 = phi i128 [ %sub, %loop.exit51 ], [ %sub79, %loop.latch77 ]
  %out.0 = phi [256 x [256 x i128]]* [ %uniform_array38, %loop.exit51 ], [ %out.2, %loop.latch77 ]
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x [256 x i128]]]* %3) {
entry:
  %j2 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
  %m7 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  %uniform_array18 = alloca [256 x [256 x [256 x i128]]], align 8
  %uniform_array19 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch88, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add90, %loop.latch88 ]
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch82, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add84, %loop.latch82 ]
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch, %loop.body20
  %m.0 = phi i128 [ 0, %loop.body20 ], [ %add80, %loop.latch ]
  %mul = mul i128 2, %i.0
  %add = add i128 %mul, 1
  %A25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %add, i128 %j.0, i128 %m.0
  store i128 0, i128* %A25, align 4
  %mul28 = mul i128 2, %i.0
  %add29 = add i128 %mul28, 1
  %B32 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array18, i128 0, i128 %add29, i128 %j.0, i128 %m.0
  store i128 0, i128* %B32, align 4
  %mul34 = mul i128 2, %i.0
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %mul34, i128 %j.0, i128 %m.0
  %a37 = load i128, i128* %array_getter, align 4
  %mul40 = mul i128 2, %i.0
  %A43 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %mul40, i128 %j.0, i128 %m.0
  store i128 %a37, i128* %A43, align 4
  %mul46 = mul i128 2, %i.0
  %add47 = add i128 %mul46, 1
  %array_getter50 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %add47, i128 %j.0, i128 %m.0
  %a51 = load i128, i128* %array_getter50, align 4
  %mul54 = mul i128 2, %i.0
  %B57 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array18, i128 0, i128 %mul54, i128 %j.0, i128 %m.0
  store i128 %a51, i128* %B57, align 4
  %mul60 = mul i128 2, %i.0
  %Bw63 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array19, i128 0, i128 %mul60, i128 %j.0, i128 %m.0
  store i128 0, i128* %Bw63, align 4
  %mul66 = mul i128 2, %i.0
  %add67 = add i128 %mul66, 1
  %array_getter70 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %3, i128 0, i128 %add67, i128 %j.0, i128 %m.0
  %a71 = load i128, i128* %array_getter70, align 4
  %mul74 = mul i128 2, %i.0
  %add75 = add i128 %mul74, 1
  %Bw78 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array19, i128 0, i128 %add75, i128 %j.0, i128 %m.0
  store i128 %a71, i128* %Bw78, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body21
  %add80 = add i128 %m.0, 1
  %slt = icmp slt i128 %add80, %1
  br i1 %slt, label %loop.body21, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.exit
  %add84 = add i128 %j.0, 1
  %slt86 = icmp slt i128 %add84, 2
  br i1 %slt86, label %loop.body20, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch82
  br label %loop.latch88

loop.latch88:                                     ; preds = %loop.exit87
  %add90 = add i128 %i.0, 1
  %slt92 = icmp slt i128 %add90, 3
  br i1 %slt92, label %loop.body, label %loop.exit93

loop.exit93:                                      ; preds = %loop.latch88
  %call = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]* %uniform_array, [256 x i128]* %2)
  %call102 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %uniform_array18, [256 x [256 x [256 x i128]]]* %uniform_array18, [256 x i128]* %2)
  %call108 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]* %uniform_array19, [256 x i128]* %2)
  %uniform_array109 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body110

loop.body110:                                     ; preds = %loop.latch142, %loop.exit93
  %i.1 = phi i128 [ 0, %loop.exit93 ], [ %add144, %loop.latch142 ]
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch136, %loop.body110
  %j.1 = phi i128 [ 0, %loop.body110 ], [ %add138, %loop.latch136 ]
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch129, %loop.body111
  %m.1 = phi i128 [ 0, %loop.body111 ], [ %add131, %loop.latch129 ]
  %eq = icmp eq i128 %i.1, 2
  %eq115 = icmp eq i128 %j.1, 0
  %and = and i1 %eq, %eq115
  %eq117 = icmp eq i128 %m.1, 0
  %and118 = and i1 %and, %eq117
  br i1 %and118, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body112
  %w2123 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array109, i128 0, i128 %i.1, i128 %j.1, i128 %m.1
  store i128 1, i128* %w2123, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body112
  %w2128 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array109, i128 0, i128 %i.1, i128 %j.1, i128 %m.1
  store i128 0, i128* %w2128, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch129

loop.latch129:                                    ; preds = %if.exit
  %add131 = add i128 %m.1, 1
  %slt134 = icmp slt i128 %add131, %1
  br i1 %slt134, label %loop.body112, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.exit135
  %add138 = add i128 %j.1, 1
  %slt140 = icmp slt i128 %add138, 2
  br i1 %slt140, label %loop.body111, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch136
  br label %loop.latch142

loop.latch142:                                    ; preds = %loop.exit141
  %add144 = add i128 %i.1, 1
  %slt146 = icmp slt i128 %add144, 6
  br i1 %slt146, label %loop.body110, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch142
  %call153 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %call102, [256 x [256 x [256 x i128]]]* %uniform_array109, [256 x i128]* %2)
  %call159 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %call, [256 x [256 x [256 x i128]]]* %call153, [256 x i128]* %2)
  %uniform_array160 = alloca [256 x [256 x i128]], align 8
  %uniform_array161 = alloca [256 x [256 x i128]], align 8
  %uniform_array162 = alloca [256 x [256 x i128]], align 8
  br label %loop.body163

loop.body163:                                     ; preds = %loop.latch199, %loop.exit147
  %i.2 = phi i128 [ 0, %loop.exit147 ], [ %add201, %loop.latch199 ]
  br label %loop.body164

loop.body164:                                     ; preds = %loop.latch192, %loop.body163
  %m.2 = phi i128 [ 0, %loop.body163 ], [ %add194, %loop.latch192 ]
  %array_getter168 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %call159, i128 0, i128 0, i128 %i.2, i128 %m.2
  %conjProd169 = load i128, i128* %array_getter168, align 4
  %a0173 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array160, i128 0, i128 %i.2, i128 %m.2
  store i128 %conjProd169, i128* %a0173, align 4
  %array_getter177 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %call159, i128 0, i128 2, i128 %i.2, i128 %m.2
  %conjProd178 = load i128, i128* %array_getter177, align 4
  %a1182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array161, i128 0, i128 %i.2, i128 %m.2
  store i128 %conjProd178, i128* %a1182, align 4
  %array_getter186 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %call159, i128 0, i128 4, i128 %i.2, i128 %m.2
  %conjProd187 = load i128, i128* %array_getter186, align 4
  %a2191 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array162, i128 0, i128 %i.2, i128 %m.2
  store i128 %conjProd187, i128* %a2191, align 4
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.body164
  %add194 = add i128 %m.2, 1
  %slt197 = icmp slt i128 %add194, %1
  br i1 %slt197, label %loop.body164, label %loop.exit198

loop.exit198:                                     ; preds = %loop.latch192
  br label %loop.latch199

loop.latch199:                                    ; preds = %loop.exit198
  %add201 = add i128 %i.2, 1
  %slt203 = icmp slt i128 %add201, 2
  br i1 %slt203, label %loop.body163, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch199
  %call211 = call [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x i128]]* %uniform_array160, [256 x [256 x i128]]* %uniform_array161, [256 x [256 x i128]]* %uniform_array162)
  %call217 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %call108, [256 x [256 x [256 x i128]]]* %call211, [256 x i128]* %2)
  ret [256 x [256 x [256 x i128]]]* %call217
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
