; ModuleID = 'fp12_func.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp12_func.circom"

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
  %temp = alloca i128, align 8
  store i128 0, i128* %temp, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
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

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %MAXL = alloca i128, align 8
  store i128 0, i128* %MAXL, align 4
  %X = alloca i128, align 8
  store i128 0, i128* %X, align 4
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %temp = alloca [256 x i128]*, align 8
  %temp2 = alloca [256 x i128], align 8
  store [256 x i128]* %temp2, [256 x i128]** %temp, align 8
  %borrow = alloca i128, align 8
  store i128 0, i128* %borrow, align 4
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

define i128 @log_ceil(i128 %0) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n_temp = alloca i128, align 8
  store i128 0, i128* %n_temp, align 4
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

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %XI0.bind = alloca i128, align 8
  store i128 %2, i128* %XI0.bind, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %XI0 = load i128, i128* %XI0.bind, align 4
  %mul = mul i128 %a3, %XI0
  %a4 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a4, i128 0, i128 1, i128 %i5
  %a7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %mul, %a7
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0, i128 %i8
  store i128 %sub, i128* %out9, align 4
  %a10 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a10, i128 0, i128 0, i128 %i11
  %a13 = load i128, i128* %array_getter12, align 4
  %a14 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a14, i128 0, i128 1, i128 %i15
  %a17 = load i128, i128* %array_getter16, align 4
  %XI018 = load i128, i128* %XI0.bind, align 4
  %mul19 = mul i128 %a17, %XI018
  %add = add i128 %a13, %mul19
  %ptr_getter20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i21 = load i128, i128* %i, align 4
  %out22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter20, i128 0, i128 1, i128 %i21
  store i128 %add, i128* %out22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i23 = load i128, i128* %i, align 4
  %add24 = add i128 %i23, 1
  store i128 %add24, i128* %i, align 4
  %i25 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i25, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out26 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out26
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch11, %entry
  store i128 0, i128* %idx, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %idx3 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i2, i128 %idx3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %idx6 = load i128, i128* %idx, align 4
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i5, i128 %idx6
  %b8 = load i128, i128* %array_getter7, align 4
  %ne = icmp ne i128 %a4, %b8
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  ret i128 0

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %idx9 = load i128, i128* %idx, align 4
  %add = add i128 %idx9, 1
  store i128 %add, i128* %idx, align 4
  %idx10 = load i128, i128* %idx, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx10, %k
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch11

loop.latch11:                                     ; preds = %loop.exit
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %slt15 = icmp slt i128 %i14, 2
  br i1 %slt15, label %loop.body, label %loop.exit16

loop.exit16:                                      ; preds = %loop.latch11
  ret i128 1
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

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %0, [256 x i128]** %a.bind, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
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
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
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

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %sgn1 = alloca i128, align 8
  store i128 0, i128* %sgn1, align 4
  %sgn0 = alloca i128, align 8
  store i128 0, i128* %sgn0, align 4
  %z = alloca i128, align 8
  store i128 0, i128* %z, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  store i128 %mod, i128* %sgn0, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a2, i128 0, i128 1, i128 0
  %a4 = load i128, i128* %array_getter3, align 4
  %mod5 = srem i128 %a4, 2
  store i128 %mod5, i128* %sgn1, align 4
  %k = load i128, i128* %k.bind, align 4
  %a6 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a6, i128 0, i128 0
  %a8 = load [256 x i128], [256 x i128]* %array_getter7, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %k, [256 x i128]* %spice_inline_array)
  store i128 %call, i128* %z, align 4
  %sgn09 = load i128, i128* %sgn0, align 4
  %z10 = load i128, i128* %z, align 4
  %sgn111 = load i128, i128* %sgn1, align 4
  %and = and i128 %z10, %sgn111
  %or = or i128 %sgn09, %and
  ret i128 %or
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
  %i2 = alloca i128, align 8
  store i128 0, i128* %i2, align 4
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry1, [256 x [256 x i128]]** %carry, align 8
  %j2 = alloca i128, align 8
  store i128 0, i128* %j2, align 4
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry2, [256 x [256 x i128]]** %sumAndCarry, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split3 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split3, [256 x [256 x [256 x i128]]]** %split, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out4, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %i1 = alloca i128, align 8
  store i128 0, i128* %i1, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val5, [256 x [256 x i128]]** %prod_val, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %j1 = alloca i128, align 8
  store i128 0, i128* %j1, align 4
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
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
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
  %a_idx = alloca i128, align 8
  store i128 0, i128* %a_idx, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %carry = alloca [256 x i128]*, align 8
  %carry3 = alloca [256 x i128], align 8
  store [256 x i128]* %carry3, [256 x i128]** %carry, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split4, [256 x [256 x i128]]** %split, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val5 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val5, [256 x i128]** %prod_val, align 8
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
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
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
  %qhat = alloca i128, align 8
  store i128 0, i128* %qhat, align 4
  %mult = alloca [256 x i128]*, align 8
  %mult1 = alloca [256 x i128], align 8
  store [256 x i128]* %mult1, [256 x i128]** %mult, align 8
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

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_sub_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call18 = call [256 x i128]* @long_sub_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
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
  %ret = alloca i128, align 8
  store i128 0, i128* %ret, align 4
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a1 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a1, [256 x i128]** %norm_a, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b2 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b2, [256 x i128]** %norm_b, align 8
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i2
  %a3 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a3, [256 x [256 x i128]]* %spice_inline_array, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i4
  %b6 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter5, align 4
  %spice_inline_array7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b6, [256 x [256 x i128]]* %spice_inline_array7, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n, i128 %k, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array7, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i8
  %5 = bitcast [256 x [256 x i128]]* %out9 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i10 = load i128, i128* %i, align 4
  %add = add i128 %i10, 1
  store i128 %add, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i11, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out12 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out12
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
  %remainder = alloca [256 x i128]*, align 8
  %remainder1 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder1, [256 x i128]** %remainder, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend2 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend2, [256 x i128]** %subtrahend, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out3, [256 x [256 x i128]]** %out, align 8
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift4 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift4, [256 x i128]** %mult_shift, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
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

define [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %imag_final = alloca [256 x [256 x i128]]*, align 8
  %imag_final1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_final1, [256 x [256 x i128]]** %imag_final, align 8
  %a1 = alloca [256 x [256 x i128]]*, align 8
  %a12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a12, [256 x [256 x i128]]** %a1, align 8
  %a0b0_var = alloca [256 x [256 x i128]]*, align 8
  %a0b0_var3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b0_var3, [256 x [256 x i128]]** %a0b0_var, align 8
  %real_final = alloca [256 x [256 x i128]]*, align 8
  %real_final4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_final4, [256 x [256 x i128]]** %real_final, align 8
  %imag_init_neg = alloca [256 x [256 x i128]]*, align 8
  %imag_init_neg5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_init_neg5, [256 x [256 x i128]]** %imag_init_neg, align 8
  %real_carry = alloca [256 x [256 x i128]]*, align 8
  %real_carry6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_carry6, [256 x [256 x i128]]** %real_carry, align 8
  %a1b0_var = alloca [256 x [256 x i128]]*, align 8
  %a1b0_var7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b0_var7, [256 x [256 x i128]]** %a1b0_var, align 8
  %neg_b0 = alloca [256 x [256 x i128]]*, align 8
  %neg_b08 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %neg_b08, [256 x [256 x i128]]** %neg_b0, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %a0 = alloca [256 x [256 x i128]]*, align 8
  %a09 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a09, [256 x [256 x i128]]** %a0, align 8
  %l = alloca i128, align 8
  store i128 0, i128* %l, align 4
  %b0 = alloca [256 x [256 x i128]]*, align 8
  %b010 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b010, [256 x [256 x i128]]** %b0, align 8
  %imag_carry = alloca [256 x [256 x i128]]*, align 8
  %imag_carry11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_carry11, [256 x [256 x i128]]** %imag_carry, align 8
  %XYreal_temp = alloca [256 x [256 x [256 x i128]]]*, align 8
  %XYreal_temp12 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %XYreal_temp12, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %a0b1_neg = alloca [256 x [256 x i128]]*, align 8
  %a0b1_neg13 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b1_neg13, [256 x [256 x i128]]** %a0b1_neg, align 8
  %a1b1_neg = alloca [256 x [256 x i128]]*, align 8
  %a1b1_neg14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b1_neg14, [256 x [256 x i128]]** %a1b1_neg, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out15 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out15, [256 x [256 x [256 x i128]]]** %out, align 8
  %a1b0_neg = alloca [256 x [256 x i128]]*, align 8
  %a1b0_neg16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1b0_neg16, [256 x [256 x i128]]** %a1b0_neg, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %b1 = alloca [256 x [256 x i128]]*, align 8
  %b117 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b117, [256 x [256 x i128]]** %b1, align 8
  %a0b1_var = alloca [256 x [256 x i128]]*, align 8
  %a0b1_var18 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0b1_var18, [256 x [256 x i128]]** %a0b1_var, align 8
  %XYimag_temp = alloca [256 x [256 x [256 x i128]]]*, align 8
  %XYimag_temp19 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %XYimag_temp19, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %real_init = alloca [256 x [256 x i128]]*, align 8
  %real_init20 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %real_init20, [256 x [256 x i128]]** %real_init, align 8
  %neg_b1 = alloca [256 x [256 x i128]]*, align 8
  %neg_b121 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %neg_b121, [256 x [256 x i128]]** %neg_b1, align 8
  %zeros = alloca [256 x i128]*, align 8
  %zeros22 = alloca [256 x i128], align 8
  store [256 x i128]* %zeros22, [256 x i128]** %zeros, align 8
  %imag_init = alloca [256 x [256 x i128]]*, align 8
  %imag_init23 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %imag_init23, [256 x [256 x i128]]** %imag_init, align 8
  store i128 6, i128* %l, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %a0, align 8
  %uniform_array24 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array24, [256 x [256 x i128]]** %a1, align 8
  %uniform_array25 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array25, [256 x [256 x i128]]** %b0, align 8
  %uniform_array26 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array26, [256 x [256 x i128]]** %b1, align 8
  %uniform_array27 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array27, [256 x [256 x i128]]** %neg_b0, align 8
  %uniform_array28 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array28, [256 x [256 x i128]]** %neg_b1, align 8
  %uniform_array29 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array29, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch65, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch, %loop.body
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i31 = load i128, i128* %i, align 4
  %j32 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i31, i128 0, i128 %j32
  %a33 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %i34 = load i128, i128* %i, align 4
  %j35 = load i128, i128* %j, align 4
  %a036 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i34, i128 %j35
  store i128 %a33, i128* %a036, align 4
  %a37 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i38 = load i128, i128* %i, align 4
  %j39 = load i128, i128* %j, align 4
  %array_getter40 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a37, i128 0, i128 %i38, i128 1, i128 %j39
  %a41 = load i128, i128* %array_getter40, align 4
  %ptr_getter42 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %i43 = load i128, i128* %i, align 4
  %j44 = load i128, i128* %j, align 4
  %a145 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter42, i128 0, i128 %i43, i128 %j44
  store i128 %a41, i128* %a145, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %i46 = load i128, i128* %i, align 4
  %j47 = load i128, i128* %j, align 4
  %array_getter48 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i46, i128 0, i128 %j47
  %b49 = load i128, i128* %array_getter48, align 4
  %ptr_getter50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %i51 = load i128, i128* %i, align 4
  %j52 = load i128, i128* %j, align 4
  %b053 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter50, i128 0, i128 %i51, i128 %j52
  store i128 %b49, i128* %b053, align 4
  %b54 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %i55 = load i128, i128* %i, align 4
  %j56 = load i128, i128* %j, align 4
  %array_getter57 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b54, i128 0, i128 %i55, i128 1, i128 %j56
  %b58 = load i128, i128* %array_getter57, align 4
  %ptr_getter59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %i60 = load i128, i128* %i, align 4
  %j61 = load i128, i128* %j, align 4
  %b162 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter59, i128 0, i128 %i60, i128 %j61
  store i128 %b58, i128* %b162, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body30
  %j63 = load i128, i128* %j, align 4
  %add = add i128 %j63, 1
  store i128 %add, i128* %j, align 4
  %j64 = load i128, i128* %j, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %j64, %k
  br i1 %slt, label %loop.body30, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch65

loop.latch65:                                     ; preds = %loop.exit
  %i66 = load i128, i128* %i, align 4
  %add67 = add i128 %i66, 1
  store i128 %add67, i128* %i, align 4
  %i68 = load i128, i128* %i, align 4
  %l69 = load i128, i128* %l, align 4
  %slt70 = icmp slt i128 %i68, %l69
  br i1 %slt70, label %loop.body, label %loop.exit71

loop.exit71:                                      ; preds = %loop.latch65
  store i128 0, i128* %i, align 4
  br label %loop.body72

loop.body72:                                      ; preds = %loop.latch93, %loop.exit71
  %n = load i128, i128* %n.bind, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %b074 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %i75 = load i128, i128* %i, align 4
  %array_getter76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b074, i128 0, i128 %i75
  %b077 = load [256 x i128], [256 x i128]* %array_getter76, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %b077, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k73, [256 x i128]* %p, [256 x i128]* %spice_inline_array)
  %ptr_getter78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b0, align 8
  %i79 = load i128, i128* %i, align 4
  %neg_b080 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter78, i128 0, i128 %i79
  %5 = bitcast [256 x i128]* %neg_b080 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n81 = load i128, i128* %n.bind, align 4
  %k82 = load i128, i128* %k.bind, align 4
  %p83 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %b184 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b184, i128 0, i128 %i85
  %b187 = load [256 x i128], [256 x i128]* %array_getter86, align 4
  %spice_inline_array88 = alloca [256 x i128], align 8
  store [256 x i128] %b187, [256 x i128]* %spice_inline_array88, align 4
  %call89 = call [256 x i128]* @long_sub(i128 %n81, i128 %k82, [256 x i128]* %p83, [256 x i128]* %spice_inline_array88)
  %ptr_getter90 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %i91 = load i128, i128* %i, align 4
  %neg_b192 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter90, i128 0, i128 %i91
  %7 = bitcast [256 x i128]* %neg_b192 to i8*
  %8 = bitcast [256 x i128]* %call89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body72
  %i94 = load i128, i128* %i, align 4
  %add95 = add i128 %i94, 1
  store i128 %add95, i128* %i, align 4
  %i96 = load i128, i128* %i, align 4
  %l97 = load i128, i128* %l, align 4
  %slt98 = icmp slt i128 %i96, %l97
  br i1 %slt98, label %loop.body72, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch93
  %uniform_array100 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array100, [256 x [256 x i128]]** %real_init, align 8
  %uniform_array101 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array101, [256 x [256 x i128]]** %imag_init, align 8
  %uniform_array102 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array102, [256 x [256 x i128]]** %imag_init_neg, align 8
  %n103 = load i128, i128* %n.bind, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %l105 = load i128, i128* %l, align 4
  %a0106 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %b0107 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %call108 = call [256 x [256 x i128]]* @prod2D(i128 %n103, i128 %k104, i128 %l105, [256 x [256 x i128]]* %a0106, [256 x [256 x i128]]* %b0107)
  store [256 x [256 x i128]]* %call108, [256 x [256 x i128]]** %a0b0_var, align 8
  %n109 = load i128, i128* %n.bind, align 4
  %k110 = load i128, i128* %k.bind, align 4
  %l111 = load i128, i128* %l, align 4
  %a1112 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %neg_b1113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %call114 = call [256 x [256 x i128]]* @prod2D(i128 %n109, i128 %k110, i128 %l111, [256 x [256 x i128]]* %a1112, [256 x [256 x i128]]* %neg_b1113)
  store [256 x [256 x i128]]* %call114, [256 x [256 x i128]]** %a1b1_neg, align 8
  %n115 = load i128, i128* %n.bind, align 4
  %k116 = load i128, i128* %k.bind, align 4
  %l117 = load i128, i128* %l, align 4
  %a0118 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %b1119 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b1, align 8
  %call120 = call [256 x [256 x i128]]* @prod2D(i128 %n115, i128 %k116, i128 %l117, [256 x [256 x i128]]* %a0118, [256 x [256 x i128]]* %b1119)
  store [256 x [256 x i128]]* %call120, [256 x [256 x i128]]** %a0b1_var, align 8
  %n121 = load i128, i128* %n.bind, align 4
  %k122 = load i128, i128* %k.bind, align 4
  %l123 = load i128, i128* %l, align 4
  %a1124 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %b0125 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b0, align 8
  %call126 = call [256 x [256 x i128]]* @prod2D(i128 %n121, i128 %k122, i128 %l123, [256 x [256 x i128]]* %a1124, [256 x [256 x i128]]* %b0125)
  store [256 x [256 x i128]]* %call126, [256 x [256 x i128]]** %a1b0_var, align 8
  %n127 = load i128, i128* %n.bind, align 4
  %k128 = load i128, i128* %k.bind, align 4
  %l129 = load i128, i128* %l, align 4
  %a0130 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %neg_b1131 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b1, align 8
  %call132 = call [256 x [256 x i128]]* @prod2D(i128 %n127, i128 %k128, i128 %l129, [256 x [256 x i128]]* %a0130, [256 x [256 x i128]]* %neg_b1131)
  store [256 x [256 x i128]]* %call132, [256 x [256 x i128]]** %a0b1_neg, align 8
  %n133 = load i128, i128* %n.bind, align 4
  %k134 = load i128, i128* %k.bind, align 4
  %l135 = load i128, i128* %l, align 4
  %a1136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %neg_b0137 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %neg_b0, align 8
  %call138 = call [256 x [256 x i128]]* @prod2D(i128 %n133, i128 %k134, i128 %l135, [256 x [256 x i128]]* %a1136, [256 x [256 x i128]]* %neg_b0137)
  store [256 x [256 x i128]]* %call138, [256 x [256 x i128]]** %a1b0_neg, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body139

loop.body139:                                     ; preds = %loop.latch190, %loop.exit99
  %n140 = load i128, i128* %n.bind, align 4
  %k141 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k141
  %a0b0_var142 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b0_var, align 8
  %i143 = load i128, i128* %i, align 4
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b0_var142, i128 0, i128 %i143
  %a0b0_var145 = load [256 x i128], [256 x i128]* %array_getter144, align 4
  %spice_inline_array146 = alloca [256 x i128], align 8
  store [256 x i128] %a0b0_var145, [256 x i128]* %spice_inline_array146, align 4
  %a1b1_neg147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b1_neg, align 8
  %i148 = load i128, i128* %i, align 4
  %array_getter149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b1_neg147, i128 0, i128 %i148
  %a1b1_neg150 = load [256 x i128], [256 x i128]* %array_getter149, align 4
  %spice_inline_array151 = alloca [256 x i128], align 8
  store [256 x i128] %a1b1_neg150, [256 x i128]* %spice_inline_array151, align 4
  %call152 = call [256 x i128]* @long_add(i128 %n140, i128 %mul, [256 x i128]* %spice_inline_array146, [256 x i128]* %spice_inline_array151)
  %ptr_getter153 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i154 = load i128, i128* %i, align 4
  %real_init155 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter153, i128 0, i128 %i154
  %9 = bitcast [256 x i128]* %real_init155 to i8*
  %10 = bitcast [256 x i128]* %call152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n156 = load i128, i128* %n.bind, align 4
  %k157 = load i128, i128* %k.bind, align 4
  %mul158 = mul i128 2, %k157
  %a0b1_var159 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b1_var, align 8
  %i160 = load i128, i128* %i, align 4
  %array_getter161 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b1_var159, i128 0, i128 %i160
  %a0b1_var162 = load [256 x i128], [256 x i128]* %array_getter161, align 4
  %spice_inline_array163 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_var162, [256 x i128]* %spice_inline_array163, align 4
  %a1b0_var164 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b0_var, align 8
  %i165 = load i128, i128* %i, align 4
  %array_getter166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b0_var164, i128 0, i128 %i165
  %a1b0_var167 = load [256 x i128], [256 x i128]* %array_getter166, align 4
  %spice_inline_array168 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_var167, [256 x i128]* %spice_inline_array168, align 4
  %call169 = call [256 x i128]* @long_add(i128 %n156, i128 %mul158, [256 x i128]* %spice_inline_array163, [256 x i128]* %spice_inline_array168)
  %ptr_getter170 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i171 = load i128, i128* %i, align 4
  %imag_init172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter170, i128 0, i128 %i171
  %11 = bitcast [256 x i128]* %imag_init172 to i8*
  %12 = bitcast [256 x i128]* %call169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n173 = load i128, i128* %n.bind, align 4
  %k174 = load i128, i128* %k.bind, align 4
  %mul175 = mul i128 2, %k174
  %a0b1_neg176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0b1_neg, align 8
  %i177 = load i128, i128* %i, align 4
  %array_getter178 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a0b1_neg176, i128 0, i128 %i177
  %a0b1_neg179 = load [256 x i128], [256 x i128]* %array_getter178, align 4
  %spice_inline_array180 = alloca [256 x i128], align 8
  store [256 x i128] %a0b1_neg179, [256 x i128]* %spice_inline_array180, align 4
  %a1b0_neg181 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1b0_neg, align 8
  %i182 = load i128, i128* %i, align 4
  %array_getter183 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a1b0_neg181, i128 0, i128 %i182
  %a1b0_neg184 = load [256 x i128], [256 x i128]* %array_getter183, align 4
  %spice_inline_array185 = alloca [256 x i128], align 8
  store [256 x i128] %a1b0_neg184, [256 x i128]* %spice_inline_array185, align 4
  %call186 = call [256 x i128]* @long_add(i128 %n173, i128 %mul175, [256 x i128]* %spice_inline_array180, [256 x i128]* %spice_inline_array185)
  %ptr_getter187 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init_neg, align 8
  %i188 = load i128, i128* %i, align 4
  %imag_init_neg189 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter187, i128 0, i128 %i188
  %13 = bitcast [256 x i128]* %imag_init_neg189 to i8*
  %14 = bitcast [256 x i128]* %call186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch190

loop.latch190:                                    ; preds = %loop.body139
  %i191 = load i128, i128* %i, align 4
  %add192 = add i128 %i191, 1
  store i128 %add192, i128* %i, align 4
  %i193 = load i128, i128* %i, align 4
  %l194 = load i128, i128* %l, align 4
  %mul195 = mul i128 2, %l194
  %sub = sub i128 %mul195, 1
  %slt196 = icmp slt i128 %i193, %sub
  br i1 %slt196, label %loop.body139, label %loop.exit197

loop.exit197:                                     ; preds = %loop.latch190
  %uniform_array198 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array198, [256 x [256 x i128]]** %real_carry, align 8
  %uniform_array199 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array199, [256 x [256 x i128]]** %imag_carry, align 8
  %uniform_array200 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array200, [256 x [256 x i128]]** %real_final, align 8
  %uniform_array201 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array201, [256 x [256 x i128]]** %imag_final, align 8
  %uniform_array202 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array202, [256 x i128]** %zeros, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body203

loop.body203:                                     ; preds = %loop.latch207, %loop.exit197
  %ptr_getter204 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %i205 = load i128, i128* %i, align 4
  %zeros206 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter204, i128 0, i128 %i205
  store i128 0, i128* %zeros206, align 4
  br label %loop.latch207

loop.latch207:                                    ; preds = %loop.body203
  %i208 = load i128, i128* %i, align 4
  %add209 = add i128 %i208, 1
  store i128 %add209, i128* %i, align 4
  %i210 = load i128, i128* %i, align 4
  %slt211 = icmp slt i128 %i210, 50
  br i1 %slt211, label %loop.body203, label %loop.exit212

loop.exit212:                                     ; preds = %loop.latch207
  store i128 0, i128* %i, align 4
  br label %loop.body213

loop.body213:                                     ; preds = %loop.latch281, %loop.exit212
  %i214 = load i128, i128* %i, align 4
  %l215 = load i128, i128* %l, align 4
  %sub216 = sub i128 %l215, 1
  %eq = icmp eq i128 %i214, %sub216
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body213
  %n217 = load i128, i128* %n.bind, align 4
  %k218 = load i128, i128* %k.bind, align 4
  %mul219 = mul i128 2, %k218
  %add220 = add i128 %mul219, 1
  %zeros221 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %zeros222 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %call223 = call [256 x i128]* @long_add(i128 %n217, i128 %add220, [256 x i128]* %zeros221, [256 x i128]* %zeros222)
  %ptr_getter224 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i225 = load i128, i128* %i, align 4
  %real_carry226 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter224, i128 0, i128 %i225
  %15 = bitcast [256 x i128]* %real_carry226 to i8*
  %16 = bitcast [256 x i128]* %call223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n227 = load i128, i128* %n.bind, align 4
  %k228 = load i128, i128* %k.bind, align 4
  %mul229 = mul i128 2, %k228
  %add230 = add i128 %mul229, 1
  %zeros231 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %zeros232 = load [256 x i128]*, [256 x i128]** %zeros, align 8
  %call233 = call [256 x i128]* @long_add(i128 %n227, i128 %add230, [256 x i128]* %zeros231, [256 x i128]* %zeros232)
  %ptr_getter234 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i235 = load i128, i128* %i, align 4
  %imag_carry236 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter234, i128 0, i128 %i235
  %17 = bitcast [256 x i128]* %imag_carry236 to i8*
  %18 = bitcast [256 x i128]* %call233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body213
  %n237 = load i128, i128* %n.bind, align 4
  %k238 = load i128, i128* %k.bind, align 4
  %mul239 = mul i128 2, %k238
  %add240 = add i128 %mul239, 1
  %real_init241 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i242 = load i128, i128* %i, align 4
  %l243 = load i128, i128* %l, align 4
  %add244 = add i128 %i242, %l243
  %array_getter245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init241, i128 0, i128 %add244
  %real_init246 = load [256 x i128], [256 x i128]* %array_getter245, align 4
  %spice_inline_array247 = alloca [256 x i128], align 8
  store [256 x i128] %real_init246, [256 x i128]* %spice_inline_array247, align 4
  %imag_init_neg248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init_neg, align 8
  %i249 = load i128, i128* %i, align 4
  %l250 = load i128, i128* %l, align 4
  %add251 = add i128 %i249, %l250
  %array_getter252 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init_neg248, i128 0, i128 %add251
  %imag_init_neg253 = load [256 x i128], [256 x i128]* %array_getter252, align 4
  %spice_inline_array254 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init_neg253, [256 x i128]* %spice_inline_array254, align 4
  %call255 = call [256 x i128]* @long_add(i128 %n237, i128 %add240, [256 x i128]* %spice_inline_array247, [256 x i128]* %spice_inline_array254)
  %ptr_getter256 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i257 = load i128, i128* %i, align 4
  %real_carry258 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter256, i128 0, i128 %i257
  %19 = bitcast [256 x i128]* %real_carry258 to i8*
  %20 = bitcast [256 x i128]* %call255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n259 = load i128, i128* %n.bind, align 4
  %k260 = load i128, i128* %k.bind, align 4
  %mul261 = mul i128 2, %k260
  %add262 = add i128 %mul261, 1
  %imag_init263 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i264 = load i128, i128* %i, align 4
  %l265 = load i128, i128* %l, align 4
  %add266 = add i128 %i264, %l265
  %array_getter267 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init263, i128 0, i128 %add266
  %imag_init268 = load [256 x i128], [256 x i128]* %array_getter267, align 4
  %spice_inline_array269 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init268, [256 x i128]* %spice_inline_array269, align 4
  %real_init270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i271 = load i128, i128* %i, align 4
  %l272 = load i128, i128* %l, align 4
  %add273 = add i128 %i271, %l272
  %array_getter274 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init270, i128 0, i128 %add273
  %real_init275 = load [256 x i128], [256 x i128]* %array_getter274, align 4
  %spice_inline_array276 = alloca [256 x i128], align 8
  store [256 x i128] %real_init275, [256 x i128]* %spice_inline_array276, align 4
  %call277 = call [256 x i128]* @long_add(i128 %n259, i128 %add262, [256 x i128]* %spice_inline_array269, [256 x i128]* %spice_inline_array276)
  %ptr_getter278 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i279 = load i128, i128* %i, align 4
  %imag_carry280 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter278, i128 0, i128 %i279
  %21 = bitcast [256 x i128]* %imag_carry280 to i8*
  %22 = bitcast [256 x i128]* %call277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch281

loop.latch281:                                    ; preds = %if.exit
  %i282 = load i128, i128* %i, align 4
  %add283 = add i128 %i282, 1
  store i128 %add283, i128* %i, align 4
  %i284 = load i128, i128* %i, align 4
  %l285 = load i128, i128* %l, align 4
  %slt286 = icmp slt i128 %i284, %l285
  br i1 %slt286, label %loop.body213, label %loop.exit287

loop.exit287:                                     ; preds = %loop.latch281
  store i128 0, i128* %i, align 4
  br label %loop.body288

loop.body288:                                     ; preds = %loop.latch331, %loop.exit287
  %n289 = load i128, i128* %n.bind, align 4
  %k290 = load i128, i128* %k.bind, align 4
  %mul291 = mul i128 2, %k290
  %add292 = add i128 %mul291, 2
  %k293 = load i128, i128* %k.bind, align 4
  %mul294 = mul i128 2, %k293
  %add295 = add i128 %mul294, 1
  %real_carry296 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_carry, align 8
  %i297 = load i128, i128* %i, align 4
  %array_getter298 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_carry296, i128 0, i128 %i297
  %real_carry299 = load [256 x i128], [256 x i128]* %array_getter298, align 4
  %spice_inline_array300 = alloca [256 x i128], align 8
  store [256 x i128] %real_carry299, [256 x i128]* %spice_inline_array300, align 4
  %real_init301 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_init, align 8
  %i302 = load i128, i128* %i, align 4
  %array_getter303 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_init301, i128 0, i128 %i302
  %real_init304 = load [256 x i128], [256 x i128]* %array_getter303, align 4
  %spice_inline_array305 = alloca [256 x i128], align 8
  store [256 x i128] %real_init304, [256 x i128]* %spice_inline_array305, align 4
  %call306 = call [256 x i128]* @long_add_unequal(i128 %n289, i128 %add292, i128 %add295, [256 x i128]* %spice_inline_array300, [256 x i128]* %spice_inline_array305)
  %ptr_getter307 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_final, align 8
  %i308 = load i128, i128* %i, align 4
  %real_final309 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter307, i128 0, i128 %i308
  %23 = bitcast [256 x i128]* %real_final309 to i8*
  %24 = bitcast [256 x i128]* %call306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n310 = load i128, i128* %n.bind, align 4
  %k311 = load i128, i128* %k.bind, align 4
  %mul312 = mul i128 2, %k311
  %add313 = add i128 %mul312, 2
  %k314 = load i128, i128* %k.bind, align 4
  %mul315 = mul i128 2, %k314
  %add316 = add i128 %mul315, 1
  %imag_carry317 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_carry, align 8
  %i318 = load i128, i128* %i, align 4
  %array_getter319 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_carry317, i128 0, i128 %i318
  %imag_carry320 = load [256 x i128], [256 x i128]* %array_getter319, align 4
  %spice_inline_array321 = alloca [256 x i128], align 8
  store [256 x i128] %imag_carry320, [256 x i128]* %spice_inline_array321, align 4
  %imag_init322 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_init, align 8
  %i323 = load i128, i128* %i, align 4
  %array_getter324 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_init322, i128 0, i128 %i323
  %imag_init325 = load [256 x i128], [256 x i128]* %array_getter324, align 4
  %spice_inline_array326 = alloca [256 x i128], align 8
  store [256 x i128] %imag_init325, [256 x i128]* %spice_inline_array326, align 4
  %call327 = call [256 x i128]* @long_add_unequal(i128 %n310, i128 %add313, i128 %add316, [256 x i128]* %spice_inline_array321, [256 x i128]* %spice_inline_array326)
  %ptr_getter328 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_final, align 8
  %i329 = load i128, i128* %i, align 4
  %imag_final330 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter328, i128 0, i128 %i329
  %25 = bitcast [256 x i128]* %imag_final330 to i8*
  %26 = bitcast [256 x i128]* %call327 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch331

loop.latch331:                                    ; preds = %loop.body288
  %i332 = load i128, i128* %i, align 4
  %add333 = add i128 %i332, 1
  store i128 %add333, i128* %i, align 4
  %i334 = load i128, i128* %i, align 4
  %l335 = load i128, i128* %l, align 4
  %slt336 = icmp slt i128 %i334, %l335
  br i1 %slt336, label %loop.body288, label %loop.exit337

loop.exit337:                                     ; preds = %loop.latch331
  %uniform_array338 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array338, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %uniform_array339 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array339, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body340

loop.body340:                                     ; preds = %loop.latch369, %loop.exit337
  %n341 = load i128, i128* %n.bind, align 4
  %k342 = load i128, i128* %k.bind, align 4
  %k343 = load i128, i128* %k.bind, align 4
  %add344 = add i128 %k343, 3
  %real_final345 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %real_final, align 8
  %i346 = load i128, i128* %i, align 4
  %array_getter347 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %real_final345, i128 0, i128 %i346
  %real_final348 = load [256 x i128], [256 x i128]* %array_getter347, align 4
  %spice_inline_array349 = alloca [256 x i128], align 8
  store [256 x i128] %real_final348, [256 x i128]* %spice_inline_array349, align 4
  %p350 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call351 = call [256 x [256 x i128]]* @long_div2(i128 %n341, i128 %k342, i128 %add344, [256 x i128]* %spice_inline_array349, [256 x i128]* %p350)
  %ptr_getter352 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %i353 = load i128, i128* %i, align 4
  %XYreal_temp354 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter352, i128 0, i128 %i353
  %27 = bitcast [256 x [256 x i128]]* %XYreal_temp354 to i8*
  %28 = bitcast [256 x [256 x i128]]* %call351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %n355 = load i128, i128* %n.bind, align 4
  %k356 = load i128, i128* %k.bind, align 4
  %k357 = load i128, i128* %k.bind, align 4
  %add358 = add i128 %k357, 3
  %imag_final359 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %imag_final, align 8
  %i360 = load i128, i128* %i, align 4
  %array_getter361 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %imag_final359, i128 0, i128 %i360
  %imag_final362 = load [256 x i128], [256 x i128]* %array_getter361, align 4
  %spice_inline_array363 = alloca [256 x i128], align 8
  store [256 x i128] %imag_final362, [256 x i128]* %spice_inline_array363, align 4
  %p364 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call365 = call [256 x [256 x i128]]* @long_div2(i128 %n355, i128 %k356, i128 %add358, [256 x i128]* %spice_inline_array363, [256 x i128]* %p364)
  %ptr_getter366 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %i367 = load i128, i128* %i, align 4
  %XYimag_temp368 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter366, i128 0, i128 %i367
  %29 = bitcast [256 x [256 x i128]]* %XYimag_temp368 to i8*
  %30 = bitcast [256 x [256 x i128]]* %call365 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch369

loop.latch369:                                    ; preds = %loop.body340
  %i370 = load i128, i128* %i, align 4
  %add371 = add i128 %i370, 1
  store i128 %add371, i128* %i, align 4
  %i372 = load i128, i128* %i, align 4
  %l373 = load i128, i128* %l, align 4
  %slt374 = icmp slt i128 %i372, %l373
  br i1 %slt374, label %loop.body340, label %loop.exit375

loop.exit375:                                     ; preds = %loop.latch369
  store i128 0, i128* %i, align 4
  br label %loop.body376

loop.body376:                                     ; preds = %loop.latch403, %loop.exit375
  store i128 0, i128* %j, align 4
  br label %loop.body377

loop.body377:                                     ; preds = %loop.latch396, %loop.body376
  %XYreal_temp378 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYreal_temp, align 8
  %i379 = load i128, i128* %i, align 4
  %j380 = load i128, i128* %j, align 4
  %array_getter381 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %XYreal_temp378, i128 0, i128 %i379, i128 1, i128 %j380
  %XYreal_temp382 = load i128, i128* %array_getter381, align 4
  %ptr_getter383 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i384 = load i128, i128* %i, align 4
  %j385 = load i128, i128* %j, align 4
  %out386 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter383, i128 0, i128 %i384, i128 0, i128 %j385
  store i128 %XYreal_temp382, i128* %out386, align 4
  %XYimag_temp387 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %XYimag_temp, align 8
  %i388 = load i128, i128* %i, align 4
  %j389 = load i128, i128* %j, align 4
  %array_getter390 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %XYimag_temp387, i128 0, i128 %i388, i128 1, i128 %j389
  %XYimag_temp391 = load i128, i128* %array_getter390, align 4
  %ptr_getter392 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i393 = load i128, i128* %i, align 4
  %j394 = load i128, i128* %j, align 4
  %out395 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter392, i128 0, i128 %i393, i128 1, i128 %j394
  store i128 %XYimag_temp391, i128* %out395, align 4
  br label %loop.latch396

loop.latch396:                                    ; preds = %loop.body377
  %j397 = load i128, i128* %j, align 4
  %add398 = add i128 %j397, 1
  store i128 %add398, i128* %j, align 4
  %j399 = load i128, i128* %j, align 4
  %k400 = load i128, i128* %k.bind, align 4
  %slt401 = icmp slt i128 %j399, %k400
  br i1 %slt401, label %loop.body377, label %loop.exit402

loop.exit402:                                     ; preds = %loop.latch396
  br label %loop.latch403

loop.latch403:                                    ; preds = %loop.exit402
  %i404 = load i128, i128* %i, align 4
  %add405 = add i128 %i404, 1
  store i128 %add405, i128* %i, align 4
  %i406 = load i128, i128* %i, align 4
  %l407 = load i128, i128* %l, align 4
  %slt408 = icmp slt i128 %i406, %l407
  br i1 %slt408, label %loop.body376, label %loop.exit409

loop.exit409:                                     ; preds = %loop.latch403
  %out410 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out410
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
  %eBits = alloca [256 x i128]*, align 8
  %eBits1 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits1, [256 x i128]** %eBits, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp22 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp22, [256 x [256 x i128]]** %temp2, align 8
  %bitlength = alloca i128, align 8
  store i128 0, i128* %bitlength, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp3 = alloca [256 x i128], align 8
  store [256 x i128]* %temp3, [256 x i128]** %temp, align 8
  %out = alloca [256 x i128]*, align 8
  %out4 = alloca [256 x i128], align 8
  store [256 x i128]* %out4, [256 x i128]** %out, align 8
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
  %prod = alloca [256 x i128]*, align 8
  %prod1 = alloca [256 x i128], align 8
  store [256 x i128]* %prod1, [256 x i128]** %prod, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp2, [256 x [256 x i128]]** %temp, align 8
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

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %a_short = alloca [256 x i128]*, align 8
  %a_short1 = alloca [256 x i128], align 8
  store [256 x i128]* %a_short1, [256 x i128]** %a_short, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %X = alloca [256 x [256 x i128]]*, align 8
  %X2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %X2, [256 x [256 x i128]]** %X, align 8
  %Y_is_zero = alloca i128, align 8
  store i128 0, i128* %Y_is_zero, align 4
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out3, [256 x [256 x i128]]** %out, align 8
  %a_pos = alloca [256 x i128]*, align 8
  %a_pos4 = alloca [256 x i128], align 8
  store [256 x i128]* %a_pos4, [256 x i128]** %a_pos, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %n, i128 %k, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %a_short, align 8
  %a_short5 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a_short5, i128 0, i128 50
  %a_short6 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short6, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a_short9 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call10 = call [256 x [256 x i128]]* @long_div2(i128 %n7, i128 %k8, i128 %m, [256 x i128]* %a_short9, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call10, [256 x [256 x i128]]** %out, align 8
  br label %if.exit128

if.false:                                         ; preds = %entry
  %uniform_array11 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array11, [256 x i128]** %a_pos, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %a_short12 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a_short12, i128 0, i128 %i13
  %a_short15 = load i128, i128* %array_getter14, align 4
  %neg = sub i128 0, %a_short15
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %i16 = load i128, i128* %i, align 4
  %a_pos17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 %neg, i128* %a_pos17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i18 = load i128, i128* %i, align 4
  %add = add i128 %i18, 1
  store i128 %add, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %add22 = add i128 %k20, %m21
  %slt = icmp slt i128 %i19, %add22
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %m25 = load i128, i128* %m.bind, align 4
  %a_pos26 = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %p27 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call28 = call [256 x [256 x i128]]* @long_div2(i128 %n23, i128 %k24, i128 %m25, [256 x i128]* %a_pos26, [256 x i128]* %p27)
  store [256 x [256 x i128]]* %call28, [256 x [256 x i128]]** %X, align 8
  store i128 1, i128* %Y_is_zero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch36, %loop.exit
  %X32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i33 = load i128, i128* %i, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X32, i128 0, i128 1, i128 %i33
  %X35 = load i128, i128* %array_getter34, align 4
  %ne = icmp ne i128 %X35, 0
  br i1 %ne, label %if.true30, label %if.false31

if.true30:                                        ; preds = %loop.body29
  store i128 0, i128* %Y_is_zero, align 4
  br label %if.exit

if.false31:                                       ; preds = %loop.body29
  br label %if.exit

if.exit:                                          ; preds = %if.false31, %if.true30
  br label %loop.latch36

loop.latch36:                                     ; preds = %if.exit
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %slt41 = icmp slt i128 %i39, %k40
  br i1 %slt41, label %loop.body29, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch36
  %Y_is_zero45 = load i128, i128* %Y_is_zero, align 4
  %eq46 = icmp eq i128 %Y_is_zero45, 1
  br i1 %eq46, label %if.true43, label %if.false44

if.true43:                                        ; preds = %loop.exit42
  %X47 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter48 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X47, i128 0, i128 1
  %X49 = load [256 x i128], [256 x i128]* %array_getter48, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X49, [256 x i128]* %spice_inline_array, align 4
  %ptr_getter50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter50, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out51 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit111

if.false44:                                       ; preds = %loop.exit42
  %n52 = load i128, i128* %n.bind, align 4
  %k53 = load i128, i128* %k.bind, align 4
  %p54 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %X55 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X55, i128 0, i128 1
  %X57 = load [256 x i128], [256 x i128]* %array_getter56, align 4
  %spice_inline_array58 = alloca [256 x i128], align 8
  store [256 x i128] %X57, [256 x i128]* %spice_inline_array58, align 4
  %call59 = call [256 x i128]* @long_sub(i128 %n52, i128 %k53, [256 x i128]* %p54, [256 x i128]* %spice_inline_array58)
  %ptr_getter60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter60, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out61 to i8*
  %8 = bitcast [256 x i128]* %call59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %X62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X62, i128 0, i128 0, i128 0
  %X64 = load i128, i128* %array_getter63, align 4
  %add65 = add i128 %X64, 1
  %ptr_getter66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %X67 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter66, i128 0, i128 0, i128 0
  store i128 %add65, i128* %X67, align 4
  %X70 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X70, i128 0, i128 0, i128 0
  %X72 = load i128, i128* %array_getter71, align 4
  %n73 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n73
  %sge = icmp sge i128 %X72, %lshift
  br i1 %sge, label %if.true68, label %if.false69

if.true68:                                        ; preds = %if.false44
  store i128 0, i128* %i, align 4
  br label %loop.body74

if.false69:                                       ; preds = %if.false44
  br label %if.exit110

loop.body74:                                      ; preds = %loop.latch102, %if.true68
  %X75 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X75, i128 0, i128 0, i128 %i76
  %X78 = load i128, i128* %array_getter77, align 4
  %n79 = load i128, i128* %n.bind, align 4
  %lshift80 = shl i128 1, %n79
  %sdiv = sdiv i128 %X78, %lshift80
  store i128 %sdiv, i128* %carry, align 4
  %X81 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  %array_getter84 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X81, i128 0, i128 0, i128 %add83
  %X85 = load i128, i128* %array_getter84, align 4
  %carry86 = load i128, i128* %carry, align 4
  %add87 = add i128 %X85, %carry86
  %ptr_getter88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i89 = load i128, i128* %i, align 4
  %add90 = add i128 %i89, 1
  %X91 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter88, i128 0, i128 0, i128 %add90
  store i128 %add87, i128* %X91, align 4
  %X92 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i93 = load i128, i128* %i, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X92, i128 0, i128 0, i128 %i93
  %X95 = load i128, i128* %array_getter94, align 4
  %carry96 = load i128, i128* %carry, align 4
  %n97 = load i128, i128* %n.bind, align 4
  %lshift98 = shl i128 1, %n97
  %mul = mul i128 %carry96, %lshift98
  %sub = sub i128 %X95, %mul
  %ptr_getter99 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i100 = load i128, i128* %i, align 4
  %X101 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter99, i128 0, i128 0, i128 %i100
  store i128 %sub, i128* %X101, align 4
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body74
  %i103 = load i128, i128* %i, align 4
  %add104 = add i128 %i103, 1
  store i128 %add104, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %m106 = load i128, i128* %m.bind, align 4
  %sub107 = sub i128 %m106, 1
  %slt108 = icmp slt i128 %i105, %sub107
  br i1 %slt108, label %loop.body74, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch102
  br label %if.exit110

if.exit110:                                       ; preds = %if.false69, %loop.exit109
  br label %if.exit111

if.exit111:                                       ; preds = %if.exit110, %if.true43
  store i128 0, i128* %i, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch121, %if.exit111
  %X113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X113, i128 0, i128 0, i128 %i114
  %X116 = load i128, i128* %array_getter115, align 4
  %neg117 = sub i128 0, %X116
  %ptr_getter118 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i119 = load i128, i128* %i, align 4
  %out120 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter118, i128 0, i128 0, i128 %i119
  store i128 %neg117, i128* %out120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body112
  %i122 = load i128, i128* %i, align 4
  %add123 = add i128 %i122, 1
  store i128 %add123, i128* %i, align 4
  %i124 = load i128, i128* %i, align 4
  %m125 = load i128, i128* %m.bind, align 4
  %slt126 = icmp slt i128 %i124, %m125
  br i1 %slt126, label %loop.body112, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  br label %if.exit128

if.exit128:                                       ; preds = %loop.exit127, %if.true
  %out129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out129
}

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i2
  %a3 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a3, [256 x i128]* %spice_inline_array, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n, i128 %k, i128 %m, [256 x i128]* %spice_inline_array, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i4 = load i128, i128* %i, align 4
  %out5 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i4
  %5 = bitcast [256 x [256 x i128]]* %out5 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out8 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out8
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
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy2 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy2, [256 x i128]** %pCopy, align 8
  %two = alloca [256 x i128]*, align 8
  %two3 = alloca [256 x i128], align 8
  store [256 x i128]* %two3, [256 x i128]** %two, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret4 = alloca [256 x i128], align 8
  store [256 x i128]* %ret4, [256 x i128]** %ret, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo5 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo5, [256 x i128]** %pMinusTwo, align 8
  %isZero = alloca i128, align 8
  store i128 0, i128* %isZero, align 4
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

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %num.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %num.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %b = alloca [256 x i128]*, align 8
  %b1 = alloca [256 x i128], align 8
  store [256 x i128]* %b1, [256 x i128]** %b, align 8
  %a = alloca [256 x i128]*, align 8
  %a2 = alloca [256 x i128], align 8
  store [256 x i128]* %a2, [256 x i128]** %a, align 8
  %x = alloca [256 x i128]*, align 8
  %x3 = alloca [256 x i128], align 8
  store [256 x i128]* %x3, [256 x i128]** %x, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %u = alloca [256 x i128]*, align 8
  %u4 = alloca [256 x i128], align 8
  store [256 x i128]* %u4, [256 x i128]** %u, align 8
  %l = alloca i128, align 8
  store i128 0, i128* %l, align 4
  %r = alloca [256 x [256 x i128]]*, align 8
  %r5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r5, [256 x [256 x i128]]** %r, align 8
  %newu = alloca [256 x i128]*, align 8
  %newu6 = alloca [256 x i128], align 8
  store [256 x i128]* %newu6, [256 x i128]** %newu, align 8
  %newv = alloca [256 x i128]*, align 8
  %newv7 = alloca [256 x i128], align 8
  store [256 x i128]* %newv7, [256 x i128]** %newv, align 8
  %v = alloca [256 x i128]*, align 8
  %v8 = alloca [256 x i128], align 8
  store [256 x i128]* %v8, [256 x i128]** %v, align 8
  %q = alloca [256 x i128]*, align 8
  %q9 = alloca [256 x i128], align 8
  store [256 x i128]* %q9, [256 x i128]** %q, align 8
  %y = alloca [256 x i128]*, align 8
  %y10 = alloca [256 x i128], align 8
  store [256 x i128]* %y10, [256 x i128]** %y, align 8
  %ka = alloca i128, align 8
  store i128 0, i128* %ka, align 4
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %amodp11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %amodp11, [256 x [256 x i128]]** %amodp, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret12 = alloca [256 x i128], align 8
  store [256 x i128]* %ret12, [256 x i128]** %ret, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %num = load [256 x i128]*, [256 x i128]** %num.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 0, [256 x i128]* %num, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %amodp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %a, align 8
  %uniform_array13 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array13, [256 x i128]** %b, align 8
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %x, align 8
  %uniform_array15 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array15, [256 x i128]** %y, align 8
  %uniform_array16 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array16, [256 x i128]** %u, align 8
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %v, align 8
  %uniform_array18 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array18, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %amodp19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %amodp, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %amodp19, i128 0, i128 1, i128 %i20
  %amodp21 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a, align 8
  %i22 = load i128, i128* %i, align 4
  %a23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i22
  store i128 %amodp21, i128* %a23, align 4
  %p24 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %p24, i128 0, i128 %i25
  %p27 = load i128, i128* %array_getter26, align 4
  %ptr_getter28 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i29 = load i128, i128* %i, align 4
  %b30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter28, i128 0, i128 %i29
  store i128 %p27, i128* %b30, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i32 = load i128, i128* %i, align 4
  %x33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 0, i128* %x33, align 4
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i35 = load i128, i128* %i, align 4
  %y36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 0, i128* %y36, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i38 = load i128, i128* %i, align 4
  %u39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 0, i128* %u39, align 4
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i41 = load i128, i128* %i, align 4
  %v42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 0, i128* %v42, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i43 = load i128, i128* %i, align 4
  %add = add i128 %i43, 1
  store i128 %add, i128* %i, align 4
  %i44 = load i128, i128* %i, align 4
  %k45 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i44, %k45
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %y, align 8
  %y47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 0
  store i128 1, i128* %y47, align 4
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %u, align 8
  %u49 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 0
  store i128 1, i128* %u49, align 4
  store i128 0, i128* %l, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch207, %loop.exit
  store i128 0, i128* %ka, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch58, %loop.body50
  %a52 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %a52, i128 0, i128 %i53
  %a55 = load i128, i128* %array_getter54, align 4
  %ne = icmp ne i128 %a55, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body51
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %ka, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body51
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch58

loop.latch58:                                     ; preds = %if.exit
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %slt63 = icmp slt i128 %i61, %k62
  br i1 %slt63, label %loop.body51, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch58
  %ka67 = load i128, i128* %ka, align 4
  %eq = icmp eq i128 %ka67, 0
  br i1 %eq, label %if.true65, label %if.false66

if.true65:                                        ; preds = %loop.exit64
  store i128 0, i128* %i, align 4
  br label %loop.body68

if.false66:                                       ; preds = %loop.exit64
  br label %if.exit84

loop.body68:                                      ; preds = %loop.latch76, %if.true65
  %x69 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %x69, i128 0, i128 %i70
  %x72 = load i128, i128* %array_getter71, align 4
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i74 = load i128, i128* %i, align 4
  %ret75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 %x72, i128* %ret75, align 4
  br label %loop.latch76

loop.latch76:                                     ; preds = %loop.body68
  %i77 = load i128, i128* %i, align 4
  %add78 = add i128 %i77, 1
  store i128 %add78, i128* %i, align 4
  %i79 = load i128, i128* %i, align 4
  %k80 = load i128, i128* %k.bind, align 4
  %slt81 = icmp slt i128 %i79, %k80
  br i1 %slt81, label %loop.body68, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  %ret83 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret83

if.exit84:                                        ; preds = %if.false66
  %n85 = load i128, i128* %n.bind, align 4
  %ka86 = load i128, i128* %ka, align 4
  %k87 = load i128, i128* %k.bind, align 4
  %ka88 = load i128, i128* %ka, align 4
  %sub = sub i128 %k87, %ka88
  %b89 = load [256 x i128]*, [256 x i128]** %b, align 8
  %a90 = load [256 x i128]*, [256 x i128]** %a, align 8
  %call91 = call [256 x [256 x i128]]* @long_div2(i128 %n85, i128 %ka86, i128 %sub, [256 x i128]* %b89, [256 x i128]* %a90)
  store [256 x [256 x i128]]* %call91, [256 x [256 x i128]]** %r, align 8
  %uniform_array92 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array92, [256 x i128]** %q, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body93

loop.body93:                                      ; preds = %loop.latch101, %if.exit84
  %r94 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r94, i128 0, i128 0, i128 %i95
  %r97 = load i128, i128* %array_getter96, align 4
  %ptr_getter98 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i99 = load i128, i128* %i, align 4
  %q100 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter98, i128 0, i128 %i99
  store i128 %r97, i128* %q100, align 4
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.body93
  %i102 = load i128, i128* %i, align 4
  %add103 = add i128 %i102, 1
  store i128 %add103, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %ka106 = load i128, i128* %ka, align 4
  %sub107 = sub i128 %k105, %ka106
  %add108 = add i128 %sub107, 1
  %slt109 = icmp slt i128 %i104, %add108
  br i1 %slt109, label %loop.body93, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch101
  %k111 = load i128, i128* %k.bind, align 4
  %ka112 = load i128, i128* %ka, align 4
  %sub113 = sub i128 %k111, %ka112
  %add114 = add i128 %sub113, 1
  store i128 %add114, i128* %i, align 4
  br label %loop.body115

loop.body115:                                     ; preds = %loop.latch119, %loop.exit110
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i117 = load i128, i128* %i, align 4
  %q118 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 %i117
  store i128 0, i128* %q118, align 4
  br label %loop.latch119

loop.latch119:                                    ; preds = %loop.body115
  %i120 = load i128, i128* %i, align 4
  %add121 = add i128 %i120, 1
  store i128 %add121, i128* %i, align 4
  %i122 = load i128, i128* %i, align 4
  %k123 = load i128, i128* %k.bind, align 4
  %slt124 = icmp slt i128 %i122, %k123
  br i1 %slt124, label %loop.body115, label %loop.exit125

loop.exit125:                                     ; preds = %loop.latch119
  %n126 = load i128, i128* %n.bind, align 4
  %k127 = load i128, i128* %k.bind, align 4
  %x128 = load [256 x i128]*, [256 x i128]** %x, align 8
  %n129 = load i128, i128* %n.bind, align 4
  %k130 = load i128, i128* %k.bind, align 4
  %u131 = load [256 x i128]*, [256 x i128]** %u, align 8
  %q132 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p133 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call134 = call [256 x i128]* @prod_mod(i128 %n129, i128 %k130, [256 x i128]* %u131, [256 x i128]* %q132, [256 x i128]* %p133)
  %p135 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call136 = call [256 x i128]* @long_sub_mod(i128 %n126, i128 %k127, [256 x i128]* %x128, [256 x i128]* %call134, [256 x i128]* %p135)
  store [256 x i128]* %call136, [256 x i128]** %newu, align 8
  %n137 = load i128, i128* %n.bind, align 4
  %k138 = load i128, i128* %k.bind, align 4
  %y139 = load [256 x i128]*, [256 x i128]** %y, align 8
  %n140 = load i128, i128* %n.bind, align 4
  %k141 = load i128, i128* %k.bind, align 4
  %v142 = load [256 x i128]*, [256 x i128]** %v, align 8
  %q143 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p144 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call145 = call [256 x i128]* @prod_mod(i128 %n140, i128 %k141, [256 x i128]* %v142, [256 x i128]* %q143, [256 x i128]* %p144)
  %p146 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call147 = call [256 x i128]* @long_sub_mod(i128 %n137, i128 %k138, [256 x i128]* %y139, [256 x i128]* %call145, [256 x i128]* %p146)
  store [256 x i128]* %call147, [256 x i128]** %newv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body148

loop.body148:                                     ; preds = %loop.latch200, %loop.exit125
  %a149 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %a149, i128 0, i128 %i150
  %a152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i154 = load i128, i128* %i, align 4
  %b155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %a152, i128* %b155, align 4
  %i158 = load i128, i128* %i, align 4
  %ka159 = load i128, i128* %ka, align 4
  %slt160 = icmp slt i128 %i158, %ka159
  br i1 %slt160, label %if.true156, label %if.false157

if.true156:                                       ; preds = %loop.body148
  %r161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r161, i128 0, i128 1, i128 %i162
  %r164 = load i128, i128* %array_getter163, align 4
  %ptr_getter165 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i166 = load i128, i128* %i, align 4
  %a167 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter165, i128 0, i128 %i166
  store i128 %r164, i128* %a167, align 4
  br label %if.exit171

if.false157:                                      ; preds = %loop.body148
  %ptr_getter168 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i169 = load i128, i128* %i, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter168, i128 0, i128 %i169
  store i128 0, i128* %a170, align 4
  br label %if.exit171

if.exit171:                                       ; preds = %if.false157, %if.true156
  %u172 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i173 = load i128, i128* %i, align 4
  %array_getter174 = getelementptr inbounds [256 x i128], [256 x i128]* %u172, i128 0, i128 %i173
  %u175 = load i128, i128* %array_getter174, align 4
  %ptr_getter176 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i177 = load i128, i128* %i, align 4
  %x178 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter176, i128 0, i128 %i177
  store i128 %u175, i128* %x178, align 4
  %v179 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %v179, i128 0, i128 %i180
  %v182 = load i128, i128* %array_getter181, align 4
  %ptr_getter183 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i184 = load i128, i128* %i, align 4
  %y185 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter183, i128 0, i128 %i184
  store i128 %v182, i128* %y185, align 4
  %newu186 = load [256 x i128]*, [256 x i128]** %newu, align 8
  %i187 = load i128, i128* %i, align 4
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %newu186, i128 0, i128 %i187
  %newu189 = load i128, i128* %array_getter188, align 4
  %ptr_getter190 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i191 = load i128, i128* %i, align 4
  %u192 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter190, i128 0, i128 %i191
  store i128 %newu189, i128* %u192, align 4
  %newv193 = load [256 x i128]*, [256 x i128]** %newv, align 8
  %i194 = load i128, i128* %i, align 4
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %newv193, i128 0, i128 %i194
  %newv196 = load i128, i128* %array_getter195, align 4
  %ptr_getter197 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i198 = load i128, i128* %i, align 4
  %v199 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter197, i128 0, i128 %i198
  store i128 %newv196, i128* %v199, align 4
  br label %loop.latch200

loop.latch200:                                    ; preds = %if.exit171
  %i201 = load i128, i128* %i, align 4
  %add202 = add i128 %i201, 1
  store i128 %add202, i128* %i, align 4
  %i203 = load i128, i128* %i, align 4
  %k204 = load i128, i128* %k.bind, align 4
  %slt205 = icmp slt i128 %i203, %k204
  br i1 %slt205, label %loop.body148, label %loop.exit206

loop.exit206:                                     ; preds = %loop.latch200
  br label %loop.latch207

loop.latch207:                                    ; preds = %loop.exit206
  %l208 = load i128, i128* %l, align 4
  %add209 = add i128 %l208, 1
  store i128 %add209, i128* %l, align 4
  %l210 = load i128, i128* %l, align 4
  %slt211 = icmp slt i128 %l210, 1000
  br i1 %slt211, label %loop.body50, label %loop.exit212

loop.exit212:                                     ; preds = %loop.latch207
  %ret213 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret213
}

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_add_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call18 = call [256 x i128]* @long_add_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_sum(i128 %0, i128 %1, [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %2, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %i2
  %a3 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter, align 4
  %spice_inline_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %a3, [256 x [256 x i128]]* %spice_inline_array, align 4
  %b = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %b.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %b, i128 0, i128 %i4
  %b6 = load [256 x [256 x i128]], [256 x [256 x i128]]* %array_getter5, align 4
  %spice_inline_array7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]] %b6, [256 x [256 x i128]]* %spice_inline_array7, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n, i128 %k, [256 x [256 x i128]]* %spice_inline_array, [256 x [256 x i128]]* %spice_inline_array7, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i8
  %5 = bitcast [256 x [256 x i128]]* %out9 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i10 = load i128, i128* %i, align 4
  %add = add i128 %i10, 1
  store i128 %add, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i11, 6
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out12 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out12
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %ab2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %ab2, [256 x [256 x [256 x i128]]]** %ab, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array3 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array3, [256 x [256 x [256 x i128]]]** %ab, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch16, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body4

loop.body4:                                       ; preds = %loop.latch, %loop.body
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i5
  %a6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a6, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j7 = load i128, i128* %j, align 4
  %array_getter8 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j7
  %b9 = load [256 x i128], [256 x i128]* %array_getter8, align 4
  %spice_inline_array10 = alloca [256 x i128], align 8
  store [256 x i128] %b9, [256 x i128]* %spice_inline_array10, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @prod_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array10, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %i11 = load i128, i128* %i, align 4
  %j12 = load i128, i128* %j, align 4
  %ab13 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i11, i128 %j12
  %5 = bitcast [256 x i128]* %ab13 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body4
  %j14 = load i128, i128* %j, align 4
  %add = add i128 %j14, 1
  store i128 %add, i128* %j, align 4
  %j15 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j15, 2
  br i1 %slt, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch16

loop.latch16:                                     ; preds = %loop.exit
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %slt20 = icmp slt i128 %i19, 2
  br i1 %slt20, label %loop.body, label %loop.exit21

loop.exit21:                                      ; preds = %loop.latch16
  %n22 = load i128, i128* %n.bind, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %ab24 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab24, i128 0, i128 0, i128 0
  %ab26 = load [256 x i128], [256 x i128]* %array_getter25, align 4
  %spice_inline_array27 = alloca [256 x i128], align 8
  store [256 x i128] %ab26, [256 x i128]* %spice_inline_array27, align 4
  %ab28 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter29 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab28, i128 0, i128 1, i128 1
  %ab30 = load [256 x i128], [256 x i128]* %array_getter29, align 4
  %spice_inline_array31 = alloca [256 x i128], align 8
  store [256 x i128] %ab30, [256 x i128]* %spice_inline_array31, align 4
  %p32 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call33 = call [256 x i128]* @long_sub_mod(i128 %n22, i128 %k23, [256 x i128]* %spice_inline_array27, [256 x i128]* %spice_inline_array31, [256 x i128]* %p32)
  %ptr_getter34 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out35 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter34, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out35 to i8*
  %8 = bitcast [256 x i128]* %call33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n36 = load i128, i128* %n.bind, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %ab38 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter39 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab38, i128 0, i128 0, i128 1
  %ab40 = load [256 x i128], [256 x i128]* %array_getter39, align 4
  %spice_inline_array41 = alloca [256 x i128], align 8
  store [256 x i128] %ab40, [256 x i128]* %spice_inline_array41, align 4
  %ab42 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter43 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab42, i128 0, i128 1, i128 0
  %ab44 = load [256 x i128], [256 x i128]* %array_getter43, align 4
  %spice_inline_array45 = alloca [256 x i128], align 8
  store [256 x i128] %ab44, [256 x i128]* %spice_inline_array45, align 4
  %p46 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call47 = call [256 x i128]* @long_add_mod(i128 %n36, i128 %k37, [256 x i128]* %spice_inline_array41, [256 x i128]* %spice_inline_array45, [256 x i128]* %p46)
  %ptr_getter48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter48, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out49 to i8*
  %10 = bitcast [256 x i128]* %call47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out50
}

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %lambda = alloca [256 x i128]*, align 8
  %lambda1 = alloca [256 x i128], align 8
  store [256 x i128]* %lambda1, [256 x i128]** %lambda, align 8
  %out1_pre = alloca [256 x i128]*, align 8
  %out1_pre2 = alloca [256 x i128], align 8
  store [256 x i128]* %out1_pre2, [256 x i128]** %out1_pre, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %sq_sum3 = alloca [256 x i128], align 8
  store [256 x i128]* %sq_sum3, [256 x i128]** %sq_sum, align 8
  %out1 = alloca [256 x i128]*, align 8
  %out14 = alloca [256 x i128], align 8
  store [256 x i128]* %out14, [256 x i128]** %out1, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out5, [256 x [256 x i128]]** %out, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %sq06 = alloca [256 x i128], align 8
  store [256 x i128]* %sq06, [256 x i128]** %sq0, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %out0_div7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out0_div7, [256 x [256 x i128]]** %out0_div, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %sq_sum_div8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sq_sum_div8, [256 x [256 x i128]]** %sq_sum_div, align 8
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %out1_div9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1_div9, [256 x [256 x i128]]** %out1_div, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %sq110 = alloca [256 x i128], align 8
  store [256 x i128]* %sq110, [256 x i128]** %sq1, align 8
  %out0 = alloca [256 x i128]*, align 8
  %out011 = alloca [256 x i128], align 8
  store [256 x i128]* %out011, [256 x i128]** %out0, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %a13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a13, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  store [256 x i128]* %call, [256 x i128]** %sq0, align 8
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %a19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a19, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %a23 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a23, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %n17, i128 %k18, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  store [256 x i128]* %call27, [256 x i128]** %sq1, align 8
  %n28 = load i128, i128* %n.bind, align 4
  %k29 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k29
  %sq030 = load [256 x i128]*, [256 x i128]** %sq0, align 8
  %sq131 = load [256 x i128]*, [256 x i128]** %sq1, align 8
  %call32 = call [256 x i128]* @long_add(i128 %n28, i128 %mul, [256 x i128]* %sq030, [256 x i128]* %sq131)
  store [256 x i128]* %call32, [256 x i128]** %sq_sum, align 8
  %n33 = load i128, i128* %n.bind, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %add = add i128 %k35, 1
  %sq_sum36 = load [256 x i128]*, [256 x i128]** %sq_sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %n33, i128 %k34, i128 %add, [256 x i128]* %sq_sum36, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call37, [256 x [256 x i128]]** %sq_sum_div, align 8
  %n38 = load i128, i128* %n.bind, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %sq_sum_div40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sq_sum_div, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sq_sum_div40, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %p44 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call45 = call [256 x i128]* @mod_inv(i128 %n38, i128 %k39, [256 x i128]* %spice_inline_array43, [256 x i128]* %p44)
  store [256 x i128]* %call45, [256 x i128]** %lambda, align 8
  %n46 = load i128, i128* %n.bind, align 4
  %k47 = load i128, i128* %k.bind, align 4
  %lambda48 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %a49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a49, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %n46, i128 %k47, [256 x i128]* %lambda48, [256 x i128]* %spice_inline_array52)
  store [256 x i128]* %call53, [256 x i128]** %out0, align 8
  %n54 = load i128, i128* %n.bind, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %out056 = load [256 x i128]*, [256 x i128]** %out0, align 8
  %p57 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
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
  %n64 = load i128, i128* %n.bind, align 4
  %k65 = load i128, i128* %k.bind, align 4
  %p66 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %a67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a67, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %n64, i128 %k65, [256 x i128]* %p66, [256 x i128]* %spice_inline_array70)
  store [256 x i128]* %call71, [256 x i128]** %out1_pre, align 8
  %n72 = load i128, i128* %n.bind, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %lambda74 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %out1_pre75 = load [256 x i128]*, [256 x i128]** %out1_pre, align 8
  %call76 = call [256 x i128]* @prod(i128 %n72, i128 %k73, [256 x i128]* %lambda74, [256 x i128]* %out1_pre75)
  store [256 x i128]* %call76, [256 x i128]** %out1, align 8
  %n77 = load i128, i128* %n.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %out179 = load [256 x i128]*, [256 x i128]** %out1, align 8
  %p80 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
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

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %e.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %e.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %bitLength = alloca i128, align 8
  store i128 0, i128* %bitLength, align 4
  %eBits = alloca [256 x i128]*, align 8
  %eBits2 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits2, [256 x i128]** %eBits, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitLength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i4
  %e5 = load i128, i128* %array_getter, align 4
  %j6 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e5, %j6
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j7 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i8 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i8
  %add = add i128 %j7, %mul
  %eBits9 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits9, align 4
  %eBits10 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j11 = load i128, i128* %j, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %i13 = load i128, i128* %i, align 4
  %mul14 = mul i128 %n12, %i13
  %add15 = add i128 %j11, %mul14
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits10, i128 0, i128 %add15
  %eBits17 = load i128, i128* %array_getter16, align 4
  %eq = icmp eq i128 %eBits17, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body3
  %j18 = load i128, i128* %j, align 4
  %n19 = load i128, i128* %n.bind, align 4
  %i20 = load i128, i128* %i, align 4
  %mul21 = mul i128 %n19, %i20
  %add22 = add i128 %j18, %mul21
  %add23 = add i128 %add22, 1
  store i128 %add23, i128* %bitLength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body3
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j24 = load i128, i128* %j, align 4
  %add25 = add i128 %j24, 1
  store i128 %add25, i128* %j, align 4
  %j26 = load i128, i128* %j, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j26, %n27
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.exit
  %i29 = load i128, i128* %i, align 4
  %add30 = add i128 %i29, 1
  store i128 %add30, i128* %i, align 4
  %i31 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul32 = mul i128 2, %k
  %slt33 = icmp slt i128 %i31, %mul32
  br i1 %slt33, label %loop.body, label %loop.exit34

loop.exit34:                                      ; preds = %loop.latch28
  %uniform_array35 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array35, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch43, %loop.exit34
  %ptr_getter37 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i38 = load i128, i128* %i, align 4
  %out39 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter37, i128 0, i128 0, i128 %i38
  store i128 0, i128* %out39, align 4
  %ptr_getter40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i41 = load i128, i128* %i, align 4
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter40, i128 0, i128 1, i128 %i41
  store i128 0, i128* %out42, align 4
  br label %loop.latch43

loop.latch43:                                     ; preds = %loop.body36
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %i, align 4
  %i46 = load i128, i128* %i, align 4
  %slt47 = icmp slt i128 %i46, 50
  br i1 %slt47, label %loop.body36, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch43
  %ptr_getter49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter49, i128 0, i128 0, i128 0
  store i128 1, i128* %out50, align 4
  %bitLength51 = load i128, i128* %bitLength, align 4
  %sub = sub i128 %bitLength51, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch74, %loop.exit48
  %eBits55 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits55, i128 0, i128 %i56
  %eBits58 = load i128, i128* %array_getter57, align 4
  %eq59 = icmp eq i128 %eBits58, 1
  br i1 %eq59, label %if.true53, label %if.false54

if.true53:                                        ; preds = %loop.body52
  %n60 = load i128, i128* %n.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %out62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n60, i128 %k61, [256 x [256 x i128]]* %out62, [256 x [256 x i128]]* %a, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %out, align 8
  br label %if.exit63

if.false54:                                       ; preds = %loop.body52
  br label %if.exit63

if.exit63:                                        ; preds = %if.false54, %if.true53
  %i66 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i66, 0
  br i1 %sgt, label %if.true64, label %if.false65

if.true64:                                        ; preds = %if.exit63
  %n67 = load i128, i128* %n.bind, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %out69 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out70 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %p71 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call72 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n67, i128 %k68, [256 x [256 x i128]]* %out69, [256 x [256 x i128]]* %out70, [256 x i128]* %p71)
  store [256 x [256 x i128]]* %call72, [256 x [256 x i128]]** %out, align 8
  br label %if.exit73

if.false65:                                       ; preds = %if.exit63
  br label %if.exit73

if.exit73:                                        ; preds = %if.false65, %if.true64
  br label %loop.latch74

loop.latch74:                                     ; preds = %if.exit73
  %i75 = load i128, i128* %i, align 4
  %sub76 = sub i128 %i75, 1
  store i128 %sub76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i77, 0
  br i1 %sge, label %loop.body52, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch74
  %out79 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out79
}

define [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4, [256 x [256 x i128]]* %5) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %p.bind, align 8
  %a0.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %a0.bind, align 8
  %a1.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %a1.bind, align 8
  %a2.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %5, [256 x [256 x i128]]** %a2.bind, align 8
  %a1_squared = alloca [256 x [256 x i128]]*, align 8
  %a1_squared1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1_squared1, [256 x [256 x i128]]** %a1_squared, align 8
  %v1_temp = alloca [256 x [256 x i128]]*, align 8
  %v1_temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_temp2, [256 x [256 x i128]]** %v1_temp, align 8
  %v1_final = alloca [256 x [256 x i128]]*, align 8
  %v1_final3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_final3, [256 x [256 x i128]]** %v1_final, align 8
  %denom_inv = alloca [256 x [256 x i128]]*, align 8
  %denom_inv4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_inv4, [256 x [256 x i128]]** %denom_inv, align 8
  %m = alloca i128, align 8
  store i128 0, i128* %m, align 4
  %a0a1 = alloca [256 x [256 x i128]]*, align 8
  %a0a15 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a15, [256 x [256 x i128]]** %a0a1, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %v2_temp = alloca [256 x [256 x i128]]*, align 8
  %v2_temp6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v2_temp6, [256 x [256 x i128]]** %v2_temp, align 8
  %a0_cubed = alloca [256 x [256 x i128]]*, align 8
  %a0_cubed7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0_cubed7, [256 x [256 x i128]]** %a0_cubed, align 8
  %a2_cubed = alloca [256 x [256 x i128]]*, align 8
  %a2_cubed8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a2_cubed8, [256 x [256 x i128]]** %a2_cubed, align 8
  %denom_2 = alloca [256 x [256 x i128]]*, align 8
  %denom_29 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_29, [256 x [256 x i128]]** %denom_2, align 8
  %a0a2 = alloca [256 x [256 x i128]]*, align 8
  %a0a210 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a210, [256 x [256 x i128]]** %a0a2, align 8
  %a0a1a2 = alloca [256 x [256 x i128]]*, align 8
  %a0a1a211 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a1a211, [256 x [256 x i128]]** %a0a1a2, align 8
  %denom_1 = alloca [256 x [256 x i128]]*, align 8
  %denom_112 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom_112, [256 x [256 x i128]]** %denom_1, align 8
  %a13v3 = alloca [256 x [256 x i128]]*, align 8
  %a13v313 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a13v313, [256 x [256 x i128]]** %a13v3, align 8
  %a0_squared = alloca [256 x [256 x i128]]*, align 8
  %a0_squared14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0_squared14, [256 x [256 x i128]]** %a0_squared, align 8
  %a1a2 = alloca [256 x [256 x i128]]*, align 8
  %a1a215 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1a215, [256 x [256 x i128]]** %a1a2, align 8
  %v0_temp = alloca [256 x [256 x i128]]*, align 8
  %v0_temp16 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_temp16, [256 x [256 x i128]]** %v0_temp, align 8
  %denom = alloca [256 x [256 x i128]]*, align 8
  %denom17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %denom17, [256 x [256 x i128]]** %denom, align 8
  %a23v6 = alloca [256 x [256 x i128]]*, align 8
  %a23v618 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a23v618, [256 x [256 x i128]]** %a23v6, align 8
  %three_v3 = alloca [256 x [256 x i128]]*, align 8
  %three_v319 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %three_v319, [256 x [256 x i128]]** %three_v3, align 8
  %v0_final = alloca [256 x [256 x i128]]*, align 8
  %v0_final20 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_final20, [256 x [256 x i128]]** %v0_final, align 8
  %v2_final = alloca [256 x [256 x i128]]*, align 8
  %v2_final21 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v2_final21, [256 x [256 x i128]]** %v2_final, align 8
  %v0_1 = alloca [256 x [256 x i128]]*, align 8
  %v0_122 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v0_122, [256 x [256 x i128]]** %v0_1, align 8
  %v1_1 = alloca [256 x [256 x i128]]*, align 8
  %v1_123 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v1_123, [256 x [256 x i128]]** %v1_1, align 8
  %a2_squared = alloca [256 x [256 x i128]]*, align 8
  %a2_squared24 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a2_squared24, [256 x [256 x i128]]** %a2_squared, align 8
  %v3 = alloca [256 x [256 x i128]]*, align 8
  %v325 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v325, [256 x [256 x i128]]** %v3, align 8
  %v6 = alloca [256 x [256 x i128]]*, align 8
  %v626 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %v626, [256 x [256 x i128]]** %v6, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out27 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out27, [256 x [256 x [256 x i128]]]** %out, align 8
  %a1_cubed = alloca [256 x [256 x i128]]*, align 8
  %a1_cubed28 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a1_cubed28, [256 x [256 x i128]]** %a1_cubed, align 8
  %a0a1a23v3 = alloca [256 x [256 x i128]]*, align 8
  %a0a1a23v329 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a0a1a23v329, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a0 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0.bind, align 8
  %a030 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n, i128 %k, [256 x [256 x i128]]* %a0, [256 x [256 x i128]]* %a030, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %a0_squared, align 8
  %n31 = load i128, i128* %n.bind, align 4
  %k32 = load i128, i128* %k.bind, align 4
  %a1 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1.bind, align 8
  %a133 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1.bind, align 8
  %p34 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call35 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n31, i128 %k32, [256 x [256 x i128]]* %a1, [256 x [256 x i128]]* %a133, [256 x i128]* %p34)
  store [256 x [256 x i128]]* %call35, [256 x [256 x i128]]** %a1_squared, align 8
  %n36 = load i128, i128* %n.bind, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %a238 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %p39 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call40 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n36, i128 %k37, [256 x [256 x i128]]* %a2, [256 x [256 x i128]]* %a238, [256 x i128]* %p39)
  store [256 x [256 x i128]]* %call40, [256 x [256 x i128]]** %a2_squared, align 8
  %n41 = load i128, i128* %n.bind, align 4
  %k42 = load i128, i128* %k.bind, align 4
  %a043 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0.bind, align 8
  %a144 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1.bind, align 8
  %p45 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call46 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n41, i128 %k42, [256 x [256 x i128]]* %a043, [256 x [256 x i128]]* %a144, [256 x i128]* %p45)
  store [256 x [256 x i128]]* %call46, [256 x [256 x i128]]** %a0a1, align 8
  %n47 = load i128, i128* %n.bind, align 4
  %k48 = load i128, i128* %k.bind, align 4
  %a049 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0.bind, align 8
  %a250 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %p51 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call52 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n47, i128 %k48, [256 x [256 x i128]]* %a049, [256 x [256 x i128]]* %a250, [256 x i128]* %p51)
  store [256 x [256 x i128]]* %call52, [256 x [256 x i128]]** %a0a2, align 8
  %n53 = load i128, i128* %n.bind, align 4
  %k54 = load i128, i128* %k.bind, align 4
  %a155 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1.bind, align 8
  %a256 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %p57 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call58 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n53, i128 %k54, [256 x [256 x i128]]* %a155, [256 x [256 x i128]]* %a256, [256 x i128]* %p57)
  store [256 x [256 x i128]]* %call58, [256 x [256 x i128]]** %a1a2, align 8
  %n59 = load i128, i128* %n.bind, align 4
  %k60 = load i128, i128* %k.bind, align 4
  %a0a161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1, align 8
  %a262 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %p63 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call64 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n59, i128 %k60, [256 x [256 x i128]]* %a0a161, [256 x [256 x i128]]* %a262, [256 x i128]* %p63)
  store [256 x [256 x i128]]* %call64, [256 x [256 x i128]]** %a0a1a2, align 8
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array65, [256 x [256 x i128]]** %v3, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch78, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body66

loop.body66:                                      ; preds = %loop.latch, %loop.body
  %j67 = load i128, i128* %j, align 4
  %eq = icmp eq i128 %j67, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body66
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %i68 = load i128, i128* %i, align 4
  %j69 = load i128, i128* %j, align 4
  %v370 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i68, i128 %j69
  store i128 1, i128* %v370, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body66
  %ptr_getter71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %i72 = load i128, i128* %i, align 4
  %j73 = load i128, i128* %j, align 4
  %v374 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter71, i128 0, i128 %i72, i128 %j73
  store i128 0, i128* %v374, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j75 = load i128, i128* %j, align 4
  %add = add i128 %j75, 1
  store i128 %add, i128* %j, align 4
  %j76 = load i128, i128* %j, align 4
  %k77 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %j76, %k77
  br i1 %slt, label %loop.body66, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %slt82 = icmp slt i128 %i81, 2
  br i1 %slt82, label %loop.body, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch78
  %uniform_array84 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array84, [256 x [256 x i128]]** %three_v3, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch107, %loop.exit83
  store i128 0, i128* %j, align 4
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch100, %loop.body85
  %j89 = load i128, i128* %j, align 4
  %eq90 = icmp eq i128 %j89, 0
  br i1 %eq90, label %if.true87, label %if.false88

if.true87:                                        ; preds = %loop.body86
  %ptr_getter91 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %i92 = load i128, i128* %i, align 4
  %j93 = load i128, i128* %j, align 4
  %three_v394 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter91, i128 0, i128 %i92, i128 %j93
  store i128 3, i128* %three_v394, align 4
  br label %if.exit99

if.false88:                                       ; preds = %loop.body86
  %ptr_getter95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %i96 = load i128, i128* %i, align 4
  %j97 = load i128, i128* %j, align 4
  %three_v398 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter95, i128 0, i128 %i96, i128 %j97
  store i128 0, i128* %three_v398, align 4
  br label %if.exit99

if.exit99:                                        ; preds = %if.false88, %if.true87
  br label %loop.latch100

loop.latch100:                                    ; preds = %if.exit99
  %j101 = load i128, i128* %j, align 4
  %add102 = add i128 %j101, 1
  store i128 %add102, i128* %j, align 4
  %j103 = load i128, i128* %j, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %slt105 = icmp slt i128 %j103, %k104
  br i1 %slt105, label %loop.body86, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch100
  br label %loop.latch107

loop.latch107:                                    ; preds = %loop.exit106
  %i108 = load i128, i128* %i, align 4
  %add109 = add i128 %i108, 1
  store i128 %add109, i128* %i, align 4
  %i110 = load i128, i128* %i, align 4
  %slt111 = icmp slt i128 %i110, 2
  br i1 %slt111, label %loop.body85, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch107
  %uniform_array113 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array113, [256 x [256 x i128]]** %v6, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body114

loop.body114:                                     ; preds = %loop.latch138, %loop.exit112
  store i128 0, i128* %j, align 4
  br label %loop.body115

loop.body115:                                     ; preds = %loop.latch131, %loop.body114
  %i118 = load i128, i128* %i, align 4
  %eq119 = icmp eq i128 %i118, 1
  %j120 = load i128, i128* %j, align 4
  %eq121 = icmp eq i128 %j120, 0
  %and = and i1 %eq119, %eq121
  br i1 %and, label %if.true116, label %if.false117

if.true116:                                       ; preds = %loop.body115
  %ptr_getter122 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %i123 = load i128, i128* %i, align 4
  %j124 = load i128, i128* %j, align 4
  %v6125 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter122, i128 0, i128 %i123, i128 %j124
  store i128 2, i128* %v6125, align 4
  br label %if.exit130

if.false117:                                      ; preds = %loop.body115
  %ptr_getter126 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %i127 = load i128, i128* %i, align 4
  %j128 = load i128, i128* %j, align 4
  %v6129 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter126, i128 0, i128 %i127, i128 %j128
  store i128 0, i128* %v6129, align 4
  br label %if.exit130

if.exit130:                                       ; preds = %if.false117, %if.true116
  br label %loop.latch131

loop.latch131:                                    ; preds = %if.exit130
  %j132 = load i128, i128* %j, align 4
  %add133 = add i128 %j132, 1
  store i128 %add133, i128* %j, align 4
  %j134 = load i128, i128* %j, align 4
  %k135 = load i128, i128* %k.bind, align 4
  %slt136 = icmp slt i128 %j134, %k135
  br i1 %slt136, label %loop.body115, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  br label %loop.latch138

loop.latch138:                                    ; preds = %loop.exit137
  %i139 = load i128, i128* %i, align 4
  %add140 = add i128 %i139, 1
  store i128 %add140, i128* %i, align 4
  %i141 = load i128, i128* %i, align 4
  %slt142 = icmp slt i128 %i141, 2
  br i1 %slt142, label %loop.body114, label %loop.exit143

loop.exit143:                                     ; preds = %loop.latch138
  %n144 = load i128, i128* %n.bind, align 4
  %k145 = load i128, i128* %k.bind, align 4
  %a1a2146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1a2, align 8
  %v3147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p148 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call149 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n144, i128 %k145, [256 x [256 x i128]]* %a1a2146, [256 x [256 x i128]]* %v3147, [256 x i128]* %p148)
  store [256 x [256 x i128]]* %call149, [256 x [256 x i128]]** %v0_1, align 8
  %n150 = load i128, i128* %n.bind, align 4
  %k151 = load i128, i128* %k.bind, align 4
  %a0_squared152 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_squared, align 8
  %v0_1153 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_1, align 8
  %p154 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call155 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n150, i128 %k151, [256 x [256 x i128]]* %a0_squared152, [256 x [256 x i128]]* %v0_1153, [256 x i128]* %p154)
  store [256 x [256 x i128]]* %call155, [256 x [256 x i128]]** %v0_temp, align 8
  %n156 = load i128, i128* %n.bind, align 4
  %k157 = load i128, i128* %k.bind, align 4
  %a2_squared158 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_squared, align 8
  %v3159 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p160 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call161 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n156, i128 %k157, [256 x [256 x i128]]* %a2_squared158, [256 x [256 x i128]]* %v3159, [256 x i128]* %p160)
  store [256 x [256 x i128]]* %call161, [256 x [256 x i128]]** %v1_1, align 8
  %n162 = load i128, i128* %n.bind, align 4
  %k163 = load i128, i128* %k.bind, align 4
  %v1_1164 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_1, align 8
  %a0a1165 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1, align 8
  %p166 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call167 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n162, i128 %k163, [256 x [256 x i128]]* %v1_1164, [256 x [256 x i128]]* %a0a1165, [256 x i128]* %p166)
  store [256 x [256 x i128]]* %call167, [256 x [256 x i128]]** %v1_temp, align 8
  %n168 = load i128, i128* %n.bind, align 4
  %k169 = load i128, i128* %k.bind, align 4
  %a1_squared170 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_squared, align 8
  %a0a2171 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a2, align 8
  %p172 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call173 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n168, i128 %k169, [256 x [256 x i128]]* %a1_squared170, [256 x [256 x i128]]* %a0a2171, [256 x i128]* %p172)
  store [256 x [256 x i128]]* %call173, [256 x [256 x i128]]** %v2_temp, align 8
  %n174 = load i128, i128* %n.bind, align 4
  %k175 = load i128, i128* %k.bind, align 4
  %a0176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0.bind, align 8
  %a0_squared177 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_squared, align 8
  %p178 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call179 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n174, i128 %k175, [256 x [256 x i128]]* %a0176, [256 x [256 x i128]]* %a0_squared177, [256 x i128]* %p178)
  store [256 x [256 x i128]]* %call179, [256 x [256 x i128]]** %a0_cubed, align 8
  %n180 = load i128, i128* %n.bind, align 4
  %k181 = load i128, i128* %k.bind, align 4
  %a1182 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1.bind, align 8
  %a1_squared183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_squared, align 8
  %p184 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call185 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n180, i128 %k181, [256 x [256 x i128]]* %a1182, [256 x [256 x i128]]* %a1_squared183, [256 x i128]* %p184)
  store [256 x [256 x i128]]* %call185, [256 x [256 x i128]]** %a1_cubed, align 8
  %n186 = load i128, i128* %n.bind, align 4
  %k187 = load i128, i128* %k.bind, align 4
  %a2188 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2.bind, align 8
  %a2_squared189 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_squared, align 8
  %p190 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call191 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n186, i128 %k187, [256 x [256 x i128]]* %a2188, [256 x [256 x i128]]* %a2_squared189, [256 x i128]* %p190)
  store [256 x [256 x i128]]* %call191, [256 x [256 x i128]]** %a2_cubed, align 8
  %n192 = load i128, i128* %n.bind, align 4
  %k193 = load i128, i128* %k.bind, align 4
  %a1_cubed194 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1_cubed, align 8
  %v3195 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v3, align 8
  %p196 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call197 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n192, i128 %k193, [256 x [256 x i128]]* %a1_cubed194, [256 x [256 x i128]]* %v3195, [256 x i128]* %p196)
  store [256 x [256 x i128]]* %call197, [256 x [256 x i128]]** %a13v3, align 8
  %n198 = load i128, i128* %n.bind, align 4
  %k199 = load i128, i128* %k.bind, align 4
  %a2_cubed200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2_cubed, align 8
  %v6201 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v6, align 8
  %p202 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call203 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n198, i128 %k199, [256 x [256 x i128]]* %a2_cubed200, [256 x [256 x i128]]* %v6201, [256 x i128]* %p202)
  store [256 x [256 x i128]]* %call203, [256 x [256 x i128]]** %a23v6, align 8
  %n204 = load i128, i128* %n.bind, align 4
  %k205 = load i128, i128* %k.bind, align 4
  %a0a1a2206 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1a2, align 8
  %three_v3207 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %three_v3, align 8
  %p208 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call209 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n204, i128 %k205, [256 x [256 x i128]]* %a0a1a2206, [256 x [256 x i128]]* %three_v3207, [256 x i128]* %p208)
  store [256 x [256 x i128]]* %call209, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %n210 = load i128, i128* %n.bind, align 4
  %k211 = load i128, i128* %k.bind, align 4
  %a0_cubed212 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0_cubed, align 8
  %a13v3213 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a13v3, align 8
  %p214 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call215 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n210, i128 %k211, [256 x [256 x i128]]* %a0_cubed212, [256 x [256 x i128]]* %a13v3213, [256 x i128]* %p214)
  store [256 x [256 x i128]]* %call215, [256 x [256 x i128]]** %denom_1, align 8
  %n216 = load i128, i128* %n.bind, align 4
  %k217 = load i128, i128* %k.bind, align 4
  %a23v6218 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a23v6, align 8
  %a0a1a23v3219 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0a1a23v3, align 8
  %p220 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call221 = call [256 x [256 x i128]]* @find_Fp2_diff(i128 %n216, i128 %k217, [256 x [256 x i128]]* %a23v6218, [256 x [256 x i128]]* %a0a1a23v3219, [256 x i128]* %p220)
  store [256 x [256 x i128]]* %call221, [256 x [256 x i128]]** %denom_2, align 8
  %n222 = load i128, i128* %n.bind, align 4
  %k223 = load i128, i128* %k.bind, align 4
  %denom_1224 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_1, align 8
  %denom_2225 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_2, align 8
  %p226 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call227 = call [256 x [256 x i128]]* @find_Fp2_sum(i128 %n222, i128 %k223, [256 x [256 x i128]]* %denom_1224, [256 x [256 x i128]]* %denom_2225, [256 x i128]* %p226)
  store [256 x [256 x i128]]* %call227, [256 x [256 x i128]]** %denom, align 8
  %n228 = load i128, i128* %n.bind, align 4
  %k229 = load i128, i128* %k.bind, align 4
  %denom230 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom, align 8
  %p231 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call232 = call [256 x [256 x i128]]* @find_Fp2_inverse(i128 %n228, i128 %k229, [256 x [256 x i128]]* %denom230, [256 x i128]* %p231)
  store [256 x [256 x i128]]* %call232, [256 x [256 x i128]]** %denom_inv, align 8
  %n233 = load i128, i128* %n.bind, align 4
  %k234 = load i128, i128* %k.bind, align 4
  %v0_temp235 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_temp, align 8
  %denom_inv236 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p237 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call238 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n233, i128 %k234, [256 x [256 x i128]]* %v0_temp235, [256 x [256 x i128]]* %denom_inv236, [256 x i128]* %p237)
  store [256 x [256 x i128]]* %call238, [256 x [256 x i128]]** %v0_final, align 8
  %n239 = load i128, i128* %n.bind, align 4
  %k240 = load i128, i128* %k.bind, align 4
  %v1_temp241 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_temp, align 8
  %denom_inv242 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p243 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call244 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n239, i128 %k240, [256 x [256 x i128]]* %v1_temp241, [256 x [256 x i128]]* %denom_inv242, [256 x i128]* %p243)
  store [256 x [256 x i128]]* %call244, [256 x [256 x i128]]** %v1_final, align 8
  %n245 = load i128, i128* %n.bind, align 4
  %k246 = load i128, i128* %k.bind, align 4
  %v2_temp247 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v2_temp, align 8
  %denom_inv248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %denom_inv, align 8
  %p249 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call250 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n245, i128 %k246, [256 x [256 x i128]]* %v2_temp247, [256 x [256 x i128]]* %denom_inv248, [256 x i128]* %p249)
  store [256 x [256 x i128]]* %call250, [256 x [256 x i128]]** %v2_final, align 8
  store i128 1, i128* %i, align 4
  br label %loop.body251

loop.body251:                                     ; preds = %loop.latch280, %loop.exit143
  store i128 0, i128* %j, align 4
  br label %loop.body252

loop.body252:                                     ; preds = %loop.latch274, %loop.body251
  store i128 0, i128* %m, align 4
  br label %loop.body253

loop.body253:                                     ; preds = %loop.latch268, %loop.body252
  %i256 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i256, 1
  br i1 %sgt, label %if.true254, label %if.false255

if.true254:                                       ; preds = %loop.body253
  %ptr_getter257 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i258 = load i128, i128* %i, align 4
  %j259 = load i128, i128* %j, align 4
  %m260 = load i128, i128* %m, align 4
  %out261 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter257, i128 0, i128 %i258, i128 %j259, i128 %m260
  store i128 0, i128* %out261, align 4
  br label %if.exit267

if.false255:                                      ; preds = %loop.body253
  %ptr_getter262 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i263 = load i128, i128* %i, align 4
  %j264 = load i128, i128* %j, align 4
  %m265 = load i128, i128* %m, align 4
  %out266 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter262, i128 0, i128 %i263, i128 %j264, i128 %m265
  store i128 0, i128* %out266, align 4
  br label %if.exit267

if.exit267:                                       ; preds = %if.false255, %if.true254
  br label %loop.latch268

loop.latch268:                                    ; preds = %if.exit267
  %m269 = load i128, i128* %m, align 4
  %add270 = add i128 %m269, 1
  store i128 %add270, i128* %m, align 4
  %m271 = load i128, i128* %m, align 4
  %slt272 = icmp slt i128 %m271, 50
  br i1 %slt272, label %loop.body253, label %loop.exit273

loop.exit273:                                     ; preds = %loop.latch268
  br label %loop.latch274

loop.latch274:                                    ; preds = %loop.exit273
  %j275 = load i128, i128* %j, align 4
  %add276 = add i128 %j275, 1
  store i128 %add276, i128* %j, align 4
  %j277 = load i128, i128* %j, align 4
  %slt278 = icmp slt i128 %j277, 2
  br i1 %slt278, label %loop.body252, label %loop.exit279

loop.exit279:                                     ; preds = %loop.latch274
  br label %loop.latch280

loop.latch280:                                    ; preds = %loop.exit279
  %i281 = load i128, i128* %i, align 4
  %add282 = add i128 %i281, 2
  store i128 %add282, i128* %i, align 4
  %i283 = load i128, i128* %i, align 4
  %slt284 = icmp slt i128 %i283, 6
  br i1 %slt284, label %loop.body251, label %loop.exit285

loop.exit285:                                     ; preds = %loop.latch280
  %v0_final286 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v0_final, align 8
  %ptr_getter287 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out288 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter287, i128 0, i128 0
  %6 = bitcast [256 x [256 x i128]]* %out288 to i8*
  %7 = bitcast [256 x [256 x i128]]* %v0_final286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %v1_final289 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v1_final, align 8
  %ptr_getter290 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out291 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter290, i128 0, i128 2
  %8 = bitcast [256 x [256 x i128]]* %out291 to i8*
  %9 = bitcast [256 x [256 x i128]]* %v1_final289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %v2_final292 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %v2_final, align 8
  %ptr_getter293 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %out294 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter293, i128 0, i128 4
  %10 = bitcast [256 x [256 x i128]]* %out294 to i8*
  %11 = bitcast [256 x [256 x i128]]* %v2_final292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %out295 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out295
}

define [256 x [256 x [256 x i128]]]* @find_Fp12_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x [256 x [256 x i128]]]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %p.bind, align 8
  %a.bind = alloca [256 x [256 x [256 x i128]]]*, align 8
  store [256 x [256 x [256 x i128]]]* %3, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %B2w2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B2w21 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B2w21, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %a2 = alloca [256 x [256 x i128]]*, align 8
  %a22 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a22, [256 x [256 x i128]]** %a2, align 8
  %w2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %w23 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %w23, [256 x [256 x [256 x i128]]]** %w2, align 8
  %Bw = alloca [256 x [256 x [256 x i128]]]*, align 8
  %Bw4 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %Bw4, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %a0 = alloca [256 x [256 x i128]]*, align 8
  %a05 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a05, [256 x [256 x i128]]** %a0, align 8
  %conj = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conj6 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conj6, [256 x [256 x [256 x i128]]]** %conj, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %m = alloca i128, align 8
  store i128 0, i128* %m, align 4
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out7 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out7, [256 x [256 x [256 x i128]]]** %out, align 8
  %B2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B28 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B28, [256 x [256 x [256 x i128]]]** %B2, align 8
  %A = alloca [256 x [256 x [256 x i128]]]*, align 8
  %A9 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %A9, [256 x [256 x [256 x i128]]]** %A, align 8
  %A2 = alloca [256 x [256 x [256 x i128]]]*, align 8
  %A210 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %A210, [256 x [256 x [256 x i128]]]** %A2, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %conjProdInv = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conjProdInv11 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conjProdInv11, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %conjProd = alloca [256 x [256 x [256 x i128]]]*, align 8
  %conjProd12 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %conjProd12, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %B = alloca [256 x [256 x [256 x i128]]]*, align 8
  %B13 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %B13, [256 x [256 x [256 x i128]]]** %B, align 8
  %a1 = alloca [256 x [256 x i128]]*, align 8
  %a114 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a114, [256 x [256 x i128]]** %a1, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %A, align 8
  %uniform_array15 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array15, [256 x [256 x [256 x i128]]]** %B, align 8
  %uniform_array16 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array16, [256 x [256 x [256 x i128]]]** %Bw, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch85, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body17

loop.body17:                                      ; preds = %loop.latch79, %loop.body
  store i128 0, i128* %m, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch, %loop.body17
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %i19 = load i128, i128* %i, align 4
  %mul = mul i128 2, %i19
  %add = add i128 %mul, 1
  %j20 = load i128, i128* %j, align 4
  %m21 = load i128, i128* %m, align 4
  %A22 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %add, i128 %j20, i128 %m21
  store i128 0, i128* %A22, align 4
  %ptr_getter23 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %i24 = load i128, i128* %i, align 4
  %mul25 = mul i128 2, %i24
  %add26 = add i128 %mul25, 1
  %j27 = load i128, i128* %j, align 4
  %m28 = load i128, i128* %m, align 4
  %B29 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter23, i128 0, i128 %add26, i128 %j27, i128 %m28
  store i128 0, i128* %B29, align 4
  %a = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i30 = load i128, i128* %i, align 4
  %mul31 = mul i128 2, %i30
  %j32 = load i128, i128* %j, align 4
  %m33 = load i128, i128* %m, align 4
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a, i128 0, i128 %mul31, i128 %j32, i128 %m33
  %a34 = load i128, i128* %array_getter, align 4
  %ptr_getter35 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %i36 = load i128, i128* %i, align 4
  %mul37 = mul i128 2, %i36
  %j38 = load i128, i128* %j, align 4
  %m39 = load i128, i128* %m, align 4
  %A40 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter35, i128 0, i128 %mul37, i128 %j38, i128 %m39
  store i128 %a34, i128* %A40, align 4
  %a41 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i42 = load i128, i128* %i, align 4
  %mul43 = mul i128 2, %i42
  %add44 = add i128 %mul43, 1
  %j45 = load i128, i128* %j, align 4
  %m46 = load i128, i128* %m, align 4
  %array_getter47 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a41, i128 0, i128 %add44, i128 %j45, i128 %m46
  %a48 = load i128, i128* %array_getter47, align 4
  %ptr_getter49 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %i50 = load i128, i128* %i, align 4
  %mul51 = mul i128 2, %i50
  %j52 = load i128, i128* %j, align 4
  %m53 = load i128, i128* %m, align 4
  %B54 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter49, i128 0, i128 %mul51, i128 %j52, i128 %m53
  store i128 %a48, i128* %B54, align 4
  %ptr_getter55 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %i56 = load i128, i128* %i, align 4
  %mul57 = mul i128 2, %i56
  %j58 = load i128, i128* %j, align 4
  %m59 = load i128, i128* %m, align 4
  %Bw60 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter55, i128 0, i128 %mul57, i128 %j58, i128 %m59
  store i128 0, i128* %Bw60, align 4
  %a61 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %a.bind, align 8
  %i62 = load i128, i128* %i, align 4
  %mul63 = mul i128 2, %i62
  %add64 = add i128 %mul63, 1
  %j65 = load i128, i128* %j, align 4
  %m66 = load i128, i128* %m, align 4
  %array_getter67 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %a61, i128 0, i128 %add64, i128 %j65, i128 %m66
  %a68 = load i128, i128* %array_getter67, align 4
  %ptr_getter69 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %i70 = load i128, i128* %i, align 4
  %mul71 = mul i128 2, %i70
  %add72 = add i128 %mul71, 1
  %j73 = load i128, i128* %j, align 4
  %m74 = load i128, i128* %m, align 4
  %Bw75 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter69, i128 0, i128 %add72, i128 %j73, i128 %m74
  store i128 %a68, i128* %Bw75, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body18
  %m76 = load i128, i128* %m, align 4
  %add77 = add i128 %m76, 1
  store i128 %add77, i128* %m, align 4
  %m78 = load i128, i128* %m, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %m78, %k
  br i1 %slt, label %loop.body18, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.exit
  %j80 = load i128, i128* %j, align 4
  %add81 = add i128 %j80, 1
  store i128 %add81, i128* %j, align 4
  %j82 = load i128, i128* %j, align 4
  %slt83 = icmp slt i128 %j82, 2
  br i1 %slt83, label %loop.body17, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch79
  br label %loop.latch85

loop.latch85:                                     ; preds = %loop.exit84
  %i86 = load i128, i128* %i, align 4
  %add87 = add i128 %i86, 1
  store i128 %add87, i128* %i, align 4
  %i88 = load i128, i128* %i, align 4
  %slt89 = icmp slt i128 %i88, 3
  br i1 %slt89, label %loop.body, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch85
  %n = load i128, i128* %n.bind, align 4
  %k91 = load i128, i128* %k.bind, align 4
  %A92 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %A93 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n, i128 %k91, [256 x [256 x [256 x i128]]]* %A92, [256 x [256 x [256 x i128]]]* %A93, [256 x i128]* %p)
  store [256 x [256 x [256 x i128]]]* %call, [256 x [256 x [256 x i128]]]** %A2, align 8
  %n94 = load i128, i128* %n.bind, align 4
  %k95 = load i128, i128* %k.bind, align 4
  %B96 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %B97 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B, align 8
  %p98 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call99 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n94, i128 %k95, [256 x [256 x [256 x i128]]]* %B96, [256 x [256 x [256 x i128]]]* %B97, [256 x i128]* %p98)
  store [256 x [256 x [256 x i128]]]* %call99, [256 x [256 x [256 x i128]]]** %B2, align 8
  %n100 = load i128, i128* %n.bind, align 4
  %k101 = load i128, i128* %k.bind, align 4
  %A102 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A, align 8
  %Bw103 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %Bw, align 8
  %p104 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call105 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %n100, i128 %k101, [256 x [256 x [256 x i128]]]* %A102, [256 x [256 x [256 x i128]]]* %Bw103, [256 x i128]* %p104)
  store [256 x [256 x [256 x i128]]]* %call105, [256 x [256 x [256 x i128]]]** %conj, align 8
  %uniform_array106 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array106, [256 x [256 x [256 x i128]]]** %w2, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch139, %loop.exit90
  store i128 0, i128* %j, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch133, %loop.body107
  store i128 0, i128* %m, align 4
  br label %loop.body109

loop.body109:                                     ; preds = %loop.latch126, %loop.body108
  %i110 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i110, 2
  %j111 = load i128, i128* %j, align 4
  %eq112 = icmp eq i128 %j111, 0
  %and = and i1 %eq, %eq112
  %m113 = load i128, i128* %m, align 4
  %eq114 = icmp eq i128 %m113, 0
  %and115 = and i1 %and, %eq114
  br i1 %and115, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body109
  %ptr_getter116 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %i117 = load i128, i128* %i, align 4
  %j118 = load i128, i128* %j, align 4
  %m119 = load i128, i128* %m, align 4
  %w2120 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter116, i128 0, i128 %i117, i128 %j118, i128 %m119
  store i128 1, i128* %w2120, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body109
  %ptr_getter121 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %i122 = load i128, i128* %i, align 4
  %j123 = load i128, i128* %j, align 4
  %m124 = load i128, i128* %m, align 4
  %w2125 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter121, i128 0, i128 %i122, i128 %j123, i128 %m124
  store i128 0, i128* %w2125, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch126

loop.latch126:                                    ; preds = %if.exit
  %m127 = load i128, i128* %m, align 4
  %add128 = add i128 %m127, 1
  store i128 %add128, i128* %m, align 4
  %m129 = load i128, i128* %m, align 4
  %k130 = load i128, i128* %k.bind, align 4
  %slt131 = icmp slt i128 %m129, %k130
  br i1 %slt131, label %loop.body109, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  br label %loop.latch133

loop.latch133:                                    ; preds = %loop.exit132
  %j134 = load i128, i128* %j, align 4
  %add135 = add i128 %j134, 1
  store i128 %add135, i128* %j, align 4
  %j136 = load i128, i128* %j, align 4
  %slt137 = icmp slt i128 %j136, 2
  br i1 %slt137, label %loop.body108, label %loop.exit138

loop.exit138:                                     ; preds = %loop.latch133
  br label %loop.latch139

loop.latch139:                                    ; preds = %loop.exit138
  %i140 = load i128, i128* %i, align 4
  %add141 = add i128 %i140, 1
  store i128 %add141, i128* %i, align 4
  %i142 = load i128, i128* %i, align 4
  %slt143 = icmp slt i128 %i142, 6
  br i1 %slt143, label %loop.body107, label %loop.exit144

loop.exit144:                                     ; preds = %loop.latch139
  %n145 = load i128, i128* %n.bind, align 4
  %k146 = load i128, i128* %k.bind, align 4
  %B2147 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B2, align 8
  %w2148 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %w2, align 8
  %p149 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call150 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n145, i128 %k146, [256 x [256 x [256 x i128]]]* %B2147, [256 x [256 x [256 x i128]]]* %w2148, [256 x i128]* %p149)
  store [256 x [256 x [256 x i128]]]* %call150, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %n151 = load i128, i128* %n.bind, align 4
  %k152 = load i128, i128* %k.bind, align 4
  %A2153 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %A2, align 8
  %B2w2154 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %B2w2, align 8
  %p155 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call156 = call [256 x [256 x [256 x i128]]]* @find_Fp12_diff(i128 %n151, i128 %k152, [256 x [256 x [256 x i128]]]* %A2153, [256 x [256 x [256 x i128]]]* %B2w2154, [256 x i128]* %p155)
  store [256 x [256 x [256 x i128]]]* %call156, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %uniform_array157 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array157, [256 x [256 x i128]]** %a0, align 8
  %uniform_array158 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array158, [256 x [256 x i128]]** %a1, align 8
  %uniform_array159 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array159, [256 x [256 x i128]]** %a2, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body160

loop.body160:                                     ; preds = %loop.latch196, %loop.exit144
  store i128 0, i128* %m, align 4
  br label %loop.body161

loop.body161:                                     ; preds = %loop.latch189, %loop.body160
  %conjProd162 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i163 = load i128, i128* %i, align 4
  %m164 = load i128, i128* %m, align 4
  %array_getter165 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd162, i128 0, i128 0, i128 %i163, i128 %m164
  %conjProd166 = load i128, i128* %array_getter165, align 4
  %ptr_getter167 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %i168 = load i128, i128* %i, align 4
  %m169 = load i128, i128* %m, align 4
  %a0170 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter167, i128 0, i128 %i168, i128 %m169
  store i128 %conjProd166, i128* %a0170, align 4
  %conjProd171 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i172 = load i128, i128* %i, align 4
  %m173 = load i128, i128* %m, align 4
  %array_getter174 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd171, i128 0, i128 2, i128 %i172, i128 %m173
  %conjProd175 = load i128, i128* %array_getter174, align 4
  %ptr_getter176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %i177 = load i128, i128* %i, align 4
  %m178 = load i128, i128* %m, align 4
  %a1179 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter176, i128 0, i128 %i177, i128 %m178
  store i128 %conjProd175, i128* %a1179, align 4
  %conjProd180 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProd, align 8
  %i181 = load i128, i128* %i, align 4
  %m182 = load i128, i128* %m, align 4
  %array_getter183 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %conjProd180, i128 0, i128 4, i128 %i181, i128 %m182
  %conjProd184 = load i128, i128* %array_getter183, align 4
  %ptr_getter185 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2, align 8
  %i186 = load i128, i128* %i, align 4
  %m187 = load i128, i128* %m, align 4
  %a2188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter185, i128 0, i128 %i186, i128 %m187
  store i128 %conjProd184, i128* %a2188, align 4
  br label %loop.latch189

loop.latch189:                                    ; preds = %loop.body161
  %m190 = load i128, i128* %m, align 4
  %add191 = add i128 %m190, 1
  store i128 %add191, i128* %m, align 4
  %m192 = load i128, i128* %m, align 4
  %k193 = load i128, i128* %k.bind, align 4
  %slt194 = icmp slt i128 %m192, %k193
  br i1 %slt194, label %loop.body161, label %loop.exit195

loop.exit195:                                     ; preds = %loop.latch189
  br label %loop.latch196

loop.latch196:                                    ; preds = %loop.exit195
  %i197 = load i128, i128* %i, align 4
  %add198 = add i128 %i197, 1
  store i128 %add198, i128* %i, align 4
  %i199 = load i128, i128* %i, align 4
  %slt200 = icmp slt i128 %i199, 2
  br i1 %slt200, label %loop.body160, label %loop.exit201

loop.exit201:                                     ; preds = %loop.latch196
  %n202 = load i128, i128* %n.bind, align 4
  %k203 = load i128, i128* %k.bind, align 4
  %p204 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %a0205 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a0, align 8
  %a1206 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a1, align 8
  %a2207 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a2, align 8
  %call208 = call [256 x [256 x [256 x i128]]]* @find_Fp6_inverse(i128 %n202, i128 %k203, [256 x i128]* %p204, [256 x [256 x i128]]* %a0205, [256 x [256 x i128]]* %a1206, [256 x [256 x i128]]* %a2207)
  store [256 x [256 x [256 x i128]]]* %call208, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %n209 = load i128, i128* %n.bind, align 4
  %k210 = load i128, i128* %k.bind, align 4
  %conj211 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conj, align 8
  %conjProdInv212 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %conjProdInv, align 8
  %p213 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call214 = call [256 x [256 x [256 x i128]]]* @find_Fp12_product(i128 %n209, i128 %k210, [256 x [256 x [256 x i128]]]* %conj211, [256 x [256 x [256 x i128]]]* %conjProdInv212, [256 x i128]* %p213)
  store [256 x [256 x [256 x i128]]]* %call214, [256 x [256 x [256 x i128]]]** %out, align 8
  %out215 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out215
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
