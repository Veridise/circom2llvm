; ModuleID = 'bigint_func.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/bigint_func.circom"

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

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %a.bind, align 8
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  store i128 0, i128* %idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %idx1 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %idx1
  %a2 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a2, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %idx3 = load i128, i128* %idx, align 4
  %add = add i128 %idx3, 1
  store i128 %add, i128* %idx, align 4
  %idx4 = load i128, i128* %idx, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx4, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca i128, align 8
  store i128 %2, i128* %a.bind, align 4
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %temp = alloca i128, align 8
  store i128 0, i128* %temp, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i2 = load i128, i128* %i, align 4
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i2
  store i128 0, i128* %out3, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i4 = load i128, i128* %i, align 4
  %add = add i128 %i4, 1
  store i128 %add, i128* %i, align 4
  %i5 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i5, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch31, %loop.exit
  %out7 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out7, i128 0, i128 %i8
  %out9 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i10
  %b12 = load i128, i128* %array_getter11, align 4
  %mul = mul i128 %a, %b12
  %add13 = add i128 %out9, %mul
  store i128 %add13, i128* %temp, align 4
  %temp14 = load i128, i128* %temp, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp14, %lshift
  %ptr_getter15 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i16 = load i128, i128* %i, align 4
  %out17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter15, i128 0, i128 %i16
  store i128 %mod, i128* %out17, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 %add20
  %out22 = load i128, i128* %array_getter21, align 4
  %temp23 = load i128, i128* %temp, align 4
  %n24 = load i128, i128* %n.bind, align 4
  %lshift25 = shl i128 1, %n24
  %sdiv = sdiv i128 %temp23, %lshift25
  %add26 = add i128 %out22, %sdiv
  %ptr_getter27 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i28 = load i128, i128* %i, align 4
  %add29 = add i128 %i28, 1
  %out30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter27, i128 0, i128 %add29
  store i128 %add26, i128* %out30, align 4
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.body6
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt35 = icmp slt i128 %i34, %k
  br i1 %slt35, label %loop.body6, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch31
  %out37 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out37
}

define i128 @log_ceil(i128 %0) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %n_temp = alloca i128, align 8
  store i128 0, i128* %n_temp, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  store i128 %n, i128* %n_temp, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp1 = load i128, i128* %n_temp, align 4
  %eq = icmp eq i128 %n_temp1, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %i2 = load i128, i128* %i, align 4
  ret i128 %i2

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %n_temp3 = load i128, i128* %n_temp, align 4
  %sdiv = sdiv i128 %n_temp3, 2
  store i128 %sdiv, i128* %n_temp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i4 = load i128, i128* %i, align 4
  %add = add i128 %i4, 1
  store i128 %add, i128* %i, align 4
  %i5 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i5, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %X = alloca i128, align 8
  store i128 0, i128* %X, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %MAXL = alloca i128, align 8
  store i128 0, i128* %MAXL, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp1 = alloca [256 x i128], align 8
  store [256 x i128]* %temp1, [256 x i128]** %temp, align 8
  %borrow = alloca i128, align 8
  store i128 0, i128* %borrow, align 4
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i4
  %a5 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i6 = load i128, i128* %i, align 4
  %temp7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 %a5, i128* %temp7, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i8 = load i128, i128* %i, align 4
  %add = add i128 %i8, 1
  store i128 %add, i128* %i, align 4
  %i9 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i9, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k10 = load i128, i128* %k.bind, align 4
  store i128 %k10, i128* %i, align 4
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch15, %loop.exit
  %ptr_getter12 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i13 = load i128, i128* %i, align 4
  %temp14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter12, i128 0, i128 %i13
  store i128 0, i128* %temp14, align 4
  br label %loop.latch15

loop.latch15:                                     ; preds = %loop.body11
  %i16 = load i128, i128* %i, align 4
  %add17 = add i128 %i16, 1
  store i128 %add17, i128* %i, align 4
  %i18 = load i128, i128* %i, align 4
  %MAXL19 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i18, %MAXL19
  br i1 %sle, label %loop.body11, label %loop.exit20

loop.exit20:                                      ; preds = %loop.latch15
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch78, %loop.exit20
  %temp22 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %temp22, i128 0, i128 %i23
  %temp25 = load i128, i128* %array_getter24, align 4
  %sge = icmp sge i128 %temp25, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body21
  %temp26 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %temp26, i128 0, i128 %i27
  %temp29 = load i128, i128* %array_getter28, align 4
  %X30 = load i128, i128* %X, align 4
  %mod = srem i128 %temp29, %X30
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i32 = load i128, i128* %i, align 4
  %out33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 %mod, i128* %out33, align 4
  %temp34 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i35 = load i128, i128* %i, align 4
  %add36 = add i128 %i35, 1
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %temp34, i128 0, i128 %add36
  %temp38 = load i128, i128* %array_getter37, align 4
  %temp39 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %temp39, i128 0, i128 %i40
  %temp42 = load i128, i128* %array_getter41, align 4
  %X43 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp42, %X43
  %add44 = add i128 %temp38, %sdiv
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i46 = load i128, i128* %i, align 4
  %add47 = add i128 %i46, 1
  %temp48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %add47
  store i128 %add44, i128* %temp48, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body21
  %temp49 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %temp49, i128 0, i128 %i50
  %temp52 = load i128, i128* %array_getter51, align 4
  %neg = sub i128 0, %temp52
  %X53 = load i128, i128* %X, align 4
  %add54 = add i128 %neg, %X53
  %sub = sub i128 %add54, 1
  %X55 = load i128, i128* %X, align 4
  %sdiv56 = sdiv i128 %sub, %X55
  store i128 %sdiv56, i128* %borrow, align 4
  %temp57 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %temp57, i128 0, i128 %i58
  %temp60 = load i128, i128* %array_getter59, align 4
  %borrow61 = load i128, i128* %borrow, align 4
  %X62 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow61, %X62
  %add63 = add i128 %temp60, %mul
  %ptr_getter64 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i65 = load i128, i128* %i, align 4
  %out66 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter64, i128 0, i128 %i65
  store i128 %add63, i128* %out66, align 4
  %temp67 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i68 = load i128, i128* %i, align 4
  %add69 = add i128 %i68, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %temp67, i128 0, i128 %add69
  %temp71 = load i128, i128* %array_getter70, align 4
  %borrow72 = load i128, i128* %borrow, align 4
  %sub73 = sub i128 %temp71, %borrow72
  %ptr_getter74 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  %temp77 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter74, i128 0, i128 %add76
  store i128 %sub73, i128* %temp77, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch78

loop.latch78:                                     ; preds = %if.exit
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %MAXL82 = load i128, i128* %MAXL, align 4
  %slt83 = icmp slt i128 %i81, %MAXL82
  br i1 %slt83, label %loop.body21, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %temp87 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL88 = load i128, i128* %MAXL, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %temp87, i128 0, i128 %MAXL88
  %temp90 = load i128, i128* %array_getter89, align 4
  %sge91 = icmp sge i128 %temp90, 0
  br i1 %sge91, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.exit84
  %ptr_getter92 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL93 = load i128, i128* %MAXL, align 4
  %out94 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter92, i128 0, i128 %MAXL93
  store i128 0, i128* %out94, align 4
  %out95 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out95

if.false86:                                       ; preds = %loop.exit84
  br label %if.exit96

if.exit96:                                        ; preds = %if.false86
  store i128 0, i128* %i, align 4
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch105, %if.exit96
  %a98 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %a98, i128 0, i128 %i99
  %a101 = load i128, i128* %array_getter100, align 4
  %ptr_getter102 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i103 = load i128, i128* %i, align 4
  %temp104 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter102, i128 0, i128 %i103
  store i128 %a101, i128* %temp104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body97
  %i106 = load i128, i128* %i, align 4
  %add107 = add i128 %i106, 1
  store i128 %add107, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %k109 = load i128, i128* %k.bind, align 4
  %slt110 = icmp slt i128 %i108, %k109
  br i1 %slt110, label %loop.body97, label %loop.exit111

loop.exit111:                                     ; preds = %loop.latch105
  %k112 = load i128, i128* %k.bind, align 4
  store i128 %k112, i128* %i, align 4
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch117, %loop.exit111
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i115 = load i128, i128* %i, align 4
  %temp116 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 %i115
  store i128 0, i128* %temp116, align 4
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.body113
  %i118 = load i128, i128* %i, align 4
  %add119 = add i128 %i118, 1
  store i128 %add119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %MAXL121 = load i128, i128* %MAXL, align 4
  %sle122 = icmp sle i128 %i120, %MAXL121
  br i1 %sle122, label %loop.body113, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  store i128 0, i128* %i, align 4
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch193, %loop.exit123
  %temp127 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %temp127, i128 0, i128 %i128
  %temp130 = load i128, i128* %array_getter129, align 4
  %slt131 = icmp slt i128 %temp130, 0
  br i1 %slt131, label %if.true125, label %if.false126

if.true125:                                       ; preds = %loop.body124
  %temp132 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %temp132, i128 0, i128 %i133
  %temp135 = load i128, i128* %array_getter134, align 4
  %neg136 = sub i128 0, %temp135
  %X137 = load i128, i128* %X, align 4
  %sdiv138 = sdiv i128 %neg136, %X137
  store i128 %sdiv138, i128* %carry, align 4
  %temp139 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i140 = load i128, i128* %i, align 4
  %array_getter141 = getelementptr inbounds [256 x i128], [256 x i128]* %temp139, i128 0, i128 %i140
  %temp142 = load i128, i128* %array_getter141, align 4
  %carry143 = load i128, i128* %carry, align 4
  %X144 = load i128, i128* %X, align 4
  %mul145 = mul i128 %carry143, %X144
  %add146 = add i128 %temp142, %mul145
  %ptr_getter147 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i148 = load i128, i128* %i, align 4
  %out149 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter147, i128 0, i128 %i148
  store i128 %add146, i128* %out149, align 4
  %temp150 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i151 = load i128, i128* %i, align 4
  %add152 = add i128 %i151, 1
  %array_getter153 = getelementptr inbounds [256 x i128], [256 x i128]* %temp150, i128 0, i128 %add152
  %temp154 = load i128, i128* %array_getter153, align 4
  %carry155 = load i128, i128* %carry, align 4
  %sub156 = sub i128 %temp154, %carry155
  %ptr_getter157 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i158 = load i128, i128* %i, align 4
  %add159 = add i128 %i158, 1
  %temp160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter157, i128 0, i128 %add159
  store i128 %sub156, i128* %temp160, align 4
  br label %if.exit192

if.false126:                                      ; preds = %loop.body124
  %temp161 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %temp161, i128 0, i128 %i162
  %temp164 = load i128, i128* %array_getter163, align 4
  %X165 = load i128, i128* %X, align 4
  %add166 = add i128 %temp164, %X165
  %sub167 = sub i128 %add166, 1
  %X168 = load i128, i128* %X, align 4
  %sdiv169 = sdiv i128 %sub167, %X168
  store i128 %sdiv169, i128* %borrow, align 4
  %temp170 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i171 = load i128, i128* %i, align 4
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %temp170, i128 0, i128 %i171
  %temp173 = load i128, i128* %array_getter172, align 4
  %borrow174 = load i128, i128* %borrow, align 4
  %X175 = load i128, i128* %X, align 4
  %mul176 = mul i128 %borrow174, %X175
  %sub177 = sub i128 %temp173, %mul176
  %ptr_getter178 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i179 = load i128, i128* %i, align 4
  %out180 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter178, i128 0, i128 %i179
  store i128 %sub177, i128* %out180, align 4
  %temp181 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i182 = load i128, i128* %i, align 4
  %add183 = add i128 %i182, 1
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %temp181, i128 0, i128 %add183
  %temp185 = load i128, i128* %array_getter184, align 4
  %borrow186 = load i128, i128* %borrow, align 4
  %add187 = add i128 %temp185, %borrow186
  %ptr_getter188 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i189 = load i128, i128* %i, align 4
  %add190 = add i128 %i189, 1
  %temp191 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter188, i128 0, i128 %add190
  store i128 %add187, i128* %temp191, align 4
  br label %if.exit192

if.exit192:                                       ; preds = %if.false126, %if.true125
  br label %loop.latch193

loop.latch193:                                    ; preds = %if.exit192
  %i194 = load i128, i128* %i, align 4
  %add195 = add i128 %i194, 1
  store i128 %add195, i128* %i, align 4
  %i196 = load i128, i128* %i, align 4
  %MAXL197 = load i128, i128* %MAXL, align 4
  %slt198 = icmp slt i128 %i196, %MAXL197
  br i1 %slt198, label %loop.body124, label %loop.exit199

loop.exit199:                                     ; preds = %loop.latch193
  %ptr_getter200 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL201 = load i128, i128* %MAXL, align 4
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter200, i128 0, i128 %MAXL201
  store i128 1, i128* %out202, align 4
  %out203 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out203
}

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %in.bind = alloca i128, align 8
  store i128 %0, i128* %in.bind, align 4
  %n.bind = alloca i128, align 8
  store i128 %1, i128* %n.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %3, i128* %k.bind, align 4
  %var_inline_array = alloca [3 x i128], align 8
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %in.bind, align 4
  %n3 = load i128, i128* %n.bind, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %m.bind, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %in8 = load i128, i128* %in.bind, align 4
  %n9 = load i128, i128* %n.bind, align 4
  %m10 = load i128, i128* %m.bind, align 4
  %add = add i128 %n9, %m10
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %in8, %lshift11
  %k = load i128, i128* %k.bind, align 4
  %lshift13 = shl i128 1, %k
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %borrow = alloca [256 x i128]*, align 8
  %borrow1 = alloca [256 x i128], align 8
  store [256 x i128]* %borrow1, [256 x i128]** %borrow, align 8
  %diff = alloca [256 x i128]*, align 8
  %diff2 = alloca [256 x i128], align 8
  store [256 x i128]* %diff2, [256 x i128]** %diff, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i4 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i4, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i9
  %b11 = load i128, i128* %array_getter10, align 4
  %sge = icmp sge i128 %a8, %b11
  br i1 %sge, label %if.true5, label %if.false6

if.false:                                         ; preds = %loop.body
  %a42 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %a42, i128 0, i128 %i43
  %a45 = load i128, i128* %array_getter44, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i47
  %b49 = load i128, i128* %array_getter48, align 4
  %borrow50 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow50, i128 0, i128 %sub52
  %borrow54 = load i128, i128* %array_getter53, align 4
  %add55 = add i128 %b49, %borrow54
  %sge56 = icmp sge i128 %a45, %add55
  br i1 %sge56, label %if.true40, label %if.false41

if.true5:                                         ; preds = %if.true
  %a12 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a12, i128 0, i128 %i13
  %a15 = load i128, i128* %array_getter14, align 4
  %b16 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %b16, i128 0, i128 %i17
  %b19 = load i128, i128* %array_getter18, align 4
  %sub = sub i128 %a15, %b19
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i20 = load i128, i128* %i, align 4
  %diff21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i20
  store i128 %sub, i128* %diff21, align 4
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i23 = load i128, i128* %i, align 4
  %borrow24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 0, i128* %borrow24, align 4
  br label %if.exit

if.false6:                                        ; preds = %if.true
  %a25 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %a25, i128 0, i128 %i26
  %a28 = load i128, i128* %array_getter27, align 4
  %b29 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %b29, i128 0, i128 %i30
  %b32 = load i128, i128* %array_getter31, align 4
  %sub33 = sub i128 %a28, %b32
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub33, %lshift
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i35 = load i128, i128* %i, align 4
  %diff36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 %add, i128* %diff36, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i38 = load i128, i128* %i, align 4
  %borrow39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 1, i128* %borrow39, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false6, %if.true5
  br label %if.exit103

if.true40:                                        ; preds = %if.false
  %a57 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %a57, i128 0, i128 %i58
  %a60 = load i128, i128* %array_getter59, align 4
  %b61 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i62 = load i128, i128* %i, align 4
  %array_getter63 = getelementptr inbounds [256 x i128], [256 x i128]* %b61, i128 0, i128 %i62
  %b64 = load i128, i128* %array_getter63, align 4
  %sub65 = sub i128 %a60, %b64
  %borrow66 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i67 = load i128, i128* %i, align 4
  %sub68 = sub i128 %i67, 1
  %array_getter69 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow66, i128 0, i128 %sub68
  %borrow70 = load i128, i128* %array_getter69, align 4
  %sub71 = sub i128 %sub65, %borrow70
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i73 = load i128, i128* %i, align 4
  %diff74 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %i73
  store i128 %sub71, i128* %diff74, align 4
  %ptr_getter75 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i76 = load i128, i128* %i, align 4
  %borrow77 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter75, i128 0, i128 %i76
  store i128 0, i128* %borrow77, align 4
  br label %if.exit102

if.false41:                                       ; preds = %if.false
  %n78 = load i128, i128* %n.bind, align 4
  %lshift79 = shl i128 1, %n78
  %a80 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i81 = load i128, i128* %i, align 4
  %array_getter82 = getelementptr inbounds [256 x i128], [256 x i128]* %a80, i128 0, i128 %i81
  %a83 = load i128, i128* %array_getter82, align 4
  %add84 = add i128 %lshift79, %a83
  %b85 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i86 = load i128, i128* %i, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %b85, i128 0, i128 %i86
  %b88 = load i128, i128* %array_getter87, align 4
  %sub89 = sub i128 %add84, %b88
  %borrow90 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i91 = load i128, i128* %i, align 4
  %sub92 = sub i128 %i91, 1
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow90, i128 0, i128 %sub92
  %borrow94 = load i128, i128* %array_getter93, align 4
  %sub95 = sub i128 %sub89, %borrow94
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i97 = load i128, i128* %i, align 4
  %diff98 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 %i97
  store i128 %sub95, i128* %diff98, align 4
  %ptr_getter99 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i100 = load i128, i128* %i, align 4
  %borrow101 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter99, i128 0, i128 %i100
  store i128 1, i128* %borrow101, align 4
  br label %if.exit102

if.exit102:                                       ; preds = %if.false41, %if.true40
  br label %if.exit103

if.exit103:                                       ; preds = %if.exit102, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit103
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i106, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff107 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff107
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %b.bind = alloca i128, align 8
  store i128 %1, i128* %b.bind, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %slt = icmp slt i128 %a, %b
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %a.bind, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %b.bind, align 4
  ret i128 %b2
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i3
  %b5 = load i128, i128* %array_getter4, align 4
  %sgt = icmp sgt i128 %a2, %b5
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %a8 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %a8, i128 0, i128 %i9
  %a11 = load i128, i128* %array_getter10, align 4
  %b12 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %b12, i128 0, i128 %i13
  %b15 = load i128, i128* %array_getter14, align 4
  %slt = icmp slt i128 %a11, %b15
  br i1 %slt, label %if.true6, label %if.false7

if.true6:                                         ; preds = %if.exit
  ret i128 0

if.false7:                                        ; preds = %if.exit
  br label %if.exit16

if.exit16:                                        ; preds = %if.false7
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit16
  %i17 = load i128, i128* %i, align 4
  %sub18 = sub i128 %i17, 1
  store i128 %sub18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %in.bind = alloca i128, align 8
  store i128 %0, i128* %in.bind, align 4
  %n.bind = alloca i128, align 8
  store i128 %1, i128* %n.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %var_inline_array = alloca [2 x i128], align 8
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %in.bind, align 4
  %n3 = load i128, i128* %n.bind, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %m.bind, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %b.bind = alloca i128, align 8
  store i128 %1, i128* %b.bind, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %sgt = icmp sgt i128 %a, %b
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %a.bind, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %b.bind, align 4
  ret i128 %b2
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %c.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %c.bind, align 8
  %d.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %5, [256 x i128]** %d.bind, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i5
  %b7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %a4, %b7
  %c = load [256 x i128]*, [256 x i128]** %c.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i8
  %c10 = load i128, i128* %array_getter9, align 4
  %add11 = add i128 %add, %c10
  %d = load [256 x i128]*, [256 x i128]** %d.bind, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i12
  %d14 = load i128, i128* %array_getter13, align 4
  %add15 = add i128 %add11, %d14
  %carry16 = load i128, i128* %carry, align 4
  %add17 = add i128 %add15, %carry16
  %n = load i128, i128* %n.bind, align 4
  %n18 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add17, i128 %n, i128 %n18)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 0
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i22 = load i128, i128* %i, align 4
  %sum23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i22
  store i128 %sumAndCarry21, i128* %sum23, align 4
  %sumAndCarry24 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry24, i128 0, i128 1
  %sumAndCarry26 = load i128, i128* %array_getter25, align 4
  store i128 %sumAndCarry26, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i29, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry30 = load i128, i128* %carry, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k32 = load i128, i128* %k.bind, align 4
  %sum33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %k32
  store i128 %carry30, i128* %sum33, align 4
  %sum34 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum34
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val1 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val1, [256 x i128]** %prod_val, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry2 = alloca [256 x i128], align 8
  store [256 x i128]* %carry2, [256 x i128]** %carry, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %a_idx = alloca i128, align 8
  store i128 0, i128* %a_idx, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x i128]*, align 8
  %out4 = alloca [256 x i128], align 8
  store [256 x i128]* %out4, [256 x i128]** %out, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split5, [256 x [256 x i128]]** %split, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch58, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i6 = load i128, i128* %i, align 4
  %prod_val7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 0, i128* %prod_val7, align 4
  %i8 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i8, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body9

if.false:                                         ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %k28 = load i128, i128* %k.bind, align 4
  %sub29 = sub i128 %i27, %k28
  %add30 = add i128 %sub29, 1
  store i128 %add30, i128* %a_idx, align 4
  br label %loop.body31

loop.body9:                                       ; preds = %loop.latch, %if.true
  %prod_val10 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val10, i128 0, i128 %i11
  %prod_val12 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx13 = load i128, i128* %a_idx, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx13
  %a15 = load i128, i128* %array_getter14, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i16 = load i128, i128* %i, align 4
  %a_idx17 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i16, %a_idx17
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b19 = load i128, i128* %array_getter18, align 4
  %mul = mul i128 %a15, %b19
  %add = add i128 %prod_val12, %mul
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i21 = load i128, i128* %i, align 4
  %prod_val22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i21
  store i128 %add, i128* %prod_val22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body9
  %a_idx23 = load i128, i128* %a_idx, align 4
  %add24 = add i128 %a_idx23, 1
  store i128 %add24, i128* %a_idx, align 4
  %a_idx25 = load i128, i128* %a_idx, align 4
  %i26 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx25, %i26
  br i1 %sle, label %loop.body9, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body31:                                      ; preds = %loop.latch51, %if.false
  %prod_val32 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i33 = load i128, i128* %i, align 4
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val32, i128 0, i128 %i33
  %prod_val35 = load i128, i128* %array_getter34, align 4
  %a36 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx37 = load i128, i128* %a_idx, align 4
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %a36, i128 0, i128 %a_idx37
  %a39 = load i128, i128* %array_getter38, align 4
  %b40 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i41 = load i128, i128* %i, align 4
  %a_idx42 = load i128, i128* %a_idx, align 4
  %sub43 = sub i128 %i41, %a_idx42
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %b40, i128 0, i128 %sub43
  %b45 = load i128, i128* %array_getter44, align 4
  %mul46 = mul i128 %a39, %b45
  %add47 = add i128 %prod_val35, %mul46
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i49 = load i128, i128* %i, align 4
  %prod_val50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 %i49
  store i128 %add47, i128* %prod_val50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body31
  %a_idx52 = load i128, i128* %a_idx, align 4
  %add53 = add i128 %a_idx52, 1
  store i128 %add53, i128* %a_idx, align 4
  %a_idx54 = load i128, i128* %a_idx, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %slt56 = icmp slt i128 %a_idx54, %k55
  br i1 %slt56, label %loop.body31, label %loop.exit57

loop.exit57:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit57, %loop.exit
  br label %loop.latch58

loop.latch58:                                     ; preds = %if.exit
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %mul63 = mul i128 2, %k62
  %sub64 = sub i128 %mul63, 1
  %slt65 = icmp slt i128 %i61, %sub64
  br i1 %slt65, label %loop.body, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch58
  %uniform_array67 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array67, [256 x i128]** %out, align 8
  %uniform_array68 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array68, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch79, %loop.exit66
  %prod_val70 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val70, i128 0, i128 %i71
  %prod_val73 = load i128, i128* %array_getter72, align 4
  %n = load i128, i128* %n.bind, align 4
  %n74 = load i128, i128* %n.bind, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val73, i128 %n, i128 %n74, i128 %n75)
  %ptr_getter76 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i77 = load i128, i128* %i, align 4
  %split78 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter76, i128 0, i128 %i77
  %4 = bitcast [256 x i128]* %split78 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body69
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  store i128 %add81, i128* %i, align 4
  %i82 = load i128, i128* %i, align 4
  %k83 = load i128, i128* %k.bind, align 4
  %mul84 = mul i128 2, %k83
  %sub85 = sub i128 %mul84, 1
  %slt86 = icmp slt i128 %i82, %sub85
  br i1 %slt86, label %loop.body69, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch79
  %uniform_array88 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array88, [256 x i128]** %carry, align 8
  %ptr_getter89 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter89, i128 0, i128 0
  store i128 0, i128* %carry90, align 4
  %split91 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split91, i128 0, i128 0, i128 0
  %split93 = load i128, i128* %array_getter92, align 4
  %ptr_getter94 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out95 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter94, i128 0, i128 0
  store i128 %split93, i128* %out95, align 4
  %k98 = load i128, i128* %k.bind, align 4
  %mul99 = mul i128 2, %k98
  %sub100 = sub i128 %mul99, 1
  %sgt = icmp sgt i128 %sub100, 1
  br i1 %sgt, label %if.true96, label %if.false97

if.true96:                                        ; preds = %loop.exit87
  %split101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split101, i128 0, i128 0, i128 1
  %split103 = load i128, i128* %array_getter102, align 4
  %split104 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter105 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split104, i128 0, i128 1, i128 0
  %split106 = load i128, i128* %array_getter105, align 4
  %add107 = add i128 %split103, %split106
  %n108 = load i128, i128* %n.bind, align 4
  %n109 = load i128, i128* %n.bind, align 4
  %call110 = call [2 x i128]* @SplitFn(i128 %add107, i128 %n108, i128 %n109)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry111 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry111, i128 0, i128 0
  %sumAndCarry113 = load i128, i128* %array_getter112, align 4
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out115 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 1
  store i128 %sumAndCarry113, i128* %out115, align 4
  %sumAndCarry116 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry116, i128 0, i128 1
  %sumAndCarry118 = load i128, i128* %array_getter117, align 4
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 1
  store i128 %sumAndCarry118, i128* %carry120, align 4
  br label %if.exit121

if.false97:                                       ; preds = %loop.exit87
  br label %if.exit121

if.exit121:                                       ; preds = %if.false97, %if.true96
  %k124 = load i128, i128* %k.bind, align 4
  %mul125 = mul i128 2, %k124
  %sub126 = sub i128 %mul125, 1
  %sgt127 = icmp sgt i128 %sub126, 2
  br i1 %sgt127, label %if.true122, label %if.false123

if.true122:                                       ; preds = %if.exit121
  store i128 2, i128* %i, align 4
  br label %loop.body128

if.false123:                                      ; preds = %if.exit121
  br label %if.exit201

loop.body128:                                     ; preds = %loop.latch167, %if.true122
  %split129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i130 = load i128, i128* %i, align 4
  %array_getter131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split129, i128 0, i128 %i130, i128 0
  %split132 = load i128, i128* %array_getter131, align 4
  %split133 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i134 = load i128, i128* %i, align 4
  %sub135 = sub i128 %i134, 1
  %array_getter136 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split133, i128 0, i128 %sub135, i128 1
  %split137 = load i128, i128* %array_getter136, align 4
  %add138 = add i128 %split132, %split137
  %split139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i140 = load i128, i128* %i, align 4
  %sub141 = sub i128 %i140, 2
  %array_getter142 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split139, i128 0, i128 %sub141, i128 2
  %split143 = load i128, i128* %array_getter142, align 4
  %add144 = add i128 %add138, %split143
  %carry145 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i146 = load i128, i128* %i, align 4
  %sub147 = sub i128 %i146, 1
  %array_getter148 = getelementptr inbounds [256 x i128], [256 x i128]* %carry145, i128 0, i128 %sub147
  %carry149 = load i128, i128* %array_getter148, align 4
  %add150 = add i128 %add144, %carry149
  %n151 = load i128, i128* %n.bind, align 4
  %n152 = load i128, i128* %n.bind, align 4
  %call153 = call [2 x i128]* @SplitFn(i128 %add150, i128 %n151, i128 %n152)
  %memcpy_ptr154 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr154 to i8*
  %9 = bitcast [2 x i128]* %call153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry155 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry155, i128 0, i128 0
  %sumAndCarry157 = load i128, i128* %array_getter156, align 4
  %ptr_getter158 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i159 = load i128, i128* %i, align 4
  %out160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter158, i128 0, i128 %i159
  store i128 %sumAndCarry157, i128* %out160, align 4
  %sumAndCarry161 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry161, i128 0, i128 1
  %sumAndCarry163 = load i128, i128* %array_getter162, align 4
  %ptr_getter164 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i165 = load i128, i128* %i, align 4
  %carry166 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter164, i128 0, i128 %i165
  store i128 %sumAndCarry163, i128* %carry166, align 4
  br label %loop.latch167

loop.latch167:                                    ; preds = %loop.body128
  %i168 = load i128, i128* %i, align 4
  %add169 = add i128 %i168, 1
  store i128 %add169, i128* %i, align 4
  %i170 = load i128, i128* %i, align 4
  %k171 = load i128, i128* %k.bind, align 4
  %mul172 = mul i128 2, %k171
  %sub173 = sub i128 %mul172, 1
  %slt174 = icmp slt i128 %i170, %sub173
  br i1 %slt174, label %loop.body128, label %loop.exit175

loop.exit175:                                     ; preds = %loop.latch167
  %split176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k177 = load i128, i128* %k.bind, align 4
  %mul178 = mul i128 2, %k177
  %sub179 = sub i128 %mul178, 2
  %array_getter180 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split176, i128 0, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %split182 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k183 = load i128, i128* %k.bind, align 4
  %mul184 = mul i128 2, %k183
  %sub185 = sub i128 %mul184, 3
  %array_getter186 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split182, i128 0, i128 %sub185, i128 2
  %split187 = load i128, i128* %array_getter186, align 4
  %add188 = add i128 %split181, %split187
  %carry189 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k190 = load i128, i128* %k.bind, align 4
  %mul191 = mul i128 2, %k190
  %sub192 = sub i128 %mul191, 2
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %carry189, i128 0, i128 %sub192
  %carry194 = load i128, i128* %array_getter193, align 4
  %add195 = add i128 %add188, %carry194
  %ptr_getter196 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k197 = load i128, i128* %k.bind, align 4
  %mul198 = mul i128 2, %k197
  %sub199 = sub i128 %mul198, 1
  %out200 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter196, i128 0, i128 %sub199
  store i128 %add195, i128* %out200, align 4
  br label %if.exit201

if.exit201:                                       ; preds = %if.false123, %loop.exit175
  %out202 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out202
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k1.bind = alloca i128, align 8
  store i128 %1, i128* %k1.bind, align 4
  %k2.bind = alloca i128, align 8
  store i128 %2, i128* %k2.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %b.bind, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry1 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry1, [256 x i128]** %sumAndCarry, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i3 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %k2.bind, align 4
  %slt = icmp slt i128 %i3, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i4
  %a5 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i6
  %b8 = load i128, i128* %array_getter7, align 4
  %add = add i128 %a5, %b8
  %carry9 = load i128, i128* %carry, align 4
  %add10 = add i128 %add, %carry9
  %n = load i128, i128* %n.bind, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add10, i128 %n, i128 %n11)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry12 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry12, i128 0, i128 0
  %sumAndCarry14 = load i128, i128* %array_getter13, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i15 = load i128, i128* %i, align 4
  %sum16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 %sumAndCarry14, i128* %sum16, align 4
  %sumAndCarry17 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry17, i128 0, i128 1
  %sumAndCarry19 = load i128, i128* %array_getter18, align 4
  store i128 %sumAndCarry19, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a20 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i128 0, i128 %i21
  %a23 = load i128, i128* %array_getter22, align 4
  %carry24 = load i128, i128* %carry, align 4
  %add25 = add i128 %a23, %carry24
  %n26 = load i128, i128* %n.bind, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %call28 = call [2 x i128]* @SplitFn(i128 %add25, i128 %n26, i128 %n27)
  %memcpy_ptr29 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr29 to i8*
  %8 = bitcast [2 x i128]* %call28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry30 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry30, i128 0, i128 0
  %sumAndCarry32 = load i128, i128* %array_getter31, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i34 = load i128, i128* %i, align 4
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i34
  store i128 %sumAndCarry32, i128* %sum35, align 4
  %sumAndCarry36 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry36, i128 0, i128 1
  %sumAndCarry38 = load i128, i128* %array_getter37, align 4
  store i128 %sumAndCarry38, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i39 = load i128, i128* %i, align 4
  %add40 = add i128 %i39, 1
  store i128 %add40, i128* %i, align 4
  %i41 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %k1.bind, align 4
  %slt42 = icmp slt i128 %i41, %k1
  br i1 %slt42, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry43 = load i128, i128* %carry, align 4
  %ptr_getter44 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k145 = load i128, i128* %k1.bind, align 4
  %sum46 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter44, i128 0, i128 %k145
  store i128 %carry43, i128* %sum46, align 4
  %sum47 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum47
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %l.bind = alloca i128, align 8
  store i128 %2, i128* %l.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %b.bind, align 8
  %j1 = alloca i128, align 8
  store i128 0, i128* %j1, align 4
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry1, [256 x [256 x i128]]** %carry, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split2, [256 x [256 x [256 x i128]]]** %split, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry3, [256 x [256 x i128]]** %sumAndCarry, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out4, [256 x [256 x i128]]** %out, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %j2 = alloca i128, align 8
  store i128 0, i128* %j2, align 4
  %i1 = alloca i128, align 8
  store i128 0, i128* %i1, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %i2 = alloca i128, align 8
  store i128 0, i128* %i2, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val5, [256 x [256 x i128]]** %prod_val, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch12, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j7 = load i128, i128* %j, align 4
  %i8 = load i128, i128* %i, align 4
  %prod_val9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j7, i128 %i8
  store i128 0, i128* %prod_val9, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %j10 = load i128, i128* %j, align 4
  %add = add i128 %j10, 1
  store i128 %add, i128* %j, align 4
  %j11 = load i128, i128* %j, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j11, %sub
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch12

loop.latch12:                                     ; preds = %loop.exit
  %i13 = load i128, i128* %i, align 4
  %add14 = add i128 %i13, 1
  store i128 %add14, i128* %i, align 4
  %i15 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul16 = mul i128 2, %k
  %sub17 = sub i128 %mul16, 1
  %slt18 = icmp slt i128 %i15, %sub17
  br i1 %slt18, label %loop.body, label %loop.exit19

loop.exit19:                                      ; preds = %loop.latch12
  store i128 0, i128* %i1, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch71, %loop.exit19
  store i128 0, i128* %i2, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch64, %loop.body20
  store i128 0, i128* %j1, align 4
  br label %loop.body22

loop.body22:                                      ; preds = %loop.latch57, %loop.body21
  store i128 0, i128* %j2, align 4
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch50, %loop.body22
  %prod_val24 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j125 = load i128, i128* %j1, align 4
  %j226 = load i128, i128* %j2, align 4
  %add27 = add i128 %j125, %j226
  %i128 = load i128, i128* %i1, align 4
  %i229 = load i128, i128* %i2, align 4
  %add30 = add i128 %i128, %i229
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val24, i128 0, i128 %add27, i128 %add30
  %prod_val31 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %j132 = load i128, i128* %j1, align 4
  %i133 = load i128, i128* %i1, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j132, i128 %i133
  %a35 = load i128, i128* %array_getter34, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j236 = load i128, i128* %j2, align 4
  %i237 = load i128, i128* %i2, align 4
  %array_getter38 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j236, i128 %i237
  %b39 = load i128, i128* %array_getter38, align 4
  %mul40 = mul i128 %a35, %b39
  %add41 = add i128 %prod_val31, %mul40
  %ptr_getter42 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j143 = load i128, i128* %j1, align 4
  %j244 = load i128, i128* %j2, align 4
  %add45 = add i128 %j143, %j244
  %i146 = load i128, i128* %i1, align 4
  %i247 = load i128, i128* %i2, align 4
  %add48 = add i128 %i146, %i247
  %prod_val49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter42, i128 0, i128 %add45, i128 %add48
  store i128 %add41, i128* %prod_val49, align 4
  br label %loop.latch50

loop.latch50:                                     ; preds = %loop.body23
  %j251 = load i128, i128* %j2, align 4
  %add52 = add i128 %j251, 1
  store i128 %add52, i128* %j2, align 4
  %j253 = load i128, i128* %j2, align 4
  %l54 = load i128, i128* %l.bind, align 4
  %slt55 = icmp slt i128 %j253, %l54
  br i1 %slt55, label %loop.body23, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch50
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.exit56
  %j158 = load i128, i128* %j1, align 4
  %add59 = add i128 %j158, 1
  store i128 %add59, i128* %j1, align 4
  %j160 = load i128, i128* %j1, align 4
  %l61 = load i128, i128* %l.bind, align 4
  %slt62 = icmp slt i128 %j160, %l61
  br i1 %slt62, label %loop.body22, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %i265 = load i128, i128* %i2, align 4
  %add66 = add i128 %i265, 1
  store i128 %add66, i128* %i2, align 4
  %i267 = load i128, i128* %i2, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %slt69 = icmp slt i128 %i267, %k68
  br i1 %slt69, label %loop.body21, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %i172 = load i128, i128* %i1, align 4
  %add73 = add i128 %i172, 1
  store i128 %add73, i128* %i1, align 4
  %i174 = load i128, i128* %i1, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %slt76 = icmp slt i128 %i174, %k75
  br i1 %slt76, label %loop.body20, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  %uniform_array78 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array78, [256 x [256 x i128]]** %out, align 8
  %uniform_array79 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array79, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch102, %loop.exit77
  store i128 0, i128* %i, align 4
  br label %loop.body81

loop.body81:                                      ; preds = %loop.latch93, %loop.body80
  %prod_val82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j83 = load i128, i128* %j, align 4
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val82, i128 0, i128 %j83, i128 %i84
  %prod_val86 = load i128, i128* %array_getter85, align 4
  %n = load i128, i128* %n.bind, align 4
  %n87 = load i128, i128* %n.bind, align 4
  %n88 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val86, i128 %n, i128 %n87, i128 %n88)
  %ptr_getter89 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j90 = load i128, i128* %j, align 4
  %i91 = load i128, i128* %i, align 4
  %split92 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter89, i128 0, i128 %j90, i128 %i91
  %5 = bitcast [256 x i128]* %split92 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body81
  %i94 = load i128, i128* %i, align 4
  %add95 = add i128 %i94, 1
  store i128 %add95, i128* %i, align 4
  %i96 = load i128, i128* %i, align 4
  %k97 = load i128, i128* %k.bind, align 4
  %mul98 = mul i128 2, %k97
  %sub99 = sub i128 %mul98, 1
  %slt100 = icmp slt i128 %i96, %sub99
  br i1 %slt100, label %loop.body81, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch93
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.exit101
  %j103 = load i128, i128* %j, align 4
  %add104 = add i128 %j103, 1
  store i128 %add104, i128* %j, align 4
  %j105 = load i128, i128* %j, align 4
  %l106 = load i128, i128* %l.bind, align 4
  %mul107 = mul i128 2, %l106
  %sub108 = sub i128 %mul107, 1
  %slt109 = icmp slt i128 %j105, %sub108
  br i1 %slt109, label %loop.body80, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch102
  %uniform_array111 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array111, [256 x [256 x i128]]** %carry, align 8
  %uniform_array112 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array112, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch251, %loop.exit110
  %ptr_getter114 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j115 = load i128, i128* %j, align 4
  %carry116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter114, i128 0, i128 %j115, i128 0
  store i128 0, i128* %carry116, align 4
  %split117 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j118 = load i128, i128* %j, align 4
  %array_getter119 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split117, i128 0, i128 %j118, i128 0, i128 0
  %split120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j122 = load i128, i128* %j, align 4
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter121, i128 0, i128 %j122, i128 0
  store i128 %split120, i128* %out123, align 4
  %k124 = load i128, i128* %k.bind, align 4
  %mul125 = mul i128 2, %k124
  %sub126 = sub i128 %mul125, 1
  %sgt = icmp sgt i128 %sub126, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body113
  %split127 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j128 = load i128, i128* %j, align 4
  %array_getter129 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split127, i128 0, i128 %j128, i128 0, i128 1
  %split130 = load i128, i128* %array_getter129, align 4
  %split131 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j133 = load i128, i128* %j, align 4
  %array_getter134 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split131, i128 0, i128 %j133, i128 1, i128 0
  %split135 = load i128, i128* %array_getter134, align 4
  %add136 = add i128 %split130, %split135
  %n137 = load i128, i128* %n.bind, align 4
  %n138 = load i128, i128* %n.bind, align 4
  %call139 = call [2 x i128]* @SplitFn(i128 %add136, i128 %n137, i128 %n138)
  %ptr_getter140 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j141 = load i128, i128* %j, align 4
  %sumAndCarry142 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter140, i128 0, i128 %j141
  %7 = bitcast [256 x i128]* %sumAndCarry142 to i8*
  %8 = bitcast [2 x i128]* %call139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry143 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j144 = load i128, i128* %j, align 4
  %array_getter145 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry143, i128 0, i128 %j144, i128 0
  %sumAndCarry146 = load i128, i128* %array_getter145, align 4
  %ptr_getter147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j148 = load i128, i128* %j, align 4
  %out149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter147, i128 0, i128 %j148, i128 1
  store i128 %sumAndCarry146, i128* %out149, align 4
  %sumAndCarry150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j151 = load i128, i128* %j, align 4
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry150, i128 0, i128 %j151, i128 1
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %ptr_getter154 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j155 = load i128, i128* %j, align 4
  %carry156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter154, i128 0, i128 %j155, i128 1
  store i128 %sumAndCarry153, i128* %carry156, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body113
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k159 = load i128, i128* %k.bind, align 4
  %mul160 = mul i128 2, %k159
  %sub161 = sub i128 %mul160, 1
  %sgt162 = icmp sgt i128 %sub161, 2
  br i1 %sgt162, label %if.true157, label %if.false158

if.true157:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body163

if.false158:                                      ; preds = %if.exit
  br label %if.exit250

loop.body163:                                     ; preds = %loop.latch212, %if.true157
  %split164 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j165 = load i128, i128* %j, align 4
  %i166 = load i128, i128* %i, align 4
  %array_getter167 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split164, i128 0, i128 %j165, i128 %i166, i128 0
  %split168 = load i128, i128* %array_getter167, align 4
  %split169 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j170 = load i128, i128* %j, align 4
  %i171 = load i128, i128* %i, align 4
  %sub172 = sub i128 %i171, 1
  %array_getter173 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split169, i128 0, i128 %j170, i128 %sub172, i128 1
  %split174 = load i128, i128* %array_getter173, align 4
  %add175 = add i128 %split168, %split174
  %split176 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j177 = load i128, i128* %j, align 4
  %i178 = load i128, i128* %i, align 4
  %sub179 = sub i128 %i178, 2
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split176, i128 0, i128 %j177, i128 %sub179, i128 2
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %add175, %split181
  %carry183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j184 = load i128, i128* %j, align 4
  %i185 = load i128, i128* %i, align 4
  %sub186 = sub i128 %i185, 1
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry183, i128 0, i128 %j184, i128 %sub186
  %carry188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %carry188
  %n190 = load i128, i128* %n.bind, align 4
  %n191 = load i128, i128* %n.bind, align 4
  %call192 = call [2 x i128]* @SplitFn(i128 %add189, i128 %n190, i128 %n191)
  %ptr_getter193 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j194 = load i128, i128* %j, align 4
  %sumAndCarry195 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter193, i128 0, i128 %j194
  %9 = bitcast [256 x i128]* %sumAndCarry195 to i8*
  %10 = bitcast [2 x i128]* %call192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j197 = load i128, i128* %j, align 4
  %array_getter198 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry196, i128 0, i128 %j197, i128 0
  %sumAndCarry199 = load i128, i128* %array_getter198, align 4
  %ptr_getter200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j201 = load i128, i128* %j, align 4
  %i202 = load i128, i128* %i, align 4
  %out203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter200, i128 0, i128 %j201, i128 %i202
  store i128 %sumAndCarry199, i128* %out203, align 4
  %sumAndCarry204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j205 = load i128, i128* %j, align 4
  %array_getter206 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry204, i128 0, i128 %j205, i128 1
  %sumAndCarry207 = load i128, i128* %array_getter206, align 4
  %ptr_getter208 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j209 = load i128, i128* %j, align 4
  %i210 = load i128, i128* %i, align 4
  %carry211 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter208, i128 0, i128 %j209, i128 %i210
  store i128 %sumAndCarry207, i128* %carry211, align 4
  br label %loop.latch212

loop.latch212:                                    ; preds = %loop.body163
  %i213 = load i128, i128* %i, align 4
  %add214 = add i128 %i213, 1
  store i128 %add214, i128* %i, align 4
  %i215 = load i128, i128* %i, align 4
  %k216 = load i128, i128* %k.bind, align 4
  %mul217 = mul i128 2, %k216
  %sub218 = sub i128 %mul217, 1
  %slt219 = icmp slt i128 %i215, %sub218
  br i1 %slt219, label %loop.body163, label %loop.exit220

loop.exit220:                                     ; preds = %loop.latch212
  %split221 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j222 = load i128, i128* %j, align 4
  %k223 = load i128, i128* %k.bind, align 4
  %mul224 = mul i128 2, %k223
  %sub225 = sub i128 %mul224, 2
  %array_getter226 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split221, i128 0, i128 %j222, i128 %sub225, i128 1
  %split227 = load i128, i128* %array_getter226, align 4
  %split228 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j229 = load i128, i128* %j, align 4
  %k230 = load i128, i128* %k.bind, align 4
  %mul231 = mul i128 2, %k230
  %sub232 = sub i128 %mul231, 3
  %array_getter233 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split228, i128 0, i128 %j229, i128 %sub232, i128 2
  %split234 = load i128, i128* %array_getter233, align 4
  %add235 = add i128 %split227, %split234
  %carry236 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j237 = load i128, i128* %j, align 4
  %k238 = load i128, i128* %k.bind, align 4
  %mul239 = mul i128 2, %k238
  %sub240 = sub i128 %mul239, 2
  %array_getter241 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry236, i128 0, i128 %j237, i128 %sub240
  %carry242 = load i128, i128* %array_getter241, align 4
  %add243 = add i128 %add235, %carry242
  %ptr_getter244 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j245 = load i128, i128* %j, align 4
  %k246 = load i128, i128* %k.bind, align 4
  %mul247 = mul i128 2, %k246
  %sub248 = sub i128 %mul247, 1
  %out249 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter244, i128 0, i128 %j245, i128 %sub248
  store i128 %add243, i128* %out249, align 4
  br label %if.exit250

if.exit250:                                       ; preds = %if.false158, %loop.exit220
  br label %loop.latch251

loop.latch251:                                    ; preds = %if.exit250
  %j252 = load i128, i128* %j, align 4
  %add253 = add i128 %j252, 1
  store i128 %add253, i128* %j, align 4
  %j254 = load i128, i128* %j, align 4
  %l255 = load i128, i128* %l.bind, align 4
  %mul256 = mul i128 2, %l255
  %sub257 = sub i128 %mul256, 1
  %slt258 = icmp slt i128 %j254, %sub257
  br i1 %slt258, label %loop.body113, label %loop.exit259

loop.exit259:                                     ; preds = %loop.latch251
  %out260 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out260
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %mult = alloca [256 x i128]*, align 8
  %mult1 = alloca [256 x i128], align 8
  store [256 x i128]* %mult1, [256 x i128]** %mult, align 8
  %qhat = alloca i128, align 8
  store i128 0, i128* %qhat, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a2 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a2, %lshift
  %a3 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k4 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k4, 1
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %a3, i128 0, i128 %sub
  %a6 = load i128, i128* %array_getter5, align 4
  %add = add i128 %mul, %a6
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k7 = load i128, i128* %k.bind, align 4
  %sub8 = sub i128 %k7, 1
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub8
  %b10 = load i128, i128* %array_getter9, align 4
  %sdiv = sdiv i128 %add, %b10
  store i128 %sdiv, i128* %qhat, align 4
  %qhat11 = load i128, i128* %qhat, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %lshift13 = shl i128 1, %n12
  %sub14 = sub i128 %lshift13, 1
  %sgt = icmp sgt i128 %qhat11, %sub14
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n15 = load i128, i128* %n.bind, align 4
  %lshift16 = shl i128 1, %n15
  %sub17 = sub i128 %lshift16, 1
  store i128 %sub17, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n18 = load i128, i128* %n.bind, align 4
  %k19 = load i128, i128* %k.bind, align 4
  %qhat20 = load i128, i128* %qhat, align 4
  %b21 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n18, i128 %k19, i128 %qhat20, [256 x i128]* %b21)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n24 = load i128, i128* %n.bind, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %add26 = add i128 %k25, 1
  %mult27 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a28 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call29 = call i128 @long_gt(i128 %n24, i128 %add26, [256 x i128]* %mult27, [256 x i128]* %a28)
  %eq = icmp eq i128 %call29, 1
  br i1 %eq, label %if.true22, label %if.false23

if.true22:                                        ; preds = %if.exit
  %n30 = load i128, i128* %n.bind, align 4
  %k31 = load i128, i128* %k.bind, align 4
  %add32 = add i128 %k31, 1
  %mult33 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b34 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call35 = call [256 x i128]* @long_sub(i128 %n30, i128 %add32, [256 x i128]* %mult33, [256 x i128]* %b34)
  store [256 x i128]* %call35, [256 x i128]** %mult, align 8
  %n38 = load i128, i128* %n.bind, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %add40 = add i128 %k39, 1
  %mult41 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a42 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call43 = call i128 @long_gt(i128 %n38, i128 %add40, [256 x i128]* %mult41, [256 x i128]* %a42)
  %eq44 = icmp eq i128 %call43, 1
  br i1 %eq44, label %if.true36, label %if.false37

if.false23:                                       ; preds = %if.exit
  %qhat49 = load i128, i128* %qhat, align 4
  ret i128 %qhat49

if.true36:                                        ; preds = %if.true22
  %qhat45 = load i128, i128* %qhat, align 4
  %sub46 = sub i128 %qhat45, 2
  ret i128 %sub46

if.false37:                                       ; preds = %if.true22
  %qhat47 = load i128, i128* %qhat, align 4
  %sub48 = sub i128 %qhat47, 1
  ret i128 %sub48
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a1 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a1, [256 x i128]** %norm_a, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b2 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b2, [256 x i128]** %norm_b, align 8
  %ret = alloca i128, align 8
  store i128 0, i128* %ret, align 4
  %scale = alloca i128, align 8
  store i128 0, i128* %scale, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b3 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b3
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n4 = load i128, i128* %n.bind, align 4
  %k5 = load i128, i128* %k.bind, align 4
  %add6 = add i128 %k5, 1
  %scale7 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n4, i128 %add6, i128 %scale7, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n8 = load i128, i128* %n.bind, align 4
  %k9 = load i128, i128* %k.bind, align 4
  %scale10 = load i128, i128* %scale, align 4
  %b11 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call12 = call [256 x i128]* @long_scalar_mult(i128 %n8, i128 %k9, i128 %scale10, [256 x i128]* %b11)
  store [256 x i128]* %call12, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b13 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k14 = load i128, i128* %k.bind, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b13, i128 0, i128 %k14
  %norm_b16 = load i128, i128* %array_getter15, align 4
  %ne = icmp ne i128 %norm_b16, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %add19 = add i128 %k18, 1
  %norm_a20 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b21 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call22 = call i128 @short_div_norm(i128 %n17, i128 %add19, [256 x i128]* %norm_a20, [256 x i128]* %norm_b21)
  store i128 %call22, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %norm_a25 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b26 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call27 = call i128 @short_div_norm(i128 %n23, i128 %k24, [256 x i128]* %norm_a25, [256 x i128]* %norm_b26)
  store i128 %call27, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret28 = load i128, i128* %ret, align 4
  ret i128 %ret28
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry1 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry1, [256 x i128]** %sumAndCarry, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i5
  %b7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %a4, %b7
  %carry8 = load i128, i128* %carry, align 4
  %add9 = add i128 %add, %carry8
  %n = load i128, i128* %n.bind, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add9, i128 %n, i128 %n10)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry11 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry11, i128 0, i128 0
  %sumAndCarry13 = load i128, i128* %array_getter12, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i14 = load i128, i128* %i, align 4
  %sum15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 %sumAndCarry13, i128* %sum15, align 4
  %sumAndCarry16 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry16, i128 0, i128 1
  %sumAndCarry18 = load i128, i128* %array_getter17, align 4
  store i128 %sumAndCarry18, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i21, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry22 = load i128, i128* %carry, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k24 = load i128, i128* %k.bind, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 %k24
  store i128 %carry22, i128* %sum25, align 4
  %sum26 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum26
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %b.bind, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend1 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend1, [256 x i128]** %subtrahend, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %remainder = alloca [256 x i128]*, align 8
  %remainder2 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder2, [256 x i128]** %remainder, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift3 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift3, [256 x i128]** %mult_shift, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out4, [256 x [256 x i128]]** %out, align 8
  %dividend = alloca [256 x i128]*, align 8
  %dividend5 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend5, [256 x i128]** %dividend, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array6 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array6, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i9 = load i128, i128* %i, align 4
  %remainder10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i9
  store i128 %a8, i128* %remainder10, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add = add i128 %i11, 1
  store i128 %add, i128* %i, align 4
  %i12 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %add13 = add i128 %m, %k
  %slt = icmp slt i128 %i12, %add13
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %dividend, align 8
  %m15 = load i128, i128* %m.bind, align 4
  store i128 %m15, i128* %i, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch115, %loop.exit
  %i17 = load i128, i128* %i, align 4
  %m18 = load i128, i128* %m.bind, align 4
  %eq = icmp eq i128 %i17, %m18
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body16
  %ptr_getter19 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k20 = load i128, i128* %k.bind, align 4
  %dividend21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter19, i128 0, i128 %k20
  store i128 0, i128* %dividend21, align 4
  %k22 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k22, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body23

if.false:                                         ; preds = %loop.body16
  %k38 = load i128, i128* %k.bind, align 4
  store i128 %k38, i128* %j, align 4
  br label %loop.body39

loop.body23:                                      ; preds = %loop.latch33, %if.true
  %remainder24 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j25 = load i128, i128* %j, align 4
  %m26 = load i128, i128* %m.bind, align 4
  %add27 = add i128 %j25, %m26
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder24, i128 0, i128 %add27
  %remainder29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j31 = load i128, i128* %j, align 4
  %dividend32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 %j31
  store i128 %remainder29, i128* %dividend32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body23
  %j34 = load i128, i128* %j, align 4
  %sub35 = sub i128 %j34, 1
  store i128 %sub35, i128* %j, align 4
  %j36 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j36, 0
  br i1 %sge, label %loop.body23, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch33
  br label %if.exit

loop.body39:                                      ; preds = %loop.latch49, %if.false
  %remainder40 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j41 = load i128, i128* %j, align 4
  %i42 = load i128, i128* %i, align 4
  %add43 = add i128 %j41, %i42
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder40, i128 0, i128 %add43
  %remainder45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j47 = load i128, i128* %j, align 4
  %dividend48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 %j47
  store i128 %remainder45, i128* %dividend48, align 4
  br label %loop.latch49

loop.latch49:                                     ; preds = %loop.body39
  %j50 = load i128, i128* %j, align 4
  %sub51 = sub i128 %j50, 1
  store i128 %sub51, i128* %j, align 4
  %j52 = load i128, i128* %j, align 4
  %sge53 = icmp sge i128 %j52, 0
  br i1 %sge53, label %loop.body39, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch49
  br label %if.exit

if.exit:                                          ; preds = %loop.exit54, %loop.exit37
  %n = load i128, i128* %n.bind, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %dividend56 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call i128 @short_div(i128 %n, i128 %k55, [256 x i128]* %dividend56, [256 x i128]* %b)
  %ptr_getter57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i58 = load i128, i128* %i, align 4
  %out59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter57, i128 0, i128 0, i128 %i58
  store i128 %call, i128* %out59, align 4
  %n60 = load i128, i128* %n.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %out62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out62, i128 0, i128 0, i128 %i63
  %out65 = load i128, i128* %array_getter64, align 4
  %b66 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call67 = call [256 x i128]* @long_scalar_mult(i128 %n60, i128 %k61, i128 %out65, [256 x i128]* %b66)
  store [256 x i128]* %call67, [256 x i128]** %mult_shift, align 8
  %uniform_array68 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array68, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch73, %if.exit
  %ptr_getter70 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j71 = load i128, i128* %j, align 4
  %subtrahend72 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter70, i128 0, i128 %j71
  store i128 0, i128* %subtrahend72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body69
  %j74 = load i128, i128* %j, align 4
  %add75 = add i128 %j74, 1
  store i128 %add75, i128* %j, align 4
  %j76 = load i128, i128* %j, align 4
  %m77 = load i128, i128* %m.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %add79 = add i128 %m77, %k78
  %slt80 = icmp slt i128 %j76, %add79
  br i1 %slt80, label %loop.body69, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch73
  store i128 0, i128* %j, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch102, %loop.exit81
  %i85 = load i128, i128* %i, align 4
  %j86 = load i128, i128* %j, align 4
  %add87 = add i128 %i85, %j86
  %m88 = load i128, i128* %m.bind, align 4
  %k89 = load i128, i128* %k.bind, align 4
  %add90 = add i128 %m88, %k89
  %slt91 = icmp slt i128 %add87, %add90
  br i1 %slt91, label %if.true83, label %if.false84

if.true83:                                        ; preds = %loop.body82
  %mult_shift92 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j93 = load i128, i128* %j, align 4
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift92, i128 0, i128 %j93
  %mult_shift95 = load i128, i128* %array_getter94, align 4
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i97 = load i128, i128* %i, align 4
  %j98 = load i128, i128* %j, align 4
  %add99 = add i128 %i97, %j98
  %subtrahend100 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 %add99
  store i128 %mult_shift95, i128* %subtrahend100, align 4
  br label %if.exit101

if.false84:                                       ; preds = %loop.body82
  br label %if.exit101

if.exit101:                                       ; preds = %if.false84, %if.true83
  br label %loop.latch102

loop.latch102:                                    ; preds = %if.exit101
  %j103 = load i128, i128* %j, align 4
  %add104 = add i128 %j103, 1
  store i128 %add104, i128* %j, align 4
  %j105 = load i128, i128* %j, align 4
  %k106 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %j105, %k106
  br i1 %sle, label %loop.body82, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch102
  %n108 = load i128, i128* %n.bind, align 4
  %m109 = load i128, i128* %m.bind, align 4
  %k110 = load i128, i128* %k.bind, align 4
  %add111 = add i128 %m109, %k110
  %remainder112 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend113 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call114 = call [256 x i128]* @long_sub(i128 %n108, i128 %add111, [256 x i128]* %remainder112, [256 x i128]* %subtrahend113)
  store [256 x i128]* %call114, [256 x i128]** %remainder, align 8
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.exit107
  %i116 = load i128, i128* %i, align 4
  %sub117 = sub i128 %i116, 1
  store i128 %sub117, i128* %i, align 4
  %i118 = load i128, i128* %i, align 4
  %sge119 = icmp sge i128 %i118, 0
  br i1 %sge119, label %loop.body16, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch115
  store i128 0, i128* %i, align 4
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch129, %loop.exit120
  %remainder122 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i123 = load i128, i128* %i, align 4
  %array_getter124 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder122, i128 0, i128 %i123
  %remainder125 = load i128, i128* %array_getter124, align 4
  %ptr_getter126 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i127 = load i128, i128* %i, align 4
  %out128 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter126, i128 0, i128 1, i128 %i127
  store i128 %remainder125, i128* %out128, align 4
  br label %loop.latch129

loop.latch129:                                    ; preds = %loop.body121
  %i130 = load i128, i128* %i, align 4
  %add131 = add i128 %i130, 1
  store i128 %add131, i128* %i, align 4
  %i132 = load i128, i128* %i, align 4
  %k133 = load i128, i128* %k.bind, align 4
  %slt134 = icmp slt i128 %i132, %k133
  br i1 %slt134, label %loop.body121, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  %ptr_getter136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k137 = load i128, i128* %k.bind, align 4
  %out138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter136, i128 0, i128 1, i128 %k137
  store i128 0, i128* %out138, align 4
  %out139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out139
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %sum5 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 1, [256 x i128]* %sum5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call i128 @long_gt(i128 %n, i128 %k, [256 x i128]* %b, [256 x i128]* %a)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %a3 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %n4 = load i128, i128* %n.bind, align 4
  %k5 = load i128, i128* %k.bind, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %b6 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call7 = call [256 x i128]* @long_sub(i128 %n4, i128 %k5, [256 x i128]* %p, [256 x i128]* %b6)
  %call8 = call [256 x i128]* @long_add(i128 %n1, i128 %k2, [256 x i128]* %a3, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %n9 = load i128, i128* %n.bind, align 4
  %k10 = load i128, i128* %k.bind, align 4
  %a11 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b12 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call13 = call [256 x i128]* @long_sub(i128 %n9, i128 %k10, [256 x i128]* %a11, [256 x i128]* %b12)
  ret [256 x i128]* %call13
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %k1 = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %k1, [256 x i128]* %a, [256 x i128]* %b)
  ret [256 x [256 x i128]]* %call
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %prod = alloca [256 x i128]*, align 8
  %prod2 = alloca [256 x i128], align 8
  store [256 x i128]* %prod2, [256 x i128]** %prod, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %prod5 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
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
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %e.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %e.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %bitlength = alloca i128, align 8
  store i128 0, i128* %bitlength, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp22 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp22, [256 x [256 x i128]]** %temp2, align 8
  %eBits = alloca [256 x i128]*, align 8
  %eBits3 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits3, [256 x i128]** %eBits, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp4 = alloca [256 x i128], align 8
  store [256 x i128]* %temp4, [256 x i128]** %temp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch30, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body5

loop.body5:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i6
  %e7 = load i128, i128* %array_getter, align 4
  %j8 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e7, %j8
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j9 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i10 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i10
  %add = add i128 %j9, %mul
  %eBits11 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits11, align 4
  %eBits12 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j13 = load i128, i128* %j, align 4
  %n14 = load i128, i128* %n.bind, align 4
  %i15 = load i128, i128* %i, align 4
  %mul16 = mul i128 %n14, %i15
  %add17 = add i128 %j13, %mul16
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits12, i128 0, i128 %add17
  %eBits19 = load i128, i128* %array_getter18, align 4
  %eq = icmp eq i128 %eBits19, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body5
  %j20 = load i128, i128* %j, align 4
  %n21 = load i128, i128* %n.bind, align 4
  %i22 = load i128, i128* %i, align 4
  %mul23 = mul i128 %n21, %i22
  %add24 = add i128 %j20, %mul23
  %add25 = add i128 %add24, 1
  store i128 %add25, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body5
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j26 = load i128, i128* %j, align 4
  %add27 = add i128 %j26, 1
  store i128 %add27, i128* %j, align 4
  %j28 = load i128, i128* %j, align 4
  %n29 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j28, %n29
  br i1 %slt, label %loop.body5, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch30

loop.latch30:                                     ; preds = %loop.exit
  %i31 = load i128, i128* %i, align 4
  %add32 = add i128 %i31, 1
  store i128 %add32, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt34 = icmp slt i128 %i33, %k
  br i1 %slt34, label %loop.body, label %loop.exit35

loop.exit35:                                      ; preds = %loop.latch30
  %uniform_array36 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array36, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch41, %loop.exit35
  %ptr_getter38 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i39 = load i128, i128* %i, align 4
  %out40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter38, i128 0, i128 %i39
  store i128 0, i128* %out40, align 4
  br label %loop.latch41

loop.latch41:                                     ; preds = %loop.body37
  %i42 = load i128, i128* %i, align 4
  %add43 = add i128 %i42, 1
  store i128 %add43, i128* %i, align 4
  %i44 = load i128, i128* %i, align 4
  %slt45 = icmp slt i128 %i44, 50
  br i1 %slt45, label %loop.body37, label %loop.exit46

loop.exit46:                                      ; preds = %loop.latch41
  %ptr_getter47 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter47, i128 0, i128 0
  store i128 1, i128* %out48, align 4
  %bitlength49 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength49, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch91, %loop.exit46
  %eBits53 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits53, i128 0, i128 %i54
  %eBits56 = load i128, i128* %array_getter55, align 4
  %eq57 = icmp eq i128 %eBits56, 1
  br i1 %eq57, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %uniform_array58 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array58, [256 x i128]** %temp, align 8
  %n59 = load i128, i128* %n.bind, align 4
  %k60 = load i128, i128* %k.bind, align 4
  %out61 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n59, i128 %k60, [256 x i128]* %out61, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array62 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array62, [256 x [256 x i128]]** %temp2, align 8
  %n63 = load i128, i128* %n.bind, align 4
  %k64 = load i128, i128* %k.bind, align 4
  %temp65 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call66 = call [256 x [256 x i128]]* @long_div(i128 %n63, i128 %k64, [256 x i128]* %temp65, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call66, [256 x [256 x i128]]** %temp2, align 8
  %temp267 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp267, i128 0, i128 1
  %temp269 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp269, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit70

if.false52:                                       ; preds = %loop.body50
  br label %if.exit70

if.exit70:                                        ; preds = %if.false52, %if.true51
  %i73 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i73, 0
  br i1 %sgt, label %if.true71, label %if.false72

if.true71:                                        ; preds = %if.exit70
  %uniform_array74 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array74, [256 x i128]** %temp, align 8
  %n75 = load i128, i128* %n.bind, align 4
  %k76 = load i128, i128* %k.bind, align 4
  %out77 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out78 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call79 = call [256 x i128]* @prod(i128 %n75, i128 %k76, [256 x i128]* %out77, [256 x i128]* %out78)
  store [256 x i128]* %call79, [256 x i128]** %temp, align 8
  %uniform_array80 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array80, [256 x [256 x i128]]** %temp2, align 8
  %n81 = load i128, i128* %n.bind, align 4
  %k82 = load i128, i128* %k.bind, align 4
  %temp83 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p84 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call85 = call [256 x [256 x i128]]* @long_div(i128 %n81, i128 %k82, [256 x i128]* %temp83, [256 x i128]* %p84)
  store [256 x [256 x i128]]* %call85, [256 x [256 x i128]]** %temp2, align 8
  %temp286 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp286, i128 0, i128 1
  %temp288 = load [256 x i128], [256 x i128]* %array_getter87, align 4
  %spice_inline_array89 = alloca [256 x i128], align 8
  store [256 x i128] %temp288, [256 x i128]* %spice_inline_array89, align 4
  store [256 x i128]* %spice_inline_array89, [256 x i128]** %out, align 8
  br label %if.exit90

if.false72:                                       ; preds = %if.exit70
  br label %if.exit90

if.exit90:                                        ; preds = %if.false72, %if.true71
  br label %loop.latch91

loop.latch91:                                     ; preds = %if.exit90
  %i92 = load i128, i128* %i, align 4
  %sub93 = sub i128 %i92, 1
  store i128 %sub93, i128* %i, align 4
  %i94 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i94, 0
  br i1 %sge, label %loop.body50, label %loop.exit95

loop.exit95:                                      ; preds = %loop.latch91
  %out96 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out96
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %two = alloca [256 x i128]*, align 8
  %two1 = alloca [256 x i128], align 8
  store [256 x i128]* %two1, [256 x i128]** %two, align 8
  %isZero = alloca i128, align 8
  store i128 0, i128* %isZero, align 4
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy2 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy2, [256 x i128]** %pCopy, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret3 = alloca [256 x i128], align 8
  store [256 x i128]* %ret3, [256 x i128]** %ret, align 8
  %out = alloca [256 x i128]*, align 8
  %out4 = alloca [256 x i128], align 8
  store [256 x i128]* %out4, [256 x i128]** %out, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo5 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo5, [256 x i128]** %pMinusTwo, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i6
  %a7 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a7, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i8 = load i128, i128* %i, align 4
  %add = add i128 %i8, 1
  store i128 %add, i128* %i, align 4
  %i9 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i9, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero12 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero12, 1
  br i1 %eq, label %if.true10, label %if.false11

if.true10:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body13

if.false11:                                       ; preds = %loop.exit
  br label %if.exit24

loop.body13:                                      ; preds = %loop.latch16, %if.true10
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i14 = load i128, i128* %i, align 4
  %ret15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 0, i128* %ret15, align 4
  br label %loop.latch16

loop.latch16:                                     ; preds = %loop.body13
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %slt21 = icmp slt i128 %i19, %k20
  br i1 %slt21, label %loop.body13, label %loop.exit22

loop.exit22:                                      ; preds = %loop.latch16
  %ret23 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret23

if.exit24:                                        ; preds = %if.false11
  %uniform_array25 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array25, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch42, %if.exit24
  %i29 = load i128, i128* %i, align 4
  %k30 = load i128, i128* %k.bind, align 4
  %slt31 = icmp slt i128 %i29, %k30
  br i1 %slt31, label %if.true27, label %if.false28

if.true27:                                        ; preds = %loop.body26
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i32
  %p34 = load i128, i128* %array_getter33, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i36 = load i128, i128* %i, align 4
  %pCopy37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %p34, i128* %pCopy37, align 4
  br label %if.exit41

if.false28:                                       ; preds = %loop.body26
  %ptr_getter38 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i39 = load i128, i128* %i, align 4
  %pCopy40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter38, i128 0, i128 %i39
  store i128 0, i128* %pCopy40, align 4
  br label %if.exit41

if.exit41:                                        ; preds = %if.false28, %if.true27
  br label %loop.latch42

loop.latch42:                                     ; preds = %if.exit41
  %i43 = load i128, i128* %i, align 4
  %add44 = add i128 %i43, 1
  store i128 %add44, i128* %i, align 4
  %i45 = load i128, i128* %i, align 4
  %slt46 = icmp slt i128 %i45, 50
  br i1 %slt46, label %loop.body26, label %loop.exit47

loop.exit47:                                      ; preds = %loop.latch42
  %uniform_array48 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array48, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch53, %loop.exit47
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i51 = load i128, i128* %i, align 4
  %two52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %i51
  store i128 0, i128* %two52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body49
  %i54 = load i128, i128* %i, align 4
  %add55 = add i128 %i54, 1
  store i128 %add55, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %slt57 = icmp slt i128 %i56, 50
  br i1 %slt57, label %loop.body49, label %loop.exit58

loop.exit58:                                      ; preds = %loop.latch53
  %ptr_getter59 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two60 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter59, i128 0, i128 0
  store i128 2, i128* %two60, align 4
  %uniform_array61 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array61, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %pCopy63 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two64 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k62, [256 x i128]* %pCopy63, [256 x i128]* %two64)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array65 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array65, [256 x i128]** %out, align 8
  %n66 = load i128, i128* %n.bind, align 4
  %k67 = load i128, i128* %k.bind, align 4
  %a68 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %pCopy69 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo70 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call71 = call [256 x i128]* @mod_exp(i128 %n66, i128 %k67, [256 x i128]* %a68, [256 x i128]* %pCopy69, [256 x i128]* %pMinusTwo70)
  store [256 x i128]* %call71, [256 x i128]** %out, align 8
  %out72 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out72
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
