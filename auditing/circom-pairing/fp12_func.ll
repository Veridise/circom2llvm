; ModuleID = 'fp12_func.circom'
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
  %signed_long_to_short.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %signed_long_to_short.n.declare_arg, align 4
  %signed_long_to_short.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %signed_long_to_short.k.declare_arg, align 4
  %signed_long_to_short.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %X = alloca i128, align 8
  %X3 = call i128 @fn_intrinsic_utils_init()
  store i128 %X3, i128* %X, align 4
  %carry = alloca i128, align 8
  %carry4 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry4, i128* %carry, align 4
  %MAXL = alloca i128, align 8
  %MAXL5 = call i128 @fn_intrinsic_utils_init()
  store i128 %MAXL5, i128* %MAXL, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp6 = alloca [256 x i128], align 8
  store [256 x i128]* %temp6, [256 x i128]** %temp, align 8
  %borrow = alloca i128, align 8
  %borrow7 = call i128 @fn_intrinsic_utils_init()
  store i128 %borrow7, i128* %borrow, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array8 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array8, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i11 = load i128, i128* %i, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i11
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %k = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  %slt = icmp slt i128 %i14, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k15 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  store i128 %k15, i128* %i, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i18 = load i128, i128* %i, align 4
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  store i128 %add22, i128* %i, align 4
  %i23 = load i128, i128* %i, align 4
  %MAXL24 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i23, %MAXL24
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %n = load i128, i128* %signed_long_to_short.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %temp27 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %temp27, i128 0, i128 %i28
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %temp31 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %temp31, i128 0, i128 %i32
  %temp34 = load i128, i128* %array_getter33, align 4
  %X35 = load i128, i128* %X, align 4
  %mod = srem i128 %temp34, %X35
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i37 = load i128, i128* %i, align 4
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %i37
  store i128 %mod, i128* %out38, align 4
  %temp39 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i40 = load i128, i128* %i, align 4
  %add41 = add i128 %i40, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %temp39, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %temp44 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %temp44, i128 0, i128 %i45
  %temp47 = load i128, i128* %array_getter46, align 4
  %X48 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp47, %X48
  %add49 = add i128 %temp43, %sdiv
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i51 = load i128, i128* %i, align 4
  %add52 = add i128 %i51, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %temp54 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %temp54, i128 0, i128 %i55
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %X58 = load i128, i128* %X, align 4
  %add59 = add i128 %neg, %X58
  %sub = sub i128 %add59, 1
  %X60 = load i128, i128* %X, align 4
  %sdiv61 = sdiv i128 %sub, %X60
  store i128 %sdiv61, i128* %borrow, align 4
  %temp62 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %temp62, i128 0, i128 %i63
  %temp65 = load i128, i128* %array_getter64, align 4
  %borrow66 = load i128, i128* %borrow, align 4
  %X67 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow66, %X67
  %add68 = add i128 %temp65, %mul
  %ptr_getter69 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i70 = load i128, i128* %i, align 4
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter69, i128 0, i128 %i70
  store i128 %add68, i128* %out71, align 4
  %temp72 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %temp72, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %borrow77 = load i128, i128* %borrow, align 4
  %sub78 = sub i128 %temp76, %borrow77
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %i84 = load i128, i128* %i, align 4
  %add85 = add i128 %i84, 1
  store i128 %add85, i128* %i, align 4
  %i86 = load i128, i128* %i, align 4
  %MAXL87 = load i128, i128* %MAXL, align 4
  %slt88 = icmp slt i128 %i86, %MAXL87
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %temp92 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL93 = load i128, i128* %MAXL, align 4
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %temp92, i128 0, i128 %MAXL93
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %temp97 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL98 = load i128, i128* %MAXL, align 4
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %temp97, i128 0, i128 %MAXL98
  %temp100 = load i128, i128* %array_getter99, align 4
  %eq = icmp eq i128 %temp100, 0
  call void @fn_intrinsic_utils_assert(i1 %eq)
  %ptr_getter101 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL102 = load i128, i128* %MAXL, align 4
  %out103 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter101, i128 0, i128 %MAXL102
  store i128 0, i128* %out103, align 4
  %out104 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out104

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit105

if.exit105:                                       ; preds = %if.false91
  store i128 0, i128* %i, align 4
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch114, %if.exit105
  %a107 = load [256 x i128]*, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i108 = load i128, i128* %i, align 4
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %a107, i128 0, i128 %i108
  %a110 = load i128, i128* %array_getter109, align 4
  %ptr_getter111 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i112 = load i128, i128* %i, align 4
  %temp113 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter111, i128 0, i128 %i112
  store i128 %a110, i128* %temp113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body106
  %i115 = load i128, i128* %i, align 4
  %add116 = add i128 %i115, 1
  store i128 %add116, i128* %i, align 4
  %i117 = load i128, i128* %i, align 4
  %k118 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  %slt119 = icmp slt i128 %i117, %k118
  br i1 %slt119, label %loop.body106, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  %k121 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  store i128 %k121, i128* %i, align 4
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch126, %loop.exit120
  %ptr_getter123 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i124 = load i128, i128* %i, align 4
  %temp125 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter123, i128 0, i128 %i124
  store i128 0, i128* %temp125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body122
  %i127 = load i128, i128* %i, align 4
  %add128 = add i128 %i127, 1
  store i128 %add128, i128* %i, align 4
  %i129 = load i128, i128* %i, align 4
  %MAXL130 = load i128, i128* %MAXL, align 4
  %sle131 = icmp sle i128 %i129, %MAXL130
  br i1 %sle131, label %loop.body122, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  store i128 0, i128* %i, align 4
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch202, %loop.exit132
  %temp136 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %temp136, i128 0, i128 %i137
  %temp139 = load i128, i128* %array_getter138, align 4
  %slt140 = icmp slt i128 %temp139, 0
  br i1 %slt140, label %if.true134, label %if.false135

if.true134:                                       ; preds = %loop.body133
  %temp141 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i142 = load i128, i128* %i, align 4
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %temp141, i128 0, i128 %i142
  %temp144 = load i128, i128* %array_getter143, align 4
  %neg145 = sub i128 0, %temp144
  %X146 = load i128, i128* %X, align 4
  %sdiv147 = sdiv i128 %neg145, %X146
  store i128 %sdiv147, i128* %carry, align 4
  %temp148 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i149 = load i128, i128* %i, align 4
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %temp148, i128 0, i128 %i149
  %temp151 = load i128, i128* %array_getter150, align 4
  %carry152 = load i128, i128* %carry, align 4
  %X153 = load i128, i128* %X, align 4
  %mul154 = mul i128 %carry152, %X153
  %add155 = add i128 %temp151, %mul154
  %ptr_getter156 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i157 = load i128, i128* %i, align 4
  %out158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter156, i128 0, i128 %i157
  store i128 %add155, i128* %out158, align 4
  %temp159 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i160 = load i128, i128* %i, align 4
  %add161 = add i128 %i160, 1
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %temp159, i128 0, i128 %add161
  %temp163 = load i128, i128* %array_getter162, align 4
  %carry164 = load i128, i128* %carry, align 4
  %sub165 = sub i128 %temp163, %carry164
  %ptr_getter166 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i167 = load i128, i128* %i, align 4
  %add168 = add i128 %i167, 1
  %temp169 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter166, i128 0, i128 %add168
  store i128 %sub165, i128* %temp169, align 4
  br label %if.exit201

if.false135:                                      ; preds = %loop.body133
  %temp170 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i171 = load i128, i128* %i, align 4
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %temp170, i128 0, i128 %i171
  %temp173 = load i128, i128* %array_getter172, align 4
  %X174 = load i128, i128* %X, align 4
  %add175 = add i128 %temp173, %X174
  %sub176 = sub i128 %add175, 1
  %X177 = load i128, i128* %X, align 4
  %sdiv178 = sdiv i128 %sub176, %X177
  store i128 %sdiv178, i128* %borrow, align 4
  %temp179 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %temp179, i128 0, i128 %i180
  %temp182 = load i128, i128* %array_getter181, align 4
  %borrow183 = load i128, i128* %borrow, align 4
  %X184 = load i128, i128* %X, align 4
  %mul185 = mul i128 %borrow183, %X184
  %sub186 = sub i128 %temp182, %mul185
  %ptr_getter187 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i188 = load i128, i128* %i, align 4
  %out189 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter187, i128 0, i128 %i188
  store i128 %sub186, i128* %out189, align 4
  %temp190 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i191 = load i128, i128* %i, align 4
  %add192 = add i128 %i191, 1
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %temp190, i128 0, i128 %add192
  %temp194 = load i128, i128* %array_getter193, align 4
  %borrow195 = load i128, i128* %borrow, align 4
  %add196 = add i128 %temp194, %borrow195
  %ptr_getter197 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i198 = load i128, i128* %i, align 4
  %add199 = add i128 %i198, 1
  %temp200 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter197, i128 0, i128 %add199
  store i128 %add196, i128* %temp200, align 4
  br label %if.exit201

if.exit201:                                       ; preds = %if.false135, %if.true134
  br label %loop.latch202

loop.latch202:                                    ; preds = %if.exit201
  %i203 = load i128, i128* %i, align 4
  %add204 = add i128 %i203, 1
  store i128 %add204, i128* %i, align 4
  %i205 = load i128, i128* %i, align 4
  %MAXL206 = load i128, i128* %MAXL, align 4
  %slt207 = icmp slt i128 %i205, %MAXL206
  br i1 %slt207, label %loop.body133, label %loop.exit208

loop.exit208:                                     ; preds = %loop.latch202
  %temp209 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL210 = load i128, i128* %MAXL, align 4
  %array_getter211 = getelementptr inbounds [256 x i128], [256 x i128]* %temp209, i128 0, i128 %MAXL210
  %temp212 = load i128, i128* %array_getter211, align 4
  %eq213 = icmp eq i128 %temp212, 0
  call void @fn_intrinsic_utils_assert(i1 %eq213)
  %ptr_getter214 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL215 = load i128, i128* %MAXL, align 4
  %out216 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter214, i128 0, i128 %MAXL215
  store i128 1, i128* %out216, align 4
  %out217 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out217
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %long_scalar_mult.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_scalar_mult.n.declare_arg, align 4
  %long_scalar_mult.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_scalar_mult.k.declare_arg, align 4
  %long_scalar_mult.a.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_scalar_mult.a.declare_arg, align 4
  %long_scalar_mult.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_scalar_mult.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %temp = alloca i128, align 8
  %temp2 = call i128 @fn_intrinsic_utils_init()
  store i128 %temp2, i128* %temp, align 4
  %out = alloca [256 x i128]*, align 8
  %out3 = alloca [256 x i128], align 8
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i4 = load i128, i128* %i, align 4
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %out9 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out9, i128 0, i128 %i10
  %out11 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %long_scalar_mult.a.declare_arg, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_scalar_mult.b.declare_arg, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i12
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %a, %b14
  %add15 = add i128 %out11, %mul
  store i128 %add15, i128* %temp, align 4
  %temp16 = load i128, i128* %temp, align 4
  %n = load i128, i128* %long_scalar_mult.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp16, %lshift
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i18 = load i128, i128* %i, align 4
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 %mod, i128* %out19, align 4
  %out20 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %out20, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %temp25 = load i128, i128* %temp, align 4
  %n26 = load i128, i128* %long_scalar_mult.n.declare_arg, align 4
  %lshift27 = shl i128 1, %n26
  %sdiv = sdiv i128 %temp25, %lshift27
  %add28 = add i128 %out24, %sdiv
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i30 = load i128, i128* %i, align 4
  %add31 = add i128 %i30, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %i34 = load i128, i128* %i, align 4
  %add35 = add i128 %i34, 1
  store i128 %add35, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_scalar_mult.k.declare_arg, align 4
  %slt37 = icmp slt i128 %i36, %k
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %out39 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out39
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %max.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %max.a.declare_arg, align 4
  %max.b.declare_arg = alloca i128, align 8
  store i128 %1, i128* %max.b.declare_arg, align 4
  %a = load i128, i128* %max.a.declare_arg, align 4
  %b = load i128, i128* %max.b.declare_arg, align 4
  %sgt = icmp sgt i128 %a, %b
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %max.a.declare_arg, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %max.b.declare_arg, align 4
  ret i128 %b2
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_sub.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_sub.n.declare_arg, align 4
  %long_sub.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_sub.k.declare_arg, align 4
  %long_sub.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_sub.a.declare_arg, align 8
  %long_sub.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_sub.b.declare_arg, align 8
  %borrow = alloca [256 x i128]*, align 8
  %borrow1 = alloca [256 x i128], align 8
  store [256 x i128]* %borrow1, [256 x i128]** %borrow, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %diff = alloca [256 x i128]*, align 8
  %diff3 = alloca [256 x i128], align 8
  store [256 x i128]* %diff3, [256 x i128]** %diff, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array4 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array4, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i5 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i5, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i10
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %a43 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %a43, i128 0, i128 %i44
  %a46 = load i128, i128* %array_getter45, align 4
  %b47 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %b47, i128 0, i128 %i48
  %b50 = load i128, i128* %array_getter49, align 4
  %borrow51 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i52 = load i128, i128* %i, align 4
  %sub53 = sub i128 %i52, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow51, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %a13 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %a13, i128 0, i128 %i14
  %a16 = load i128, i128* %array_getter15, align 4
  %b17 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b17, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i21 = load i128, i128* %i, align 4
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i21
  store i128 %sub, i128* %diff22, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i24 = load i128, i128* %i, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 %i24
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %a26 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a26, i128 0, i128 %i27
  %a29 = load i128, i128* %array_getter28, align 4
  %b30 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %b30, i128 0, i128 %i31
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %n = load i128, i128* %long_sub.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub34, %lshift
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i36 = load i128, i128* %i, align 4
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %add, i128* %diff37, align 4
  %ptr_getter38 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i39 = load i128, i128* %i, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter38, i128 0, i128 %i39
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %a58 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %a58, i128 0, i128 %i59
  %a61 = load i128, i128* %array_getter60, align 4
  %b62 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %b62, i128 0, i128 %i63
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %borrow67 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i68 = load i128, i128* %i, align 4
  %sub69 = sub i128 %i68, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow67, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i74 = load i128, i128* %i, align 4
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 %sub72, i128* %diff75, align 4
  %ptr_getter76 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i77 = load i128, i128* %i, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter76, i128 0, i128 %i77
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %n79 = load i128, i128* %long_sub.n.declare_arg, align 4
  %lshift80 = shl i128 1, %n79
  %a81 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i82 = load i128, i128* %i, align 4
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %a81, i128 0, i128 %i82
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %b86 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %b86, i128 0, i128 %i87
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %borrow91 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i92 = load i128, i128* %i, align 4
  %sub93 = sub i128 %i92, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow91, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i98 = load i128, i128* %i, align 4
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %i98
  store i128 %sub96, i128* %diff99, align 4
  %ptr_getter100 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i101 = load i128, i128* %i, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter100, i128 0, i128 %i101
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %i105 = load i128, i128* %i, align 4
  %add106 = add i128 %i105, 1
  store i128 %add106, i128* %i, align 4
  %i107 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_sub.k.declare_arg, align 4
  %slt = icmp slt i128 %i107, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff108 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff108
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %min.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %min.a.declare_arg, align 4
  %min.b.declare_arg = alloca i128, align 8
  store i128 %1, i128* %min.b.declare_arg, align 4
  %a = load i128, i128* %min.a.declare_arg, align 4
  %b = load i128, i128* %min.b.declare_arg, align 4
  %slt = icmp slt i128 %a, %b
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %min.a.declare_arg, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %min.b.declare_arg, align 4
  ret i128 %b2
}

define [256 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %splitfn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitfn.in.declare_arg, align 4
  %splitfn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitfn.n.declare_arg, align 4
  %splitfn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitfn.m.declare_arg, align 4
  %var_inline_array = alloca [256 x i128], align 8
  %in = load i128, i128* %splitfn.in.declare_arg, align 4
  %n = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitfn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitfn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [256 x i128]* %var_inline_array
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_add.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add.n.declare_arg, align 4
  %long_add.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add.k.declare_arg, align 4
  %long_add.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add.a.declare_arg, align 8
  %long_add.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add.b.declare_arg, align 8
  %carry = alloca i128, align 8
  %carry1 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry1, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  store i128 %i3, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry4 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry4, [256 x i128]** %sumAndCarry, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_add.a.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add.b.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %carry10 = load i128, i128* %carry, align 4
  %add11 = add i128 %add, %carry10
  %n = load i128, i128* %long_add.n.declare_arg, align 4
  %n12 = load i128, i128* %long_add.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitFn(i128 %add11, i128 %n, i128 %n12)
  store [256 x i128]* %call, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry13 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry13, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i16 = load i128, i128* %i, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %sumAndCarry18 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry18, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  store i128 %sumAndCarry20, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  store i128 %add22, i128* %i, align 4
  %i23 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_add.k.declare_arg, align 4
  %slt = icmp slt i128 %i23, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry24 = load i128, i128* %carry, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k26 = load i128, i128* %long_add.k.declare_arg, align 4
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %k26
  store i128 %carry24, i128* %sum27, align 4
  %sum28 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum28
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_add_unequal.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add_unequal.n.declare_arg, align 4
  %long_add_unequal.k1.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add_unequal.k1.declare_arg, align 4
  %long_add_unequal.k2.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_add_unequal.k2.declare_arg, align 4
  %long_add_unequal.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %long_add_unequal.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add_unequal.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %carry = alloca i128, align 8
  %carry2 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry2, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum3 = alloca [256 x i128], align 8
  store [256 x i128]* %sum3, [256 x i128]** %sum, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry4 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry4, [256 x i128]** %sumAndCarry, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i5 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %long_add_unequal.k2.declare_arg, align 4
  %slt = icmp slt i128 %i5, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i6
  %a7 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add_unequal.b.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i8
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %carry11 = load i128, i128* %carry, align 4
  %add12 = add i128 %add, %carry11
  %n = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %n13 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitFn(i128 %add12, i128 %n, i128 %n13)
  store [256 x i128]* %call, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry14 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry14, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i17 = load i128, i128* %i, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i17
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  store i128 %sumAndCarry21, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a22 = load [256 x i128]*, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %a22, i128 0, i128 %i23
  %a25 = load i128, i128* %array_getter24, align 4
  %carry26 = load i128, i128* %carry, align 4
  %add27 = add i128 %a25, %carry26
  %n28 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %n29 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %call30 = call [256 x i128]* @SplitFn(i128 %add27, i128 %n28, i128 %n29)
  store [256 x i128]* %call30, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry31 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry31, i128 0, i128 0
  %sumAndCarry33 = load i128, i128* %array_getter32, align 4
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i35 = load i128, i128* %i, align 4
  %sum36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 %sumAndCarry33, i128* %sum36, align 4
  %sumAndCarry37 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry37, i128 0, i128 1
  %sumAndCarry39 = load i128, i128* %array_getter38, align 4
  store i128 %sumAndCarry39, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i40 = load i128, i128* %i, align 4
  %add41 = add i128 %i40, 1
  store i128 %add41, i128* %i, align 4
  %i42 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %slt43 = icmp slt i128 %i42, %k1
  br i1 %slt43, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry44 = load i128, i128* %carry, align 4
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k146 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %sum47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %k146
  store i128 %carry44, i128* %sum47, align 4
  %sum48 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum48
}

define i128 @log_ceil(i128 %0) {
entry:
  %log_ceil.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %log_ceil.n.declare_arg, align 4
  %n_temp = alloca i128, align 8
  %n_temp1 = call i128 @fn_intrinsic_utils_init()
  store i128 %n_temp1, i128* %n_temp, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %n = load i128, i128* %log_ceil.n.declare_arg, align 4
  store i128 %n, i128* %n_temp, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp3 = load i128, i128* %n_temp, align 4
  %eq = icmp eq i128 %n_temp3, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %i4 = load i128, i128* %i, align 4
  ret i128 %i4

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %n_temp5 = load i128, i128* %n_temp, align 4
  %sdiv = sdiv i128 %n_temp5, 2
  store i128 %sdiv, i128* %n_temp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %is_equal_fp2.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %is_equal_fp2.n.declare_arg, align 4
  %is_equal_fp2.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %is_equal_fp2.k.declare_arg, align 4
  %is_equal_fp2.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %is_equal_fp2.a.declare_arg, align 8
  %is_equal_fp2.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %is_equal_fp2.b.declare_arg, align 8
  %idx = alloca i128, align 8
  %idx1 = call i128 @fn_intrinsic_utils_init()
  store i128 %idx1, i128* %idx, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch13, %entry
  store i128 0, i128* %idx, align 4
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %is_equal_fp2.a.declare_arg, align 8
  %i4 = load i128, i128* %i, align 4
  %idx5 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i4, i128 %idx5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %is_equal_fp2.b.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %idx8 = load i128, i128* %idx, align 4
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i7, i128 %idx8
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
  %idx11 = load i128, i128* %idx, align 4
  %add = add i128 %idx11, 1
  store i128 %add, i128* %idx, align 4
  %idx12 = load i128, i128* %idx, align 4
  %k = load i128, i128* %is_equal_fp2.k.declare_arg, align 4
  %slt = icmp slt i128 %idx12, %k
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.exit
  %i14 = load i128, i128* %i, align 4
  %add15 = add i128 %i14, 1
  store i128 %add15, i128* %i, align 4
  %i16 = load i128, i128* %i, align 4
  %slt17 = icmp slt i128 %i16, 2
  br i1 %slt17, label %loop.body, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  ret i128 1
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %long_is_zero.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_is_zero.k.declare_arg, align 4
  %long_is_zero.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %long_is_zero.a.declare_arg, align 8
  %idx = alloca i128, align 8
  %idx1 = call i128 @fn_intrinsic_utils_init()
  store i128 %idx1, i128* %idx, align 4
  store i128 0, i128* %idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_is_zero.a.declare_arg, align 8
  %idx2 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %idx2
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
  %idx4 = load i128, i128* %idx, align 4
  %add = add i128 %idx4, 1
  store i128 %add, i128* %idx, align 4
  %idx5 = load i128, i128* %idx, align 4
  %k = load i128, i128* %long_is_zero.k.declare_arg, align 4
  %slt = icmp slt i128 %idx5, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %signed_fp2_mult_w6.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %signed_fp2_mult_w6.k.declare_arg, align 4
  %signed_fp2_mult_w6.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %signed_fp2_mult_w6.a.declare_arg, align 8
  %signed_fp2_mult_w6.xi0.declare_arg = alloca i128, align 8
  store i128 %2, i128* %signed_fp2_mult_w6.xi0.declare_arg, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %signed_fp2_mult_w6.a.declare_arg, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 %i3
  %a4 = load i128, i128* %array_getter, align 4
  %XI0 = load i128, i128* %signed_fp2_mult_w6.xi0.declare_arg, align 4
  %mul = mul i128 %a4, %XI0
  %a5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %signed_fp2_mult_w6.a.declare_arg, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a5, i128 0, i128 1, i128 %i6
  %a8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %mul, %a8
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i9 = load i128, i128* %i, align 4
  %out10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0, i128 %i9
  store i128 %sub, i128* %out10, align 4
  %a11 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %signed_fp2_mult_w6.a.declare_arg, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a11, i128 0, i128 0, i128 %i12
  %a14 = load i128, i128* %array_getter13, align 4
  %a15 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %signed_fp2_mult_w6.a.declare_arg, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a15, i128 0, i128 1, i128 %i16
  %a18 = load i128, i128* %array_getter17, align 4
  %XI019 = load i128, i128* %signed_fp2_mult_w6.xi0.declare_arg, align 4
  %mul20 = mul i128 %a18, %XI019
  %add = add i128 %a14, %mul20
  %ptr_getter21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i22 = load i128, i128* %i, align 4
  %out23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter21, i128 0, i128 1, i128 %i22
  store i128 %add, i128* %out23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i24 = load i128, i128* %i, align 4
  %add25 = add i128 %i24, 1
  store i128 %add25, i128* %i, align 4
  %i26 = load i128, i128* %i, align 4
  %k = load i128, i128* %signed_fp2_mult_w6.k.declare_arg, align 4
  %slt = icmp slt i128 %i26, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out27 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out27
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %long_add4.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add4.n.declare_arg, align 4
  %long_add4.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add4.k.declare_arg, align 4
  %long_add4.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add4.a.declare_arg, align 8
  %long_add4.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add4.b.declare_arg, align 8
  %long_add4.c.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add4.c.declare_arg, align 8
  %long_add4.d.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %5, [256 x i128]** %long_add4.d.declare_arg, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry1 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry1, [256 x i128]** %sumAndCarry, align 8
  %carry = alloca i128, align 8
  %carry2 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry2, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum3 = alloca [256 x i128], align 8
  store [256 x i128]* %sum3, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_add4.a.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add4.b.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %c = load [256 x i128]*, [256 x i128]** %long_add4.c.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i10
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %d = load [256 x i128]*, [256 x i128]** %long_add4.d.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i14
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %carry18 = load i128, i128* %carry, align 4
  %add19 = add i128 %add17, %carry18
  %n = load i128, i128* %long_add4.n.declare_arg, align 4
  %n20 = load i128, i128* %long_add4.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitFn(i128 %add19, i128 %n, i128 %n20)
  store [256 x i128]* %call, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry21 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry21, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i24 = load i128, i128* %i, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i24
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %sumAndCarry26 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry26, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  store i128 %sumAndCarry28, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i29 = load i128, i128* %i, align 4
  %add30 = add i128 %i29, 1
  store i128 %add30, i128* %i, align 4
  %i31 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_add4.k.declare_arg, align 4
  %slt = icmp slt i128 %i31, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry32 = load i128, i128* %carry, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k34 = load i128, i128* %long_add4.k.declare_arg, align 4
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %k34
  store i128 %carry32, i128* %sum35, align 4
  %sum36 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum36
}

define [256 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %splitthreefn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitthreefn.in.declare_arg, align 4
  %splitthreefn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitthreefn.n.declare_arg, align 4
  %splitthreefn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitthreefn.m.declare_arg, align 4
  %splitthreefn.k.declare_arg = alloca i128, align 8
  store i128 %3, i128* %splitthreefn.k.declare_arg, align 4
  %var_inline_array = alloca [256 x i128], align 8
  %in = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitthreefn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %in8 = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n9 = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %m10 = load i128, i128* %splitthreefn.m.declare_arg, align 4
  %add = add i128 %n9, %m10
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %in8, %lshift11
  %k = load i128, i128* %splitthreefn.k.declare_arg, align 4
  %lshift13 = shl i128 1, %k
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [256 x i128]* %var_inline_array
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_gt.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_gt.n.declare_arg, align 4
  %long_gt.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_gt.k.declare_arg, align 4
  %long_gt.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_gt.a.declare_arg, align 8
  %long_gt.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %k = load i128, i128* %long_gt.k.declare_arg, align 4
  %sub = sub i128 %k, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_gt.a.declare_arg, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i4
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %a9 = load [256 x i128]*, [256 x i128]** %long_gt.a.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %a9, i128 0, i128 %i10
  %a12 = load i128, i128* %array_getter11, align 4
  %b13 = load [256 x i128]*, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %b13, i128 0, i128 %i14
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
  %i18 = load i128, i128* %i, align 4
  %sub19 = sub i128 %i18, 1
  store i128 %sub19, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i20, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %get_fp_sgn0.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %0, [256 x i128]** %get_fp_sgn0.a.declare_arg, align 8
  %a = load [256 x i128]*, [256 x i128]** %get_fp_sgn0.a.declare_arg, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %prod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod.n.declare_arg, align 4
  %prod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod.k.declare_arg, align 4
  %prod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %prod.a.declare_arg, align 8
  %prod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %prod.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %out = alloca [256 x i128]*, align 8
  %out3 = alloca [256 x i128], align 8
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val4 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val4, [256 x i128]** %prod_val, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry5 = alloca [256 x i128], align 8
  store [256 x i128]* %carry5, [256 x i128]** %carry, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split6, [256 x [256 x i128]]** %split, align 8
  %a_idx = alloca i128, align 8
  %a_idx7 = call i128 @fn_intrinsic_utils_init()
  store i128 %a_idx7, i128* %a_idx, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i8 = load i128, i128* %i, align 4
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i8
  store i128 0, i128* %prod_val9, align 4
  %i10 = load i128, i128* %i, align 4
  %k = load i128, i128* %prod.k.declare_arg, align 4
  %slt = icmp slt i128 %i10, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %i29 = load i128, i128* %i, align 4
  %k30 = load i128, i128* %prod.k.declare_arg, align 4
  %sub31 = sub i128 %i29, %k30
  %add32 = add i128 %sub31, 1
  store i128 %add32, i128* %a_idx, align 4
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %prod_val12 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val12, i128 0, i128 %i13
  %prod_val14 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %prod.a.declare_arg, align 8
  %a_idx15 = load i128, i128* %a_idx, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx15
  %a17 = load i128, i128* %array_getter16, align 4
  %b = load [256 x i128]*, [256 x i128]** %prod.b.declare_arg, align 8
  %i18 = load i128, i128* %i, align 4
  %a_idx19 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i18, %a_idx19
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i23 = load i128, i128* %i, align 4
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %a_idx25 = load i128, i128* %a_idx, align 4
  %add26 = add i128 %a_idx25, 1
  store i128 %add26, i128* %a_idx, align 4
  %a_idx27 = load i128, i128* %a_idx, align 4
  %i28 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx27, %i28
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %prod_val34 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val34, i128 0, i128 %i35
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %a38 = load [256 x i128]*, [256 x i128]** %prod.a.declare_arg, align 8
  %a_idx39 = load i128, i128* %a_idx, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %a38, i128 0, i128 %a_idx39
  %a41 = load i128, i128* %array_getter40, align 4
  %b42 = load [256 x i128]*, [256 x i128]** %prod.b.declare_arg, align 8
  %i43 = load i128, i128* %i, align 4
  %a_idx44 = load i128, i128* %a_idx, align 4
  %sub45 = sub i128 %i43, %a_idx44
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %b42, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i51 = load i128, i128* %i, align 4
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %i51
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %a_idx54 = load i128, i128* %a_idx, align 4
  %add55 = add i128 %a_idx54, 1
  store i128 %add55, i128* %a_idx, align 4
  %a_idx56 = load i128, i128* %a_idx, align 4
  %k57 = load i128, i128* %prod.k.declare_arg, align 4
  %slt58 = icmp slt i128 %a_idx56, %k57
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %i61 = load i128, i128* %i, align 4
  %add62 = add i128 %i61, 1
  store i128 %add62, i128* %i, align 4
  %i63 = load i128, i128* %i, align 4
  %k64 = load i128, i128* %prod.k.declare_arg, align 4
  %mul65 = mul i128 2, %k64
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %i63, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array69, [256 x i128]** %out, align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array70, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %prod_val72 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val72, i128 0, i128 %i73
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %n = load i128, i128* %prod.n.declare_arg, align 4
  %n76 = load i128, i128* %prod.n.declare_arg, align 4
  %n77 = load i128, i128* %prod.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %n, i128 %n76, i128 %n77)
  %ptr_getter78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i79 = load i128, i128* %i, align 4
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter78, i128 0, i128 %i79
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %k85 = load i128, i128* %prod.k.declare_arg, align 4
  %mul86 = mul i128 2, %k85
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %i84, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array90, [256 x i128]** %carry, align 8
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %split93 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split93, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %k100 = load i128, i128* %prod.k.declare_arg, align 4
  %mul101 = mul i128 2, %k100
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %split103 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split103, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %split106 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split106, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %n110 = load i128, i128* %prod.n.declare_arg, align 4
  %n111 = load i128, i128* %prod.n.declare_arg, align 4
  %call112 = call [256 x i128]* @SplitFn(i128 %add109, i128 %n110, i128 %n111)
  store [256 x i128]* %call112, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry113 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry113, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %sumAndCarry118 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry118, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter121, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %k126 = load i128, i128* %prod.k.declare_arg, align 4
  %mul127 = mul i128 2, %k126
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  store i128 2, i128* %i, align 4
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit202

loop.body130:                                     ; preds = %loop.latch168, %if.true124
  %split131 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split131, i128 0, i128 %i132, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %split135 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i136 = load i128, i128* %i, align 4
  %sub137 = sub i128 %i136, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split135, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %split141 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i142 = load i128, i128* %i, align 4
  %sub143 = sub i128 %i142, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split141, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %carry147 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i148 = load i128, i128* %i, align 4
  %sub149 = sub i128 %i148, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %carry147, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %n153 = load i128, i128* %prod.n.declare_arg, align 4
  %n154 = load i128, i128* %prod.n.declare_arg, align 4
  %call155 = call [256 x i128]* @SplitFn(i128 %add152, i128 %n153, i128 %n154)
  store [256 x i128]* %call155, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry156 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry156, i128 0, i128 0
  %sumAndCarry158 = load i128, i128* %array_getter157, align 4
  %ptr_getter159 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i160 = load i128, i128* %i, align 4
  %out161 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter159, i128 0, i128 %i160
  store i128 %sumAndCarry158, i128* %out161, align 4
  %sumAndCarry162 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry162, i128 0, i128 1
  %sumAndCarry164 = load i128, i128* %array_getter163, align 4
  %ptr_getter165 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i166 = load i128, i128* %i, align 4
  %carry167 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter165, i128 0, i128 %i166
  store i128 %sumAndCarry164, i128* %carry167, align 4
  br label %loop.latch168

loop.latch168:                                    ; preds = %loop.body130
  %i169 = load i128, i128* %i, align 4
  %add170 = add i128 %i169, 1
  store i128 %add170, i128* %i, align 4
  %i171 = load i128, i128* %i, align 4
  %k172 = load i128, i128* %prod.k.declare_arg, align 4
  %mul173 = mul i128 2, %k172
  %sub174 = sub i128 %mul173, 1
  %slt175 = icmp slt i128 %i171, %sub174
  br i1 %slt175, label %loop.body130, label %loop.exit176

loop.exit176:                                     ; preds = %loop.latch168
  %split177 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k178 = load i128, i128* %prod.k.declare_arg, align 4
  %mul179 = mul i128 2, %k178
  %sub180 = sub i128 %mul179, 2
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split177, i128 0, i128 %sub180, i128 1
  %split182 = load i128, i128* %array_getter181, align 4
  %split183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k184 = load i128, i128* %prod.k.declare_arg, align 4
  %mul185 = mul i128 2, %k184
  %sub186 = sub i128 %mul185, 3
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split183, i128 0, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %split182, %split188
  %carry190 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k191 = load i128, i128* %prod.k.declare_arg, align 4
  %mul192 = mul i128 2, %k191
  %sub193 = sub i128 %mul192, 2
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %carry190, i128 0, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %ptr_getter197 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k198 = load i128, i128* %prod.k.declare_arg, align 4
  %mul199 = mul i128 2, %k198
  %sub200 = sub i128 %mul199, 1
  %out201 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter197, i128 0, i128 %sub200
  store i128 %add196, i128* %out201, align 4
  br label %if.exit202

if.exit202:                                       ; preds = %if.false125, %loop.exit176
  %out203 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out203
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %prod2d.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod2d.n.declare_arg, align 4
  %prod2d.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod2d.k.declare_arg, align 4
  %prod2d.l.declare_arg = alloca i128, align 8
  store i128 %2, i128* %prod2d.l.declare_arg, align 4
  %prod2d.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %prod2d.a.declare_arg, align 8
  %prod2d.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %prod2d.b.declare_arg, align 8
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val1, [256 x [256 x i128]]** %prod_val, align 8
  %i1 = alloca i128, align 8
  %i12 = call i128 @fn_intrinsic_utils_init()
  store i128 %i12, i128* %i1, align 4
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry3, [256 x [256 x i128]]** %sumAndCarry, align 8
  %i2 = alloca i128, align 8
  %i24 = call i128 @fn_intrinsic_utils_init()
  store i128 %i24, i128* %i2, align 4
  %j1 = alloca i128, align 8
  %j15 = call i128 @fn_intrinsic_utils_init()
  store i128 %j15, i128* %j1, align 4
  %j2 = alloca i128, align 8
  %j26 = call i128 @fn_intrinsic_utils_init()
  store i128 %j26, i128* %j2, align 4
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry7, [256 x [256 x i128]]** %carry, align 8
  %i = alloca i128, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  store i128 %i8, i128* %i, align 4
  %j = alloca i128, align 8
  %j9 = call i128 @fn_intrinsic_utils_init()
  store i128 %j9, i128* %j, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out10, [256 x [256 x i128]]** %out, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split11 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split11, [256 x [256 x [256 x i128]]]** %split, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j13 = load i128, i128* %j, align 4
  %i14 = load i128, i128* %i, align 4
  %prod_val15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j13, i128 %i14
  store i128 0, i128* %prod_val15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %j16 = load i128, i128* %j, align 4
  %add = add i128 %j16, 1
  store i128 %add, i128* %j, align 4
  %j17 = load i128, i128* %j, align 4
  %l = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j17, %sub
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul22 = mul i128 2, %k
  %sub23 = sub i128 %mul22, 1
  %slt24 = icmp slt i128 %i21, %sub23
  br i1 %slt24, label %loop.body, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch18
  store i128 0, i128* %i1, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch77, %loop.exit25
  store i128 0, i128* %i2, align 4
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch70, %loop.body26
  store i128 0, i128* %j1, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch63, %loop.body27
  store i128 0, i128* %j2, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch56, %loop.body28
  %prod_val30 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j131 = load i128, i128* %j1, align 4
  %j232 = load i128, i128* %j2, align 4
  %add33 = add i128 %j131, %j232
  %i134 = load i128, i128* %i1, align 4
  %i235 = load i128, i128* %i2, align 4
  %add36 = add i128 %i134, %i235
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val30, i128 0, i128 %add33, i128 %add36
  %prod_val37 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod2d.a.declare_arg, align 8
  %j138 = load i128, i128* %j1, align 4
  %i139 = load i128, i128* %i1, align 4
  %array_getter40 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j138, i128 %i139
  %a41 = load i128, i128* %array_getter40, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod2d.b.declare_arg, align 8
  %j242 = load i128, i128* %j2, align 4
  %i243 = load i128, i128* %i2, align 4
  %array_getter44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j242, i128 %i243
  %b45 = load i128, i128* %array_getter44, align 4
  %mul46 = mul i128 %a41, %b45
  %add47 = add i128 %prod_val37, %mul46
  %ptr_getter48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j149 = load i128, i128* %j1, align 4
  %j250 = load i128, i128* %j2, align 4
  %add51 = add i128 %j149, %j250
  %i152 = load i128, i128* %i1, align 4
  %i253 = load i128, i128* %i2, align 4
  %add54 = add i128 %i152, %i253
  %prod_val55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter48, i128 0, i128 %add51, i128 %add54
  store i128 %add47, i128* %prod_val55, align 4
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body29
  %j257 = load i128, i128* %j2, align 4
  %add58 = add i128 %j257, 1
  store i128 %add58, i128* %j2, align 4
  %j259 = load i128, i128* %j2, align 4
  %l60 = load i128, i128* %prod2d.l.declare_arg, align 4
  %slt61 = icmp slt i128 %j259, %l60
  br i1 %slt61, label %loop.body29, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.exit62
  %j164 = load i128, i128* %j1, align 4
  %add65 = add i128 %j164, 1
  store i128 %add65, i128* %j1, align 4
  %j166 = load i128, i128* %j1, align 4
  %l67 = load i128, i128* %prod2d.l.declare_arg, align 4
  %slt68 = icmp slt i128 %j166, %l67
  br i1 %slt68, label %loop.body28, label %loop.exit69

loop.exit69:                                      ; preds = %loop.latch63
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.exit69
  %i271 = load i128, i128* %i2, align 4
  %add72 = add i128 %i271, 1
  store i128 %add72, i128* %i2, align 4
  %i273 = load i128, i128* %i2, align 4
  %k74 = load i128, i128* %prod2d.k.declare_arg, align 4
  %slt75 = icmp slt i128 %i273, %k74
  br i1 %slt75, label %loop.body27, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch70
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.exit76
  %i178 = load i128, i128* %i1, align 4
  %add79 = add i128 %i178, 1
  store i128 %add79, i128* %i1, align 4
  %i180 = load i128, i128* %i1, align 4
  %k81 = load i128, i128* %prod2d.k.declare_arg, align 4
  %slt82 = icmp slt i128 %i180, %k81
  br i1 %slt82, label %loop.body26, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  %uniform_array84 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array84, [256 x [256 x i128]]** %out, align 8
  %uniform_array85 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array85, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch108, %loop.exit83
  store i128 0, i128* %i, align 4
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch99, %loop.body86
  %prod_val88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j89 = load i128, i128* %j, align 4
  %i90 = load i128, i128* %i, align 4
  %array_getter91 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val88, i128 0, i128 %j89, i128 %i90
  %prod_val92 = load i128, i128* %array_getter91, align 4
  %n = load i128, i128* %prod2d.n.declare_arg, align 4
  %n93 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n94 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val92, i128 %n, i128 %n93, i128 %n94)
  %ptr_getter95 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j96 = load i128, i128* %j, align 4
  %i97 = load i128, i128* %i, align 4
  %split98 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter95, i128 0, i128 %j96, i128 %i97
  %5 = bitcast [256 x i128]* %split98 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body87
  %i100 = load i128, i128* %i, align 4
  %add101 = add i128 %i100, 1
  store i128 %add101, i128* %i, align 4
  %i102 = load i128, i128* %i, align 4
  %k103 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul104 = mul i128 2, %k103
  %sub105 = sub i128 %mul104, 1
  %slt106 = icmp slt i128 %i102, %sub105
  br i1 %slt106, label %loop.body87, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch99
  br label %loop.latch108

loop.latch108:                                    ; preds = %loop.exit107
  %j109 = load i128, i128* %j, align 4
  %add110 = add i128 %j109, 1
  store i128 %add110, i128* %j, align 4
  %j111 = load i128, i128* %j, align 4
  %l112 = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul113 = mul i128 2, %l112
  %sub114 = sub i128 %mul113, 1
  %slt115 = icmp slt i128 %j111, %sub114
  br i1 %slt115, label %loop.body86, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch108
  %uniform_array117 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array117, [256 x [256 x i128]]** %carry, align 8
  %uniform_array118 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array118, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body119

loop.body119:                                     ; preds = %loop.latch257, %loop.exit116
  %ptr_getter120 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j121 = load i128, i128* %j, align 4
  %carry122 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter120, i128 0, i128 %j121, i128 0
  store i128 0, i128* %carry122, align 4
  %split123 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j124 = load i128, i128* %j, align 4
  %array_getter125 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split123, i128 0, i128 %j124, i128 0, i128 0
  %split126 = load i128, i128* %array_getter125, align 4
  %ptr_getter127 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j128 = load i128, i128* %j, align 4
  %out129 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter127, i128 0, i128 %j128, i128 0
  store i128 %split126, i128* %out129, align 4
  %k130 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul131 = mul i128 2, %k130
  %sub132 = sub i128 %mul131, 1
  %sgt = icmp sgt i128 %sub132, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body119
  %split133 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j134 = load i128, i128* %j, align 4
  %array_getter135 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split133, i128 0, i128 %j134, i128 0, i128 1
  %split136 = load i128, i128* %array_getter135, align 4
  %split137 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j139 = load i128, i128* %j, align 4
  %array_getter140 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split137, i128 0, i128 %j139, i128 1, i128 0
  %split141 = load i128, i128* %array_getter140, align 4
  %add142 = add i128 %split136, %split141
  %n143 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n144 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call145 = call [256 x i128]* @SplitFn(i128 %add142, i128 %n143, i128 %n144)
  %ptr_getter146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j147 = load i128, i128* %j, align 4
  %sumAndCarry148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter146, i128 0, i128 %j147
  %7 = bitcast [256 x i128]* %sumAndCarry148 to i8*
  %8 = bitcast [256 x i128]* %call145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry149 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j150 = load i128, i128* %j, align 4
  %array_getter151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry149, i128 0, i128 %j150, i128 0
  %sumAndCarry152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j154 = load i128, i128* %j, align 4
  %out155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter153, i128 0, i128 %j154, i128 1
  store i128 %sumAndCarry152, i128* %out155, align 4
  %sumAndCarry156 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j157 = load i128, i128* %j, align 4
  %array_getter158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry156, i128 0, i128 %j157, i128 1
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %ptr_getter160 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j161 = load i128, i128* %j, align 4
  %carry162 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter160, i128 0, i128 %j161, i128 1
  store i128 %sumAndCarry159, i128* %carry162, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body119
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k165 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul166 = mul i128 2, %k165
  %sub167 = sub i128 %mul166, 1
  %sgt168 = icmp sgt i128 %sub167, 2
  br i1 %sgt168, label %if.true163, label %if.false164

if.true163:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body169

if.false164:                                      ; preds = %if.exit
  br label %if.exit256

loop.body169:                                     ; preds = %loop.latch218, %if.true163
  %split170 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j171 = load i128, i128* %j, align 4
  %i172 = load i128, i128* %i, align 4
  %array_getter173 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split170, i128 0, i128 %j171, i128 %i172, i128 0
  %split174 = load i128, i128* %array_getter173, align 4
  %split175 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j176 = load i128, i128* %j, align 4
  %i177 = load i128, i128* %i, align 4
  %sub178 = sub i128 %i177, 1
  %array_getter179 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split175, i128 0, i128 %j176, i128 %sub178, i128 1
  %split180 = load i128, i128* %array_getter179, align 4
  %add181 = add i128 %split174, %split180
  %split182 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j183 = load i128, i128* %j, align 4
  %i184 = load i128, i128* %i, align 4
  %sub185 = sub i128 %i184, 2
  %array_getter186 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split182, i128 0, i128 %j183, i128 %sub185, i128 2
  %split187 = load i128, i128* %array_getter186, align 4
  %add188 = add i128 %add181, %split187
  %carry189 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j190 = load i128, i128* %j, align 4
  %i191 = load i128, i128* %i, align 4
  %sub192 = sub i128 %i191, 1
  %array_getter193 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry189, i128 0, i128 %j190, i128 %sub192
  %carry194 = load i128, i128* %array_getter193, align 4
  %add195 = add i128 %add188, %carry194
  %n196 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n197 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call198 = call [256 x i128]* @SplitFn(i128 %add195, i128 %n196, i128 %n197)
  %ptr_getter199 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j200 = load i128, i128* %j, align 4
  %sumAndCarry201 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter199, i128 0, i128 %j200
  %9 = bitcast [256 x i128]* %sumAndCarry201 to i8*
  %10 = bitcast [256 x i128]* %call198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry202 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j203 = load i128, i128* %j, align 4
  %array_getter204 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry202, i128 0, i128 %j203, i128 0
  %sumAndCarry205 = load i128, i128* %array_getter204, align 4
  %ptr_getter206 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j207 = load i128, i128* %j, align 4
  %i208 = load i128, i128* %i, align 4
  %out209 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter206, i128 0, i128 %j207, i128 %i208
  store i128 %sumAndCarry205, i128* %out209, align 4
  %sumAndCarry210 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j211 = load i128, i128* %j, align 4
  %array_getter212 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry210, i128 0, i128 %j211, i128 1
  %sumAndCarry213 = load i128, i128* %array_getter212, align 4
  %ptr_getter214 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j215 = load i128, i128* %j, align 4
  %i216 = load i128, i128* %i, align 4
  %carry217 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter214, i128 0, i128 %j215, i128 %i216
  store i128 %sumAndCarry213, i128* %carry217, align 4
  br label %loop.latch218

loop.latch218:                                    ; preds = %loop.body169
  %i219 = load i128, i128* %i, align 4
  %add220 = add i128 %i219, 1
  store i128 %add220, i128* %i, align 4
  %i221 = load i128, i128* %i, align 4
  %k222 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul223 = mul i128 2, %k222
  %sub224 = sub i128 %mul223, 1
  %slt225 = icmp slt i128 %i221, %sub224
  br i1 %slt225, label %loop.body169, label %loop.exit226

loop.exit226:                                     ; preds = %loop.latch218
  %split227 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j228 = load i128, i128* %j, align 4
  %k229 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul230 = mul i128 2, %k229
  %sub231 = sub i128 %mul230, 2
  %array_getter232 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split227, i128 0, i128 %j228, i128 %sub231, i128 1
  %split233 = load i128, i128* %array_getter232, align 4
  %split234 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j235 = load i128, i128* %j, align 4
  %k236 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul237 = mul i128 2, %k236
  %sub238 = sub i128 %mul237, 3
  %array_getter239 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split234, i128 0, i128 %j235, i128 %sub238, i128 2
  %split240 = load i128, i128* %array_getter239, align 4
  %add241 = add i128 %split233, %split240
  %carry242 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j243 = load i128, i128* %j, align 4
  %k244 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul245 = mul i128 2, %k244
  %sub246 = sub i128 %mul245, 2
  %array_getter247 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry242, i128 0, i128 %j243, i128 %sub246
  %carry248 = load i128, i128* %array_getter247, align 4
  %add249 = add i128 %add241, %carry248
  %ptr_getter250 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j251 = load i128, i128* %j, align 4
  %k252 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul253 = mul i128 2, %k252
  %sub254 = sub i128 %mul253, 1
  %out255 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter250, i128 0, i128 %j251, i128 %sub254
  store i128 %add249, i128* %out255, align 4
  br label %if.exit256

if.exit256:                                       ; preds = %if.false164, %loop.exit226
  br label %loop.latch257

loop.latch257:                                    ; preds = %if.exit256
  %j258 = load i128, i128* %j, align 4
  %add259 = add i128 %j258, 1
  store i128 %add259, i128* %j, align 4
  %j260 = load i128, i128* %j, align 4
  %l261 = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul262 = mul i128 2, %l261
  %sub263 = sub i128 %mul262, 1
  %slt264 = icmp slt i128 %j260, %sub263
  br i1 %slt264, label %loop.body119, label %loop.exit265

loop.exit265:                                     ; preds = %loop.latch257
  %out266 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out266
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_sub_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_sub_mod.n.declare_arg, align 4
  %long_sub_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_sub_mod.k.declare_arg, align 4
  %long_sub_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %long_sub_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %long_sub_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_sub_mod.p.declare_arg, align 8
  %n = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %a = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %call = call i128 @long_gt(i128 %n, i128 %k, [256 x i128]* %b, [256 x i128]* %a)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n1 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k2 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %a3 = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %n4 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k5 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %p = load [256 x i128]*, [256 x i128]** %long_sub_mod.p.declare_arg, align 8
  %b6 = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %call7 = call [256 x i128]* @long_sub(i128 %n4, i128 %k5, [256 x i128]* %p, [256 x i128]* %b6)
  %call8 = call [256 x i128]* @long_add(i128 %n1, i128 %k2, [256 x i128]* %a3, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %n9 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k10 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %a11 = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %b12 = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %call13 = call [256 x i128]* @long_sub(i128 %n9, i128 %k10, [256 x i128]* %a11, [256 x i128]* %b12)
  ret [256 x i128]* %call13
}

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %get_fp2_sgn0.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %get_fp2_sgn0.k.declare_arg, align 4
  %get_fp2_sgn0.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %get_fp2_sgn0.a.declare_arg, align 8
  %sgn1 = alloca i128, align 8
  %sgn11 = call i128 @fn_intrinsic_utils_init()
  store i128 %sgn11, i128* %sgn1, align 4
  %sgn0 = alloca i128, align 8
  %sgn02 = call i128 @fn_intrinsic_utils_init()
  store i128 %sgn02, i128* %sgn0, align 4
  %z = alloca i128, align 8
  %z3 = call i128 @fn_intrinsic_utils_init()
  store i128 %z3, i128* %z, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %get_fp2_sgn0.a.declare_arg, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 0
  %a4 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a4, 2
  store i128 %mod, i128* %sgn0, align 4
  %a5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %get_fp2_sgn0.a.declare_arg, align 8
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a5, i128 0, i128 1, i128 0
  %a7 = load i128, i128* %array_getter6, align 4
  %mod8 = srem i128 %a7, 2
  store i128 %mod8, i128* %sgn1, align 4
  %k = load i128, i128* %get_fp2_sgn0.k.declare_arg, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %get_fp2_sgn0.a.declare_arg, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 0
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %k, [256 x i128]* %spice_inline_array)
  store i128 %call, i128* %z, align 4
  %sgn012 = load i128, i128* %sgn0, align 4
  %z13 = load i128, i128* %z, align 4
  %sgn114 = load i128, i128* %sgn1, align 4
  %and = and i128 %z13, %sgn114
  %or = or i128 %sgn012, %and
  ret i128 %or
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %short_div_norm.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %short_div_norm.n.declare_arg, align 4
  %short_div_norm.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %short_div_norm.k.declare_arg, align 4
  %short_div_norm.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %short_div_norm.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %mult = alloca [256 x i128]*, align 8
  %mult1 = alloca [256 x i128], align 8
  store [256 x i128]* %mult1, [256 x i128]** %mult, align 8
  %qhat = alloca i128, align 8
  %qhat2 = call i128 @fn_intrinsic_utils_init()
  store i128 %qhat2, i128* %qhat, align 4
  %a = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %k = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a3 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a3, %lshift
  %a4 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %k5 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %sub = sub i128 %k5, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %a4, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %b = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %k8 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %sub9 = sub i128 %k8, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  store i128 %sdiv, i128* %qhat, align 4
  %qhat12 = load i128, i128* %qhat, align 4
  %n13 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift14 = shl i128 1, %n13
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %qhat12, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n16 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift17 = shl i128 1, %n16
  %sub18 = sub i128 %lshift17, 1
  store i128 %sub18, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n19 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k20 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %qhat21 = load i128, i128* %qhat, align 4
  %b22 = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n19, i128 %k20, i128 %qhat21, [256 x i128]* %b22)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n25 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k26 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add27 = add i128 %k26, 1
  %mult28 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a29 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %call30 = call i128 @long_gt(i128 %n25, i128 %add27, [256 x i128]* %mult28, [256 x i128]* %a29)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %n31 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k32 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add33 = add i128 %k32, 1
  %mult34 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b35 = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %call36 = call [256 x i128]* @long_sub(i128 %n31, i128 %add33, [256 x i128]* %mult34, [256 x i128]* %b35)
  store [256 x i128]* %call36, [256 x i128]** %mult, align 8
  %n39 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k40 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add41 = add i128 %k40, 1
  %mult42 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a43 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %call44 = call i128 @long_gt(i128 %n39, i128 %add41, [256 x i128]* %mult42, [256 x i128]* %a43)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  %qhat50 = load i128, i128* %qhat, align 4
  ret i128 %qhat50

if.true37:                                        ; preds = %if.true23
  %qhat46 = load i128, i128* %qhat, align 4
  %sub47 = sub i128 %qhat46, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %qhat48 = load i128, i128* %qhat, align 4
  %sub49 = sub i128 %qhat48, 1
  ret i128 %sub49
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %short_div.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %short_div.n.declare_arg, align 4
  %short_div.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %short_div.k.declare_arg, align 4
  %short_div.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %short_div.a.declare_arg, align 8
  %short_div.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %short_div.b.declare_arg, align 8
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a1 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a1, [256 x i128]** %norm_a, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b2 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b2, [256 x i128]** %norm_b, align 8
  %ret = alloca i128, align 8
  %ret3 = call i128 @fn_intrinsic_utils_init()
  store i128 %ret3, i128* %ret, align 4
  %scale = alloca i128, align 8
  %scale4 = call i128 @fn_intrinsic_utils_init()
  store i128 %scale4, i128* %scale, align 4
  %n = load i128, i128* %short_div.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %short_div.b.declare_arg, align 8
  %k = load i128, i128* %short_div.k.declare_arg, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n6 = load i128, i128* %short_div.n.declare_arg, align 4
  %k7 = load i128, i128* %short_div.k.declare_arg, align 4
  %add8 = add i128 %k7, 1
  %scale9 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %short_div.a.declare_arg, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n6, i128 %add8, i128 %scale9, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n10 = load i128, i128* %short_div.n.declare_arg, align 4
  %k11 = load i128, i128* %short_div.k.declare_arg, align 4
  %scale12 = load i128, i128* %scale, align 4
  %b13 = load [256 x i128]*, [256 x i128]** %short_div.b.declare_arg, align 8
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %n10, i128 %k11, i128 %scale12, [256 x i128]* %b13)
  store [256 x i128]* %call14, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b15 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k16 = load i128, i128* %short_div.k.declare_arg, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b15, i128 0, i128 %k16
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n19 = load i128, i128* %short_div.n.declare_arg, align 4
  %k20 = load i128, i128* %short_div.k.declare_arg, align 4
  %add21 = add i128 %k20, 1
  %norm_a22 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b23 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call24 = call i128 @short_div_norm(i128 %n19, i128 %add21, [256 x i128]* %norm_a22, [256 x i128]* %norm_b23)
  store i128 %call24, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n25 = load i128, i128* %short_div.n.declare_arg, align 4
  %k26 = load i128, i128* %short_div.k.declare_arg, align 4
  %norm_a27 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b28 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call29 = call i128 @short_div_norm(i128 %n25, i128 %k26, [256 x i128]* %norm_a27, [256 x i128]* %norm_b28)
  store i128 %call29, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret30 = load i128, i128* %ret, align 4
  ret i128 %ret30
}

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %find_fp2_diff.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp2_diff.n.declare_arg, align 4
  %find_fp2_diff.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp2_diff.k.declare_arg, align 4
  %find_fp2_diff.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %find_fp2_diff.a.declare_arg, align 8
  %find_fp2_diff.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %find_fp2_diff.b.declare_arg, align 8
  %find_fp2_diff.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp2_diff.p.declare_arg, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %find_fp2_diff.n.declare_arg, align 4
  %k = load i128, i128* %find_fp2_diff.k.declare_arg, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_diff.a.declare_arg, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_diff.b.declare_arg, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp2_diff.p.declare_arg, align 8
  %call = call [256 x i128]* @long_sub_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %find_fp2_diff.n.declare_arg, align 4
  %k8 = load i128, i128* %find_fp2_diff.k.declare_arg, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_diff.a.declare_arg, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_diff.b.declare_arg, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %find_fp2_diff.p.declare_arg, align 8
  %call18 = call [256 x i128]* @long_sub_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %find_fp12_diff.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp12_diff.n.declare_arg, align 4
  %find_fp12_diff.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp12_diff.k.declare_arg, align 4
  %find_fp12_diff.a.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %find_fp12_diff.a.declare_arg, align 8
  %find_fp12_diff.b.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %find_fp12_diff.b.declare_arg, align 8
  %find_fp12_diff.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp12_diff.p.declare_arg, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %find_fp12_diff.n.declare_arg, align 4
  %k = load i128, i128* %find_fp12_diff.k.declare_arg, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_diff.a.declare_arg, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i3
  %a4 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a4, [256 x [256 x i128]]* %spice_inline_array, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_diff.b.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i5
  %b7 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b7, [256 x [256 x i128]]* %spice_inline_array8, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp12_diff.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n, i128 %k, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array8, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i9 = load i128, i128* %i, align 4
  %out10 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i9
  %5 = bitcast [256 x [256 x i128]]* %out10 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add = add i128 %i11, 1
  store i128 %add, i128* %i, align 4
  %i12 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i12, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out13 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out13
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_div2.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_div2.n.declare_arg, align 4
  %long_div2.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_div2.k.declare_arg, align 4
  %long_div2.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_div2.m.declare_arg, align 4
  %long_div2.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_div2.a.declare_arg, align 8
  %long_div2.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_div2.b.declare_arg, align 8
  %remainder = alloca [256 x i128]*, align 8
  %remainder1 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder1, [256 x i128]** %remainder, align 8
  %dividend = alloca [256 x i128]*, align 8
  %dividend2 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend2, [256 x i128]** %dividend, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out3, [256 x [256 x i128]]** %out, align 8
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift4 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift4, [256 x i128]** %mult_shift, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend6 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend6, [256 x i128]** %subtrahend, align 8
  %j = alloca i128, align 8
  %j7 = call i128 @fn_intrinsic_utils_init()
  store i128 %j7, i128* %j, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array8 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array8, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_div2.a.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i11 = load i128, i128* %i, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i11
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %m = load i128, i128* %long_div2.m.declare_arg, align 4
  %k = load i128, i128* %long_div2.k.declare_arg, align 4
  %add15 = add i128 %m, %k
  %slt = icmp slt i128 %i14, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array16, [256 x i128]** %dividend, align 8
  %m17 = load i128, i128* %long_div2.m.declare_arg, align 4
  store i128 %m17, i128* %i, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %i19 = load i128, i128* %i, align 4
  %m20 = load i128, i128* %long_div2.m.declare_arg, align 4
  %eq = icmp eq i128 %i19, %m20
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k22 = load i128, i128* %long_div2.k.declare_arg, align 4
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 %k22
  store i128 0, i128* %dividend23, align 4
  %k24 = load i128, i128* %long_div2.k.declare_arg, align 4
  %sub = sub i128 %k24, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  %k40 = load i128, i128* %long_div2.k.declare_arg, align 4
  store i128 %k40, i128* %j, align 4
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %remainder26 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j27 = load i128, i128* %j, align 4
  %m28 = load i128, i128* %long_div2.m.declare_arg, align 4
  %add29 = add i128 %j27, %m28
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder26, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j33 = load i128, i128* %j, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %j33
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %j36 = load i128, i128* %j, align 4
  %sub37 = sub i128 %j36, 1
  store i128 %sub37, i128* %j, align 4
  %j38 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j38, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %remainder42 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j43 = load i128, i128* %j, align 4
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %j43, %i44
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder42, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j49 = load i128, i128* %j, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 %j49
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %j52 = load i128, i128* %j, align 4
  %sub53 = sub i128 %j52, 1
  store i128 %sub53, i128* %j, align 4
  %j54 = load i128, i128* %j, align 4
  %sge55 = icmp sge i128 %j54, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %n = load i128, i128* %long_div2.n.declare_arg, align 4
  %k57 = load i128, i128* %long_div2.k.declare_arg, align 4
  %dividend58 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_div2.b.declare_arg, align 8
  %call = call i128 @short_div(i128 %n, i128 %k57, [256 x i128]* %dividend58, [256 x i128]* %b)
  %ptr_getter59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i60 = load i128, i128* %i, align 4
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter59, i128 0, i128 0, i128 %i60
  store i128 %call, i128* %out61, align 4
  %n62 = load i128, i128* %long_div2.n.declare_arg, align 4
  %k63 = load i128, i128* %long_div2.k.declare_arg, align 4
  %out64 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out64, i128 0, i128 0, i128 %i65
  %out67 = load i128, i128* %array_getter66, align 4
  %b68 = load [256 x i128]*, [256 x i128]** %long_div2.b.declare_arg, align 8
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %n62, i128 %k63, i128 %out67, [256 x i128]* %b68)
  store [256 x i128]* %call69, [256 x i128]** %mult_shift, align 8
  %uniform_array70 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array70, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j73 = load i128, i128* %j, align 4
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %j73
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %j76 = load i128, i128* %j, align 4
  %add77 = add i128 %j76, 1
  store i128 %add77, i128* %j, align 4
  %j78 = load i128, i128* %j, align 4
  %m79 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k80 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add81 = add i128 %m79, %k80
  %slt82 = icmp slt i128 %j78, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  store i128 0, i128* %j, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %i87 = load i128, i128* %i, align 4
  %j88 = load i128, i128* %j, align 4
  %add89 = add i128 %i87, %j88
  %m90 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k91 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add92 = add i128 %m90, %k91
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %mult_shift94 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j95 = load i128, i128* %j, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift94, i128 0, i128 %j95
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %ptr_getter98 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i99 = load i128, i128* %i, align 4
  %j100 = load i128, i128* %j, align 4
  %add101 = add i128 %i99, %j100
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter98, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %j105 = load i128, i128* %j, align 4
  %add106 = add i128 %j105, 1
  store i128 %add106, i128* %j, align 4
  %j107 = load i128, i128* %j, align 4
  %k108 = load i128, i128* %long_div2.k.declare_arg, align 4
  %sle = icmp sle i128 %j107, %k108
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %n110 = load i128, i128* %long_div2.n.declare_arg, align 4
  %m111 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k112 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add113 = add i128 %m111, %k112
  %remainder114 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend115 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call116 = call [256 x i128]* @long_sub(i128 %n110, i128 %add113, [256 x i128]* %remainder114, [256 x i128]* %subtrahend115)
  store [256 x i128]* %call116, [256 x i128]** %remainder, align 8
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %i118 = load i128, i128* %i, align 4
  %sub119 = sub i128 %i118, 1
  store i128 %sub119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %sge121 = icmp sge i128 %i120, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  store i128 0, i128* %i, align 4
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %remainder124 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder124, i128 0, i128 %i125
  %remainder127 = load i128, i128* %array_getter126, align 4
  %ptr_getter128 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i129 = load i128, i128* %i, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter128, i128 0, i128 1, i128 %i129
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %i132 = load i128, i128* %i, align 4
  %add133 = add i128 %i132, 1
  store i128 %add133, i128* %i, align 4
  %i134 = load i128, i128* %i, align 4
  %k135 = load i128, i128* %long_div2.k.declare_arg, align 4
  %slt136 = icmp slt i128 %i134, %k135
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %ptr_getter138 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k139 = load i128, i128* %long_div2.k.declare_arg, align 4
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter138, i128 0, i128 1, i128 %k139
  store i128 0, i128* %out140, align 4
  %out141 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out141
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_div.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_div.n.declare_arg, align 4
  %long_div.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_div.k.declare_arg, align 4
  %long_div.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_div.a.declare_arg, align 8
  %long_div.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_div.b.declare_arg, align 8
  %n = load i128, i128* %long_div.n.declare_arg, align 4
  %k = load i128, i128* %long_div.k.declare_arg, align 4
  %k1 = load i128, i128* %long_div.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %long_div.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_div.b.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %k1, [256 x i128]* %a, [256 x i128]* %b)
  ret [256 x [256 x i128]]* %call
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %prod_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod_mod.n.declare_arg, align 4
  %prod_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod_mod.k.declare_arg, align 4
  %prod_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %prod_mod.a.declare_arg, align 8
  %prod_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %prod_mod.b.declare_arg, align 8
  %prod_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %prod_mod.p.declare_arg, align 8
  %prod = alloca [256 x i128]*, align 8
  %prod1 = alloca [256 x i128], align 8
  store [256 x i128]* %prod1, [256 x i128]** %prod, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp2, [256 x [256 x i128]]** %temp, align 8
  %n = load i128, i128* %prod_mod.n.declare_arg, align 4
  %k = load i128, i128* %prod_mod.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %prod_mod.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %prod_mod.b.declare_arg, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n3 = load i128, i128* %prod_mod.n.declare_arg, align 4
  %k4 = load i128, i128* %prod_mod.k.declare_arg, align 4
  %prod5 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %prod_mod.p.declare_arg, align 8
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %n3, i128 %k4, [256 x i128]* %prod5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %mod_exp.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %mod_exp.n.declare_arg, align 4
  %mod_exp.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %mod_exp.k.declare_arg, align 4
  %mod_exp.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %mod_exp.a.declare_arg, align 8
  %mod_exp.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %mod_exp.e.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %mod_exp.e.declare_arg, align 8
  %eBits = alloca [256 x i128]*, align 8
  %eBits1 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits1, [256 x i128]** %eBits, align 8
  %j = alloca i128, align 8
  %j2 = call i128 @fn_intrinsic_utils_init()
  store i128 %j2, i128* %j, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp3 = alloca [256 x i128], align 8
  store [256 x i128]* %temp3, [256 x i128]** %temp, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp24 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp24, [256 x [256 x i128]]** %temp2, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %bitlength = alloca i128, align 8
  %bitlength6 = call i128 @fn_intrinsic_utils_init()
  store i128 %bitlength6, i128* %bitlength, align 4
  %out = alloca [256 x i128]*, align 8
  %out7 = alloca [256 x i128], align 8
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %mod_exp.e.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i9
  %e10 = load i128, i128* %array_getter, align 4
  %j11 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e10, %j11
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j12 = load i128, i128* %j, align 4
  %n = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i13 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i13
  %add = add i128 %j12, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %eBits15 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits15, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %j23 = load i128, i128* %j, align 4
  %n24 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i25 = load i128, i128* %i, align 4
  %mul26 = mul i128 %n24, %i25
  %add27 = add i128 %j23, %mul26
  %add28 = add i128 %add27, 1
  store i128 %add28, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j29 = load i128, i128* %j, align 4
  %add30 = add i128 %j29, 1
  store i128 %add30, i128* %j, align 4
  %j31 = load i128, i128* %j, align 4
  %n32 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %slt = icmp slt i128 %j31, %n32
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %i34 = load i128, i128* %i, align 4
  %add35 = add i128 %i34, 1
  store i128 %add35, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k = load i128, i128* %mod_exp.k.declare_arg, align 4
  %slt37 = icmp slt i128 %i36, %k
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array39, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %ptr_getter41 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i42 = load i128, i128* %i, align 4
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter41, i128 0, i128 %i42
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %slt48 = icmp slt i128 %i47, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %bitlength52 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength52, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %eBits56 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits56, i128 0, i128 %i57
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array61, [256 x i128]** %temp, align 8
  %n62 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k63 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %out64 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %mod_exp.a.declare_arg, align 8
  %call = call [256 x i128]* @prod(i128 %n62, i128 %k63, [256 x i128]* %out64, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array65, [256 x [256 x i128]]** %temp2, align 8
  %n66 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k67 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %temp68 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %n66, i128 %k67, [256 x i128]* %temp68, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call69, [256 x [256 x i128]]** %temp2, align 8
  %temp270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp270, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %i76 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i76, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array77, [256 x i128]** %temp, align 8
  %n78 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k79 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %out80 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out81 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call82 = call [256 x i128]* @prod(i128 %n78, i128 %k79, [256 x i128]* %out80, [256 x i128]* %out81)
  store [256 x i128]* %call82, [256 x i128]** %temp, align 8
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array83, [256 x [256 x i128]]** %temp2, align 8
  %n84 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k85 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %temp86 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p87 = load [256 x i128]*, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %n84, i128 %k85, [256 x i128]* %temp86, [256 x i128]* %p87)
  store [256 x [256 x i128]]* %call88, [256 x [256 x i128]]** %temp2, align 8
  %temp289 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp289, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  store [256 x i128]* %spice_inline_array92, [256 x i128]** %out, align 8
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %i95 = load i128, i128* %i, align 4
  %sub96 = sub i128 %i95, 1
  store i128 %sub96, i128* %i, align 4
  %i97 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i97, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  %out99 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out99
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_add_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add_mod.n.declare_arg, align 4
  %long_add_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add_mod.k.declare_arg, align 4
  %long_add_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add_mod.a.declare_arg, align 8
  %long_add_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add_mod.b.declare_arg, align 8
  %long_add_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add_mod.p.declare_arg, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %n = load i128, i128* %long_add_mod.n.declare_arg, align 4
  %k = load i128, i128* %long_add_mod.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %long_add_mod.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_add_mod.b.declare_arg, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n3 = load i128, i128* %long_add_mod.n.declare_arg, align 4
  %k4 = load i128, i128* %long_add_mod.k.declare_arg, align 4
  %sum5 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %long_add_mod.p.declare_arg, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 1, [256 x i128]* %sum5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %mod_inv.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %mod_inv.n.declare_arg, align 4
  %mod_inv.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %mod_inv.k.declare_arg, align 4
  %mod_inv.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %mod_inv.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %mod_inv.p.declare_arg, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret1 = alloca [256 x i128], align 8
  store [256 x i128]* %ret1, [256 x i128]** %ret, align 8
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %isZero = alloca i128, align 8
  %isZero3 = call i128 @fn_intrinsic_utils_init()
  store i128 %isZero3, i128* %isZero, align 4
  %two = alloca [256 x i128]*, align 8
  %two4 = alloca [256 x i128], align 8
  store [256 x i128]* %two4, [256 x i128]** %two, align 8
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy5 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy5, [256 x i128]** %pCopy, align 8
  %i = alloca i128, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  store i128 %i6, i128* %i, align 4
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo7 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo7, [256 x i128]** %pMinusTwo, align 8
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i10 = load i128, i128* %i, align 4
  %add = add i128 %i10, 1
  store i128 %add, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %k = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt = icmp slt i128 %i11, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero14 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero14, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i16 = load i128, i128* %i, align 4
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k22 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt23 = icmp slt i128 %i21, %k22
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  %ret25 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret25

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array27, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i31 = load i128, i128* %i, align 4
  %k32 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt33 = icmp slt i128 %i31, %k32
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %p = load [256 x i128]*, [256 x i128]** %mod_inv.p.declare_arg, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i34
  %p36 = load i128, i128* %array_getter35, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i38 = load i128, i128* %i, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i41 = load i128, i128* %i, align 4
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %slt48 = icmp slt i128 %i47, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array50, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %ptr_getter52 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i53 = load i128, i128* %i, align 4
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter52, i128 0, i128 %i53
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %i, align 4
  %i58 = load i128, i128* %i, align 4
  %slt59 = icmp slt i128 %i58, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %ptr_getter61 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter61, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array63, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %mod_inv.n.declare_arg, align 4
  %k64 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %pCopy65 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two66 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k64, [256 x i128]* %pCopy65, [256 x i128]* %two66)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array67 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array67, [256 x i128]** %out, align 8
  %n68 = load i128, i128* %mod_inv.n.declare_arg, align 4
  %k69 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %a70 = load [256 x i128]*, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %pCopy71 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo72 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %n68, i128 %k69, [256 x i128]* %a70, [256 x i128]* %pCopy71, [256 x i128]* %pMinusTwo72)
  store [256 x i128]* %call73, [256 x i128]** %out, align 8
  %out74 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out74
}

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %find_fp_inverse.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp_inverse.n.declare_arg, align 4
  %find_fp_inverse.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp_inverse.k.declare_arg, align 4
  %find_fp_inverse.num.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %find_fp_inverse.num.declare_arg, align 8
  %find_fp_inverse.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %newu = alloca [256 x i128]*, align 8
  %newu1 = alloca [256 x i128], align 8
  store [256 x i128]* %newu1, [256 x i128]** %newu, align 8
  %y = alloca [256 x i128]*, align 8
  %y2 = alloca [256 x i128], align 8
  store [256 x i128]* %y2, [256 x i128]** %y, align 8
  %b = alloca [256 x i128]*, align 8
  %b3 = alloca [256 x i128], align 8
  store [256 x i128]* %b3, [256 x i128]** %b, align 8
  %v = alloca [256 x i128]*, align 8
  %v4 = alloca [256 x i128], align 8
  store [256 x i128]* %v4, [256 x i128]** %v, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret5 = alloca [256 x i128], align 8
  store [256 x i128]* %ret5, [256 x i128]** %ret, align 8
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %amodp6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %amodp6, [256 x [256 x i128]]** %amodp, align 8
  %a = alloca [256 x i128]*, align 8
  %a7 = alloca [256 x i128], align 8
  store [256 x i128]* %a7, [256 x i128]** %a, align 8
  %ka = alloca i128, align 8
  %ka8 = call i128 @fn_intrinsic_utils_init()
  store i128 %ka8, i128* %ka, align 4
  %newv = alloca [256 x i128]*, align 8
  %newv9 = alloca [256 x i128], align 8
  store [256 x i128]* %newv9, [256 x i128]** %newv, align 8
  %i = alloca i128, align 8
  %i10 = call i128 @fn_intrinsic_utils_init()
  store i128 %i10, i128* %i, align 4
  %q = alloca [256 x i128]*, align 8
  %q11 = alloca [256 x i128], align 8
  store [256 x i128]* %q11, [256 x i128]** %q, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %r12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r12, [256 x [256 x i128]]** %r, align 8
  %u = alloca [256 x i128]*, align 8
  %u13 = alloca [256 x i128], align 8
  store [256 x i128]* %u13, [256 x i128]** %u, align 8
  %l = alloca i128, align 8
  %l14 = call i128 @fn_intrinsic_utils_init()
  store i128 %l14, i128* %l, align 4
  %x = alloca [256 x i128]*, align 8
  %x15 = alloca [256 x i128], align 8
  store [256 x i128]* %x15, [256 x i128]** %x, align 8
  %n = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %k = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %num = load [256 x i128]*, [256 x i128]** %find_fp_inverse.num.declare_arg, align 8
  %p = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 0, [256 x i128]* %num, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %amodp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %a, align 8
  %uniform_array16 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array16, [256 x i128]** %b, align 8
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %x, align 8
  %uniform_array18 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array18, [256 x i128]** %y, align 8
  %uniform_array19 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array19, [256 x i128]** %u, align 8
  %uniform_array20 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array20, [256 x i128]** %v, align 8
  %uniform_array21 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array21, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %amodp22 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %amodp, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %amodp22, i128 0, i128 1, i128 %i23
  %amodp24 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a, align 8
  %i25 = load i128, i128* %i, align 4
  %a26 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i25
  store i128 %amodp24, i128* %a26, align 4
  %p27 = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %p27, i128 0, i128 %i28
  %p30 = load i128, i128* %array_getter29, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i32 = load i128, i128* %i, align 4
  %b33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 %p30, i128* %b33, align 4
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i35 = load i128, i128* %i, align 4
  %x36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 0, i128* %x36, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i38 = load i128, i128* %i, align 4
  %y39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 0, i128* %y39, align 4
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i41 = load i128, i128* %i, align 4
  %u42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 0, i128* %u42, align 4
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i44 = load i128, i128* %i, align 4
  %v45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %i44
  store i128 0, i128* %v45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i46 = load i128, i128* %i, align 4
  %add = add i128 %i46, 1
  store i128 %add, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %k48 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %slt = icmp slt i128 %i47, %k48
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter49 = load [256 x i128]*, [256 x i128]** %y, align 8
  %y50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter49, i128 0, i128 0
  store i128 1, i128* %y50, align 4
  %ptr_getter51 = load [256 x i128]*, [256 x i128]** %u, align 8
  %u52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter51, i128 0, i128 0
  store i128 1, i128* %u52, align 4
  store i128 0, i128* %l, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch210, %loop.exit
  store i128 0, i128* %ka, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body54

loop.body54:                                      ; preds = %loop.latch61, %loop.body53
  %a55 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %a55, i128 0, i128 %i56
  %a58 = load i128, i128* %array_getter57, align 4
  %ne = icmp ne i128 %a58, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body54
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %ka, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body54
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch61

loop.latch61:                                     ; preds = %if.exit
  %i62 = load i128, i128* %i, align 4
  %add63 = add i128 %i62, 1
  store i128 %add63, i128* %i, align 4
  %i64 = load i128, i128* %i, align 4
  %k65 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %slt66 = icmp slt i128 %i64, %k65
  br i1 %slt66, label %loop.body54, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  %ka70 = load i128, i128* %ka, align 4
  %eq = icmp eq i128 %ka70, 0
  br i1 %eq, label %if.true68, label %if.false69

if.true68:                                        ; preds = %loop.exit67
  store i128 0, i128* %i, align 4
  br label %loop.body71

if.false69:                                       ; preds = %loop.exit67
  br label %if.exit87

loop.body71:                                      ; preds = %loop.latch79, %if.true68
  %x72 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %x72, i128 0, i128 %i73
  %x75 = load i128, i128* %array_getter74, align 4
  %ptr_getter76 = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i77 = load i128, i128* %i, align 4
  %ret78 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter76, i128 0, i128 %i77
  store i128 %x75, i128* %ret78, align 4
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body71
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  store i128 %add81, i128* %i, align 4
  %i82 = load i128, i128* %i, align 4
  %k83 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %slt84 = icmp slt i128 %i82, %k83
  br i1 %slt84, label %loop.body71, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  %ret86 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret86

if.exit87:                                        ; preds = %if.false69
  %n88 = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %ka89 = load i128, i128* %ka, align 4
  %k90 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %ka91 = load i128, i128* %ka, align 4
  %sub = sub i128 %k90, %ka91
  %b92 = load [256 x i128]*, [256 x i128]** %b, align 8
  %a93 = load [256 x i128]*, [256 x i128]** %a, align 8
  %call94 = call [256 x [256 x i128]]* @long_div2(i128 %n88, i128 %ka89, i128 %sub, [256 x i128]* %b92, [256 x i128]* %a93)
  store [256 x [256 x i128]]* %call94, [256 x [256 x i128]]** %r, align 8
  %uniform_array95 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array95, [256 x i128]** %q, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body96

loop.body96:                                      ; preds = %loop.latch104, %if.exit87
  %r97 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i98 = load i128, i128* %i, align 4
  %array_getter99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r97, i128 0, i128 0, i128 %i98
  %r100 = load i128, i128* %array_getter99, align 4
  %ptr_getter101 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i102 = load i128, i128* %i, align 4
  %q103 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter101, i128 0, i128 %i102
  store i128 %r100, i128* %q103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body96
  %i105 = load i128, i128* %i, align 4
  %add106 = add i128 %i105, 1
  store i128 %add106, i128* %i, align 4
  %i107 = load i128, i128* %i, align 4
  %k108 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %ka109 = load i128, i128* %ka, align 4
  %sub110 = sub i128 %k108, %ka109
  %add111 = add i128 %sub110, 1
  %slt112 = icmp slt i128 %i107, %add111
  br i1 %slt112, label %loop.body96, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch104
  %k114 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %ka115 = load i128, i128* %ka, align 4
  %sub116 = sub i128 %k114, %ka115
  %add117 = add i128 %sub116, 1
  store i128 %add117, i128* %i, align 4
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit113
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i120 = load i128, i128* %i, align 4
  %q121 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 %i120
  store i128 0, i128* %q121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %i123 = load i128, i128* %i, align 4
  %add124 = add i128 %i123, 1
  store i128 %add124, i128* %i, align 4
  %i125 = load i128, i128* %i, align 4
  %k126 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %slt127 = icmp slt i128 %i125, %k126
  br i1 %slt127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  %n129 = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %k130 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %x131 = load [256 x i128]*, [256 x i128]** %x, align 8
  %n132 = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %k133 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %u134 = load [256 x i128]*, [256 x i128]** %u, align 8
  %q135 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p136 = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %call137 = call [256 x i128]* @prod_mod(i128 %n132, i128 %k133, [256 x i128]* %u134, [256 x i128]* %q135, [256 x i128]* %p136)
  %p138 = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %call139 = call [256 x i128]* @long_sub_mod(i128 %n129, i128 %k130, [256 x i128]* %x131, [256 x i128]* %call137, [256 x i128]* %p138)
  store [256 x i128]* %call139, [256 x i128]** %newu, align 8
  %n140 = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %k141 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %y142 = load [256 x i128]*, [256 x i128]** %y, align 8
  %n143 = load i128, i128* %find_fp_inverse.n.declare_arg, align 4
  %k144 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %v145 = load [256 x i128]*, [256 x i128]** %v, align 8
  %q146 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p147 = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %call148 = call [256 x i128]* @prod_mod(i128 %n143, i128 %k144, [256 x i128]* %v145, [256 x i128]* %q146, [256 x i128]* %p147)
  %p149 = load [256 x i128]*, [256 x i128]** %find_fp_inverse.p.declare_arg, align 8
  %call150 = call [256 x i128]* @long_sub_mod(i128 %n140, i128 %k141, [256 x i128]* %y142, [256 x i128]* %call148, [256 x i128]* %p149)
  store [256 x i128]* %call150, [256 x i128]** %newv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch203, %loop.exit128
  %a152 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i153 = load i128, i128* %i, align 4
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %a152, i128 0, i128 %i153
  %a155 = load i128, i128* %array_getter154, align 4
  %ptr_getter156 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i157 = load i128, i128* %i, align 4
  %b158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter156, i128 0, i128 %i157
  store i128 %a155, i128* %b158, align 4
  %i161 = load i128, i128* %i, align 4
  %ka162 = load i128, i128* %ka, align 4
  %slt163 = icmp slt i128 %i161, %ka162
  br i1 %slt163, label %if.true159, label %if.false160

if.true159:                                       ; preds = %loop.body151
  %r164 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i165 = load i128, i128* %i, align 4
  %array_getter166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r164, i128 0, i128 1, i128 %i165
  %r167 = load i128, i128* %array_getter166, align 4
  %ptr_getter168 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i169 = load i128, i128* %i, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter168, i128 0, i128 %i169
  store i128 %r167, i128* %a170, align 4
  br label %if.exit174

if.false160:                                      ; preds = %loop.body151
  %ptr_getter171 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i172 = load i128, i128* %i, align 4
  %a173 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter171, i128 0, i128 %i172
  store i128 0, i128* %a173, align 4
  br label %if.exit174

if.exit174:                                       ; preds = %if.false160, %if.true159
  %u175 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i176 = load i128, i128* %i, align 4
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %u175, i128 0, i128 %i176
  %u178 = load i128, i128* %array_getter177, align 4
  %ptr_getter179 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i180 = load i128, i128* %i, align 4
  %x181 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter179, i128 0, i128 %i180
  store i128 %u178, i128* %x181, align 4
  %v182 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i183 = load i128, i128* %i, align 4
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %v182, i128 0, i128 %i183
  %v185 = load i128, i128* %array_getter184, align 4
  %ptr_getter186 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i187 = load i128, i128* %i, align 4
  %y188 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter186, i128 0, i128 %i187
  store i128 %v185, i128* %y188, align 4
  %newu189 = load [256 x i128]*, [256 x i128]** %newu, align 8
  %i190 = load i128, i128* %i, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %newu189, i128 0, i128 %i190
  %newu192 = load i128, i128* %array_getter191, align 4
  %ptr_getter193 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i194 = load i128, i128* %i, align 4
  %u195 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter193, i128 0, i128 %i194
  store i128 %newu192, i128* %u195, align 4
  %newv196 = load [256 x i128]*, [256 x i128]** %newv, align 8
  %i197 = load i128, i128* %i, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %newv196, i128 0, i128 %i197
  %newv199 = load i128, i128* %array_getter198, align 4
  %ptr_getter200 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i201 = load i128, i128* %i, align 4
  %v202 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter200, i128 0, i128 %i201
  store i128 %newv199, i128* %v202, align 4
  br label %loop.latch203

loop.latch203:                                    ; preds = %if.exit174
  %i204 = load i128, i128* %i, align 4
  %add205 = add i128 %i204, 1
  store i128 %add205, i128* %i, align 4
  %i206 = load i128, i128* %i, align 4
  %k207 = load i128, i128* %find_fp_inverse.k.declare_arg, align 4
  %slt208 = icmp slt i128 %i206, %k207
  br i1 %slt208, label %loop.body151, label %loop.exit209

loop.exit209:                                     ; preds = %loop.latch203
  br label %loop.latch210

loop.latch210:                                    ; preds = %loop.exit209
  %l211 = load i128, i128* %l, align 4
  %add212 = add i128 %l211, 1
  store i128 %add212, i128* %l, align 4
  %l213 = load i128, i128* %l, align 4
  %slt214 = icmp slt i128 %l213, 1000
  br i1 %slt214, label %loop.body53, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch210
  call void @fn_intrinsic_utils_assert(i1 false)
  %ret216 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret216
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %find_fp12_product.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp12_product.n.declare_arg, align 4
  %find_fp12_product.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp12_product.k.declare_arg, align 4
  %find_fp12_product.a.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %find_fp12_product.a.declare_arg, align 8
  %find_fp12_product.b.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %find_fp12_product.b.declare_arg, align 8
  %find_fp12_product.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp12_product.p.declare_arg, align 8
  %a1b0_var = alloca [256 x [256 x i128]]*, align 8
  %a1b0_var1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b0_var1, [256 x [256 x i128]]** %a1b0_var, align 8
  %imag_final = alloca [256 x [256 x i128]]*, align 8
  %imag_final2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_final2, [256 x [256 x i128]]** %imag_final, align 8
  %j = alloca i128, align 8
  %j3 = call i128 @fn_intrinsic_utils_init()
  store i128 %j3, i128* %j, align 4
  %real_carry = alloca [256 x [256 x i128]]*, align 8
  %real_carry4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_carry4, [256 x [256 x i128]]** %real_carry, align 8
  %real_final = alloca [256 x [256 x i128]]*, align 8
  %real_final5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_final5, [256 x [256 x i128]]** %real_final, align 8
  %b1 = alloca [256 x [256 x i128]]*, align 8
  %b16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b16, [256 x [256 x i128]]** %b1, align 8
  %a1 = alloca [256 x [256 x i128]]*, align 8
  %a17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a17, [256 x [256 x i128]]** %a1, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out8 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out8, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  %i9 = call i128 @fn_intrinsic_utils_init()
  store i128 %i9, i128* %i, align 4
  %zeros = alloca [256 x i128]*, align 8
  %zeros10 = alloca [256 x i128], align 8
  store [256 x i128]* %zeros10, [256 x i128]** %zeros, align 8
  %a0b1_neg = alloca [256 x [256 x i128]]*, align 8
  %a0b1_neg11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b1_neg11, [256 x [256 x i128]]** %a0b1_neg, align 8
  %XYimag_temp = alloca [256 x [256 x [256 x i128]]]*, align 8
  %XYimag_temp12 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %XYimag_temp12, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %neg_b1 = alloca [256 x [256 x i128]]*, align 8
  %neg_b113 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %neg_b113, [256 x [256 x i128]]** %neg_b1, align 8
  %neg_b0 = alloca [256 x [256 x i128]]*, align 8
  %neg_b014 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %neg_b014, [256 x [256 x i128]]** %neg_b0, align 8
  %a0b1_var = alloca [256 x [256 x i128]]*, align 8
  %a0b1_var15 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b1_var15, [256 x [256 x i128]]** %a0b1_var, align 8
  %real_init = alloca [256 x [256 x i128]]*, align 8
  %real_init16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_init16, [256 x [256 x i128]]** %real_init, align 8
  %imag_init_neg = alloca [256 x [256 x i128]]*, align 8
  %imag_init_neg17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_init_neg17, [256 x [256 x i128]]** %imag_init_neg, align 8
  %b0 = alloca [256 x [256 x i128]]*, align 8
  %b018 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b018, [256 x [256 x i128]]** %b0, align 8
  %a0b0_var = alloca [256 x [256 x i128]]*, align 8
  %a0b0_var19 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b0_var19, [256 x [256 x i128]]** %a0b0_var, align 8
  %l = alloca i128, align 8
  %l20 = call i128 @fn_intrinsic_utils_init()
  store i128 %l20, i128* %l, align 4
  %a1b1_neg = alloca [256 x [256 x i128]]*, align 8
  %a1b1_neg21 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b1_neg21, [256 x [256 x i128]]** %a1b1_neg, align 8
  %a1b0_neg = alloca [256 x [256 x i128]]*, align 8
  %a1b0_neg22 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b0_neg22, [256 x [256 x i128]]** %a1b0_neg, align 8
  %imag_carry = alloca [256 x [256 x i128]]*, align 8
  %imag_carry23 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_carry23, [256 x [256 x i128]]** %imag_carry, align 8
  %XYreal_temp = alloca [256 x [256 x [256 x i128]]]*, align 8
  %XYreal_temp24 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %XYreal_temp24, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %imag_init = alloca [256 x [256 x i128]]*, align 8
  %imag_init25 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_init25, [256 x [256 x i128]]** %imag_init, align 8
  %a0 = alloca [256 x [256 x i128]]*, align 8
  %a026 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a026, [256 x [256 x i128]]** %a0, align 8
  store i128 6, i128* %l, align 4
  %l27 = load i128, i128* %l, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %a0, align 8
  %l28 = load i128, i128* %l, align 4
  %uniform_array29 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array29, [256 x [256 x i128]]** %a1, align 8
  %l30 = load i128, i128* %l, align 4
  %uniform_array31 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array31, [256 x [256 x i128]]** %b0, align 8
  %l32 = load i128, i128* %l, align 4
  %uniform_array33 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array33, [256 x [256 x i128]]** %b1, align 8
  %l34 = load i128, i128* %l, align 4
  %uniform_array35 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array35, [256 x [256 x i128]]** %neg_b0, align 8
  %l36 = load i128, i128* %l, align 4
  %uniform_array37 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array37, [256 x [256 x i128]]** %neg_b1, align 8
  %l38 = load i128, i128* %l, align 4
  %uniform_array39 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array39, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch75, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch, %loop.body
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_product.a.declare_arg, align 8
  %i41 = load i128, i128* %i, align 4
  %j42 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i41, i128 0, i128 %j42
  %a43 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %i44 = load i128, i128* %i, align 4
  %j45 = load i128, i128* %j, align 4
  %a046 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i44, i128 %j45
  store i128 %a43, i128* %a046, align 4
  %a47 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_product.a.declare_arg, align 8
  %i48 = load i128, i128* %i, align 4
  %j49 = load i128, i128* %j, align 4
  %array_getter50 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a47, i128 0, i128 %i48, i128 1, i128 %j49
  %a51 = load i128, i128* %array_getter50, align 4
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %i53 = load i128, i128* %i, align 4
  %j54 = load i128, i128* %j, align 4
  %a155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 %i53, i128 %j54
  store i128 %a51, i128* %a155, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_product.b.declare_arg, align 8
  %i56 = load i128, i128* %i, align 4
  %j57 = load i128, i128* %j, align 4
  %array_getter58 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i56, i128 0, i128 %j57
  %b59 = load i128, i128* %array_getter58, align 4
  %ptr_getter60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %i61 = load i128, i128* %i, align 4
  %j62 = load i128, i128* %j, align 4
  %b063 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter60, i128 0, i128 %i61, i128 %j62
  store i128 %b59, i128* %b063, align 4
  %b64 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_product.b.declare_arg, align 8
  %i65 = load i128, i128* %i, align 4
  %j66 = load i128, i128* %j, align 4
  %array_getter67 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b64, i128 0, i128 %i65, i128 1, i128 %j66
  %b68 = load i128, i128* %array_getter67, align 4
  %ptr_getter69 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %i70 = load i128, i128* %i, align 4
  %j71 = load i128, i128* %j, align 4
  %b172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter69, i128 0, i128 %i70, i128 %j71
  store i128 %b68, i128* %b172, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body40
  %j73 = load i128, i128* %j, align 4
  %add = add i128 %j73, 1
  store i128 %add, i128* %j, align 4
  %j74 = load i128, i128* %j, align 4
  %k = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %slt = icmp slt i128 %j74, %k
  br i1 %slt, label %loop.body40, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.exit
  %i76 = load i128, i128* %i, align 4
  %add77 = add i128 %i76, 1
  store i128 %add77, i128* %i, align 4
  %i78 = load i128, i128* %i, align 4
  %l79 = load i128, i128* %l, align 4
  %slt80 = icmp slt i128 %i78, %l79
  br i1 %slt80, label %loop.body, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch75
  store i128 0, i128* %i, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch103, %loop.exit81
  %n = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k83 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp12_product.p.declare_arg, align 8
  %b084 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b084, i128 0, i128 %i85
  %b087 = load [256 x i128], [256 x i128]* %array_getter86, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %b087, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k83, [256 x i128]* %p, [256 x i128]* %spice_inline_array)
  %ptr_getter88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b0, align 8
  %i89 = load i128, i128* %i, align 4
  %neg_b090 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter88, i128 0, i128 %i89
  %5 = bitcast [256 x i128]* %neg_b090 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n91 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k92 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %p93 = load [256 x i128]*, [256 x i128]** %find_fp12_product.p.declare_arg, align 8
  %b194 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b194, i128 0, i128 %i95
  %b197 = load [256 x i128], [256 x i128]* %array_getter96, align 4
  %spice_inline_array98 = alloca [256 x i128], align 8
  store [256 x i128] %b197, [256 x i128]* %spice_inline_array98, align 4
  %call99 = call [256 x i128]* @long_sub(i128 %n91, i128 %k92, [256 x i128]* %p93, [256 x i128]* %spice_inline_array98)
  %ptr_getter100 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %i101 = load i128, i128* %i, align 4
  %neg_b1102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter100, i128 0, i128 %i101
  %7 = bitcast [256 x i128]* %neg_b1102 to i8*
  %8 = bitcast [256 x i128]* %call99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.body82
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %l107 = load i128, i128* %l, align 4
  %slt108 = icmp slt i128 %i106, %l107
  br i1 %slt108, label %loop.body82, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %uniform_array110 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array110, [256 x [256 x i128]]** %real_init, align 8
  %uniform_array111 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array111, [256 x [256 x i128]]** %imag_init, align 8
  %uniform_array112 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array112, [256 x [256 x i128]]** %imag_init_neg, align 8
  %n113 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k114 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l115 = load i128, i128* %l, align 4
  %a0116 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %b0117 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %call118 = call [256 x [256 x i128]]* @prod2D(i128 %n113, i128 %k114, i128 %l115, [256 x [256 x i128]]* %a0116, [256 x [256 x i128]]* %b0117)
  store [256 x [256 x i128]]* %call118, [256 x [256 x i128]]** %a0b0_var, align 8
  %n119 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k120 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l121 = load i128, i128* %l, align 4
  %a1122 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %neg_b1123 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %call124 = call [256 x [256 x i128]]* @prod2D(i128 %n119, i128 %k120, i128 %l121, [256 x [256 x i128]]* %a1122, [256 x [256 x i128]]* %neg_b1123)
  store [256 x [256 x i128]]* %call124, [256 x [256 x i128]]** %a1b1_neg, align 8
  %n125 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k126 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l127 = load i128, i128* %l, align 4
  %a0128 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %b1129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %call130 = call [256 x [256 x i128]]* @prod2D(i128 %n125, i128 %k126, i128 %l127, [256 x [256 x i128]]* %a0128, [256 x [256 x i128]]* %b1129)
  store [256 x [256 x i128]]* %call130, [256 x [256 x i128]]** %a0b1_var, align 8
  %n131 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k132 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l133 = load i128, i128* %l, align 4
  %a1134 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %b0135 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %call136 = call [256 x [256 x i128]]* @prod2D(i128 %n131, i128 %k132, i128 %l133, [256 x [256 x i128]]* %a1134, [256 x [256 x i128]]* %b0135)
  store [256 x [256 x i128]]* %call136, [256 x [256 x i128]]** %a1b0_var, align 8
  %n137 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k138 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l139 = load i128, i128* %l, align 4
  %a0140 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %neg_b1141 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %call142 = call [256 x [256 x i128]]* @prod2D(i128 %n137, i128 %k138, i128 %l139, [256 x [256 x i128]]* %a0140, [256 x [256 x i128]]* %neg_b1141)
  store [256 x [256 x i128]]* %call142, [256 x [256 x i128]]** %a0b1_neg, align 8
  %n143 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k144 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %l145 = load i128, i128* %l, align 4
  %a1146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %neg_b0147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b0, align 8
  %call148 = call [256 x [256 x i128]]* @prod2D(i128 %n143, i128 %k144, i128 %l145, [256 x [256 x i128]]* %a1146, [256 x [256 x i128]]* %neg_b0147)
  store [256 x [256 x i128]]* %call148, [256 x [256 x i128]]** %a1b0_neg, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch200, %loop.exit109
  %n150 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k151 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul = mul i128 2, %k151
  %a0b0_var152 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b0_var, align 8
  %i153 = load i128, i128* %i, align 4
  %array_getter154 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b0_var152, i128 0, i128 %i153
  %a0b0_var155 = load [256 x i128], [256 x i128]* %array_getter154, align 4
  %spice_inline_array156 = alloca [256 x i128], align 8
  store [256 x i128] %a0b0_var155, [256 x i128]* %spice_inline_array156, align 4
  %a1b1_neg157 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b1_neg, align 8
  %i158 = load i128, i128* %i, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b1_neg157, i128 0, i128 %i158
  %a1b1_neg160 = load [256 x i128], [256 x i128]* %array_getter159, align 4
  %spice_inline_array161 = alloca [256 x i128], align 8
  store [256 x i128] %a1b1_neg160, [256 x i128]* %spice_inline_array161, align 4
  %call162 = call [256 x i128]* @long_add(i128 %n150, i128 %mul, [256 x i128]* %spice_inline_array156, [256 x i128]* %spice_inline_array161)
  %ptr_getter163 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i164 = load i128, i128* %i, align 4
  %real_init165 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter163, i128 0, i128 %i164
  %9 = bitcast [256 x i128]* %real_init165 to i8*
  %10 = bitcast [256 x i128]* %call162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n166 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k167 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul168 = mul i128 2, %k167
  %a0b1_var169 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b1_var, align 8
  %i170 = load i128, i128* %i, align 4
  %array_getter171 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b1_var169, i128 0, i128 %i170
  %a0b1_var172 = load [256 x i128], [256 x i128]* %array_getter171, align 4
  %spice_inline_array173 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_var172, [256 x i128]* %spice_inline_array173, align 4
  %a1b0_var174 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b0_var, align 8
  %i175 = load i128, i128* %i, align 4
  %array_getter176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b0_var174, i128 0, i128 %i175
  %a1b0_var177 = load [256 x i128], [256 x i128]* %array_getter176, align 4
  %spice_inline_array178 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_var177, [256 x i128]* %spice_inline_array178, align 4
  %call179 = call [256 x i128]* @long_add(i128 %n166, i128 %mul168, [256 x i128]* %spice_inline_array173, [256 x i128]* %spice_inline_array178)
  %ptr_getter180 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i181 = load i128, i128* %i, align 4
  %imag_init182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter180, i128 0, i128 %i181
  %11 = bitcast [256 x i128]* %imag_init182 to i8*
  %12 = bitcast [256 x i128]* %call179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n183 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k184 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul185 = mul i128 2, %k184
  %a0b1_neg186 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b1_neg, align 8
  %i187 = load i128, i128* %i, align 4
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b1_neg186, i128 0, i128 %i187
  %a0b1_neg189 = load [256 x i128], [256 x i128]* %array_getter188, align 4
  %spice_inline_array190 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_neg189, [256 x i128]* %spice_inline_array190, align 4
  %a1b0_neg191 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b0_neg, align 8
  %i192 = load i128, i128* %i, align 4
  %array_getter193 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b0_neg191, i128 0, i128 %i192
  %a1b0_neg194 = load [256 x i128], [256 x i128]* %array_getter193, align 4
  %spice_inline_array195 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_neg194, [256 x i128]* %spice_inline_array195, align 4
  %call196 = call [256 x i128]* @long_add(i128 %n183, i128 %mul185, [256 x i128]* %spice_inline_array190, [256 x i128]* %spice_inline_array195)
  %ptr_getter197 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init_neg, align 8
  %i198 = load i128, i128* %i, align 4
  %imag_init_neg199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter197, i128 0, i128 %i198
  %13 = bitcast [256 x i128]* %imag_init_neg199 to i8*
  %14 = bitcast [256 x i128]* %call196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch200

loop.latch200:                                    ; preds = %loop.body149
  %i201 = load i128, i128* %i, align 4
  %add202 = add i128 %i201, 1
  store i128 %add202, i128* %i, align 4
  %i203 = load i128, i128* %i, align 4
  %l204 = load i128, i128* %l, align 4
  %mul205 = mul i128 2, %l204
  %sub = sub i128 %mul205, 1
  %slt206 = icmp slt i128 %i203, %sub
  br i1 %slt206, label %loop.body149, label %loop.exit207

loop.exit207:                                     ; preds = %loop.latch200
  %l208 = load i128, i128* %l, align 4
  %uniform_array209 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array209, [256 x [256 x i128]]** %real_carry, align 8
  %l210 = load i128, i128* %l, align 4
  %uniform_array211 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array211, [256 x [256 x i128]]** %imag_carry, align 8
  %l212 = load i128, i128* %l, align 4
  %uniform_array213 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array213, [256 x [256 x i128]]** %real_final, align 8
  %l214 = load i128, i128* %l, align 4
  %uniform_array215 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array215, [256 x [256 x i128]]** %imag_final, align 8
  %uniform_array216 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array216, [256 x i128]** %zeros, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body217

loop.body217:                                     ; preds = %loop.latch221, %loop.exit207
  %ptr_getter218 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %i219 = load i128, i128* %i, align 4
  %zeros220 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter218, i128 0, i128 %i219
  store i128 0, i128* %zeros220, align 4
  br label %loop.latch221

loop.latch221:                                    ; preds = %loop.body217
  %i222 = load i128, i128* %i, align 4
  %add223 = add i128 %i222, 1
  store i128 %add223, i128* %i, align 4
  %i224 = load i128, i128* %i, align 4
  %slt225 = icmp slt i128 %i224, 50
  br i1 %slt225, label %loop.body217, label %loop.exit226

loop.exit226:                                     ; preds = %loop.latch221
  store i128 0, i128* %i, align 4
  br label %loop.body227

loop.body227:                                     ; preds = %loop.latch295, %loop.exit226
  %i228 = load i128, i128* %i, align 4
  %l229 = load i128, i128* %l, align 4
  %sub230 = sub i128 %l229, 1
  %eq = icmp eq i128 %i228, %sub230
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body227
  %n231 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k232 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul233 = mul i128 2, %k232
  %add234 = add i128 %mul233, 1
  %zeros235 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %zeros236 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %call237 = call [256 x i128]* @long_add(i128 %n231, i128 %add234, [256 x i128]* %zeros235, [256 x i128]* %zeros236)
  %ptr_getter238 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i239 = load i128, i128* %i, align 4
  %real_carry240 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter238, i128 0, i128 %i239
  %15 = bitcast [256 x i128]* %real_carry240 to i8*
  %16 = bitcast [256 x i128]* %call237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n241 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k242 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul243 = mul i128 2, %k242
  %add244 = add i128 %mul243, 1
  %zeros245 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %zeros246 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %call247 = call [256 x i128]* @long_add(i128 %n241, i128 %add244, [256 x i128]* %zeros245, [256 x i128]* %zeros246)
  %ptr_getter248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i249 = load i128, i128* %i, align 4
  %imag_carry250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter248, i128 0, i128 %i249
  %17 = bitcast [256 x i128]* %imag_carry250 to i8*
  %18 = bitcast [256 x i128]* %call247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body227
  %n251 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k252 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul253 = mul i128 2, %k252
  %add254 = add i128 %mul253, 1
  %real_init255 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i256 = load i128, i128* %i, align 4
  %l257 = load i128, i128* %l, align 4
  %add258 = add i128 %i256, %l257
  %array_getter259 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init255, i128 0, i128 %add258
  %real_init260 = load [256 x i128], [256 x i128]* %array_getter259, align 4
  %spice_inline_array261 = alloca [256 x i128], align 8
  store [256 x i128] %real_init260, [256 x i128]* %spice_inline_array261, align 4
  %imag_init_neg262 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init_neg, align 8
  %i263 = load i128, i128* %i, align 4
  %l264 = load i128, i128* %l, align 4
  %add265 = add i128 %i263, %l264
  %array_getter266 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init_neg262, i128 0, i128 %add265
  %imag_init_neg267 = load [256 x i128], [256 x i128]* %array_getter266, align 4
  %spice_inline_array268 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init_neg267, [256 x i128]* %spice_inline_array268, align 4
  %call269 = call [256 x i128]* @long_add(i128 %n251, i128 %add254, [256 x i128]* %spice_inline_array261, [256 x i128]* %spice_inline_array268)
  %ptr_getter270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i271 = load i128, i128* %i, align 4
  %real_carry272 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter270, i128 0, i128 %i271
  %19 = bitcast [256 x i128]* %real_carry272 to i8*
  %20 = bitcast [256 x i128]* %call269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n273 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k274 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul275 = mul i128 2, %k274
  %add276 = add i128 %mul275, 1
  %imag_init277 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i278 = load i128, i128* %i, align 4
  %l279 = load i128, i128* %l, align 4
  %add280 = add i128 %i278, %l279
  %array_getter281 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init277, i128 0, i128 %add280
  %imag_init282 = load [256 x i128], [256 x i128]* %array_getter281, align 4
  %spice_inline_array283 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init282, [256 x i128]* %spice_inline_array283, align 4
  %real_init284 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i285 = load i128, i128* %i, align 4
  %l286 = load i128, i128* %l, align 4
  %add287 = add i128 %i285, %l286
  %array_getter288 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init284, i128 0, i128 %add287
  %real_init289 = load [256 x i128], [256 x i128]* %array_getter288, align 4
  %spice_inline_array290 = alloca [256 x i128], align 8
  store [256 x i128] %real_init289, [256 x i128]* %spice_inline_array290, align 4
  %call291 = call [256 x i128]* @long_add(i128 %n273, i128 %add276, [256 x i128]* %spice_inline_array283, [256 x i128]* %spice_inline_array290)
  %ptr_getter292 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i293 = load i128, i128* %i, align 4
  %imag_carry294 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter292, i128 0, i128 %i293
  %21 = bitcast [256 x i128]* %imag_carry294 to i8*
  %22 = bitcast [256 x i128]* %call291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch295

loop.latch295:                                    ; preds = %if.exit
  %i296 = load i128, i128* %i, align 4
  %add297 = add i128 %i296, 1
  store i128 %add297, i128* %i, align 4
  %i298 = load i128, i128* %i, align 4
  %l299 = load i128, i128* %l, align 4
  %slt300 = icmp slt i128 %i298, %l299
  br i1 %slt300, label %loop.body227, label %loop.exit301

loop.exit301:                                     ; preds = %loop.latch295
  store i128 0, i128* %i, align 4
  br label %loop.body302

loop.body302:                                     ; preds = %loop.latch345, %loop.exit301
  %n303 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k304 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul305 = mul i128 2, %k304
  %add306 = add i128 %mul305, 2
  %k307 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul308 = mul i128 2, %k307
  %add309 = add i128 %mul308, 1
  %real_carry310 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i311 = load i128, i128* %i, align 4
  %array_getter312 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_carry310, i128 0, i128 %i311
  %real_carry313 = load [256 x i128], [256 x i128]* %array_getter312, align 4
  %spice_inline_array314 = alloca [256 x i128], align 8
  store [256 x i128] %real_carry313, [256 x i128]* %spice_inline_array314, align 4
  %real_init315 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i316 = load i128, i128* %i, align 4
  %array_getter317 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init315, i128 0, i128 %i316
  %real_init318 = load [256 x i128], [256 x i128]* %array_getter317, align 4
  %spice_inline_array319 = alloca [256 x i128], align 8
  store [256 x i128] %real_init318, [256 x i128]* %spice_inline_array319, align 4
  %call320 = call [256 x i128]* @long_add_unequal(i128 %n303, i128 %add306, i128 %add309, [256 x i128]* %spice_inline_array314, [256 x i128]* %spice_inline_array319)
  %ptr_getter321 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_final, align 8
  %i322 = load i128, i128* %i, align 4
  %real_final323 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter321, i128 0, i128 %i322
  %23 = bitcast [256 x i128]* %real_final323 to i8*
  %24 = bitcast [256 x i128]* %call320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n324 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k325 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul326 = mul i128 2, %k325
  %add327 = add i128 %mul326, 2
  %k328 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %mul329 = mul i128 2, %k328
  %add330 = add i128 %mul329, 1
  %imag_carry331 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i332 = load i128, i128* %i, align 4
  %array_getter333 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_carry331, i128 0, i128 %i332
  %imag_carry334 = load [256 x i128], [256 x i128]* %array_getter333, align 4
  %spice_inline_array335 = alloca [256 x i128], align 8
  store [256 x i128] %imag_carry334, [256 x i128]* %spice_inline_array335, align 4
  %imag_init336 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i337 = load i128, i128* %i, align 4
  %array_getter338 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init336, i128 0, i128 %i337
  %imag_init339 = load [256 x i128], [256 x i128]* %array_getter338, align 4
  %spice_inline_array340 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init339, [256 x i128]* %spice_inline_array340, align 4
  %call341 = call [256 x i128]* @long_add_unequal(i128 %n324, i128 %add327, i128 %add330, [256 x i128]* %spice_inline_array335, [256 x i128]* %spice_inline_array340)
  %ptr_getter342 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_final, align 8
  %i343 = load i128, i128* %i, align 4
  %imag_final344 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter342, i128 0, i128 %i343
  %25 = bitcast [256 x i128]* %imag_final344 to i8*
  %26 = bitcast [256 x i128]* %call341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch345

loop.latch345:                                    ; preds = %loop.body302
  %i346 = load i128, i128* %i, align 4
  %add347 = add i128 %i346, 1
  store i128 %add347, i128* %i, align 4
  %i348 = load i128, i128* %i, align 4
  %l349 = load i128, i128* %l, align 4
  %slt350 = icmp slt i128 %i348, %l349
  br i1 %slt350, label %loop.body302, label %loop.exit351

loop.exit351:                                     ; preds = %loop.latch345
  %l352 = load i128, i128* %l, align 4
  %uniform_array353 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array353, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %l354 = load i128, i128* %l, align 4
  %uniform_array355 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array355, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body356

loop.body356:                                     ; preds = %loop.latch385, %loop.exit351
  %n357 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k358 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %k359 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %add360 = add i128 %k359, 3
  %real_final361 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_final, align 8
  %i362 = load i128, i128* %i, align 4
  %array_getter363 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_final361, i128 0, i128 %i362
  %real_final364 = load [256 x i128], [256 x i128]* %array_getter363, align 4
  %spice_inline_array365 = alloca [256 x i128], align 8
  store [256 x i128] %real_final364, [256 x i128]* %spice_inline_array365, align 4
  %p366 = load [256 x i128]*, [256 x i128]** %find_fp12_product.p.declare_arg, align 8
  %call367 = call [256 x [256 x i128]]* @long_div2(i128 %n357, i128 %k358, i128 %add360, [256 x i128]* %spice_inline_array365, [256 x i128]* %p366)
  %ptr_getter368 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %i369 = load i128, i128* %i, align 4
  %XYreal_temp370 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter368, i128 0, i128 %i369
  %27 = bitcast [256 x [256 x i128]]* %XYreal_temp370 to i8*
  %28 = bitcast [256 x [256 x i128]]* %call367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %n371 = load i128, i128* %find_fp12_product.n.declare_arg, align 4
  %k372 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %k373 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %add374 = add i128 %k373, 3
  %imag_final375 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_final, align 8
  %i376 = load i128, i128* %i, align 4
  %array_getter377 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_final375, i128 0, i128 %i376
  %imag_final378 = load [256 x i128], [256 x i128]* %array_getter377, align 4
  %spice_inline_array379 = alloca [256 x i128], align 8
  store [256 x i128] %imag_final378, [256 x i128]* %spice_inline_array379, align 4
  %p380 = load [256 x i128]*, [256 x i128]** %find_fp12_product.p.declare_arg, align 8
  %call381 = call [256 x [256 x i128]]* @long_div2(i128 %n371, i128 %k372, i128 %add374, [256 x i128]* %spice_inline_array379, [256 x i128]* %p380)
  %ptr_getter382 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %i383 = load i128, i128* %i, align 4
  %XYimag_temp384 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter382, i128 0, i128 %i383
  %29 = bitcast [256 x [256 x i128]]* %XYimag_temp384 to i8*
  %30 = bitcast [256 x [256 x i128]]* %call381 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch385

loop.latch385:                                    ; preds = %loop.body356
  %i386 = load i128, i128* %i, align 4
  %add387 = add i128 %i386, 1
  store i128 %add387, i128* %i, align 4
  %i388 = load i128, i128* %i, align 4
  %l389 = load i128, i128* %l, align 4
  %slt390 = icmp slt i128 %i388, %l389
  br i1 %slt390, label %loop.body356, label %loop.exit391

loop.exit391:                                     ; preds = %loop.latch385
  store i128 0, i128* %i, align 4
  br label %loop.body392

loop.body392:                                     ; preds = %loop.latch419, %loop.exit391
  store i128 0, i128* %j, align 4
  br label %loop.body393

loop.body393:                                     ; preds = %loop.latch412, %loop.body392
  %XYreal_temp394 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %i395 = load i128, i128* %i, align 4
  %j396 = load i128, i128* %j, align 4
  %array_getter397 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %XYreal_temp394, i128 0, i128 %i395, i128 1, i128 %j396
  %XYreal_temp398 = load i128, i128* %array_getter397, align 4
  %ptr_getter399 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i400 = load i128, i128* %i, align 4
  %j401 = load i128, i128* %j, align 4
  %out402 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter399, i128 0, i128 %i400, i128 0, i128 %j401
  store i128 %XYreal_temp398, i128* %out402, align 4
  %XYimag_temp403 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %i404 = load i128, i128* %i, align 4
  %j405 = load i128, i128* %j, align 4
  %array_getter406 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %XYimag_temp403, i128 0, i128 %i404, i128 1, i128 %j405
  %XYimag_temp407 = load i128, i128* %array_getter406, align 4
  %ptr_getter408 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i409 = load i128, i128* %i, align 4
  %j410 = load i128, i128* %j, align 4
  %out411 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter408, i128 0, i128 %i409, i128 1, i128 %j410
  store i128 %XYimag_temp407, i128* %out411, align 4
  br label %loop.latch412

loop.latch412:                                    ; preds = %loop.body393
  %j413 = load i128, i128* %j, align 4
  %add414 = add i128 %j413, 1
  store i128 %add414, i128* %j, align 4
  %j415 = load i128, i128* %j, align 4
  %k416 = load i128, i128* %find_fp12_product.k.declare_arg, align 4
  %slt417 = icmp slt i128 %j415, %k416
  br i1 %slt417, label %loop.body393, label %loop.exit418

loop.exit418:                                     ; preds = %loop.latch412
  br label %loop.latch419

loop.latch419:                                    ; preds = %loop.exit418
  %i420 = load i128, i128* %i, align 4
  %add421 = add i128 %i420, 1
  store i128 %add421, i128* %i, align 4
  %i422 = load i128, i128* %i, align 4
  %l423 = load i128, i128* %l, align 4
  %slt424 = icmp slt i128 %i422, %l423
  br i1 %slt424, label %loop.body392, label %loop.exit425

loop.exit425:                                     ; preds = %loop.latch419
  %out426 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out426
}

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %find_fp2_sum.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp2_sum.n.declare_arg, align 4
  %find_fp2_sum.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp2_sum.k.declare_arg, align 4
  %find_fp2_sum.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %find_fp2_sum.a.declare_arg, align 8
  %find_fp2_sum.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %find_fp2_sum.b.declare_arg, align 8
  %find_fp2_sum.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp2_sum.p.declare_arg, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %find_fp2_sum.n.declare_arg, align 4
  %k = load i128, i128* %find_fp2_sum.k.declare_arg, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_sum.a.declare_arg, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_sum.b.declare_arg, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp2_sum.p.declare_arg, align 8
  %call = call [256 x i128]* @long_add_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %find_fp2_sum.n.declare_arg, align 4
  %k8 = load i128, i128* %find_fp2_sum.k.declare_arg, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_sum.a.declare_arg, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_sum.b.declare_arg, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %find_fp2_sum.p.declare_arg, align 8
  %call18 = call [256 x i128]* @long_add_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
}

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %get_signed_fp_carry_witness.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %get_signed_fp_carry_witness.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %get_signed_fp_carry_witness.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %get_signed_fp_carry_witness.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %get_signed_fp_carry_witness.a.declare_arg, align 8
  %get_signed_fp_carry_witness.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %get_signed_fp_carry_witness.p.declare_arg, align 8
  %a_short = alloca [256 x i128]*, align 8
  %a_short1 = alloca [256 x i128], align 8
  store [256 x i128]* %a_short1, [256 x i128]** %a_short, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out2, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  store i128 %i3, i128* %i, align 4
  %a_pos = alloca [256 x i128]*, align 8
  %a_pos4 = alloca [256 x i128], align 8
  store [256 x i128]* %a_pos4, [256 x i128]** %a_pos, align 8
  %carry = alloca i128, align 8
  %carry5 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry5, i128* %carry, align 4
  %Y_is_zero = alloca i128, align 8
  %Y_is_zero6 = call i128 @fn_intrinsic_utils_init()
  store i128 %Y_is_zero6, i128* %Y_is_zero, align 4
  %X = alloca [256 x [256 x i128]]*, align 8
  %X7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %X7, [256 x [256 x i128]]** %X, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %k = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %get_signed_fp_carry_witness.a.declare_arg, align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %n, i128 %k, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %a_short, align 8
  %a_short8 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a_short8, i128 0, i128 50
  %a_short9 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short9, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n10 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %k11 = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %m = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %a_short12 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %p = load [256 x i128]*, [256 x i128]** %get_signed_fp_carry_witness.p.declare_arg, align 8
  %call13 = call [256 x [256 x i128]]* @long_div2(i128 %n10, i128 %k11, i128 %m, [256 x i128]* %a_short12, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call13, [256 x [256 x i128]]** %out, align 8
  br label %if.exit139

if.false:                                         ; preds = %entry
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %a_pos, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %a_short15 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %a_short15, i128 0, i128 %i16
  %a_short18 = load i128, i128* %array_getter17, align 4
  %neg = sub i128 0, %a_short18
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %i19 = load i128, i128* %i, align 4
  %a_pos20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i19
  store i128 %neg, i128* %a_pos20, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i21 = load i128, i128* %i, align 4
  %add = add i128 %i21, 1
  store i128 %add, i128* %i, align 4
  %i22 = load i128, i128* %i, align 4
  %k23 = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %m24 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %add25 = add i128 %k23, %m24
  %slt = icmp slt i128 %i22, %add25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n26 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %k27 = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %m28 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %a_pos29 = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %p30 = load [256 x i128]*, [256 x i128]** %get_signed_fp_carry_witness.p.declare_arg, align 8
  %call31 = call [256 x [256 x i128]]* @long_div2(i128 %n26, i128 %k27, i128 %m28, [256 x i128]* %a_pos29, [256 x i128]* %p30)
  store [256 x [256 x i128]]* %call31, [256 x [256 x i128]]** %X, align 8
  store i128 1, i128* %Y_is_zero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch39, %loop.exit
  %X35 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X35, i128 0, i128 1, i128 %i36
  %X38 = load i128, i128* %array_getter37, align 4
  %ne = icmp ne i128 %X38, 0
  br i1 %ne, label %if.true33, label %if.false34

if.true33:                                        ; preds = %loop.body32
  store i128 0, i128* %Y_is_zero, align 4
  br label %if.exit

if.false34:                                       ; preds = %loop.body32
  br label %if.exit

if.exit:                                          ; preds = %if.false34, %if.true33
  br label %loop.latch39

loop.latch39:                                     ; preds = %if.exit
  %i40 = load i128, i128* %i, align 4
  %add41 = add i128 %i40, 1
  store i128 %add41, i128* %i, align 4
  %i42 = load i128, i128* %i, align 4
  %k43 = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %slt44 = icmp slt i128 %i42, %k43
  br i1 %slt44, label %loop.body32, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %Y_is_zero48 = load i128, i128* %Y_is_zero, align 4
  %eq49 = icmp eq i128 %Y_is_zero48, 1
  br i1 %eq49, label %if.true46, label %if.false47

if.true46:                                        ; preds = %loop.exit45
  %X50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X50, i128 0, i128 1
  %X52 = load [256 x i128], [256 x i128]* %array_getter51, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X52, [256 x i128]* %spice_inline_array, align 4
  %ptr_getter53 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter53, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out54 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit122

if.false47:                                       ; preds = %loop.exit45
  %n55 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %k56 = load i128, i128* %get_signed_fp_carry_witness.k.declare_arg, align 4
  %p57 = load [256 x i128]*, [256 x i128]** %get_signed_fp_carry_witness.p.declare_arg, align 8
  %X58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X58, i128 0, i128 1
  %X60 = load [256 x i128], [256 x i128]* %array_getter59, align 4
  %spice_inline_array61 = alloca [256 x i128], align 8
  store [256 x i128] %X60, [256 x i128]* %spice_inline_array61, align 4
  %call62 = call [256 x i128]* @long_sub(i128 %n55, i128 %k56, [256 x i128]* %p57, [256 x i128]* %spice_inline_array61)
  %ptr_getter63 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter63, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out64 to i8*
  %8 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %X65 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X65, i128 0, i128 0, i128 0
  %X67 = load i128, i128* %array_getter66, align 4
  %add68 = add i128 %X67, 1
  %ptr_getter69 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %X70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter69, i128 0, i128 0, i128 0
  store i128 %add68, i128* %X70, align 4
  %X73 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X73, i128 0, i128 0, i128 0
  %X75 = load i128, i128* %array_getter74, align 4
  %n76 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %lshift = shl i128 1, %n76
  %sge = icmp sge i128 %X75, %lshift
  br i1 %sge, label %if.true71, label %if.false72

if.true71:                                        ; preds = %if.false47
  store i128 0, i128* %i, align 4
  br label %loop.body77

if.false72:                                       ; preds = %if.false47
  br label %if.exit121

loop.body77:                                      ; preds = %loop.latch105, %if.true71
  %X78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X78, i128 0, i128 0, i128 %i79
  %X81 = load i128, i128* %array_getter80, align 4
  %n82 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %lshift83 = shl i128 1, %n82
  %sdiv = sdiv i128 %X81, %lshift83
  store i128 %sdiv, i128* %carry, align 4
  %X84 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i85 = load i128, i128* %i, align 4
  %add86 = add i128 %i85, 1
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X84, i128 0, i128 0, i128 %add86
  %X88 = load i128, i128* %array_getter87, align 4
  %carry89 = load i128, i128* %carry, align 4
  %add90 = add i128 %X88, %carry89
  %ptr_getter91 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i92 = load i128, i128* %i, align 4
  %add93 = add i128 %i92, 1
  %X94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter91, i128 0, i128 0, i128 %add93
  store i128 %add90, i128* %X94, align 4
  %X95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X95, i128 0, i128 0, i128 %i96
  %X98 = load i128, i128* %array_getter97, align 4
  %carry99 = load i128, i128* %carry, align 4
  %n100 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %lshift101 = shl i128 1, %n100
  %mul = mul i128 %carry99, %lshift101
  %sub = sub i128 %X98, %mul
  %ptr_getter102 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i103 = load i128, i128* %i, align 4
  %X104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter102, i128 0, i128 0, i128 %i103
  store i128 %sub, i128* %X104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body77
  %i106 = load i128, i128* %i, align 4
  %add107 = add i128 %i106, 1
  store i128 %add107, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %m109 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %sub110 = sub i128 %m109, 1
  %slt111 = icmp slt i128 %i108, %sub110
  br i1 %slt111, label %loop.body77, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch105
  %X113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %m114 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %sub115 = sub i128 %m114, 1
  %array_getter116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X113, i128 0, i128 0, i128 %sub115
  %X117 = load i128, i128* %array_getter116, align 4
  %n118 = load i128, i128* %get_signed_fp_carry_witness.n.declare_arg, align 4
  %lshift119 = shl i128 1, %n118
  %slt120 = icmp slt i128 %X117, %lshift119
  call void @fn_intrinsic_utils_assert(i1 %slt120)
  br label %if.exit121

if.exit121:                                       ; preds = %if.false72, %loop.exit112
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true46
  store i128 0, i128* %i, align 4
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch132, %if.exit122
  %X124 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X124, i128 0, i128 0, i128 %i125
  %X127 = load i128, i128* %array_getter126, align 4
  %neg128 = sub i128 0, %X127
  %ptr_getter129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i130 = load i128, i128* %i, align 4
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter129, i128 0, i128 0, i128 %i130
  store i128 %neg128, i128* %out131, align 4
  br label %loop.latch132

loop.latch132:                                    ; preds = %loop.body123
  %i133 = load i128, i128* %i, align 4
  %add134 = add i128 %i133, 1
  store i128 %add134, i128* %i, align 4
  %i135 = load i128, i128* %i, align 4
  %m136 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %slt137 = icmp slt i128 %i135, %m136
  br i1 %slt137, label %loop.body123, label %loop.exit138

loop.exit138:                                     ; preds = %loop.latch132
  br label %if.exit139

if.exit139:                                       ; preds = %loop.exit138, %if.true
  %out140 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out140
}

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %get_signed_fp2_carry_witness.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %get_signed_fp2_carry_witness.n.declare_arg, align 4
  %get_signed_fp2_carry_witness.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %get_signed_fp2_carry_witness.k.declare_arg, align 4
  %get_signed_fp2_carry_witness.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %get_signed_fp2_carry_witness.m.declare_arg, align 4
  %get_signed_fp2_carry_witness.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %get_signed_fp2_carry_witness.a.declare_arg, align 8
  %get_signed_fp2_carry_witness.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %get_signed_fp2_carry_witness.p.declare_arg, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %get_signed_fp2_carry_witness.n.declare_arg, align 4
  %k = load i128, i128* %get_signed_fp2_carry_witness.k.declare_arg, align 4
  %m = load i128, i128* %get_signed_fp2_carry_witness.m.declare_arg, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %get_signed_fp2_carry_witness.a.declare_arg, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i3
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %p = load [256 x i128]*, [256 x i128]** %get_signed_fp2_carry_witness.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n, i128 %k, i128 %m, [256 x i128]* %spice_inline_array, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i5 = load i128, i128* %i, align 4
  %out6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i5
  %5 = bitcast [256 x [256 x i128]]* %out6 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i7 = load i128, i128* %i, align 4
  %add = add i128 %i7, 1
  store i128 %add, i128* %i, align 4
  %i8 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i8, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out9 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out9
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_sum(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %find_fp12_sum.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp12_sum.n.declare_arg, align 4
  %find_fp12_sum.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp12_sum.k.declare_arg, align 4
  %find_fp12_sum.a.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %find_fp12_sum.a.declare_arg, align 8
  %find_fp12_sum.b.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %find_fp12_sum.b.declare_arg, align 8
  %find_fp12_sum.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp12_sum.p.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out2, [256 x [256 x [256 x i128]]]** %out, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %find_fp12_sum.n.declare_arg, align 4
  %k = load i128, i128* %find_fp12_sum.k.declare_arg, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_sum.a.declare_arg, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i3
  %a4 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a4, [256 x [256 x i128]]* %spice_inline_array, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_sum.b.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i5
  %b7 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b7, [256 x [256 x i128]]* %spice_inline_array8, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp12_sum.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n, i128 %k, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array8, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i9 = load i128, i128* %i, align 4
  %out10 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i9
  %5 = bitcast [256 x [256 x i128]]* %out10 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add = add i128 %i11, 1
  store i128 %add, i128* %i, align 4
  %i12 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i12, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out13 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out13
}

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %find_fp2_inverse.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp2_inverse.n.declare_arg, align 4
  %find_fp2_inverse.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp2_inverse.k.declare_arg, align 4
  %find_fp2_inverse.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %find_fp2_inverse.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %sq_sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sq_sum1, [256 x i128]** %sq_sum, align 8
  %lambda = alloca [256 x i128]*, align 8
  %lambda2 = alloca [256 x i128], align 8
  store [256 x i128]* %lambda2, [256 x i128]** %lambda, align 8
  %out1 = alloca [256 x i128]*, align 8
  %out13 = alloca [256 x i128], align 8
  store [256 x i128]* %out13, [256 x i128]** %out1, align 8
  %out0 = alloca [256 x i128]*, align 8
  %out04 = alloca [256 x i128], align 8
  store [256 x i128]* %out04, [256 x i128]** %out0, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %sq_sum_div5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sq_sum_div5, [256 x [256 x i128]]** %sq_sum_div, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %sq16 = alloca [256 x i128], align 8
  store [256 x i128]* %sq16, [256 x i128]** %sq1, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out7, [256 x [256 x i128]]** %out, align 8
  %out1_pre = alloca [256 x i128]*, align 8
  %out1_pre8 = alloca [256 x i128], align 8
  store [256 x i128]* %out1_pre8, [256 x i128]** %out1_pre, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %sq09 = alloca [256 x i128], align 8
  store [256 x i128]* %sq09, [256 x i128]** %sq0, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %out0_div10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out0_div10, [256 x [256 x i128]]** %out0_div, align 8
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %out1_div11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1_div11, [256 x [256 x i128]]** %out1_div, align 8
  %n = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %a13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a13, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  store [256 x i128]* %call, [256 x i128]** %sq0, align 8
  %n17 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k18 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %a19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a19, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %a23 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a23, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %n17, i128 %k18, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  store [256 x i128]* %call27, [256 x i128]** %sq1, align 8
  %n28 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k29 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %mul = mul i128 2, %k29
  %sq030 = load [256 x i128]*, [256 x i128]** %sq0, align 8
  %sq131 = load [256 x i128]*, [256 x i128]** %sq1, align 8
  %call32 = call [256 x i128]* @long_add(i128 %n28, i128 %mul, [256 x i128]* %sq030, [256 x i128]* %sq131)
  store [256 x i128]* %call32, [256 x i128]** %sq_sum, align 8
  %n33 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k34 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %k35 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %add = add i128 %k35, 1
  %sq_sum36 = load [256 x i128]*, [256 x i128]** %sq_sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %n33, i128 %k34, i128 %add, [256 x i128]* %sq_sum36, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call37, [256 x [256 x i128]]** %sq_sum_div, align 8
  %n38 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k39 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %sq_sum_div40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sq_sum_div, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sq_sum_div40, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %p44 = load [256 x i128]*, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %call45 = call [256 x i128]* @mod_inv(i128 %n38, i128 %k39, [256 x i128]* %spice_inline_array43, [256 x i128]* %p44)
  store [256 x i128]* %call45, [256 x i128]** %lambda, align 8
  %n46 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k47 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %lambda48 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %a49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a49, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %n46, i128 %k47, [256 x i128]* %lambda48, [256 x i128]* %spice_inline_array52)
  store [256 x i128]* %call53, [256 x i128]** %out0, align 8
  %n54 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k55 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %out056 = load [256 x i128]*, [256 x i128]** %out0, align 8
  %p57 = load [256 x i128]*, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %call58 = call [256 x [256 x i128]]* @long_div(i128 %n54, i128 %k55, [256 x i128]* %out056, [256 x i128]* %p57)
  store [256 x [256 x i128]]* %call58, [256 x [256 x i128]]** %out0_div, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %out0_div59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out0_div, align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out0_div59, i128 0, i128 1
  %out0_div61 = load [256 x i128], [256 x i128]* %array_getter60, align 4
  %spice_inline_array62 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div61, [256 x i128]* %spice_inline_array62, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out63 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n64 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k65 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %p66 = load [256 x i128]*, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %a67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_inverse.a.declare_arg, align 8
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a67, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %n64, i128 %k65, [256 x i128]* %p66, [256 x i128]* %spice_inline_array70)
  store [256 x i128]* %call71, [256 x i128]** %out1_pre, align 8
  %n72 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k73 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %lambda74 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %out1_pre75 = load [256 x i128]*, [256 x i128]** %out1_pre, align 8
  %call76 = call [256 x i128]* @prod(i128 %n72, i128 %k73, [256 x i128]* %lambda74, [256 x i128]* %out1_pre75)
  store [256 x i128]* %call76, [256 x i128]** %out1, align 8
  %n77 = load i128, i128* %find_fp2_inverse.n.declare_arg, align 4
  %k78 = load i128, i128* %find_fp2_inverse.k.declare_arg, align 4
  %out179 = load [256 x i128]*, [256 x i128]** %out1, align 8
  %p80 = load [256 x i128]*, [256 x i128]** %find_fp2_inverse.p.declare_arg, align 8
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %n77, i128 %k78, [256 x i128]* %out179, [256 x i128]* %p80)
  store [256 x [256 x i128]]* %call81, [256 x [256 x i128]]** %out1_div, align 8
  %out1_div82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out1_div, align 8
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out1_div82, i128 0, i128 1
  %out1_div84 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div84, [256 x i128]* %spice_inline_array85, align 4
  %ptr_getter86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter86, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out87 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out88
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %find_fp2_product.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp2_product.n.declare_arg, align 4
  %find_fp2_product.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp2_product.k.declare_arg, align 4
  %find_fp2_product.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %find_fp2_product.a.declare_arg, align 8
  %find_fp2_product.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %find_fp2_product.b.declare_arg, align 8
  %find_fp2_product.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp2_product.p.declare_arg, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %ab3 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %ab3, [256 x [256 x [256 x i128]]]** %ab, align 8
  %j = alloca i128, align 8
  %j4 = call i128 @fn_intrinsic_utils_init()
  store i128 %j4, i128* %j, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array5 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array5, [256 x [256 x [256 x i128]]]** %ab, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %n = load i128, i128* %find_fp2_product.n.declare_arg, align 4
  %k = load i128, i128* %find_fp2_product.k.declare_arg, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_product.a.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i7
  %a8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_product.b.declare_arg, align 8
  %j9 = load i128, i128* %j, align 4
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j9
  %b11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %b11, [256 x i128]* %spice_inline_array12, align 4
  %p = load [256 x i128]*, [256 x i128]** %find_fp2_product.p.declare_arg, align 8
  %call = call [256 x i128]* @prod_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array12, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %i13 = load i128, i128* %i, align 4
  %j14 = load i128, i128* %j, align 4
  %ab15 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i13, i128 %j14
  %5 = bitcast [256 x i128]* %ab15 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %j16 = load i128, i128* %j, align 4
  %add = add i128 %j16, 1
  store i128 %add, i128* %j, align 4
  %j17 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j17, 2
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %slt22 = icmp slt i128 %i21, 2
  br i1 %slt22, label %loop.body, label %loop.exit23

loop.exit23:                                      ; preds = %loop.latch18
  %n24 = load i128, i128* %find_fp2_product.n.declare_arg, align 4
  %k25 = load i128, i128* %find_fp2_product.k.declare_arg, align 4
  %ab26 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab26, i128 0, i128 0, i128 0
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %ab30 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter31 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab30, i128 0, i128 1, i128 1
  %ab32 = load [256 x i128], [256 x i128]* %array_getter31, align 4
  %spice_inline_array33 = alloca [256 x i128], align 8
  store [256 x i128] %ab32, [256 x i128]* %spice_inline_array33, align 4
  %p34 = load [256 x i128]*, [256 x i128]** %find_fp2_product.p.declare_arg, align 8
  %call35 = call [256 x i128]* @long_sub_mod(i128 %n24, i128 %k25, [256 x i128]* %spice_inline_array29, [256 x i128]* %spice_inline_array33, [256 x i128]* %p34)
  %ptr_getter36 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter36, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out37 to i8*
  %8 = bitcast [256 x i128]* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n38 = load i128, i128* %find_fp2_product.n.declare_arg, align 4
  %k39 = load i128, i128* %find_fp2_product.k.declare_arg, align 4
  %ab40 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab40, i128 0, i128 0, i128 1
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %ab44 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter45 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab44, i128 0, i128 1, i128 0
  %ab46 = load [256 x i128], [256 x i128]* %array_getter45, align 4
  %spice_inline_array47 = alloca [256 x i128], align 8
  store [256 x i128] %ab46, [256 x i128]* %spice_inline_array47, align 4
  %p48 = load [256 x i128]*, [256 x i128]** %find_fp2_product.p.declare_arg, align 8
  %call49 = call [256 x i128]* @long_add_mod(i128 %n38, i128 %k39, [256 x i128]* %spice_inline_array43, [256 x i128]* %spice_inline_array47, [256 x i128]* %p48)
  %ptr_getter50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter50, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out51 to i8*
  %10 = bitcast [256 x i128]* %call49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out52
}

define [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %5) {
entry:
  %find_fp6_inverse.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp6_inverse.n.declare_arg, align 4
  %find_fp6_inverse.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp6_inverse.k.declare_arg, align 4
  %find_fp6_inverse.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %find_fp6_inverse.a0.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %find_fp6_inverse.a1.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %find_fp6_inverse.a2.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %5, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %a0_squared = alloca [256 x [256 x i128]]*, align 8
  %a0_squared1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0_squared1, [256 x [256 x i128]]** %a0_squared, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %a2_cubed = alloca [256 x [256 x i128]]*, align 8
  %a2_cubed3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a2_cubed3, [256 x [256 x i128]]** %a2_cubed, align 8
  %v0_1 = alloca [256 x [256 x i128]]*, align 8
  %v0_14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_14, [256 x [256 x i128]]** %v0_1, align 8
  %a0a1a2 = alloca [256 x [256 x i128]]*, align 8
  %a0a1a25 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a1a25, [256 x [256 x i128]]** %a0a1a2, align 8
  %denom_1 = alloca [256 x [256 x i128]]*, align 8
  %denom_16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_16, [256 x [256 x i128]]** %denom_1, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out7 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out7, [256 x [256 x [256 x i128]]]** %out, align 8
  %a13v3 = alloca [256 x [256 x i128]]*, align 8
  %a13v38 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a13v38, [256 x [256 x i128]]** %a13v3, align 8
  %a2_squared = alloca [256 x [256 x i128]]*, align 8
  %a2_squared9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a2_squared9, [256 x [256 x i128]]** %a2_squared, align 8
  %a1_squared = alloca [256 x [256 x i128]]*, align 8
  %a1_squared10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1_squared10, [256 x [256 x i128]]** %a1_squared, align 8
  %a0a1 = alloca [256 x [256 x i128]]*, align 8
  %a0a111 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a111, [256 x [256 x i128]]** %a0a1, align 8
  %m = alloca i128, align 8
  %m12 = call i128 @fn_intrinsic_utils_init()
  store i128 %m12, i128* %m, align 4
  %denom_inv = alloca [256 x [256 x i128]]*, align 8
  %denom_inv13 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_inv13, [256 x [256 x i128]]** %denom_inv, align 8
  %denom = alloca [256 x [256 x i128]]*, align 8
  %denom14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom14, [256 x [256 x i128]]** %denom, align 8
  %a0_cubed = alloca [256 x [256 x i128]]*, align 8
  %a0_cubed15 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0_cubed15, [256 x [256 x i128]]** %a0_cubed, align 8
  %a1_cubed = alloca [256 x [256 x i128]]*, align 8
  %a1_cubed16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1_cubed16, [256 x [256 x i128]]** %a1_cubed, align 8
  %v2_final = alloca [256 x [256 x i128]]*, align 8
  %v2_final17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v2_final17, [256 x [256 x i128]]** %v2_final, align 8
  %v1_1 = alloca [256 x [256 x i128]]*, align 8
  %v1_118 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_118, [256 x [256 x i128]]** %v1_1, align 8
  %a0a1a23v3 = alloca [256 x [256 x i128]]*, align 8
  %a0a1a23v319 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a1a23v319, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %a1a2 = alloca [256 x [256 x i128]]*, align 8
  %a1a220 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1a220, [256 x [256 x i128]]** %a1a2, align 8
  %v1_temp = alloca [256 x [256 x i128]]*, align 8
  %v1_temp21 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_temp21, [256 x [256 x i128]]** %v1_temp, align 8
  %denom_2 = alloca [256 x [256 x i128]]*, align 8
  %denom_222 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_222, [256 x [256 x i128]]** %denom_2, align 8
  %v2_temp = alloca [256 x [256 x i128]]*, align 8
  %v2_temp23 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v2_temp23, [256 x [256 x i128]]** %v2_temp, align 8
  %v6 = alloca [256 x [256 x i128]]*, align 8
  %v624 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v624, [256 x [256 x i128]]** %v6, align 8
  %v1_final = alloca [256 x [256 x i128]]*, align 8
  %v1_final25 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_final25, [256 x [256 x i128]]** %v1_final, align 8
  %v0_temp = alloca [256 x [256 x i128]]*, align 8
  %v0_temp26 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_temp26, [256 x [256 x i128]]** %v0_temp, align 8
  %three_v3 = alloca [256 x [256 x i128]]*, align 8
  %three_v327 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %three_v327, [256 x [256 x i128]]** %three_v3, align 8
  %a23v6 = alloca [256 x [256 x i128]]*, align 8
  %a23v628 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a23v628, [256 x [256 x i128]]** %a23v6, align 8
  %v3 = alloca [256 x [256 x i128]]*, align 8
  %v329 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v329, [256 x [256 x i128]]** %v3, align 8
  %a0a2 = alloca [256 x [256 x i128]]*, align 8
  %a0a230 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a230, [256 x [256 x i128]]** %a0a2, align 8
  %v0_final = alloca [256 x [256 x i128]]*, align 8
  %v0_final31 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_final31, [256 x [256 x i128]]** %v0_final, align 8
  %j = alloca i128, align 8
  %j32 = call i128 @fn_intrinsic_utils_init()
  store i128 %j32, i128* %j, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  %n = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %a033 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %p = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n, i128 %k, [256 x [256 x i128]]* %a0, [256 x [256 x i128]]* %a033, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %a0_squared, align 8
  %n34 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k35 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a1 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %a136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %p37 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call38 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n34, i128 %k35, [256 x [256 x i128]]* %a1, [256 x [256 x i128]]* %a136, [256 x i128]* %p37)
  store [256 x [256 x i128]]* %call38, [256 x [256 x i128]]** %a1_squared, align 8
  %n39 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k40 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %a241 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %p42 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call43 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n39, i128 %k40, [256 x [256 x i128]]* %a2, [256 x [256 x i128]]* %a241, [256 x i128]* %p42)
  store [256 x [256 x i128]]* %call43, [256 x [256 x i128]]** %a2_squared, align 8
  %n44 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k45 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a046 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %a147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %p48 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call49 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n44, i128 %k45, [256 x [256 x i128]]* %a046, [256 x [256 x i128]]* %a147, [256 x i128]* %p48)
  store [256 x [256 x i128]]* %call49, [256 x [256 x i128]]** %a0a1, align 8
  %n50 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k51 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a052 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %a253 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %p54 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call55 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n50, i128 %k51, [256 x [256 x i128]]* %a052, [256 x [256 x i128]]* %a253, [256 x i128]* %p54)
  store [256 x [256 x i128]]* %call55, [256 x [256 x i128]]** %a0a2, align 8
  %n56 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k57 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a158 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %a259 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %p60 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call61 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n56, i128 %k57, [256 x [256 x i128]]* %a158, [256 x [256 x i128]]* %a259, [256 x i128]* %p60)
  store [256 x [256 x i128]]* %call61, [256 x [256 x i128]]** %a1a2, align 8
  %n62 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k63 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0a164 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1, align 8
  %a265 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %p66 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call67 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n62, i128 %k63, [256 x [256 x i128]]* %a0a164, [256 x [256 x i128]]* %a265, [256 x i128]* %p66)
  store [256 x [256 x i128]]* %call67, [256 x [256 x i128]]** %a0a1a2, align 8
  %uniform_array68 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array68, [256 x [256 x i128]]** %v3, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch81, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch, %loop.body
  %j70 = load i128, i128* %j, align 4
  %eq = icmp eq i128 %j70, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body69
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %i71 = load i128, i128* %i, align 4
  %j72 = load i128, i128* %j, align 4
  %v373 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i71, i128 %j72
  store i128 1, i128* %v373, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body69
  %ptr_getter74 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %i75 = load i128, i128* %i, align 4
  %j76 = load i128, i128* %j, align 4
  %v377 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter74, i128 0, i128 %i75, i128 %j76
  store i128 0, i128* %v377, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j78 = load i128, i128* %j, align 4
  %add = add i128 %j78, 1
  store i128 %add, i128* %j, align 4
  %j79 = load i128, i128* %j, align 4
  %k80 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %slt = icmp slt i128 %j79, %k80
  br i1 %slt, label %loop.body69, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.exit
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %slt85 = icmp slt i128 %i84, 2
  br i1 %slt85, label %loop.body, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch81
  %uniform_array87 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array87, [256 x [256 x i128]]** %three_v3, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch110, %loop.exit86
  store i128 0, i128* %j, align 4
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch103, %loop.body88
  %j92 = load i128, i128* %j, align 4
  %eq93 = icmp eq i128 %j92, 0
  br i1 %eq93, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.body89
  %ptr_getter94 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %i95 = load i128, i128* %i, align 4
  %j96 = load i128, i128* %j, align 4
  %three_v397 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter94, i128 0, i128 %i95, i128 %j96
  store i128 3, i128* %three_v397, align 4
  br label %if.exit102

if.false91:                                       ; preds = %loop.body89
  %ptr_getter98 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %i99 = load i128, i128* %i, align 4
  %j100 = load i128, i128* %j, align 4
  %three_v3101 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter98, i128 0, i128 %i99, i128 %j100
  store i128 0, i128* %three_v3101, align 4
  br label %if.exit102

if.exit102:                                       ; preds = %if.false91, %if.true90
  br label %loop.latch103

loop.latch103:                                    ; preds = %if.exit102
  %j104 = load i128, i128* %j, align 4
  %add105 = add i128 %j104, 1
  store i128 %add105, i128* %j, align 4
  %j106 = load i128, i128* %j, align 4
  %k107 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %slt108 = icmp slt i128 %j106, %k107
  br i1 %slt108, label %loop.body89, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.exit109
  %i111 = load i128, i128* %i, align 4
  %add112 = add i128 %i111, 1
  store i128 %add112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %slt114 = icmp slt i128 %i113, 2
  br i1 %slt114, label %loop.body88, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  %uniform_array116 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array116, [256 x [256 x i128]]** %v6, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body117

loop.body117:                                     ; preds = %loop.latch141, %loop.exit115
  store i128 0, i128* %j, align 4
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch134, %loop.body117
  %i121 = load i128, i128* %i, align 4
  %eq122 = icmp eq i128 %i121, 1
  %j123 = load i128, i128* %j, align 4
  %eq124 = icmp eq i128 %j123, 0
  %and = and i1 %eq122, %eq124
  br i1 %and, label %if.true119, label %if.false120

if.true119:                                       ; preds = %loop.body118
  %ptr_getter125 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %i126 = load i128, i128* %i, align 4
  %j127 = load i128, i128* %j, align 4
  %v6128 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter125, i128 0, i128 %i126, i128 %j127
  store i128 2, i128* %v6128, align 4
  br label %if.exit133

if.false120:                                      ; preds = %loop.body118
  %ptr_getter129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %i130 = load i128, i128* %i, align 4
  %j131 = load i128, i128* %j, align 4
  %v6132 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter129, i128 0, i128 %i130, i128 %j131
  store i128 0, i128* %v6132, align 4
  br label %if.exit133

if.exit133:                                       ; preds = %if.false120, %if.true119
  br label %loop.latch134

loop.latch134:                                    ; preds = %if.exit133
  %j135 = load i128, i128* %j, align 4
  %add136 = add i128 %j135, 1
  store i128 %add136, i128* %j, align 4
  %j137 = load i128, i128* %j, align 4
  %k138 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %slt139 = icmp slt i128 %j137, %k138
  br i1 %slt139, label %loop.body118, label %loop.exit140

loop.exit140:                                     ; preds = %loop.latch134
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.exit140
  %i142 = load i128, i128* %i, align 4
  %add143 = add i128 %i142, 1
  store i128 %add143, i128* %i, align 4
  %i144 = load i128, i128* %i, align 4
  %slt145 = icmp slt i128 %i144, 2
  br i1 %slt145, label %loop.body117, label %loop.exit146

loop.exit146:                                     ; preds = %loop.latch141
  %n147 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k148 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a1a2149 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1a2, align 8
  %v3150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p151 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call152 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n147, i128 %k148, [256 x [256 x i128]]* %a1a2149, [256 x [256 x i128]]* %v3150, [256 x i128]* %p151)
  store [256 x [256 x i128]]* %call152, [256 x [256 x i128]]** %v0_1, align 8
  %n153 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k154 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0_squared155 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_squared, align 8
  %v0_1156 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_1, align 8
  %p157 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call158 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n153, i128 %k154, [256 x [256 x i128]]* %a0_squared155, [256 x [256 x i128]]* %v0_1156, [256 x i128]* %p157)
  store [256 x [256 x i128]]* %call158, [256 x [256 x i128]]** %v0_temp, align 8
  %n159 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k160 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a2_squared161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_squared, align 8
  %v3162 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p163 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call164 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n159, i128 %k160, [256 x [256 x i128]]* %a2_squared161, [256 x [256 x i128]]* %v3162, [256 x i128]* %p163)
  store [256 x [256 x i128]]* %call164, [256 x [256 x i128]]** %v1_1, align 8
  %n165 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k166 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %v1_1167 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_1, align 8
  %a0a1168 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1, align 8
  %p169 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call170 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n165, i128 %k166, [256 x [256 x i128]]* %v1_1167, [256 x [256 x i128]]* %a0a1168, [256 x i128]* %p169)
  store [256 x [256 x i128]]* %call170, [256 x [256 x i128]]** %v1_temp, align 8
  %n171 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k172 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a1_squared173 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_squared, align 8
  %a0a2174 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a2, align 8
  %p175 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call176 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n171, i128 %k172, [256 x [256 x i128]]* %a1_squared173, [256 x [256 x i128]]* %a0a2174, [256 x i128]* %p175)
  store [256 x [256 x i128]]* %call176, [256 x [256 x i128]]** %v2_temp, align 8
  %n177 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k178 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a0.declare_arg, align 8
  %a0_squared180 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_squared, align 8
  %p181 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call182 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n177, i128 %k178, [256 x [256 x i128]]* %a0179, [256 x [256 x i128]]* %a0_squared180, [256 x i128]* %p181)
  store [256 x [256 x i128]]* %call182, [256 x [256 x i128]]** %a0_cubed, align 8
  %n183 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k184 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a1185 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a1.declare_arg, align 8
  %a1_squared186 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_squared, align 8
  %p187 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call188 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n183, i128 %k184, [256 x [256 x i128]]* %a1185, [256 x [256 x i128]]* %a1_squared186, [256 x i128]* %p187)
  store [256 x [256 x i128]]* %call188, [256 x [256 x i128]]** %a1_cubed, align 8
  %n189 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k190 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a2191 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp6_inverse.a2.declare_arg, align 8
  %a2_squared192 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_squared, align 8
  %p193 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call194 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n189, i128 %k190, [256 x [256 x i128]]* %a2191, [256 x [256 x i128]]* %a2_squared192, [256 x i128]* %p193)
  store [256 x [256 x i128]]* %call194, [256 x [256 x i128]]** %a2_cubed, align 8
  %n195 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k196 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a1_cubed197 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_cubed, align 8
  %v3198 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p199 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call200 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n195, i128 %k196, [256 x [256 x i128]]* %a1_cubed197, [256 x [256 x i128]]* %v3198, [256 x i128]* %p199)
  store [256 x [256 x i128]]* %call200, [256 x [256 x i128]]** %a13v3, align 8
  %n201 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k202 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a2_cubed203 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_cubed, align 8
  %v6204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %p205 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call206 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n201, i128 %k202, [256 x [256 x i128]]* %a2_cubed203, [256 x [256 x i128]]* %v6204, [256 x i128]* %p205)
  store [256 x [256 x i128]]* %call206, [256 x [256 x i128]]** %a23v6, align 8
  %n207 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k208 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0a1a2209 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1a2, align 8
  %three_v3210 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %p211 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call212 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n207, i128 %k208, [256 x [256 x i128]]* %a0a1a2209, [256 x [256 x i128]]* %three_v3210, [256 x i128]* %p211)
  store [256 x [256 x i128]]* %call212, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %n213 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k214 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a0_cubed215 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_cubed, align 8
  %a13v3216 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a13v3, align 8
  %p217 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call218 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n213, i128 %k214, [256 x [256 x i128]]* %a0_cubed215, [256 x [256 x i128]]* %a13v3216, [256 x i128]* %p217)
  store [256 x [256 x i128]]* %call218, [256 x [256 x i128]]** %denom_1, align 8
  %n219 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k220 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %a23v6221 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a23v6, align 8
  %a0a1a23v3222 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %p223 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call224 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n219, i128 %k220, [256 x [256 x i128]]* %a23v6221, [256 x [256 x i128]]* %a0a1a23v3222, [256 x i128]* %p223)
  store [256 x [256 x i128]]* %call224, [256 x [256 x i128]]** %denom_2, align 8
  %n225 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k226 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %denom_1227 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_1, align 8
  %denom_2228 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_2, align 8
  %p229 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call230 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n225, i128 %k226, [256 x [256 x i128]]* %denom_1227, [256 x [256 x i128]]* %denom_2228, [256 x i128]* %p229)
  store [256 x [256 x i128]]* %call230, [256 x [256 x i128]]** %denom, align 8
  %n231 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k232 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %denom233 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom, align 8
  %p234 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call235 = call [256 x [256 x i128]]* @find_Fp2_inverse(i128 %n231, i128 %k232, [256 x [256 x i128]]* %denom233, [256 x i128]* %p234)
  store [256 x [256 x i128]]* %call235, [256 x [256 x i128]]** %denom_inv, align 8
  %n236 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k237 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %v0_temp238 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_temp, align 8
  %denom_inv239 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p240 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call241 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n236, i128 %k237, [256 x [256 x i128]]* %v0_temp238, [256 x [256 x i128]]* %denom_inv239, [256 x i128]* %p240)
  store [256 x [256 x i128]]* %call241, [256 x [256 x i128]]** %v0_final, align 8
  %n242 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k243 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %v1_temp244 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_temp, align 8
  %denom_inv245 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p246 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call247 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n242, i128 %k243, [256 x [256 x i128]]* %v1_temp244, [256 x [256 x i128]]* %denom_inv245, [256 x i128]* %p246)
  store [256 x [256 x i128]]* %call247, [256 x [256 x i128]]** %v1_final, align 8
  %n248 = load i128, i128* %find_fp6_inverse.n.declare_arg, align 4
  %k249 = load i128, i128* %find_fp6_inverse.k.declare_arg, align 4
  %v2_temp250 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v2_temp, align 8
  %denom_inv251 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p252 = load [256 x i128]*, [256 x i128]** %find_fp6_inverse.p.declare_arg, align 8
  %call253 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n248, i128 %k249, [256 x [256 x i128]]* %v2_temp250, [256 x [256 x i128]]* %denom_inv251, [256 x i128]* %p252)
  store [256 x [256 x i128]]* %call253, [256 x [256 x i128]]** %v2_final, align 8
  store i128 1, i128* %i, align 4
  br label %loop.body254

loop.body254:                                     ; preds = %loop.latch283, %loop.exit146
  store i128 0, i128* %j, align 4
  br label %loop.body255

loop.body255:                                     ; preds = %loop.latch277, %loop.body254
  store i128 0, i128* %m, align 4
  br label %loop.body256

loop.body256:                                     ; preds = %loop.latch271, %loop.body255
  %i259 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i259, 1
  br i1 %sgt, label %if.true257, label %if.false258

if.true257:                                       ; preds = %loop.body256
  %ptr_getter260 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i261 = load i128, i128* %i, align 4
  %j262 = load i128, i128* %j, align 4
  %m263 = load i128, i128* %m, align 4
  %out264 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter260, i128 0, i128 %i261, i128 %j262, i128 %m263
  store i128 0, i128* %out264, align 4
  br label %if.exit270

if.false258:                                      ; preds = %loop.body256
  %ptr_getter265 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i266 = load i128, i128* %i, align 4
  %j267 = load i128, i128* %j, align 4
  %m268 = load i128, i128* %m, align 4
  %out269 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter265, i128 0, i128 %i266, i128 %j267, i128 %m268
  store i128 0, i128* %out269, align 4
  br label %if.exit270

if.exit270:                                       ; preds = %if.false258, %if.true257
  br label %loop.latch271

loop.latch271:                                    ; preds = %if.exit270
  %m272 = load i128, i128* %m, align 4
  %add273 = add i128 %m272, 1
  store i128 %add273, i128* %m, align 4
  %m274 = load i128, i128* %m, align 4
  %slt275 = icmp slt i128 %m274, 50
  br i1 %slt275, label %loop.body256, label %loop.exit276

loop.exit276:                                     ; preds = %loop.latch271
  br label %loop.latch277

loop.latch277:                                    ; preds = %loop.exit276
  %j278 = load i128, i128* %j, align 4
  %add279 = add i128 %j278, 1
  store i128 %add279, i128* %j, align 4
  %j280 = load i128, i128* %j, align 4
  %slt281 = icmp slt i128 %j280, 2
  br i1 %slt281, label %loop.body255, label %loop.exit282

loop.exit282:                                     ; preds = %loop.latch277
  br label %loop.latch283

loop.latch283:                                    ; preds = %loop.exit282
  %i284 = load i128, i128* %i, align 4
  %add285 = add i128 %i284, 2
  store i128 %add285, i128* %i, align 4
  %i286 = load i128, i128* %i, align 4
  %slt287 = icmp slt i128 %i286, 6
  br i1 %slt287, label %loop.body254, label %loop.exit288

loop.exit288:                                     ; preds = %loop.latch283
  %v0_final289 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_final, align 8
  %ptr_getter290 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out291 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter290, i128 0, i128 0
  %6 = bitcast [256 x [256 x i128]]* %out291 to i8*
  %7 = bitcast [256 x [256 x i128]]* %v0_final289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %v1_final292 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_final, align 8
  %ptr_getter293 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out294 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter293, i128 0, i128 2
  %8 = bitcast [256 x [256 x i128]]* %out294 to i8*
  %9 = bitcast [256 x [256 x i128]]* %v1_final292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %v2_final295 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v2_final, align 8
  %ptr_getter296 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out297 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter296, i128 0, i128 4
  %10 = bitcast [256 x [256 x i128]]* %out297 to i8*
  %11 = bitcast [256 x [256 x i128]]* %v2_final295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %out298 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out298
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %find_fp2_exp.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp2_exp.n.declare_arg, align 4
  %find_fp2_exp.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp2_exp.k.declare_arg, align 4
  %find_fp2_exp.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %find_fp2_exp.a.declare_arg, align 8
  %find_fp2_exp.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %find_fp2_exp.p.declare_arg, align 8
  %find_fp2_exp.e.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %find_fp2_exp.e.declare_arg, align 8
  %j = alloca i128, align 8
  %j1 = call i128 @fn_intrinsic_utils_init()
  store i128 %j1, i128* %j, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out3, [256 x [256 x i128]]** %out, align 8
  %eBits = alloca [256 x i128]*, align 8
  %eBits4 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits4, [256 x i128]** %eBits, align 8
  %bitLength = alloca i128, align 8
  %bitLength5 = call i128 @fn_intrinsic_utils_init()
  store i128 %bitLength5, i128* %bitLength, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitLength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %find_fp2_exp.e.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i7
  %e8 = load i128, i128* %array_getter, align 4
  %j9 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e8, %j9
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j10 = load i128, i128* %j, align 4
  %n = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %i11 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i11
  %add = add i128 %j10, %mul
  %eBits12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits12, align 4
  %eBits13 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j14 = load i128, i128* %j, align 4
  %n15 = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %i16 = load i128, i128* %i, align 4
  %mul17 = mul i128 %n15, %i16
  %add18 = add i128 %j14, %mul17
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits13, i128 0, i128 %add18
  %eBits20 = load i128, i128* %array_getter19, align 4
  %eq = icmp eq i128 %eBits20, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body6
  %j21 = load i128, i128* %j, align 4
  %n22 = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %i23 = load i128, i128* %i, align 4
  %mul24 = mul i128 %n22, %i23
  %add25 = add i128 %j21, %mul24
  %add26 = add i128 %add25, 1
  store i128 %add26, i128* %bitLength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body6
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j27 = load i128, i128* %j, align 4
  %add28 = add i128 %j27, 1
  store i128 %add28, i128* %j, align 4
  %j29 = load i128, i128* %j, align 4
  %n30 = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %slt = icmp slt i128 %j29, %n30
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k = load i128, i128* %find_fp2_exp.k.declare_arg, align 4
  %mul35 = mul i128 2, %k
  %slt36 = icmp slt i128 %i34, %mul35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  %uniform_array38 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array38, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.exit37
  %ptr_getter40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i41 = load i128, i128* %i, align 4
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter40, i128 0, i128 0, i128 %i41
  store i128 0, i128* %out42, align 4
  %ptr_getter43 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i44 = load i128, i128* %i, align 4
  %out45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter43, i128 0, i128 1, i128 %i44
  store i128 0, i128* %out45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body39
  %i47 = load i128, i128* %i, align 4
  %add48 = add i128 %i47, 1
  store i128 %add48, i128* %i, align 4
  %i49 = load i128, i128* %i, align 4
  %slt50 = icmp slt i128 %i49, 50
  br i1 %slt50, label %loop.body39, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch46
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 0, i128 0
  store i128 1, i128* %out53, align 4
  %bitLength54 = load i128, i128* %bitLength, align 4
  %sub = sub i128 %bitLength54, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body55

loop.body55:                                      ; preds = %loop.latch77, %loop.exit51
  %eBits58 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits58, i128 0, i128 %i59
  %eBits61 = load i128, i128* %array_getter60, align 4
  %eq62 = icmp eq i128 %eBits61, 1
  br i1 %eq62, label %if.true56, label %if.false57

if.true56:                                        ; preds = %loop.body55
  %n63 = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %k64 = load i128, i128* %find_fp2_exp.k.declare_arg, align 4
  %out65 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %find_fp2_exp.a.declare_arg, align 8
  %p = load [256 x i128]*, [256 x i128]** %find_fp2_exp.p.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n63, i128 %k64, [256 x [256 x i128]]* %out65, [256 x [256 x i128]]* %a, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %out, align 8
  br label %if.exit66

if.false57:                                       ; preds = %loop.body55
  br label %if.exit66

if.exit66:                                        ; preds = %if.false57, %if.true56
  %i69 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i69, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %n70 = load i128, i128* %find_fp2_exp.n.declare_arg, align 4
  %k71 = load i128, i128* %find_fp2_exp.k.declare_arg, align 4
  %out72 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out73 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %p74 = load [256 x i128]*, [256 x i128]** %find_fp2_exp.p.declare_arg, align 8
  %call75 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n70, i128 %k71, [256 x [256 x i128]]* %out72, [256 x [256 x i128]]* %out73, [256 x i128]* %p74)
  store [256 x [256 x i128]]* %call75, [256 x [256 x i128]]** %out, align 8
  br label %if.exit76

if.false68:                                       ; preds = %if.exit66
  br label %if.exit76

if.exit76:                                        ; preds = %if.false68, %if.true67
  br label %loop.latch77

loop.latch77:                                     ; preds = %if.exit76
  %i78 = load i128, i128* %i, align 4
  %sub79 = sub i128 %i78, 1
  store i128 %sub79, i128* %i, align 4
  %i80 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i80, 0
  br i1 %sge, label %loop.body55, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch77
  %out82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out82
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x [256 x i128]]]* %3) {
entry:
  %find_fp12_inverse.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %find_fp12_inverse.n.declare_arg, align 4
  %find_fp12_inverse.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %find_fp12_inverse.k.declare_arg, align 4
  %find_fp12_inverse.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %find_fp12_inverse.a.declare_arg = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %find_fp12_inverse.a.declare_arg, align 8
  %conjProdInv = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conjProdInv1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conjProdInv1, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %j = alloca i128, align 8
  %j2 = call i128 @fn_intrinsic_utils_init()
  store i128 %j2, i128* %j, align 4
  %A2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %A23 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %A23, [256 x [256 x [256 x i128]]]** %A2, align 8
  %a2 = alloca [256 x [256 x i128]]*, align 8
  %a24 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a24, [256 x [256 x i128]]** %a2, align 8
  %w2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %w25 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %w25, [256 x [256 x [256 x i128]]]** %w2, align 8
  %i = alloca i128, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  store i128 %i6, i128* %i, align 4
  %m = alloca i128, align 8
  %m7 = call i128 @fn_intrinsic_utils_init()
  store i128 %m7, i128* %m, align 4
  %B2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B28 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B28, [256 x [256 x [256 x i128]]]** %B2, align 8
  %Bw = alloca [256 x [256 x [256 x i128]]]*, align 8
  %Bw9 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %Bw9, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %A = alloca [256 x [256 x [256 x i128]]]*, align 8
  %A10 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %A10, [256 x [256 x [256 x i128]]]** %A, align 8
  %a1 = alloca [256 x [256 x i128]]*, align 8
  %a111 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a111, [256 x [256 x i128]]** %a1, align 8
  %B = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B12 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B12, [256 x [256 x [256 x i128]]]** %B, align 8
  %conj = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conj13 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conj13, [256 x [256 x [256 x i128]]]** %conj, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out14 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out14, [256 x [256 x [256 x i128]]]** %out, align 8
  %conjProd = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conjProd15 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conjProd15, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %a0 = alloca [256 x [256 x i128]]*, align 8
  %a016 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a016, [256 x [256 x i128]]** %a0, align 8
  %B2w2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B2w217 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B2w217, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %A, align 8
  %uniform_array18 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array18, [256 x [256 x [256 x i128]]]** %B, align 8
  %uniform_array19 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array19, [256 x [256 x [256 x i128]]]** %Bw, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch88, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch82, %loop.body
  store i128 0, i128* %m, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch, %loop.body20
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %i22 = load i128, i128* %i, align 4
  %mul = mul i128 2, %i22
  %add = add i128 %mul, 1
  %j23 = load i128, i128* %j, align 4
  %m24 = load i128, i128* %m, align 4
  %A25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %add, i128 %j23, i128 %m24
  store i128 0, i128* %A25, align 4
  %ptr_getter26 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %i27 = load i128, i128* %i, align 4
  %mul28 = mul i128 2, %i27
  %add29 = add i128 %mul28, 1
  %j30 = load i128, i128* %j, align 4
  %m31 = load i128, i128* %m, align 4
  %B32 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter26, i128 0, i128 %add29, i128 %j30, i128 %m31
  store i128 0, i128* %B32, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_inverse.a.declare_arg, align 8
  %i33 = load i128, i128* %i, align 4
  %mul34 = mul i128 2, %i33
  %j35 = load i128, i128* %j, align 4
  %m36 = load i128, i128* %m, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %mul34, i128 %j35, i128 %m36
  %a37 = load i128, i128* %array_getter, align 4
  %ptr_getter38 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %i39 = load i128, i128* %i, align 4
  %mul40 = mul i128 2, %i39
  %j41 = load i128, i128* %j, align 4
  %m42 = load i128, i128* %m, align 4
  %A43 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter38, i128 0, i128 %mul40, i128 %j41, i128 %m42
  store i128 %a37, i128* %A43, align 4
  %a44 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_inverse.a.declare_arg, align 8
  %i45 = load i128, i128* %i, align 4
  %mul46 = mul i128 2, %i45
  %add47 = add i128 %mul46, 1
  %j48 = load i128, i128* %j, align 4
  %m49 = load i128, i128* %m, align 4
  %array_getter50 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a44, i128 0, i128 %add47, i128 %j48, i128 %m49
  %a51 = load i128, i128* %array_getter50, align 4
  %ptr_getter52 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %i53 = load i128, i128* %i, align 4
  %mul54 = mul i128 2, %i53
  %j55 = load i128, i128* %j, align 4
  %m56 = load i128, i128* %m, align 4
  %B57 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter52, i128 0, i128 %mul54, i128 %j55, i128 %m56
  store i128 %a51, i128* %B57, align 4
  %ptr_getter58 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %i59 = load i128, i128* %i, align 4
  %mul60 = mul i128 2, %i59
  %j61 = load i128, i128* %j, align 4
  %m62 = load i128, i128* %m, align 4
  %Bw63 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter58, i128 0, i128 %mul60, i128 %j61, i128 %m62
  store i128 0, i128* %Bw63, align 4
  %a64 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %find_fp12_inverse.a.declare_arg, align 8
  %i65 = load i128, i128* %i, align 4
  %mul66 = mul i128 2, %i65
  %add67 = add i128 %mul66, 1
  %j68 = load i128, i128* %j, align 4
  %m69 = load i128, i128* %m, align 4
  %array_getter70 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a64, i128 0, i128 %add67, i128 %j68, i128 %m69
  %a71 = load i128, i128* %array_getter70, align 4
  %ptr_getter72 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %i73 = load i128, i128* %i, align 4
  %mul74 = mul i128 2, %i73
  %add75 = add i128 %mul74, 1
  %j76 = load i128, i128* %j, align 4
  %m77 = load i128, i128* %m, align 4
  %Bw78 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter72, i128 0, i128 %add75, i128 %j76, i128 %m77
  store i128 %a71, i128* %Bw78, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body21
  %m79 = load i128, i128* %m, align 4
  %add80 = add i128 %m79, 1
  store i128 %add80, i128* %m, align 4
  %m81 = load i128, i128* %m, align 4
  %k = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %slt = icmp slt i128 %m81, %k
  br i1 %slt, label %loop.body21, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.exit
  %j83 = load i128, i128* %j, align 4
  %add84 = add i128 %j83, 1
  store i128 %add84, i128* %j, align 4
  %j85 = load i128, i128* %j, align 4
  %slt86 = icmp slt i128 %j85, 2
  br i1 %slt86, label %loop.body20, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch82
  br label %loop.latch88

loop.latch88:                                     ; preds = %loop.exit87
  %i89 = load i128, i128* %i, align 4
  %add90 = add i128 %i89, 1
  store i128 %add90, i128* %i, align 4
  %i91 = load i128, i128* %i, align 4
  %slt92 = icmp slt i128 %i91, 3
  br i1 %slt92, label %loop.body, label %loop.exit93

loop.exit93:                                      ; preds = %loop.latch88
  %n = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k94 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %A95 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %A96 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %p = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n, i128 %k94, [256 x [256 x [256 x i128]]]* %A95, [256 x [256 x [256 x i128]]]* %A96, [256 x i128]* %p)
  store [256 x [256 x [256 x i128]]]* %call, [256 x [256 x [256 x i128]]]** %A2, align 8
  %n97 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k98 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %B99 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %B100 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %p101 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call102 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n97, i128 %k98, [256 x [256 x [256 x i128]]]* %B99, [256 x [256 x [256 x i128]]]* %B100, [256 x i128]* %p101)
  store [256 x [256 x [256 x i128]]]* %call102, [256 x [256 x [256 x i128]]]** %B2, align 8
  %n103 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k104 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %A105 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %Bw106 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %p107 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call108 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %n103, i128 %k104, [256 x [256 x [256 x i128]]]* %A105, [256 x [256 x [256 x i128]]]* %Bw106, [256 x i128]* %p107)
  store [256 x [256 x [256 x i128]]]* %call108, [256 x [256 x [256 x i128]]]** %conj, align 8
  %uniform_array109 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array109, [256 x [256 x [256 x i128]]]** %w2, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body110

loop.body110:                                     ; preds = %loop.latch142, %loop.exit93
  store i128 0, i128* %j, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch136, %loop.body110
  store i128 0, i128* %m, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch129, %loop.body111
  %i113 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i113, 2
  %j114 = load i128, i128* %j, align 4
  %eq115 = icmp eq i128 %j114, 0
  %and = and i1 %eq, %eq115
  %m116 = load i128, i128* %m, align 4
  %eq117 = icmp eq i128 %m116, 0
  %and118 = and i1 %and, %eq117
  br i1 %and118, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body112
  %ptr_getter119 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %i120 = load i128, i128* %i, align 4
  %j121 = load i128, i128* %j, align 4
  %m122 = load i128, i128* %m, align 4
  %w2123 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter119, i128 0, i128 %i120, i128 %j121, i128 %m122
  store i128 1, i128* %w2123, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body112
  %ptr_getter124 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %i125 = load i128, i128* %i, align 4
  %j126 = load i128, i128* %j, align 4
  %m127 = load i128, i128* %m, align 4
  %w2128 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter124, i128 0, i128 %i125, i128 %j126, i128 %m127
  store i128 0, i128* %w2128, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch129

loop.latch129:                                    ; preds = %if.exit
  %m130 = load i128, i128* %m, align 4
  %add131 = add i128 %m130, 1
  store i128 %add131, i128* %m, align 4
  %m132 = load i128, i128* %m, align 4
  %k133 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %slt134 = icmp slt i128 %m132, %k133
  br i1 %slt134, label %loop.body112, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.exit135
  %j137 = load i128, i128* %j, align 4
  %add138 = add i128 %j137, 1
  store i128 %add138, i128* %j, align 4
  %j139 = load i128, i128* %j, align 4
  %slt140 = icmp slt i128 %j139, 2
  br i1 %slt140, label %loop.body111, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch136
  br label %loop.latch142

loop.latch142:                                    ; preds = %loop.exit141
  %i143 = load i128, i128* %i, align 4
  %add144 = add i128 %i143, 1
  store i128 %add144, i128* %i, align 4
  %i145 = load i128, i128* %i, align 4
  %slt146 = icmp slt i128 %i145, 6
  br i1 %slt146, label %loop.body110, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch142
  %n148 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k149 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %B2150 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B2, align 8
  %w2151 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %p152 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call153 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n148, i128 %k149, [256 x [256 x [256 x i128]]]* %B2150, [256 x [256 x [256 x i128]]]* %w2151, [256 x i128]* %p152)
  store [256 x [256 x [256 x i128]]]* %call153, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %n154 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k155 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %A2156 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A2, align 8
  %B2w2157 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %p158 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call159 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %n154, i128 %k155, [256 x [256 x [256 x i128]]]* %A2156, [256 x [256 x [256 x i128]]]* %B2w2157, [256 x i128]* %p158)
  store [256 x [256 x [256 x i128]]]* %call159, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %uniform_array160 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array160, [256 x [256 x i128]]** %a0, align 8
  %uniform_array161 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array161, [256 x [256 x i128]]** %a1, align 8
  %uniform_array162 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array162, [256 x [256 x i128]]** %a2, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body163

loop.body163:                                     ; preds = %loop.latch199, %loop.exit147
  store i128 0, i128* %m, align 4
  br label %loop.body164

loop.body164:                                     ; preds = %loop.latch192, %loop.body163
  %conjProd165 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i166 = load i128, i128* %i, align 4
  %m167 = load i128, i128* %m, align 4
  %array_getter168 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd165, i128 0, i128 0, i128 %i166, i128 %m167
  %conjProd169 = load i128, i128* %array_getter168, align 4
  %ptr_getter170 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %i171 = load i128, i128* %i, align 4
  %m172 = load i128, i128* %m, align 4
  %a0173 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter170, i128 0, i128 %i171, i128 %m172
  store i128 %conjProd169, i128* %a0173, align 4
  %conjProd174 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i175 = load i128, i128* %i, align 4
  %m176 = load i128, i128* %m, align 4
  %array_getter177 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd174, i128 0, i128 2, i128 %i175, i128 %m176
  %conjProd178 = load i128, i128* %array_getter177, align 4
  %ptr_getter179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %i180 = load i128, i128* %i, align 4
  %m181 = load i128, i128* %m, align 4
  %a1182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter179, i128 0, i128 %i180, i128 %m181
  store i128 %conjProd178, i128* %a1182, align 4
  %conjProd183 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i184 = load i128, i128* %i, align 4
  %m185 = load i128, i128* %m, align 4
  %array_getter186 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd183, i128 0, i128 4, i128 %i184, i128 %m185
  %conjProd187 = load i128, i128* %array_getter186, align 4
  %ptr_getter188 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2, align 8
  %i189 = load i128, i128* %i, align 4
  %m190 = load i128, i128* %m, align 4
  %a2191 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter188, i128 0, i128 %i189, i128 %m190
  store i128 %conjProd187, i128* %a2191, align 4
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.body164
  %m193 = load i128, i128* %m, align 4
  %add194 = add i128 %m193, 1
  store i128 %add194, i128* %m, align 4
  %m195 = load i128, i128* %m, align 4
  %k196 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %slt197 = icmp slt i128 %m195, %k196
  br i1 %slt197, label %loop.body164, label %loop.exit198

loop.exit198:                                     ; preds = %loop.latch192
  br label %loop.latch199

loop.latch199:                                    ; preds = %loop.exit198
  %i200 = load i128, i128* %i, align 4
  %add201 = add i128 %i200, 1
  store i128 %add201, i128* %i, align 4
  %i202 = load i128, i128* %i, align 4
  %slt203 = icmp slt i128 %i202, 2
  br i1 %slt203, label %loop.body163, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch199
  %n205 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k206 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %p207 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %a0208 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %a1209 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %a2210 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2, align 8
  %call211 = call [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %n205, i128 %k206, [256 x i128]* %p207, [256 x [256 x i128]]* %a0208, [256 x [256 x i128]]* %a1209, [256 x [256 x i128]]* %a2210)
  store [256 x [256 x [256 x i128]]]* %call211, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %n212 = load i128, i128* %find_fp12_inverse.n.declare_arg, align 4
  %k213 = load i128, i128* %find_fp12_inverse.k.declare_arg, align 4
  %conj214 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conj, align 8
  %conjProdInv215 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %p216 = load [256 x i128]*, [256 x i128]** %find_fp12_inverse.p.declare_arg, align 8
  %call217 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n212, i128 %k213, [256 x [256 x [256 x i128]]]* %conj214, [256 x [256 x [256 x i128]]]* %conjProdInv215, [256 x i128]* %p216)
  store [256 x [256 x [256 x i128]]]* %call217, [256 x [256 x [256 x i128]]]** %out, align 8
  %out218 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out218
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
