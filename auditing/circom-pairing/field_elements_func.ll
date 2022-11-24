; ModuleID = 'field_elements_func.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/field_elements_func.circom"

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
declare fp128 @llvm.powi.f128.i32(fp128, i32) #0

define i128 @fn_intrinsic_inline_powi(i128 %0, i128 %1) {
entry:
  %inline_powi.base = uitofp i128 %0 to fp128
  %inline_powi.power = trunc i128 %1 to i32
  %inline_powi.cal = call fp128 @llvm.powi.f128.i32(fp128 %inline_powi.base, i32 %inline_powi.power)
  %inline_powi.ret = fptoui fp128 %inline_powi.cal to i128
  ret i128 %inline_powi.ret
}

define i128 @fn_intrinsic_inline_init() {
entry:
  ret i128 0
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

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %splitthreefn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitthreefn.in.declare_arg, align 4
  %splitthreefn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitthreefn.n.declare_arg, align 4
  %splitthreefn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitthreefn.m.declare_arg, align 4
  %splitthreefn.k.declare_arg = alloca i128, align 8
  store i128 %3, i128* %splitthreefn.k.declare_arg, align 4
  %var_inline_array = alloca [3 x i128], align 8
  %in = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitthreefn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
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
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %signed_long_to_short.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %signed_long_to_short.n.declare_arg, align 4
  %signed_long_to_short.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %signed_long_to_short.k.declare_arg, align 4
  %signed_long_to_short.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %carry = alloca i128, align 8
  %carry2 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry2, i128* %carry, align 4
  %out = alloca [256 x i128]*, align 8
  %out3 = alloca [256 x i128], align 8
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %MAXL = alloca i128, align 8
  %MAXL4 = call i128 @fn_intrinsic_inline_init()
  store i128 %MAXL4, i128* %MAXL, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp5 = alloca [256 x i128], align 8
  store [256 x i128]* %temp5, [256 x i128]** %temp, align 8
  %X = alloca i128, align 8
  %X6 = call i128 @fn_intrinsic_inline_init()
  store i128 %X6, i128* %X, align 4
  %borrow = alloca i128, align 8
  %borrow7 = call i128 @fn_intrinsic_inline_init()
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
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL98 = load i128, i128* %MAXL, align 4
  %out99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %MAXL98
  store i128 0, i128* %out99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out100

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit101

if.exit101:                                       ; preds = %if.false91
  store i128 0, i128* %i, align 4
  br label %loop.body102

loop.body102:                                     ; preds = %loop.latch110, %if.exit101
  %a103 = load [256 x i128]*, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i104 = load i128, i128* %i, align 4
  %array_getter105 = getelementptr inbounds [256 x i128], [256 x i128]* %a103, i128 0, i128 %i104
  %a106 = load i128, i128* %array_getter105, align 4
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i108 = load i128, i128* %i, align 4
  %temp109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %i108
  store i128 %a106, i128* %temp109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body102
  %i111 = load i128, i128* %i, align 4
  %add112 = add i128 %i111, 1
  store i128 %add112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %k114 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  %slt115 = icmp slt i128 %i113, %k114
  br i1 %slt115, label %loop.body102, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  %k117 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  store i128 %k117, i128* %i, align 4
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit116
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i120 = load i128, i128* %i, align 4
  %temp121 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 %i120
  store i128 0, i128* %temp121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %i123 = load i128, i128* %i, align 4
  %add124 = add i128 %i123, 1
  store i128 %add124, i128* %i, align 4
  %i125 = load i128, i128* %i, align 4
  %MAXL126 = load i128, i128* %MAXL, align 4
  %sle127 = icmp sle i128 %i125, %MAXL126
  br i1 %sle127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  store i128 0, i128* %i, align 4
  br label %loop.body129

loop.body129:                                     ; preds = %loop.latch198, %loop.exit128
  %temp132 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %temp132, i128 0, i128 %i133
  %temp135 = load i128, i128* %array_getter134, align 4
  %slt136 = icmp slt i128 %temp135, 0
  br i1 %slt136, label %if.true130, label %if.false131

if.true130:                                       ; preds = %loop.body129
  %temp137 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %temp137, i128 0, i128 %i138
  %temp140 = load i128, i128* %array_getter139, align 4
  %neg141 = sub i128 0, %temp140
  %X142 = load i128, i128* %X, align 4
  %sdiv143 = sdiv i128 %neg141, %X142
  store i128 %sdiv143, i128* %carry, align 4
  %temp144 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i145 = load i128, i128* %i, align 4
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %temp144, i128 0, i128 %i145
  %temp147 = load i128, i128* %array_getter146, align 4
  %carry148 = load i128, i128* %carry, align 4
  %X149 = load i128, i128* %X, align 4
  %mul150 = mul i128 %carry148, %X149
  %add151 = add i128 %temp147, %mul150
  %ptr_getter152 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i153 = load i128, i128* %i, align 4
  %out154 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter152, i128 0, i128 %i153
  store i128 %add151, i128* %out154, align 4
  %temp155 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %temp155, i128 0, i128 %add157
  %temp159 = load i128, i128* %array_getter158, align 4
  %carry160 = load i128, i128* %carry, align 4
  %sub161 = sub i128 %temp159, %carry160
  %ptr_getter162 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i163 = load i128, i128* %i, align 4
  %add164 = add i128 %i163, 1
  %temp165 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter162, i128 0, i128 %add164
  store i128 %sub161, i128* %temp165, align 4
  br label %if.exit197

if.false131:                                      ; preds = %loop.body129
  %temp166 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i167 = load i128, i128* %i, align 4
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %temp166, i128 0, i128 %i167
  %temp169 = load i128, i128* %array_getter168, align 4
  %X170 = load i128, i128* %X, align 4
  %add171 = add i128 %temp169, %X170
  %sub172 = sub i128 %add171, 1
  %X173 = load i128, i128* %X, align 4
  %sdiv174 = sdiv i128 %sub172, %X173
  store i128 %sdiv174, i128* %borrow, align 4
  %temp175 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i176 = load i128, i128* %i, align 4
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %temp175, i128 0, i128 %i176
  %temp178 = load i128, i128* %array_getter177, align 4
  %borrow179 = load i128, i128* %borrow, align 4
  %X180 = load i128, i128* %X, align 4
  %mul181 = mul i128 %borrow179, %X180
  %sub182 = sub i128 %temp178, %mul181
  %ptr_getter183 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i184 = load i128, i128* %i, align 4
  %out185 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter183, i128 0, i128 %i184
  store i128 %sub182, i128* %out185, align 4
  %temp186 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i187 = load i128, i128* %i, align 4
  %add188 = add i128 %i187, 1
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %temp186, i128 0, i128 %add188
  %temp190 = load i128, i128* %array_getter189, align 4
  %borrow191 = load i128, i128* %borrow, align 4
  %add192 = add i128 %temp190, %borrow191
  %ptr_getter193 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i194 = load i128, i128* %i, align 4
  %add195 = add i128 %i194, 1
  %temp196 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter193, i128 0, i128 %add195
  store i128 %add192, i128* %temp196, align 4
  br label %if.exit197

if.exit197:                                       ; preds = %if.false131, %if.true130
  br label %loop.latch198

loop.latch198:                                    ; preds = %if.exit197
  %i199 = load i128, i128* %i, align 4
  %add200 = add i128 %i199, 1
  store i128 %add200, i128* %i, align 4
  %i201 = load i128, i128* %i, align 4
  %MAXL202 = load i128, i128* %MAXL, align 4
  %slt203 = icmp slt i128 %i201, %MAXL202
  br i1 %slt203, label %loop.body129, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch198
  %ptr_getter205 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL206 = load i128, i128* %MAXL, align 4
  %out207 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter205, i128 0, i128 %MAXL206
  store i128 1, i128* %out207, align 4
  %out208 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out208
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
  %temp = alloca i128, align 8
  %temp1 = call i128 @fn_intrinsic_inline_init()
  store i128 %temp1, i128* %temp, align 4
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
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

define i128 @log_ceil(i128 %0) {
entry:
  %log_ceil.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %log_ceil.n.declare_arg, align 4
  %n_temp = alloca i128, align 8
  %n_temp1 = call i128 @fn_intrinsic_inline_init()
  store i128 %n_temp1, i128* %n_temp, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
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
  %i2 = call i128 @fn_intrinsic_inline_init()
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
  %i1 = call i128 @fn_intrinsic_inline_init()
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

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %long_is_zero.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_is_zero.k.declare_arg, align 4
  %long_is_zero.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %long_is_zero.a.declare_arg, align 8
  %idx = alloca i128, align 8
  %idx1 = call i128 @fn_intrinsic_inline_init()
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
  %diff = alloca [256 x i128]*, align 8
  %diff2 = alloca [256 x i128], align 8
  store [256 x i128]* %diff2, [256 x i128]** %diff, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
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

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %splitfn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitfn.in.declare_arg, align 4
  %splitfn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitfn.n.declare_arg, align 4
  %splitfn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitfn.m.declare_arg, align 4
  %var_inline_array = alloca [2 x i128], align 8
  %in = load i128, i128* %splitfn.in.declare_arg, align 4
  %n = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitfn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitfn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
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
  %idx1 = call i128 @fn_intrinsic_inline_init()
  store i128 %idx1, i128* %idx, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
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

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %get_fp2_sgn0.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %get_fp2_sgn0.k.declare_arg, align 4
  %get_fp2_sgn0.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %get_fp2_sgn0.a.declare_arg, align 8
  %sgn0 = alloca i128, align 8
  %sgn01 = call i128 @fn_intrinsic_inline_init()
  store i128 %sgn01, i128* %sgn0, align 4
  %sgn1 = alloca i128, align 8
  %sgn12 = call i128 @fn_intrinsic_inline_init()
  store i128 %sgn12, i128* %sgn1, align 4
  %z = alloca i128, align 8
  %z3 = call i128 @fn_intrinsic_inline_init()
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
  %qhat = alloca i128, align 8
  %qhat1 = call i128 @fn_intrinsic_inline_init()
  store i128 %qhat1, i128* %qhat, align 4
  %mult = alloca [256 x i128]*, align 8
  %mult2 = alloca [256 x i128], align 8
  store [256 x i128]* %mult2, [256 x i128]** %mult, align 8
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
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %carry = alloca i128, align 8
  %carry3 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry3, i128* %carry, align 4
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
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
  %call = call [2 x i128]* @SplitFn(i128 %add19, i128 %n, i128 %n20)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  %carry = alloca i128, align 8
  %carry1 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry1, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
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
  %call = call [2 x i128]* @SplitFn(i128 %add12, i128 %n, i128 %n13)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  %call30 = call [2 x i128]* @SplitFn(i128 %add27, i128 %n28, i128 %n29)
  %memcpy_ptr31 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr31 to i8*
  %8 = bitcast [2 x i128]* %call30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry32 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry32, i128 0, i128 0
  %sumAndCarry34 = load i128, i128* %array_getter33, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i36 = load i128, i128* %i, align 4
  %sum37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %sumAndCarry34, i128* %sum37, align 4
  %sumAndCarry38 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry38, i128 0, i128 1
  %sumAndCarry40 = load i128, i128* %array_getter39, align 4
  store i128 %sumAndCarry40, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i41 = load i128, i128* %i, align 4
  %add42 = add i128 %i41, 1
  store i128 %add42, i128* %i, align 4
  %i43 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %slt44 = icmp slt i128 %i43, %k1
  br i1 %slt44, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry45 = load i128, i128* %carry, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k147 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %sum48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 %k147
  store i128 %carry45, i128* %sum48, align 4
  %sum49 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum49
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
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val1 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val1, [256 x i128]** %prod_val, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %carry = alloca [256 x i128]*, align 8
  %carry4 = alloca [256 x i128], align 8
  store [256 x i128]* %carry4, [256 x i128]** %carry, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split5, [256 x [256 x i128]]** %split, align 8
  %a_idx = alloca i128, align 8
  %a_idx6 = call i128 @fn_intrinsic_inline_init()
  store i128 %a_idx6, i128* %a_idx, align 4
  %out = alloca [256 x i128]*, align 8
  %out7 = alloca [256 x i128], align 8
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
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
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %n, i128 %n76, i128 %n77)
  %ptr_getter78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i79 = load i128, i128* %i, align 4
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter78, i128 0, i128 %i79
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
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
  %call112 = call [2 x i128]* @SplitFn(i128 %add109, i128 %n110, i128 %n111)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  br label %if.exit203

loop.body130:                                     ; preds = %loop.latch169, %if.true124
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
  %call155 = call [2 x i128]* @SplitFn(i128 %add152, i128 %n153, i128 %n154)
  %memcpy_ptr156 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr156 to i8*
  %9 = bitcast [2 x i128]* %call155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry157 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry157, i128 0, i128 0
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %ptr_getter160 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i161 = load i128, i128* %i, align 4
  %out162 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter160, i128 0, i128 %i161
  store i128 %sumAndCarry159, i128* %out162, align 4
  %sumAndCarry163 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter164 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry163, i128 0, i128 1
  %sumAndCarry165 = load i128, i128* %array_getter164, align 4
  %ptr_getter166 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i167 = load i128, i128* %i, align 4
  %carry168 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter166, i128 0, i128 %i167
  store i128 %sumAndCarry165, i128* %carry168, align 4
  br label %loop.latch169

loop.latch169:                                    ; preds = %loop.body130
  %i170 = load i128, i128* %i, align 4
  %add171 = add i128 %i170, 1
  store i128 %add171, i128* %i, align 4
  %i172 = load i128, i128* %i, align 4
  %k173 = load i128, i128* %prod.k.declare_arg, align 4
  %mul174 = mul i128 2, %k173
  %sub175 = sub i128 %mul174, 1
  %slt176 = icmp slt i128 %i172, %sub175
  br i1 %slt176, label %loop.body130, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch169
  %split178 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k179 = load i128, i128* %prod.k.declare_arg, align 4
  %mul180 = mul i128 2, %k179
  %sub181 = sub i128 %mul180, 2
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split178, i128 0, i128 %sub181, i128 1
  %split183 = load i128, i128* %array_getter182, align 4
  %split184 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k185 = load i128, i128* %prod.k.declare_arg, align 4
  %mul186 = mul i128 2, %k185
  %sub187 = sub i128 %mul186, 3
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split184, i128 0, i128 %sub187, i128 2
  %split189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %split183, %split189
  %carry191 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k192 = load i128, i128* %prod.k.declare_arg, align 4
  %mul193 = mul i128 2, %k192
  %sub194 = sub i128 %mul193, 2
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %carry191, i128 0, i128 %sub194
  %carry196 = load i128, i128* %array_getter195, align 4
  %add197 = add i128 %add190, %carry196
  %ptr_getter198 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k199 = load i128, i128* %prod.k.declare_arg, align 4
  %mul200 = mul i128 2, %k199
  %sub201 = sub i128 %mul200, 1
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter198, i128 0, i128 %sub201
  store i128 %add197, i128* %out202, align 4
  br label %if.exit203

if.exit203:                                       ; preds = %if.false125, %loop.exit177
  %out204 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out204
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
  %scale = alloca i128, align 8
  %scale1 = call i128 @fn_intrinsic_inline_init()
  store i128 %scale1, i128* %scale, align 4
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a2 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a2, [256 x i128]** %norm_a, align 8
  %ret = alloca i128, align 8
  %ret3 = call i128 @fn_intrinsic_inline_init()
  store i128 %ret3, i128* %ret, align 4
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b4 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b4, [256 x i128]** %norm_b, align 8
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
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %j2 = alloca i128, align 8
  %j22 = call i128 @fn_intrinsic_inline_init()
  store i128 %j22, i128* %j2, align 4
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry3, [256 x [256 x i128]]** %carry, align 8
  %i2 = alloca i128, align 8
  %i24 = call i128 @fn_intrinsic_inline_init()
  store i128 %i24, i128* %i2, align 4
  %j1 = alloca i128, align 8
  %j15 = call i128 @fn_intrinsic_inline_init()
  store i128 %j15, i128* %j1, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val6, [256 x [256 x i128]]** %prod_val, align 8
  %i = alloca i128, align 8
  %i7 = call i128 @fn_intrinsic_inline_init()
  store i128 %i7, i128* %i, align 4
  %j = alloca i128, align 8
  %j8 = call i128 @fn_intrinsic_inline_init()
  store i128 %j8, i128* %j, align 4
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split9 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split9, [256 x [256 x [256 x i128]]]** %split, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry10, [256 x [256 x i128]]** %sumAndCarry, align 8
  %i1 = alloca i128, align 8
  %i111 = call i128 @fn_intrinsic_inline_init()
  store i128 %i111, i128* %i1, align 4
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
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val92, i128 %n, i128 %n93, i128 %n94)
  %ptr_getter95 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j96 = load i128, i128* %j, align 4
  %i97 = load i128, i128* %i, align 4
  %split98 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter95, i128 0, i128 %j96, i128 %i97
  %5 = bitcast [256 x i128]* %split98 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
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
  %call145 = call [2 x i128]* @SplitFn(i128 %add142, i128 %n143, i128 %n144)
  %ptr_getter146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j147 = load i128, i128* %j, align 4
  %sumAndCarry148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter146, i128 0, i128 %j147
  %7 = bitcast [256 x i128]* %sumAndCarry148 to i8*
  %8 = bitcast [2 x i128]* %call145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  %call198 = call [2 x i128]* @SplitFn(i128 %add195, i128 %n196, i128 %n197)
  %ptr_getter199 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j200 = load i128, i128* %j, align 4
  %sumAndCarry201 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter199, i128 0, i128 %j200
  %9 = bitcast [256 x i128]* %sumAndCarry201 to i8*
  %10 = bitcast [2 x i128]* %call198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %carry = alloca i128, align 8
  %carry3 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry3, i128* %carry, align 4
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
  %call = call [2 x i128]* @SplitFn(i128 %add11, i128 %n, i128 %n12)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
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
  %out = alloca [256 x [256 x i128]]*, align 8
  %out2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out2, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %j = alloca i128, align 8
  %j4 = call i128 @fn_intrinsic_inline_init()
  store i128 %j4, i128* %j, align 4
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift5 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift5, [256 x i128]** %mult_shift, align 8
  %dividend = alloca [256 x i128]*, align 8
  %dividend6 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend6, [256 x i128]** %dividend, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend7 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend7, [256 x i128]** %subtrahend, align 8
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
  %Y_is_zero = alloca i128, align 8
  %Y_is_zero1 = call i128 @fn_intrinsic_inline_init()
  store i128 %Y_is_zero1, i128* %Y_is_zero, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out2, [256 x [256 x i128]]** %out, align 8
  %a_short = alloca [256 x i128]*, align 8
  %a_short3 = alloca [256 x i128], align 8
  store [256 x i128]* %a_short3, [256 x i128]** %a_short, align 8
  %a_pos = alloca [256 x i128]*, align 8
  %a_pos4 = alloca [256 x i128], align 8
  store [256 x i128]* %a_pos4, [256 x i128]** %a_pos, align 8
  %X = alloca [256 x [256 x i128]]*, align 8
  %X5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %X5, [256 x [256 x i128]]** %X, align 8
  %carry = alloca i128, align 8
  %carry6 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry6, i128* %carry, align 4
  %i = alloca i128, align 8
  %i7 = call i128 @fn_intrinsic_inline_init()
  store i128 %i7, i128* %i, align 4
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
  br label %if.exit131

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
  br label %if.exit114

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
  br label %if.exit113

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
  br label %if.exit113

if.exit113:                                       ; preds = %if.false72, %loop.exit112
  br label %if.exit114

if.exit114:                                       ; preds = %if.exit113, %if.true46
  store i128 0, i128* %i, align 4
  br label %loop.body115

loop.body115:                                     ; preds = %loop.latch124, %if.exit114
  %X116 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X116, i128 0, i128 0, i128 %i117
  %X119 = load i128, i128* %array_getter118, align 4
  %neg120 = sub i128 0, %X119
  %ptr_getter121 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i122 = load i128, i128* %i, align 4
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter121, i128 0, i128 0, i128 %i122
  store i128 %neg120, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body115
  %i125 = load i128, i128* %i, align 4
  %add126 = add i128 %i125, 1
  store i128 %add126, i128* %i, align 4
  %i127 = load i128, i128* %i, align 4
  %m128 = load i128, i128* %get_signed_fp_carry_witness.m.declare_arg, align 4
  %slt129 = icmp slt i128 %i127, %m128
  br i1 %slt129, label %loop.body115, label %loop.exit130

loop.exit130:                                     ; preds = %loop.latch124
  br label %if.exit131

if.exit131:                                       ; preds = %loop.exit130, %if.true
  %out132 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out132
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
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp2, [256 x [256 x i128]]** %temp, align 8
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
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %ab2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %ab2, [256 x [256 x [256 x i128]]]** %ab, align 8
  %j = alloca i128, align 8
  %j3 = call i128 @fn_intrinsic_inline_init()
  store i128 %j3, i128* %j, align 4
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
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
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out2, [256 x [256 x [256 x i128]]]** %out, align 8
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
  %temp = alloca [256 x i128]*, align 8
  %temp1 = alloca [256 x i128], align 8
  store [256 x i128]* %temp1, [256 x i128]** %temp, align 8
  %j = alloca i128, align 8
  %j2 = call i128 @fn_intrinsic_inline_init()
  store i128 %j2, i128* %j, align 4
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp23 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp23, [256 x [256 x i128]]** %temp2, align 8
  %bitlength = alloca i128, align 8
  %bitlength4 = call i128 @fn_intrinsic_inline_init()
  store i128 %bitlength4, i128* %bitlength, align 4
  %eBits = alloca [256 x i128]*, align 8
  %eBits5 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits5, [256 x i128]** %eBits, align 8
  %i = alloca i128, align 8
  %i6 = call i128 @fn_intrinsic_inline_init()
  store i128 %i6, i128* %i, align 4
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
  %eBits = alloca [256 x i128]*, align 8
  %eBits1 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits1, [256 x i128]** %eBits, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out2, [256 x [256 x i128]]** %out, align 8
  %j = alloca i128, align 8
  %j3 = call i128 @fn_intrinsic_inline_init()
  store i128 %j3, i128* %j, align 4
  %bitLength = alloca i128, align 8
  %bitLength4 = call i128 @fn_intrinsic_inline_init()
  store i128 %bitLength4, i128* %bitLength, align 4
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  store i128 %i5, i128* %i, align 4
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
  %x = alloca [256 x i128]*, align 8
  %x1 = alloca [256 x i128], align 8
  store [256 x i128]* %x1, [256 x i128]** %x, align 8
  %a = alloca [256 x i128]*, align 8
  %a2 = alloca [256 x i128], align 8
  store [256 x i128]* %a2, [256 x i128]** %a, align 8
  %u = alloca [256 x i128]*, align 8
  %u3 = alloca [256 x i128], align 8
  store [256 x i128]* %u3, [256 x i128]** %u, align 8
  %l = alloca i128, align 8
  %l4 = call i128 @fn_intrinsic_inline_init()
  store i128 %l4, i128* %l, align 4
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %amodp5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %amodp5, [256 x [256 x i128]]** %amodp, align 8
  %v = alloca [256 x i128]*, align 8
  %v6 = alloca [256 x i128], align 8
  store [256 x i128]* %v6, [256 x i128]** %v, align 8
  %newu = alloca [256 x i128]*, align 8
  %newu7 = alloca [256 x i128], align 8
  store [256 x i128]* %newu7, [256 x i128]** %newu, align 8
  %ka = alloca i128, align 8
  %ka8 = call i128 @fn_intrinsic_inline_init()
  store i128 %ka8, i128* %ka, align 4
  %y = alloca [256 x i128]*, align 8
  %y9 = alloca [256 x i128], align 8
  store [256 x i128]* %y9, [256 x i128]** %y, align 8
  %b = alloca [256 x i128]*, align 8
  %b10 = alloca [256 x i128], align 8
  store [256 x i128]* %b10, [256 x i128]** %b, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret11 = alloca [256 x i128], align 8
  store [256 x i128]* %ret11, [256 x i128]** %ret, align 8
  %i = alloca i128, align 8
  %i12 = call i128 @fn_intrinsic_inline_init()
  store i128 %i12, i128* %i, align 4
  %r = alloca [256 x [256 x i128]]*, align 8
  %r13 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r13, [256 x [256 x i128]]** %r, align 8
  %q = alloca [256 x i128]*, align 8
  %q14 = alloca [256 x i128], align 8
  store [256 x i128]* %q14, [256 x i128]** %q, align 8
  %newv = alloca [256 x i128]*, align 8
  %newv15 = alloca [256 x i128], align 8
  store [256 x i128]* %newv15, [256 x i128]** %newv, align 8
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
  %ret216 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret216
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
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy2 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy2, [256 x i128]** %pCopy, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret3 = alloca [256 x i128], align 8
  store [256 x i128]* %ret3, [256 x i128]** %ret, align 8
  %isZero = alloca i128, align 8
  %isZero4 = call i128 @fn_intrinsic_inline_init()
  store i128 %isZero4, i128* %isZero, align 4
  %two = alloca [256 x i128]*, align 8
  %two5 = alloca [256 x i128], align 8
  store [256 x i128]* %two5, [256 x i128]** %two, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo6 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo6, [256 x i128]** %pMinusTwo, align 8
  %out = alloca [256 x i128]*, align 8
  %out7 = alloca [256 x i128], align 8
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
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
  %out1 = alloca [256 x i128]*, align 8
  %out11 = alloca [256 x i128], align 8
  store [256 x i128]* %out11, [256 x i128]** %out1, align 8
  %out0 = alloca [256 x i128]*, align 8
  %out02 = alloca [256 x i128], align 8
  store [256 x i128]* %out02, [256 x i128]** %out0, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %sq_sum_div3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sq_sum_div3, [256 x [256 x i128]]** %sq_sum_div, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %sq04 = alloca [256 x i128], align 8
  store [256 x i128]* %sq04, [256 x i128]** %sq0, align 8
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %out1_div5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1_div5, [256 x [256 x i128]]** %out1_div, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out6, [256 x [256 x i128]]** %out, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %out0_div7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out0_div7, [256 x [256 x i128]]** %out0_div, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %sq_sum8 = alloca [256 x i128], align 8
  store [256 x i128]* %sq_sum8, [256 x i128]** %sq_sum, align 8
  %lambda = alloca [256 x i128]*, align 8
  %lambda9 = alloca [256 x i128], align 8
  store [256 x i128]* %lambda9, [256 x i128]** %lambda, align 8
  %out1_pre = alloca [256 x i128]*, align 8
  %out1_pre10 = alloca [256 x i128], align 8
  store [256 x i128]* %out1_pre10, [256 x i128]** %out1_pre, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %sq111 = alloca [256 x i128], align 8
  store [256 x i128]* %sq111, [256 x i128]** %sq1, align 8
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
