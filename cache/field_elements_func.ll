; ModuleID = 'main'
source_filename = "main"

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

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %out = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  %temp = alloca [256 x i128]*, align 8
  %X = alloca i128, align 8
  %borrow = alloca i128, align 8
  %MAXL = alloca i128, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i4 = load i128, i128* %i, align 4
  %temp5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 %a3, i128* %temp5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i7, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k8 = load i128, i128* %k.bind, align 4
  store i128 %k8, i128* %i, align 4
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch13, %loop.exit
  %ptr_getter10 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i11 = load i128, i128* %i, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter10, i128 0, i128 %i11
  store i128 0, i128* %temp12, align 4
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.body9
  %i14 = load i128, i128* %i, align 4
  %add15 = add i128 %i14, 1
  store i128 %add15, i128* %i, align 4
  %i16 = load i128, i128* %i, align 4
  %MAXL17 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i16, %MAXL17
  br i1 %sle, label %loop.body9, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch76, %loop.exit18
  %temp20 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %temp20, i128 0, i128 %i21
  %temp23 = load i128, i128* %array_getter22, align 4
  %sge = icmp sge i128 %temp23, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body19
  %temp24 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %temp24, i128 0, i128 %i25
  %temp27 = load i128, i128* %array_getter26, align 4
  %X28 = load i128, i128* %X, align 4
  %mod = srem i128 %temp27, %X28
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i30 = load i128, i128* %i, align 4
  %out31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %i30
  store i128 %mod, i128* %out31, align 4
  %temp32 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %temp32, i128 0, i128 %add34
  %temp36 = load i128, i128* %array_getter35, align 4
  %temp37 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i38 = load i128, i128* %i, align 4
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %temp37, i128 0, i128 %i38
  %temp40 = load i128, i128* %array_getter39, align 4
  %X41 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp40, %X41
  %add42 = add i128 %temp36, %sdiv
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  %temp46 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %add45
  store i128 %add42, i128* %temp46, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body19
  %temp47 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %temp47, i128 0, i128 %i48
  %temp50 = load i128, i128* %array_getter49, align 4
  %neg = sub i128 0, %temp50
  %X51 = load i128, i128* %X, align 4
  %add52 = add i128 %neg, %X51
  %sub = sub i128 %add52, 1
  %X53 = load i128, i128* %X, align 4
  %sdiv54 = sdiv i128 %sub, %X53
  store i128 %sdiv54, i128* %borrow, align 4
  %temp55 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %temp55, i128 0, i128 %i56
  %temp58 = load i128, i128* %array_getter57, align 4
  %borrow59 = load i128, i128* %borrow, align 4
  %X60 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow59, %X60
  %add61 = add i128 %temp58, %mul
  %ptr_getter62 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i63 = load i128, i128* %i, align 4
  %out64 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter62, i128 0, i128 %i63
  store i128 %add61, i128* %out64, align 4
  %temp65 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i66 = load i128, i128* %i, align 4
  %add67 = add i128 %i66, 1
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %temp65, i128 0, i128 %add67
  %temp69 = load i128, i128* %array_getter68, align 4
  %borrow70 = load i128, i128* %borrow, align 4
  %sub71 = sub i128 %temp69, %borrow70
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  %temp75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %add74
  store i128 %sub71, i128* %temp75, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch76

loop.latch76:                                     ; preds = %if.exit
  %i77 = load i128, i128* %i, align 4
  %add78 = add i128 %i77, 1
  store i128 %add78, i128* %i, align 4
  %i79 = load i128, i128* %i, align 4
  %MAXL80 = load i128, i128* %MAXL, align 4
  %slt81 = icmp slt i128 %i79, %MAXL80
  br i1 %slt81, label %loop.body19, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  %temp85 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL86 = load i128, i128* %MAXL, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %temp85, i128 0, i128 %MAXL86
  %temp88 = load i128, i128* %array_getter87, align 4
  %sge89 = icmp sge i128 %temp88, 0
  br i1 %sge89, label %if.true83, label %if.false84

if.true83:                                        ; preds = %loop.exit82
  %ptr_getter90 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL91 = load i128, i128* %MAXL, align 4
  %out92 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter90, i128 0, i128 %MAXL91
  store i128 0, i128* %out92, align 4
  %out93 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out93

if.false84:                                       ; preds = %loop.exit82
  br label %if.exit94

if.exit94:                                        ; preds = %if.false84
  store i128 0, i128* %i, align 4
  br label %loop.body95

loop.body95:                                      ; preds = %loop.latch103, %if.exit94
  %a96 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %a96, i128 0, i128 %i97
  %a99 = load i128, i128* %array_getter98, align 4
  %ptr_getter100 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i101 = load i128, i128* %i, align 4
  %temp102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter100, i128 0, i128 %i101
  store i128 %a99, i128* %temp102, align 4
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.body95
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %k107 = load i128, i128* %k.bind, align 4
  %slt108 = icmp slt i128 %i106, %k107
  br i1 %slt108, label %loop.body95, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %k110 = load i128, i128* %k.bind, align 4
  store i128 %k110, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch115, %loop.exit109
  %ptr_getter112 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i113 = load i128, i128* %i, align 4
  %temp114 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter112, i128 0, i128 %i113
  store i128 0, i128* %temp114, align 4
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.body111
  %i116 = load i128, i128* %i, align 4
  %add117 = add i128 %i116, 1
  store i128 %add117, i128* %i, align 4
  %i118 = load i128, i128* %i, align 4
  %MAXL119 = load i128, i128* %MAXL, align 4
  %sle120 = icmp sle i128 %i118, %MAXL119
  br i1 %sle120, label %loop.body111, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch115
  store i128 0, i128* %i, align 4
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch191, %loop.exit121
  %temp125 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i126 = load i128, i128* %i, align 4
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %temp125, i128 0, i128 %i126
  %temp128 = load i128, i128* %array_getter127, align 4
  %slt129 = icmp slt i128 %temp128, 0
  br i1 %slt129, label %if.true123, label %if.false124

if.true123:                                       ; preds = %loop.body122
  %temp130 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i131 = load i128, i128* %i, align 4
  %array_getter132 = getelementptr inbounds [256 x i128], [256 x i128]* %temp130, i128 0, i128 %i131
  %temp133 = load i128, i128* %array_getter132, align 4
  %neg134 = sub i128 0, %temp133
  %X135 = load i128, i128* %X, align 4
  %sdiv136 = sdiv i128 %neg134, %X135
  store i128 %sdiv136, i128* %carry, align 4
  %temp137 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %temp137, i128 0, i128 %i138
  %temp140 = load i128, i128* %array_getter139, align 4
  %carry141 = load i128, i128* %carry, align 4
  %X142 = load i128, i128* %X, align 4
  %mul143 = mul i128 %carry141, %X142
  %add144 = add i128 %temp140, %mul143
  %ptr_getter145 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i146 = load i128, i128* %i, align 4
  %out147 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter145, i128 0, i128 %i146
  store i128 %add144, i128* %out147, align 4
  %temp148 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i149 = load i128, i128* %i, align 4
  %add150 = add i128 %i149, 1
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %temp148, i128 0, i128 %add150
  %temp152 = load i128, i128* %array_getter151, align 4
  %carry153 = load i128, i128* %carry, align 4
  %sub154 = sub i128 %temp152, %carry153
  %ptr_getter155 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  %temp158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter155, i128 0, i128 %add157
  store i128 %sub154, i128* %temp158, align 4
  br label %if.exit190

if.false124:                                      ; preds = %loop.body122
  %temp159 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i160 = load i128, i128* %i, align 4
  %array_getter161 = getelementptr inbounds [256 x i128], [256 x i128]* %temp159, i128 0, i128 %i160
  %temp162 = load i128, i128* %array_getter161, align 4
  %X163 = load i128, i128* %X, align 4
  %add164 = add i128 %temp162, %X163
  %sub165 = sub i128 %add164, 1
  %X166 = load i128, i128* %X, align 4
  %sdiv167 = sdiv i128 %sub165, %X166
  store i128 %sdiv167, i128* %borrow, align 4
  %temp168 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i169 = load i128, i128* %i, align 4
  %array_getter170 = getelementptr inbounds [256 x i128], [256 x i128]* %temp168, i128 0, i128 %i169
  %temp171 = load i128, i128* %array_getter170, align 4
  %borrow172 = load i128, i128* %borrow, align 4
  %X173 = load i128, i128* %X, align 4
  %mul174 = mul i128 %borrow172, %X173
  %sub175 = sub i128 %temp171, %mul174
  %ptr_getter176 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i177 = load i128, i128* %i, align 4
  %out178 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter176, i128 0, i128 %i177
  store i128 %sub175, i128* %out178, align 4
  %temp179 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i180 = load i128, i128* %i, align 4
  %add181 = add i128 %i180, 1
  %array_getter182 = getelementptr inbounds [256 x i128], [256 x i128]* %temp179, i128 0, i128 %add181
  %temp183 = load i128, i128* %array_getter182, align 4
  %borrow184 = load i128, i128* %borrow, align 4
  %add185 = add i128 %temp183, %borrow184
  %ptr_getter186 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i187 = load i128, i128* %i, align 4
  %add188 = add i128 %i187, 1
  %temp189 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter186, i128 0, i128 %add188
  store i128 %add185, i128* %temp189, align 4
  br label %if.exit190

if.exit190:                                       ; preds = %if.false124, %if.true123
  br label %loop.latch191

loop.latch191:                                    ; preds = %if.exit190
  %i192 = load i128, i128* %i, align 4
  %add193 = add i128 %i192, 1
  store i128 %add193, i128* %i, align 4
  %i194 = load i128, i128* %i, align 4
  %MAXL195 = load i128, i128* %MAXL, align 4
  %slt196 = icmp slt i128 %i194, %MAXL195
  br i1 %slt196, label %loop.body122, label %loop.exit197

loop.exit197:                                     ; preds = %loop.latch191
  %ptr_getter198 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL199 = load i128, i128* %MAXL, align 4
  %out200 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter198, i128 0, i128 %MAXL199
  store i128 1, i128* %out200, align 4
  %out201 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out201
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %a.bind, align 8
  %idx = alloca i128, align 8
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

define i128 @log_ceil(i128 %0) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %n_temp = alloca i128, align 8
  %i = alloca i128, align 8
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

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %z = alloca i128, align 8
  %sgn1 = alloca i128, align 8
  %sgn0 = alloca i128, align 8
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
  %diff = alloca [256 x i128]*, align 8
  %borrow = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i2 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i2, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %sge = icmp sge i128 %a6, %b9
  br i1 %sge, label %if.true3, label %if.false4

if.false:                                         ; preds = %loop.body
  %a40 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %a40, i128 0, i128 %i41
  %a43 = load i128, i128* %array_getter42, align 4
  %b44 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %b44, i128 0, i128 %i45
  %b47 = load i128, i128* %array_getter46, align 4
  %borrow48 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i49 = load i128, i128* %i, align 4
  %sub50 = sub i128 %i49, 1
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow48, i128 0, i128 %sub50
  %borrow52 = load i128, i128* %array_getter51, align 4
  %add53 = add i128 %b47, %borrow52
  %sge54 = icmp sge i128 %a43, %add53
  br i1 %sge54, label %if.true38, label %if.false39

if.true3:                                         ; preds = %if.true
  %a10 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i128 0, i128 %i11
  %a13 = load i128, i128* %array_getter12, align 4
  %b14 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %b14, i128 0, i128 %i15
  %b17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %a13, %b17
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i18 = load i128, i128* %i, align 4
  %diff19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i18
  store i128 %sub, i128* %diff19, align 4
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i21 = load i128, i128* %i, align 4
  %borrow22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i21
  store i128 0, i128* %borrow22, align 4
  br label %if.exit

if.false4:                                        ; preds = %if.true
  %a23 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %a23, i128 0, i128 %i24
  %a26 = load i128, i128* %array_getter25, align 4
  %b27 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %b27, i128 0, i128 %i28
  %b30 = load i128, i128* %array_getter29, align 4
  %sub31 = sub i128 %a26, %b30
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub31, %lshift
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i33 = load i128, i128* %i, align 4
  %diff34 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %i33
  store i128 %add, i128* %diff34, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i36 = load i128, i128* %i, align 4
  %borrow37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 1, i128* %borrow37, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false4, %if.true3
  br label %if.exit101

if.true38:                                        ; preds = %if.false
  %a55 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %a55, i128 0, i128 %i56
  %a58 = load i128, i128* %array_getter57, align 4
  %b59 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %b59, i128 0, i128 %i60
  %b62 = load i128, i128* %array_getter61, align 4
  %sub63 = sub i128 %a58, %b62
  %borrow64 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow64, i128 0, i128 %sub66
  %borrow68 = load i128, i128* %array_getter67, align 4
  %sub69 = sub i128 %sub63, %borrow68
  %ptr_getter70 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i71 = load i128, i128* %i, align 4
  %diff72 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter70, i128 0, i128 %i71
  store i128 %sub69, i128* %diff72, align 4
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i74 = load i128, i128* %i, align 4
  %borrow75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 0, i128* %borrow75, align 4
  br label %if.exit100

if.false39:                                       ; preds = %if.false
  %n76 = load i128, i128* %n.bind, align 4
  %lshift77 = shl i128 1, %n76
  %a78 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x i128], [256 x i128]* %a78, i128 0, i128 %i79
  %a81 = load i128, i128* %array_getter80, align 4
  %add82 = add i128 %lshift77, %a81
  %b83 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %b83, i128 0, i128 %i84
  %b86 = load i128, i128* %array_getter85, align 4
  %sub87 = sub i128 %add82, %b86
  %borrow88 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i89 = load i128, i128* %i, align 4
  %sub90 = sub i128 %i89, 1
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow88, i128 0, i128 %sub90
  %borrow92 = load i128, i128* %array_getter91, align 4
  %sub93 = sub i128 %sub87, %borrow92
  %ptr_getter94 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i95 = load i128, i128* %i, align 4
  %diff96 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter94, i128 0, i128 %i95
  store i128 %sub93, i128* %diff96, align 4
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i98 = load i128, i128* %i, align 4
  %borrow99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %i98
  store i128 1, i128* %borrow99, align 4
  br label %if.exit100

if.exit100:                                       ; preds = %if.false39, %if.true38
  br label %if.exit101

if.exit101:                                       ; preds = %if.exit100, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit101
  %i102 = load i128, i128* %i, align 4
  %add103 = add i128 %i102, 1
  store i128 %add103, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i104, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff105 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff105
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
  %i = alloca i128, align 8
  %temp = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i1 = load i128, i128* %i, align 4
  %out2 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i1
  store i128 0, i128* %out2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i3 = load i128, i128* %i, align 4
  %add = add i128 %i3, 1
  store i128 %add, i128* %i, align 4
  %i4 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i4, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body5

loop.body5:                                       ; preds = %loop.latch30, %loop.exit
  %out6 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out6, i128 0, i128 %i7
  %out8 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i9
  %b11 = load i128, i128* %array_getter10, align 4
  %mul = mul i128 %a, %b11
  %add12 = add i128 %out8, %mul
  store i128 %add12, i128* %temp, align 4
  %temp13 = load i128, i128* %temp, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp13, %lshift
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i15 = load i128, i128* %i, align 4
  %out16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %i15
  store i128 %mod, i128* %out16, align 4
  %out17 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i18 = load i128, i128* %i, align 4
  %add19 = add i128 %i18, 1
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out17, i128 0, i128 %add19
  %out21 = load i128, i128* %array_getter20, align 4
  %temp22 = load i128, i128* %temp, align 4
  %n23 = load i128, i128* %n.bind, align 4
  %lshift24 = shl i128 1, %n23
  %sdiv = sdiv i128 %temp22, %lshift24
  %add25 = add i128 %out21, %sdiv
  %ptr_getter26 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  %out29 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter26, i128 0, i128 %add28
  store i128 %add25, i128* %out29, align 4
  br label %loop.latch30

loop.latch30:                                     ; preds = %loop.body5
  %i31 = load i128, i128* %i, align 4
  %add32 = add i128 %i31, 1
  store i128 %add32, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt34 = icmp slt i128 %i33, %k
  br i1 %slt34, label %loop.body5, label %loop.exit35

loop.exit35:                                      ; preds = %loop.latch30
  %out36 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out36
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
  %idx = alloca i128, align 8
  %i = alloca i128, align 8
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
  %res = alloca i128, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %sum = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
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
  %add = add i128 %a2, %b5
  %carry6 = load i128, i128* %carry, align 4
  %add7 = add i128 %add, %carry6
  store i128 %add7, i128* %res, align 4
  %res8 = load i128, i128* %res, align 4
  %n = load i128, i128* %n.bind, align 4
  %n9 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %res8, i128 %n, i128 %n9)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry10 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry10, i128 0, i128 0
  %sumAndCarry12 = load i128, i128* %array_getter11, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i13 = load i128, i128* %i, align 4
  %sum14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 %sumAndCarry12, i128* %sum14, align 4
  %sumAndCarry15 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry15, i128 0, i128 1
  %sumAndCarry17 = load i128, i128* %array_getter16, align 4
  store i128 %sumAndCarry17, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i18 = load i128, i128* %i, align 4
  %add19 = add i128 %i18, 1
  store i128 %add19, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i20, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry21 = load i128, i128* %carry, align 4
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k23 = load i128, i128* %k.bind, align 4
  %sum24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %k23
  store i128 %carry21, i128* %sum24, align 4
  %sum25 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum25
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %XI0.bind = alloca i128, align 8
  store i128 %2, i128* %XI0.bind, align 4
  %i = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %XI0 = load i128, i128* %XI0.bind, align 4
  %mul = mul i128 %a2, %XI0
  %a3 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a3, i128 0, i128 1, i128 %i4
  %a6 = load i128, i128* %array_getter5, align 4
  %sub = sub i128 %mul, %a6
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i7 = load i128, i128* %i, align 4
  %out8 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0, i128 %i7
  store i128 %sub, i128* %out8, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 0, i128 %i10
  %a12 = load i128, i128* %array_getter11, align 4
  %a13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a13, i128 0, i128 1, i128 %i14
  %a16 = load i128, i128* %array_getter15, align 4
  %XI017 = load i128, i128* %XI0.bind, align 4
  %mul18 = mul i128 %a16, %XI017
  %add = add i128 %a12, %mul18
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i20 = load i128, i128* %i, align 4
  %out21 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1, i128 %i20
  store i128 %add, i128* %out21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i24, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out25 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out25
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
  %sumAndCarry = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  %i = alloca i128, align 8
  %sum = alloca [256 x i128]*, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
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
  %add = add i128 %a2, %b5
  %c = load [256 x i128]*, [256 x i128]** %c.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i6
  %c8 = load i128, i128* %array_getter7, align 4
  %add9 = add i128 %add, %c8
  %d = load [256 x i128]*, [256 x i128]** %d.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i10
  %d12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add9, %d12
  %carry14 = load i128, i128* %carry, align 4
  %add15 = add i128 %add13, %carry14
  %n = load i128, i128* %n.bind, align 4
  %n16 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add15, i128 %n, i128 %n16)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry17 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry17, i128 0, i128 0
  %sumAndCarry19 = load i128, i128* %array_getter18, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i20 = load i128, i128* %i, align 4
  %sum21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i20
  store i128 %sumAndCarry19, i128* %sum21, align 4
  %sumAndCarry22 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry22, i128 0, i128 1
  %sumAndCarry24 = load i128, i128* %array_getter23, align 4
  store i128 %sumAndCarry24, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i25 = load i128, i128* %i, align 4
  %add26 = add i128 %i25, 1
  store i128 %add26, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i27, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry28 = load i128, i128* %carry, align 4
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k30 = load i128, i128* %k.bind, align 4
  %sum31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %k30
  store i128 %carry28, i128* %sum31, align 4
  %sum32 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum32
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
  %sum = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i1 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %k2.bind, align 4
  %slt = icmp slt i128 %i1, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i4
  %b6 = load i128, i128* %array_getter5, align 4
  %add = add i128 %a3, %b6
  %carry7 = load i128, i128* %carry, align 4
  %add8 = add i128 %add, %carry7
  %n = load i128, i128* %n.bind, align 4
  %n9 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add8, i128 %n, i128 %n9)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry10 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry10, i128 0, i128 0
  %sumAndCarry12 = load i128, i128* %array_getter11, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i13 = load i128, i128* %i, align 4
  %sum14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 %sumAndCarry12, i128* %sum14, align 4
  %sumAndCarry15 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry15, i128 0, i128 1
  %sumAndCarry17 = load i128, i128* %array_getter16, align 4
  store i128 %sumAndCarry17, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a18 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %a18, i128 0, i128 %i19
  %a21 = load i128, i128* %array_getter20, align 4
  %carry22 = load i128, i128* %carry, align 4
  %add23 = add i128 %a21, %carry22
  %n24 = load i128, i128* %n.bind, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %call26 = call [2 x i128]* @SplitFn(i128 %add23, i128 %n24, i128 %n25)
  %memcpy_ptr27 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr27 to i8*
  %8 = bitcast [2 x i128]* %call26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry28 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry28, i128 0, i128 0
  %sumAndCarry30 = load i128, i128* %array_getter29, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i32 = load i128, i128* %i, align 4
  %sum33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 %sumAndCarry30, i128* %sum33, align 4
  %sumAndCarry34 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry34, i128 0, i128 1
  %sumAndCarry36 = load i128, i128* %array_getter35, align 4
  store i128 %sumAndCarry36, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %k1.bind, align 4
  %slt40 = icmp slt i128 %i39, %k1
  br i1 %slt40, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry41 = load i128, i128* %carry, align 4
  %ptr_getter42 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k143 = load i128, i128* %k1.bind, align 4
  %sum44 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter42, i128 0, i128 %k143
  store i128 %carry41, i128* %sum44, align 4
  %sum45 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum45
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
  %mult = alloca [256 x i128]*, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a1 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a1, %lshift
  %a2 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k3 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k3, 1
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i128 0, i128 %sub
  %a5 = load i128, i128* %array_getter4, align 4
  %add = add i128 %mul, %a5
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k6 = load i128, i128* %k.bind, align 4
  %sub7 = sub i128 %k6, 1
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub7
  %b9 = load i128, i128* %array_getter8, align 4
  %sdiv = sdiv i128 %add, %b9
  store i128 %sdiv, i128* %qhat, align 4
  %qhat10 = load i128, i128* %qhat, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %lshift12 = shl i128 1, %n11
  %sub13 = sub i128 %lshift12, 1
  %sgt = icmp sgt i128 %qhat10, %sub13
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n14 = load i128, i128* %n.bind, align 4
  %lshift15 = shl i128 1, %n14
  %sub16 = sub i128 %lshift15, 1
  store i128 %sub16, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %qhat19 = load i128, i128* %qhat, align 4
  %b20 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n17, i128 %k18, i128 %qhat19, [256 x i128]* %b20)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %add25 = add i128 %k24, 1
  %mult26 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a27 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call28 = call i128 @long_gt(i128 %n23, i128 %add25, [256 x i128]* %mult26, [256 x i128]* %a27)
  %eq = icmp eq i128 %call28, 1
  br i1 %eq, label %if.true21, label %if.false22

if.true21:                                        ; preds = %if.exit
  %n29 = load i128, i128* %n.bind, align 4
  %k30 = load i128, i128* %k.bind, align 4
  %add31 = add i128 %k30, 1
  %mult32 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b33 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call34 = call [256 x i128]* @long_sub(i128 %n29, i128 %add31, [256 x i128]* %mult32, [256 x i128]* %b33)
  store [256 x i128]* %call34, [256 x i128]** %mult, align 8
  %n37 = load i128, i128* %n.bind, align 4
  %k38 = load i128, i128* %k.bind, align 4
  %add39 = add i128 %k38, 1
  %mult40 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a41 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call42 = call i128 @long_gt(i128 %n37, i128 %add39, [256 x i128]* %mult40, [256 x i128]* %a41)
  %eq43 = icmp eq i128 %call42, 1
  br i1 %eq43, label %if.true35, label %if.false36

if.false22:                                       ; preds = %if.exit
  %qhat48 = load i128, i128* %qhat, align 4
  ret i128 %qhat48

if.true35:                                        ; preds = %if.true21
  %qhat44 = load i128, i128* %qhat, align 4
  %sub45 = sub i128 %qhat44, 2
  ret i128 %sub45

if.false36:                                       ; preds = %if.true21
  %qhat46 = load i128, i128* %qhat, align 4
  %sub47 = sub i128 %qhat46, 1
  ret i128 %sub47
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
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter2 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b3 = load [256 x i128], [256 x i128]* %array_getter2, align 4
  %spice_inline_array4 = alloca [256 x i128], align 8
  store [256 x i128] %b3, [256 x i128]* %spice_inline_array4, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_sub_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array4, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out5 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %b12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b12, i128 0, i128 1
  %b14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %b14, [256 x i128]* %spice_inline_array15, align 4
  %p16 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call17 = call [256 x i128]* @long_sub_mod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15, [256 x i128]* %p16)
  %ptr_getter18 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter18, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out19 to i8*
  %8 = bitcast [256 x i128]* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out20
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
  %sumAndCarry = alloca [256 x i128]*, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %a_idx = alloca i128, align 8
  %i = alloca i128, align 8
  %carry = alloca [256 x i128]*, align 8
  %out = alloca [256 x i128]*, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch53, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i1 = load i128, i128* %i, align 4
  %prod_val2 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i1
  store i128 0, i128* %prod_val2, align 4
  %i3 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i3, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body4

if.false:                                         ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %sub24 = sub i128 %i22, %k23
  %add25 = add i128 %sub24, 1
  store i128 %add25, i128* %a_idx, align 4
  br label %loop.body26

loop.body4:                                       ; preds = %loop.latch, %if.true
  %prod_val5 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val5, i128 0, i128 %i6
  %prod_val7 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx8 = load i128, i128* %a_idx, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx8
  %a10 = load i128, i128* %array_getter9, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %a_idx12 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i11, %a_idx12
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %a10, %b14
  %add = add i128 %prod_val7, %mul
  %ptr_getter15 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i16 = load i128, i128* %i, align 4
  %prod_val17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter15, i128 0, i128 %i16
  store i128 %add, i128* %prod_val17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body4
  %a_idx18 = load i128, i128* %a_idx, align 4
  %add19 = add i128 %a_idx18, 1
  store i128 %add19, i128* %a_idx, align 4
  %a_idx20 = load i128, i128* %a_idx, align 4
  %i21 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx20, %i21
  br i1 %sle, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body26:                                      ; preds = %loop.latch46, %if.false
  %prod_val27 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val27, i128 0, i128 %i28
  %prod_val30 = load i128, i128* %array_getter29, align 4
  %a31 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx32 = load i128, i128* %a_idx, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %a_idx32
  %a34 = load i128, i128* %array_getter33, align 4
  %b35 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i36 = load i128, i128* %i, align 4
  %a_idx37 = load i128, i128* %a_idx, align 4
  %sub38 = sub i128 %i36, %a_idx37
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %b35, i128 0, i128 %sub38
  %b40 = load i128, i128* %array_getter39, align 4
  %mul41 = mul i128 %a34, %b40
  %add42 = add i128 %prod_val30, %mul41
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i44 = load i128, i128* %i, align 4
  %prod_val45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %i44
  store i128 %add42, i128* %prod_val45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body26
  %a_idx47 = load i128, i128* %a_idx, align 4
  %add48 = add i128 %a_idx47, 1
  store i128 %add48, i128* %a_idx, align 4
  %a_idx49 = load i128, i128* %a_idx, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %slt51 = icmp slt i128 %a_idx49, %k50
  br i1 %slt51, label %loop.body26, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  br label %if.exit

if.exit:                                          ; preds = %loop.exit52, %loop.exit
  br label %loop.latch53

loop.latch53:                                     ; preds = %if.exit
  %i54 = load i128, i128* %i, align 4
  %add55 = add i128 %i54, 1
  store i128 %add55, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %k57 = load i128, i128* %k.bind, align 4
  %mul58 = mul i128 2, %k57
  %sub59 = sub i128 %mul58, 1
  %slt60 = icmp slt i128 %i56, %sub59
  br i1 %slt60, label %loop.body, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch53
  %uniform_array62 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array62, [256 x i128]** %out, align 8
  %uniform_array63 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array63, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch74, %loop.exit61
  %prod_val65 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val65, i128 0, i128 %i66
  %prod_val68 = load i128, i128* %array_getter67, align 4
  %n = load i128, i128* %n.bind, align 4
  %n69 = load i128, i128* %n.bind, align 4
  %n70 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val68, i128 %n, i128 %n69, i128 %n70)
  %ptr_getter71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i72 = load i128, i128* %i, align 4
  %split73 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter71, i128 0, i128 %i72
  %4 = bitcast [256 x i128]* %split73 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body64
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %mul79 = mul i128 2, %k78
  %sub80 = sub i128 %mul79, 1
  %slt81 = icmp slt i128 %i77, %sub80
  br i1 %slt81, label %loop.body64, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch74
  %uniform_array83 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array83, [256 x i128]** %carry, align 8
  %ptr_getter84 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry85 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter84, i128 0, i128 0
  store i128 0, i128* %carry85, align 4
  %split86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split86, i128 0, i128 0, i128 0
  %split88 = load i128, i128* %array_getter87, align 4
  %ptr_getter89 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter89, i128 0, i128 0
  store i128 %split88, i128* %out90, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %mul94 = mul i128 2, %k93
  %sub95 = sub i128 %mul94, 1
  %sgt = icmp sgt i128 %sub95, 1
  br i1 %sgt, label %if.true91, label %if.false92

if.true91:                                        ; preds = %loop.exit82
  %split96 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split96, i128 0, i128 0, i128 1
  %split98 = load i128, i128* %array_getter97, align 4
  %split99 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter100 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split99, i128 0, i128 1, i128 0
  %split101 = load i128, i128* %array_getter100, align 4
  %add102 = add i128 %split98, %split101
  %n103 = load i128, i128* %n.bind, align 4
  %n104 = load i128, i128* %n.bind, align 4
  %call105 = call [2 x i128]* @SplitFn(i128 %add102, i128 %n103, i128 %n104)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry106 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter107 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry106, i128 0, i128 0
  %sumAndCarry108 = load i128, i128* %array_getter107, align 4
  %ptr_getter109 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out110 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter109, i128 0, i128 1
  store i128 %sumAndCarry108, i128* %out110, align 4
  %sumAndCarry111 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry111, i128 0, i128 1
  %sumAndCarry113 = load i128, i128* %array_getter112, align 4
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry115 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 1
  store i128 %sumAndCarry113, i128* %carry115, align 4
  br label %if.exit116

if.false92:                                       ; preds = %loop.exit82
  br label %if.exit116

if.exit116:                                       ; preds = %if.false92, %if.true91
  %k119 = load i128, i128* %k.bind, align 4
  %mul120 = mul i128 2, %k119
  %sub121 = sub i128 %mul120, 1
  %sgt122 = icmp sgt i128 %sub121, 2
  br i1 %sgt122, label %if.true117, label %if.false118

if.true117:                                       ; preds = %if.exit116
  store i128 2, i128* %i, align 4
  br label %loop.body123

if.false118:                                      ; preds = %if.exit116
  br label %if.exit196

loop.body123:                                     ; preds = %loop.latch162, %if.true117
  %split124 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split124, i128 0, i128 %i125, i128 0
  %split127 = load i128, i128* %array_getter126, align 4
  %split128 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i129 = load i128, i128* %i, align 4
  %sub130 = sub i128 %i129, 1
  %array_getter131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split128, i128 0, i128 %sub130, i128 1
  %split132 = load i128, i128* %array_getter131, align 4
  %add133 = add i128 %split127, %split132
  %split134 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i135 = load i128, i128* %i, align 4
  %sub136 = sub i128 %i135, 2
  %array_getter137 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split134, i128 0, i128 %sub136, i128 2
  %split138 = load i128, i128* %array_getter137, align 4
  %add139 = add i128 %add133, %split138
  %carry140 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i141 = load i128, i128* %i, align 4
  %sub142 = sub i128 %i141, 1
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %carry140, i128 0, i128 %sub142
  %carry144 = load i128, i128* %array_getter143, align 4
  %add145 = add i128 %add139, %carry144
  %n146 = load i128, i128* %n.bind, align 4
  %n147 = load i128, i128* %n.bind, align 4
  %call148 = call [2 x i128]* @SplitFn(i128 %add145, i128 %n146, i128 %n147)
  %memcpy_ptr149 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr149 to i8*
  %9 = bitcast [2 x i128]* %call148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry150 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry150, i128 0, i128 0
  %sumAndCarry152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i154 = load i128, i128* %i, align 4
  %out155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %sumAndCarry152, i128* %out155, align 4
  %sumAndCarry156 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry156, i128 0, i128 1
  %sumAndCarry158 = load i128, i128* %array_getter157, align 4
  %ptr_getter159 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i160 = load i128, i128* %i, align 4
  %carry161 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter159, i128 0, i128 %i160
  store i128 %sumAndCarry158, i128* %carry161, align 4
  br label %loop.latch162

loop.latch162:                                    ; preds = %loop.body123
  %i163 = load i128, i128* %i, align 4
  %add164 = add i128 %i163, 1
  store i128 %add164, i128* %i, align 4
  %i165 = load i128, i128* %i, align 4
  %k166 = load i128, i128* %k.bind, align 4
  %mul167 = mul i128 2, %k166
  %sub168 = sub i128 %mul167, 1
  %slt169 = icmp slt i128 %i165, %sub168
  br i1 %slt169, label %loop.body123, label %loop.exit170

loop.exit170:                                     ; preds = %loop.latch162
  %split171 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k172 = load i128, i128* %k.bind, align 4
  %mul173 = mul i128 2, %k172
  %sub174 = sub i128 %mul173, 2
  %array_getter175 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split171, i128 0, i128 %sub174, i128 1
  %split176 = load i128, i128* %array_getter175, align 4
  %split177 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k178 = load i128, i128* %k.bind, align 4
  %mul179 = mul i128 2, %k178
  %sub180 = sub i128 %mul179, 3
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split177, i128 0, i128 %sub180, i128 2
  %split182 = load i128, i128* %array_getter181, align 4
  %add183 = add i128 %split176, %split182
  %carry184 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k185 = load i128, i128* %k.bind, align 4
  %mul186 = mul i128 2, %k185
  %sub187 = sub i128 %mul186, 2
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %carry184, i128 0, i128 %sub187
  %carry189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %add183, %carry189
  %ptr_getter191 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k192 = load i128, i128* %k.bind, align 4
  %mul193 = mul i128 2, %k192
  %sub194 = sub i128 %mul193, 1
  %out195 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter191, i128 0, i128 %sub194
  store i128 %add190, i128* %out195, align 4
  br label %if.exit196

if.exit196:                                       ; preds = %if.false118, %loop.exit170
  %out197 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out197
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
  %j = alloca i128, align 8
  %i1 = alloca i128, align 8
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %i = alloca i128, align 8
  %i2 = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %j1 = alloca i128, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %carry = alloca [256 x [256 x i128]]*, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %j2 = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch8, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j3 = load i128, i128* %j, align 4
  %i4 = load i128, i128* %i, align 4
  %prod_val5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j3, i128 %i4
  store i128 0, i128* %prod_val5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body1
  %j6 = load i128, i128* %j, align 4
  %add = add i128 %j6, 1
  store i128 %add, i128* %j, align 4
  %j7 = load i128, i128* %j, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j7, %sub
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch8

loop.latch8:                                      ; preds = %loop.exit
  %i9 = load i128, i128* %i, align 4
  %add10 = add i128 %i9, 1
  store i128 %add10, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul12 = mul i128 2, %k
  %sub13 = sub i128 %mul12, 1
  %slt14 = icmp slt i128 %i11, %sub13
  br i1 %slt14, label %loop.body, label %loop.exit15

loop.exit15:                                      ; preds = %loop.latch8
  store i128 0, i128* %i1, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch67, %loop.exit15
  store i128 0, i128* %i2, align 4
  br label %loop.body17

loop.body17:                                      ; preds = %loop.latch60, %loop.body16
  store i128 0, i128* %j1, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch53, %loop.body17
  store i128 0, i128* %j2, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch46, %loop.body18
  %prod_val20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j121 = load i128, i128* %j1, align 4
  %j222 = load i128, i128* %j2, align 4
  %add23 = add i128 %j121, %j222
  %i124 = load i128, i128* %i1, align 4
  %i225 = load i128, i128* %i2, align 4
  %add26 = add i128 %i124, %i225
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val20, i128 0, i128 %add23, i128 %add26
  %prod_val27 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %j128 = load i128, i128* %j1, align 4
  %i129 = load i128, i128* %i1, align 4
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j128, i128 %i129
  %a31 = load i128, i128* %array_getter30, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j232 = load i128, i128* %j2, align 4
  %i233 = load i128, i128* %i2, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j232, i128 %i233
  %b35 = load i128, i128* %array_getter34, align 4
  %mul36 = mul i128 %a31, %b35
  %add37 = add i128 %prod_val27, %mul36
  %ptr_getter38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j139 = load i128, i128* %j1, align 4
  %j240 = load i128, i128* %j2, align 4
  %add41 = add i128 %j139, %j240
  %i142 = load i128, i128* %i1, align 4
  %i243 = load i128, i128* %i2, align 4
  %add44 = add i128 %i142, %i243
  %prod_val45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter38, i128 0, i128 %add41, i128 %add44
  store i128 %add37, i128* %prod_val45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body19
  %j247 = load i128, i128* %j2, align 4
  %add48 = add i128 %j247, 1
  store i128 %add48, i128* %j2, align 4
  %j249 = load i128, i128* %j2, align 4
  %l50 = load i128, i128* %l.bind, align 4
  %slt51 = icmp slt i128 %j249, %l50
  br i1 %slt51, label %loop.body19, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.exit52
  %j154 = load i128, i128* %j1, align 4
  %add55 = add i128 %j154, 1
  store i128 %add55, i128* %j1, align 4
  %j156 = load i128, i128* %j1, align 4
  %l57 = load i128, i128* %l.bind, align 4
  %slt58 = icmp slt i128 %j156, %l57
  br i1 %slt58, label %loop.body18, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.exit59
  %i261 = load i128, i128* %i2, align 4
  %add62 = add i128 %i261, 1
  store i128 %add62, i128* %i2, align 4
  %i263 = load i128, i128* %i2, align 4
  %k64 = load i128, i128* %k.bind, align 4
  %slt65 = icmp slt i128 %i263, %k64
  br i1 %slt65, label %loop.body17, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch60
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.exit66
  %i168 = load i128, i128* %i1, align 4
  %add69 = add i128 %i168, 1
  store i128 %add69, i128* %i1, align 4
  %i170 = load i128, i128* %i1, align 4
  %k71 = load i128, i128* %k.bind, align 4
  %slt72 = icmp slt i128 %i170, %k71
  br i1 %slt72, label %loop.body16, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  %uniform_array74 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array74, [256 x [256 x i128]]** %out, align 8
  %uniform_array75 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array75, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch98, %loop.exit73
  store i128 0, i128* %i, align 4
  br label %loop.body77

loop.body77:                                      ; preds = %loop.latch89, %loop.body76
  %prod_val78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j79 = load i128, i128* %j, align 4
  %i80 = load i128, i128* %i, align 4
  %array_getter81 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val78, i128 0, i128 %j79, i128 %i80
  %prod_val82 = load i128, i128* %array_getter81, align 4
  %n = load i128, i128* %n.bind, align 4
  %n83 = load i128, i128* %n.bind, align 4
  %n84 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val82, i128 %n, i128 %n83, i128 %n84)
  %ptr_getter85 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j86 = load i128, i128* %j, align 4
  %i87 = load i128, i128* %i, align 4
  %split88 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter85, i128 0, i128 %j86, i128 %i87
  %5 = bitcast [256 x i128]* %split88 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body77
  %i90 = load i128, i128* %i, align 4
  %add91 = add i128 %i90, 1
  store i128 %add91, i128* %i, align 4
  %i92 = load i128, i128* %i, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %mul94 = mul i128 2, %k93
  %sub95 = sub i128 %mul94, 1
  %slt96 = icmp slt i128 %i92, %sub95
  br i1 %slt96, label %loop.body77, label %loop.exit97

loop.exit97:                                      ; preds = %loop.latch89
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.exit97
  %j99 = load i128, i128* %j, align 4
  %add100 = add i128 %j99, 1
  store i128 %add100, i128* %j, align 4
  %j101 = load i128, i128* %j, align 4
  %l102 = load i128, i128* %l.bind, align 4
  %mul103 = mul i128 2, %l102
  %sub104 = sub i128 %mul103, 1
  %slt105 = icmp slt i128 %j101, %sub104
  br i1 %slt105, label %loop.body76, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch98
  %uniform_array107 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array107, [256 x [256 x i128]]** %carry, align 8
  %uniform_array108 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array108, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body109

loop.body109:                                     ; preds = %loop.latch247, %loop.exit106
  %ptr_getter110 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j111 = load i128, i128* %j, align 4
  %carry112 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter110, i128 0, i128 %j111, i128 0
  store i128 0, i128* %carry112, align 4
  %split113 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j114 = load i128, i128* %j, align 4
  %array_getter115 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split113, i128 0, i128 %j114, i128 0, i128 0
  %split116 = load i128, i128* %array_getter115, align 4
  %ptr_getter117 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j118 = load i128, i128* %j, align 4
  %out119 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter117, i128 0, i128 %j118, i128 0
  store i128 %split116, i128* %out119, align 4
  %k120 = load i128, i128* %k.bind, align 4
  %mul121 = mul i128 2, %k120
  %sub122 = sub i128 %mul121, 1
  %sgt = icmp sgt i128 %sub122, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body109
  %split123 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j124 = load i128, i128* %j, align 4
  %array_getter125 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split123, i128 0, i128 %j124, i128 0, i128 1
  %split126 = load i128, i128* %array_getter125, align 4
  %split127 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j129 = load i128, i128* %j, align 4
  %array_getter130 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split127, i128 0, i128 %j129, i128 1, i128 0
  %split131 = load i128, i128* %array_getter130, align 4
  %add132 = add i128 %split126, %split131
  %n133 = load i128, i128* %n.bind, align 4
  %n134 = load i128, i128* %n.bind, align 4
  %call135 = call [2 x i128]* @SplitFn(i128 %add132, i128 %n133, i128 %n134)
  %ptr_getter136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j137 = load i128, i128* %j, align 4
  %sumAndCarry138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter136, i128 0, i128 %j137
  %7 = bitcast [256 x i128]* %sumAndCarry138 to i8*
  %8 = bitcast [2 x i128]* %call135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j140 = load i128, i128* %j, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry139, i128 0, i128 %j140, i128 0
  %sumAndCarry142 = load i128, i128* %array_getter141, align 4
  %ptr_getter143 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j144 = load i128, i128* %j, align 4
  %out145 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter143, i128 0, i128 %j144, i128 1
  store i128 %sumAndCarry142, i128* %out145, align 4
  %sumAndCarry146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j147 = load i128, i128* %j, align 4
  %array_getter148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry146, i128 0, i128 %j147, i128 1
  %sumAndCarry149 = load i128, i128* %array_getter148, align 4
  %ptr_getter150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j151 = load i128, i128* %j, align 4
  %carry152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter150, i128 0, i128 %j151, i128 1
  store i128 %sumAndCarry149, i128* %carry152, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body109
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k155 = load i128, i128* %k.bind, align 4
  %mul156 = mul i128 2, %k155
  %sub157 = sub i128 %mul156, 1
  %sgt158 = icmp sgt i128 %sub157, 2
  br i1 %sgt158, label %if.true153, label %if.false154

if.true153:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body159

if.false154:                                      ; preds = %if.exit
  br label %if.exit246

loop.body159:                                     ; preds = %loop.latch208, %if.true153
  %split160 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j161 = load i128, i128* %j, align 4
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split160, i128 0, i128 %j161, i128 %i162, i128 0
  %split164 = load i128, i128* %array_getter163, align 4
  %split165 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j166 = load i128, i128* %j, align 4
  %i167 = load i128, i128* %i, align 4
  %sub168 = sub i128 %i167, 1
  %array_getter169 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split165, i128 0, i128 %j166, i128 %sub168, i128 1
  %split170 = load i128, i128* %array_getter169, align 4
  %add171 = add i128 %split164, %split170
  %split172 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j173 = load i128, i128* %j, align 4
  %i174 = load i128, i128* %i, align 4
  %sub175 = sub i128 %i174, 2
  %array_getter176 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split172, i128 0, i128 %j173, i128 %sub175, i128 2
  %split177 = load i128, i128* %array_getter176, align 4
  %add178 = add i128 %add171, %split177
  %carry179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j180 = load i128, i128* %j, align 4
  %i181 = load i128, i128* %i, align 4
  %sub182 = sub i128 %i181, 1
  %array_getter183 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry179, i128 0, i128 %j180, i128 %sub182
  %carry184 = load i128, i128* %array_getter183, align 4
  %add185 = add i128 %add178, %carry184
  %n186 = load i128, i128* %n.bind, align 4
  %n187 = load i128, i128* %n.bind, align 4
  %call188 = call [2 x i128]* @SplitFn(i128 %add185, i128 %n186, i128 %n187)
  %ptr_getter189 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j190 = load i128, i128* %j, align 4
  %sumAndCarry191 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter189, i128 0, i128 %j190
  %9 = bitcast [256 x i128]* %sumAndCarry191 to i8*
  %10 = bitcast [2 x i128]* %call188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry192 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j193 = load i128, i128* %j, align 4
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry192, i128 0, i128 %j193, i128 0
  %sumAndCarry195 = load i128, i128* %array_getter194, align 4
  %ptr_getter196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j197 = load i128, i128* %j, align 4
  %i198 = load i128, i128* %i, align 4
  %out199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter196, i128 0, i128 %j197, i128 %i198
  store i128 %sumAndCarry195, i128* %out199, align 4
  %sumAndCarry200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j201 = load i128, i128* %j, align 4
  %array_getter202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry200, i128 0, i128 %j201, i128 1
  %sumAndCarry203 = load i128, i128* %array_getter202, align 4
  %ptr_getter204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j205 = load i128, i128* %j, align 4
  %i206 = load i128, i128* %i, align 4
  %carry207 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter204, i128 0, i128 %j205, i128 %i206
  store i128 %sumAndCarry203, i128* %carry207, align 4
  br label %loop.latch208

loop.latch208:                                    ; preds = %loop.body159
  %i209 = load i128, i128* %i, align 4
  %add210 = add i128 %i209, 1
  store i128 %add210, i128* %i, align 4
  %i211 = load i128, i128* %i, align 4
  %k212 = load i128, i128* %k.bind, align 4
  %mul213 = mul i128 2, %k212
  %sub214 = sub i128 %mul213, 1
  %slt215 = icmp slt i128 %i211, %sub214
  br i1 %slt215, label %loop.body159, label %loop.exit216

loop.exit216:                                     ; preds = %loop.latch208
  %split217 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j218 = load i128, i128* %j, align 4
  %k219 = load i128, i128* %k.bind, align 4
  %mul220 = mul i128 2, %k219
  %sub221 = sub i128 %mul220, 2
  %array_getter222 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split217, i128 0, i128 %j218, i128 %sub221, i128 1
  %split223 = load i128, i128* %array_getter222, align 4
  %split224 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j225 = load i128, i128* %j, align 4
  %k226 = load i128, i128* %k.bind, align 4
  %mul227 = mul i128 2, %k226
  %sub228 = sub i128 %mul227, 3
  %array_getter229 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split224, i128 0, i128 %j225, i128 %sub228, i128 2
  %split230 = load i128, i128* %array_getter229, align 4
  %add231 = add i128 %split223, %split230
  %carry232 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j233 = load i128, i128* %j, align 4
  %k234 = load i128, i128* %k.bind, align 4
  %mul235 = mul i128 2, %k234
  %sub236 = sub i128 %mul235, 2
  %array_getter237 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry232, i128 0, i128 %j233, i128 %sub236
  %carry238 = load i128, i128* %array_getter237, align 4
  %add239 = add i128 %add231, %carry238
  %ptr_getter240 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j241 = load i128, i128* %j, align 4
  %k242 = load i128, i128* %k.bind, align 4
  %mul243 = mul i128 2, %k242
  %sub244 = sub i128 %mul243, 1
  %out245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter240, i128 0, i128 %j241, i128 %sub244
  store i128 %add239, i128* %out245, align 4
  br label %if.exit246

if.exit246:                                       ; preds = %if.false154, %loop.exit216
  br label %loop.latch247

loop.latch247:                                    ; preds = %if.exit246
  %j248 = load i128, i128* %j, align 4
  %add249 = add i128 %j248, 1
  store i128 %add249, i128* %j, align 4
  %j250 = load i128, i128* %j, align 4
  %l251 = load i128, i128* %l.bind, align 4
  %mul252 = mul i128 2, %l251
  %sub253 = sub i128 %mul252, 1
  %slt254 = icmp slt i128 %j250, %sub253
  br i1 %slt254, label %loop.body109, label %loop.exit255

loop.exit255:                                     ; preds = %loop.latch247
  %out256 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out256
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
  %ret = alloca i128, align 8
  %scale = alloca i128, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b1 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b1
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n2 = load i128, i128* %n.bind, align 4
  %k3 = load i128, i128* %k.bind, align 4
  %add4 = add i128 %k3, 1
  %scale5 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n2, i128 %add4, i128 %scale5, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %scale8 = load i128, i128* %scale, align 4
  %b9 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call10 = call [256 x i128]* @long_scalar_mult(i128 %n6, i128 %k7, i128 %scale8, [256 x i128]* %b9)
  store [256 x i128]* %call10, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b11 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k12 = load i128, i128* %k.bind, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b11, i128 0, i128 %k12
  %norm_b14 = load i128, i128* %array_getter13, align 4
  %ne = icmp ne i128 %norm_b14, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n15 = load i128, i128* %n.bind, align 4
  %k16 = load i128, i128* %k.bind, align 4
  %add17 = add i128 %k16, 1
  %norm_a18 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b19 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call20 = call i128 @short_div_norm(i128 %n15, i128 %add17, [256 x i128]* %norm_a18, [256 x i128]* %norm_b19)
  store i128 %call20, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n21 = load i128, i128* %n.bind, align 4
  %k22 = load i128, i128* %k.bind, align 4
  %norm_a23 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b24 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call25 = call i128 @short_div_norm(i128 %n21, i128 %k22, [256 x i128]* %norm_a23, [256 x i128]* %norm_b24)
  store i128 %call25, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret26 = load i128, i128* %ret, align 4
  ret i128 %ret26
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
  %out = alloca [256 x [256 x i128]]*, align 8
  %remainder = alloca [256 x i128]*, align 8
  %dividend = alloca [256 x i128]*, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %mult_shift = alloca [256 x i128]*, align 8
  %j = alloca i128, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i4 = load i128, i128* %i, align 4
  %remainder5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 %a3, i128* %remainder5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %add8 = add i128 %m, %k
  %slt = icmp slt i128 %i7, %add8
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array9 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array9, [256 x i128]** %dividend, align 8
  %m10 = load i128, i128* %m.bind, align 4
  store i128 %m10, i128* %i, align 4
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch110, %loop.exit
  %i12 = load i128, i128* %i, align 4
  %m13 = load i128, i128* %m.bind, align 4
  %eq = icmp eq i128 %i12, %m13
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body11
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k15 = load i128, i128* %k.bind, align 4
  %dividend16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %k15
  store i128 0, i128* %dividend16, align 4
  %k17 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k17, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body18

if.false:                                         ; preds = %loop.body11
  %k33 = load i128, i128* %k.bind, align 4
  store i128 %k33, i128* %j, align 4
  br label %loop.body34

loop.body18:                                      ; preds = %loop.latch28, %if.true
  %remainder19 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j20 = load i128, i128* %j, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %add22 = add i128 %j20, %m21
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder19, i128 0, i128 %add22
  %remainder24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j26 = load i128, i128* %j, align 4
  %dividend27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %j26
  store i128 %remainder24, i128* %dividend27, align 4
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.body18
  %j29 = load i128, i128* %j, align 4
  %sub30 = sub i128 %j29, 1
  store i128 %sub30, i128* %j, align 4
  %j31 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j31, 0
  br i1 %sge, label %loop.body18, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch28
  br label %if.exit

loop.body34:                                      ; preds = %loop.latch44, %if.false
  %remainder35 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j36 = load i128, i128* %j, align 4
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %j36, %i37
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder35, i128 0, i128 %add38
  %remainder40 = load i128, i128* %array_getter39, align 4
  %ptr_getter41 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j42 = load i128, i128* %j, align 4
  %dividend43 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter41, i128 0, i128 %j42
  store i128 %remainder40, i128* %dividend43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body34
  %j45 = load i128, i128* %j, align 4
  %sub46 = sub i128 %j45, 1
  store i128 %sub46, i128* %j, align 4
  %j47 = load i128, i128* %j, align 4
  %sge48 = icmp sge i128 %j47, 0
  br i1 %sge48, label %loop.body34, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  br label %if.exit

if.exit:                                          ; preds = %loop.exit49, %loop.exit32
  %n = load i128, i128* %n.bind, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %dividend51 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call i128 @short_div(i128 %n, i128 %k50, [256 x i128]* %dividend51, [256 x i128]* %b)
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i53 = load i128, i128* %i, align 4
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 0, i128 %i53
  store i128 %call, i128* %out54, align 4
  %n55 = load i128, i128* %n.bind, align 4
  %k56 = load i128, i128* %k.bind, align 4
  %out57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out57, i128 0, i128 0, i128 %i58
  %out60 = load i128, i128* %array_getter59, align 4
  %b61 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call62 = call [256 x i128]* @long_scalar_mult(i128 %n55, i128 %k56, i128 %out60, [256 x i128]* %b61)
  store [256 x i128]* %call62, [256 x i128]** %mult_shift, align 8
  %uniform_array63 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array63, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch68, %if.exit
  %ptr_getter65 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j66 = load i128, i128* %j, align 4
  %subtrahend67 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter65, i128 0, i128 %j66
  store i128 0, i128* %subtrahend67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body64
  %j69 = load i128, i128* %j, align 4
  %add70 = add i128 %j69, 1
  store i128 %add70, i128* %j, align 4
  %j71 = load i128, i128* %j, align 4
  %m72 = load i128, i128* %m.bind, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %add74 = add i128 %m72, %k73
  %slt75 = icmp slt i128 %j71, %add74
  br i1 %slt75, label %loop.body64, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch68
  store i128 0, i128* %j, align 4
  br label %loop.body77

loop.body77:                                      ; preds = %loop.latch97, %loop.exit76
  %i80 = load i128, i128* %i, align 4
  %j81 = load i128, i128* %j, align 4
  %add82 = add i128 %i80, %j81
  %m83 = load i128, i128* %m.bind, align 4
  %k84 = load i128, i128* %k.bind, align 4
  %add85 = add i128 %m83, %k84
  %slt86 = icmp slt i128 %add82, %add85
  br i1 %slt86, label %if.true78, label %if.false79

if.true78:                                        ; preds = %loop.body77
  %mult_shift87 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j88 = load i128, i128* %j, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift87, i128 0, i128 %j88
  %mult_shift90 = load i128, i128* %array_getter89, align 4
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i92 = load i128, i128* %i, align 4
  %j93 = load i128, i128* %j, align 4
  %add94 = add i128 %i92, %j93
  %subtrahend95 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %add94
  store i128 %mult_shift90, i128* %subtrahend95, align 4
  br label %if.exit96

if.false79:                                       ; preds = %loop.body77
  br label %if.exit96

if.exit96:                                        ; preds = %if.false79, %if.true78
  br label %loop.latch97

loop.latch97:                                     ; preds = %if.exit96
  %j98 = load i128, i128* %j, align 4
  %add99 = add i128 %j98, 1
  store i128 %add99, i128* %j, align 4
  %j100 = load i128, i128* %j, align 4
  %k101 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %j100, %k101
  br i1 %sle, label %loop.body77, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch97
  %n103 = load i128, i128* %n.bind, align 4
  %m104 = load i128, i128* %m.bind, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %add106 = add i128 %m104, %k105
  %remainder107 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend108 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call109 = call [256 x i128]* @long_sub(i128 %n103, i128 %add106, [256 x i128]* %remainder107, [256 x i128]* %subtrahend108)
  store [256 x i128]* %call109, [256 x i128]** %remainder, align 8
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.exit102
  %i111 = load i128, i128* %i, align 4
  %sub112 = sub i128 %i111, 1
  store i128 %sub112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %sge114 = icmp sge i128 %i113, 0
  br i1 %sge114, label %loop.body11, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  store i128 0, i128* %i, align 4
  br label %loop.body116

loop.body116:                                     ; preds = %loop.latch124, %loop.exit115
  %remainder117 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i118 = load i128, i128* %i, align 4
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder117, i128 0, i128 %i118
  %remainder120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i122 = load i128, i128* %i, align 4
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter121, i128 0, i128 1, i128 %i122
  store i128 %remainder120, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body116
  %i125 = load i128, i128* %i, align 4
  %add126 = add i128 %i125, 1
  store i128 %add126, i128* %i, align 4
  %i127 = load i128, i128* %i, align 4
  %k128 = load i128, i128* %k.bind, align 4
  %slt129 = icmp slt i128 %i127, %k128
  br i1 %slt129, label %loop.body116, label %loop.exit130

loop.exit130:                                     ; preds = %loop.latch124
  %ptr_getter131 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k132 = load i128, i128* %k.bind, align 4
  %out133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter131, i128 0, i128 1, i128 %k132
  store i128 0, i128* %out133, align 4
  %out134 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out134
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
  %sum = alloca [256 x i128]*, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %sum3 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call4 = call [256 x [256 x i128]]* @long_div2(i128 %n1, i128 %k2, i128 1, [256 x i128]* %sum3, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call4, [256 x [256 x i128]]** %temp, align 8
  %temp5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp5, i128 0, i128 1
  %temp6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp6, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
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
  %Y_is_zero = alloca i128, align 8
  %a_short = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %i = alloca i128, align 8
  %a_pos = alloca [256 x i128]*, align 8
  %X = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %n, i128 %k, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %a_short, align 8
  %a_short1 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a_short1, i128 0, i128 50
  %a_short2 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short2, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a_short5 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 %m, [256 x i128]* %a_short5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %out, align 8
  br label %if.exit124

if.false:                                         ; preds = %entry
  %uniform_array7 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array7, [256 x i128]** %a_pos, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %a_short8 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %a_short8, i128 0, i128 %i9
  %a_short11 = load i128, i128* %array_getter10, align 4
  %neg = sub i128 0, %a_short11
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %i12 = load i128, i128* %i, align 4
  %a_pos13 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i12
  store i128 %neg, i128* %a_pos13, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i14 = load i128, i128* %i, align 4
  %add = add i128 %i14, 1
  store i128 %add, i128* %i, align 4
  %i15 = load i128, i128* %i, align 4
  %k16 = load i128, i128* %k.bind, align 4
  %m17 = load i128, i128* %m.bind, align 4
  %add18 = add i128 %k16, %m17
  %slt = icmp slt i128 %i15, %add18
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n19 = load i128, i128* %n.bind, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %a_pos22 = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %p23 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call24 = call [256 x [256 x i128]]* @long_div2(i128 %n19, i128 %k20, i128 %m21, [256 x i128]* %a_pos22, [256 x i128]* %p23)
  store [256 x [256 x i128]]* %call24, [256 x [256 x i128]]** %X, align 8
  store i128 1, i128* %Y_is_zero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body25

loop.body25:                                      ; preds = %loop.latch32, %loop.exit
  %X28 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X28, i128 0, i128 1, i128 %i29
  %X31 = load i128, i128* %array_getter30, align 4
  %ne = icmp ne i128 %X31, 0
  br i1 %ne, label %if.true26, label %if.false27

if.true26:                                        ; preds = %loop.body25
  store i128 0, i128* %Y_is_zero, align 4
  br label %if.exit

if.false27:                                       ; preds = %loop.body25
  br label %if.exit

if.exit:                                          ; preds = %if.false27, %if.true26
  br label %loop.latch32

loop.latch32:                                     ; preds = %if.exit
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  store i128 %add34, i128* %i, align 4
  %i35 = load i128, i128* %i, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %slt37 = icmp slt i128 %i35, %k36
  br i1 %slt37, label %loop.body25, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch32
  %Y_is_zero41 = load i128, i128* %Y_is_zero, align 4
  %eq42 = icmp eq i128 %Y_is_zero41, 1
  br i1 %eq42, label %if.true39, label %if.false40

if.true39:                                        ; preds = %loop.exit38
  %X43 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X43, i128 0, i128 1
  %X45 = load [256 x i128], [256 x i128]* %array_getter44, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X45, [256 x i128]* %spice_inline_array, align 4
  %ptr_getter46 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter46, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out47 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit107

if.false40:                                       ; preds = %loop.exit38
  %n48 = load i128, i128* %n.bind, align 4
  %k49 = load i128, i128* %k.bind, align 4
  %p50 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %X51 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter52 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X51, i128 0, i128 1
  %X53 = load [256 x i128], [256 x i128]* %array_getter52, align 4
  %spice_inline_array54 = alloca [256 x i128], align 8
  store [256 x i128] %X53, [256 x i128]* %spice_inline_array54, align 4
  %call55 = call [256 x i128]* @long_sub(i128 %n48, i128 %k49, [256 x i128]* %p50, [256 x i128]* %spice_inline_array54)
  %ptr_getter56 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter56, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out57 to i8*
  %8 = bitcast [256 x i128]* %call55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %X58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X58, i128 0, i128 0, i128 0
  %X60 = load i128, i128* %array_getter59, align 4
  %add61 = add i128 %X60, 1
  %ptr_getter62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %X63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter62, i128 0, i128 0, i128 0
  store i128 %add61, i128* %X63, align 4
  %X66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter67 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X66, i128 0, i128 0, i128 0
  %X68 = load i128, i128* %array_getter67, align 4
  %n69 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n69
  %sge = icmp sge i128 %X68, %lshift
  br i1 %sge, label %if.true64, label %if.false65

if.true64:                                        ; preds = %if.false40
  store i128 0, i128* %i, align 4
  br label %loop.body70

if.false65:                                       ; preds = %if.false40
  br label %if.exit106

loop.body70:                                      ; preds = %loop.latch98, %if.true64
  %X71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X71, i128 0, i128 0, i128 %i72
  %X74 = load i128, i128* %array_getter73, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %lshift76 = shl i128 1, %n75
  %sdiv = sdiv i128 %X74, %lshift76
  store i128 %sdiv, i128* %carry, align 4
  %X77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i78 = load i128, i128* %i, align 4
  %add79 = add i128 %i78, 1
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X77, i128 0, i128 0, i128 %add79
  %X81 = load i128, i128* %array_getter80, align 4
  %carry82 = load i128, i128* %carry, align 4
  %add83 = add i128 %X81, %carry82
  %ptr_getter84 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i85 = load i128, i128* %i, align 4
  %add86 = add i128 %i85, 1
  %X87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter84, i128 0, i128 0, i128 %add86
  store i128 %add83, i128* %X87, align 4
  %X88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X88, i128 0, i128 0, i128 %i89
  %X91 = load i128, i128* %array_getter90, align 4
  %carry92 = load i128, i128* %carry, align 4
  %n93 = load i128, i128* %n.bind, align 4
  %lshift94 = shl i128 1, %n93
  %mul = mul i128 %carry92, %lshift94
  %sub = sub i128 %X91, %mul
  %ptr_getter95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i96 = load i128, i128* %i, align 4
  %X97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter95, i128 0, i128 0, i128 %i96
  store i128 %sub, i128* %X97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body70
  %i99 = load i128, i128* %i, align 4
  %add100 = add i128 %i99, 1
  store i128 %add100, i128* %i, align 4
  %i101 = load i128, i128* %i, align 4
  %m102 = load i128, i128* %m.bind, align 4
  %sub103 = sub i128 %m102, 1
  %slt104 = icmp slt i128 %i101, %sub103
  br i1 %slt104, label %loop.body70, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch98
  br label %if.exit106

if.exit106:                                       ; preds = %if.false65, %loop.exit105
  br label %if.exit107

if.exit107:                                       ; preds = %if.exit106, %if.true39
  store i128 0, i128* %i, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch117, %if.exit107
  %X109 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i110 = load i128, i128* %i, align 4
  %array_getter111 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X109, i128 0, i128 0, i128 %i110
  %X112 = load i128, i128* %array_getter111, align 4
  %neg113 = sub i128 0, %X112
  %ptr_getter114 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i115 = load i128, i128* %i, align 4
  %out116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter114, i128 0, i128 0, i128 %i115
  store i128 %neg113, i128* %out116, align 4
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.body108
  %i118 = load i128, i128* %i, align 4
  %add119 = add i128 %i118, 1
  store i128 %add119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %m121 = load i128, i128* %m.bind, align 4
  %slt122 = icmp slt i128 %i120, %m121
  br i1 %slt122, label %loop.body108, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  br label %if.exit124

if.exit124:                                       ; preds = %loop.exit123, %if.true
  %out125 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out125
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
  %i = alloca i128, align 8
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i1
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n, i128 %k, i128 %m, [256 x i128]* %spice_inline_array, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i3 = load i128, i128* %i, align 4
  %out4 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i3
  %5 = bitcast [256 x [256 x i128]]* %out4 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i5 = load i128, i128* %i, align 4
  %add = add i128 %i5, 1
  store i128 %add, i128* %i, align 4
  %i6 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i6, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out7 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out7
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
  %out = alloca [256 x i128]*, align 8
  %eBits = alloca [256 x i128]*, align 8
  %j = alloca i128, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp = alloca [256 x i128]*, align 8
  %bitlength = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i2
  %e3 = load i128, i128* %array_getter, align 4
  %j4 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e3, %j4
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j5 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i6 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i6
  %add = add i128 %j5, %mul
  %eBits7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits7, align 4
  %eBits8 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j9 = load i128, i128* %j, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %i11 = load i128, i128* %i, align 4
  %mul12 = mul i128 %n10, %i11
  %add13 = add i128 %j9, %mul12
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits8, i128 0, i128 %add13
  %eBits15 = load i128, i128* %array_getter14, align 4
  %eq = icmp eq i128 %eBits15, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %n.bind, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %add21 = add i128 %add20, 1
  store i128 %add21, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j22 = load i128, i128* %j, align 4
  %add23 = add i128 %j22, 1
  store i128 %add23, i128* %j, align 4
  %j24 = load i128, i128* %j, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j24, %n25
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt30 = icmp slt i128 %i29, %k
  br i1 %slt30, label %loop.body, label %loop.exit31

loop.exit31:                                      ; preds = %loop.latch26
  %uniform_array32 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array32, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch37, %loop.exit31
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i35 = load i128, i128* %i, align 4
  %out36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 0, i128* %out36, align 4
  br label %loop.latch37

loop.latch37:                                     ; preds = %loop.body33
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %slt41 = icmp slt i128 %i40, 50
  br i1 %slt41, label %loop.body33, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch37
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out44 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 0
  store i128 1, i128* %out44, align 4
  %bitlength45 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength45, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body46

loop.body46:                                      ; preds = %loop.latch87, %loop.exit42
  %eBits49 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits49, i128 0, i128 %i50
  %eBits52 = load i128, i128* %array_getter51, align 4
  %eq53 = icmp eq i128 %eBits52, 1
  br i1 %eq53, label %if.true47, label %if.false48

if.true47:                                        ; preds = %loop.body46
  %uniform_array54 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array54, [256 x i128]** %temp, align 8
  %n55 = load i128, i128* %n.bind, align 4
  %k56 = load i128, i128* %k.bind, align 4
  %out57 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n55, i128 %k56, [256 x i128]* %out57, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array58 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array58, [256 x [256 x i128]]** %temp2, align 8
  %n59 = load i128, i128* %n.bind, align 4
  %k60 = load i128, i128* %k.bind, align 4
  %temp61 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call62 = call [256 x [256 x i128]]* @long_div(i128 %n59, i128 %k60, [256 x i128]* %temp61, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call62, [256 x [256 x i128]]** %temp2, align 8
  %temp263 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp263, i128 0, i128 1
  %temp265 = load [256 x i128], [256 x i128]* %array_getter64, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp265, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit66

if.false48:                                       ; preds = %loop.body46
  br label %if.exit66

if.exit66:                                        ; preds = %if.false48, %if.true47
  %i69 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i69, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %uniform_array70 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array70, [256 x i128]** %temp, align 8
  %n71 = load i128, i128* %n.bind, align 4
  %k72 = load i128, i128* %k.bind, align 4
  %out73 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out74 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call75 = call [256 x i128]* @prod(i128 %n71, i128 %k72, [256 x i128]* %out73, [256 x i128]* %out74)
  store [256 x i128]* %call75, [256 x i128]** %temp, align 8
  %uniform_array76 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array76, [256 x [256 x i128]]** %temp2, align 8
  %n77 = load i128, i128* %n.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %temp79 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p80 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %n77, i128 %k78, [256 x i128]* %temp79, [256 x i128]* %p80)
  store [256 x [256 x i128]]* %call81, [256 x [256 x i128]]** %temp2, align 8
  %temp282 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp282, i128 0, i128 1
  %temp284 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %temp284, [256 x i128]* %spice_inline_array85, align 4
  store [256 x i128]* %spice_inline_array85, [256 x i128]** %out, align 8
  br label %if.exit86

if.false68:                                       ; preds = %if.exit66
  br label %if.exit86

if.exit86:                                        ; preds = %if.false68, %if.true67
  br label %loop.latch87

loop.latch87:                                     ; preds = %if.exit86
  %i88 = load i128, i128* %i, align 4
  %sub89 = sub i128 %i88, 1
  store i128 %sub89, i128* %i, align 4
  %i90 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i90, 0
  br i1 %sge, label %loop.body46, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch87
  %out92 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out92
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
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter2 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b3 = load [256 x i128], [256 x i128]* %array_getter2, align 4
  %spice_inline_array4 = alloca [256 x i128], align 8
  store [256 x i128] %b3, [256 x i128]* %spice_inline_array4, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_add_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array4, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out5 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %b12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b12, i128 0, i128 1
  %b14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %b14, [256 x i128]* %spice_inline_array15, align 4
  %p16 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call17 = call [256 x i128]* @long_add_mod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15, [256 x i128]* %p16)
  %ptr_getter18 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter18, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out19 to i8*
  %8 = bitcast [256 x i128]* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out20
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
  %prod = alloca [256 x i128]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %prod3 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call4 = call [256 x [256 x i128]]* @long_div(i128 %n1, i128 %k2, [256 x i128]* %prod3, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call4, [256 x [256 x i128]]** %temp, align 8
  %temp5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp5, i128 0, i128 1
  %temp6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp6, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
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
  %u = alloca [256 x i128]*, align 8
  %x = alloca [256 x i128]*, align 8
  %ka = alloca i128, align 8
  %l = alloca i128, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %ret = alloca [256 x i128]*, align 8
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %b = alloca [256 x i128]*, align 8
  %y = alloca [256 x i128]*, align 8
  %newv = alloca [256 x i128]*, align 8
  %q = alloca [256 x i128]*, align 8
  %newu = alloca [256 x i128]*, align 8
  %a = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %v = alloca [256 x i128]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %num = load [256 x i128]*, [256 x i128]** %num.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 0, [256 x i128]* %num, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %amodp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %a, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %b, align 8
  %uniform_array2 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array2, [256 x i128]** %x, align 8
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %y, align 8
  %uniform_array4 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array4, [256 x i128]** %u, align 8
  %uniform_array5 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array5, [256 x i128]** %v, align 8
  %uniform_array6 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array6, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %amodp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %amodp, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %amodp7, i128 0, i128 1, i128 %i8
  %amodp9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a, align 8
  %i10 = load i128, i128* %i, align 4
  %a11 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i10
  store i128 %amodp9, i128* %a11, align 4
  %p12 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %p12, i128 0, i128 %i13
  %p15 = load i128, i128* %array_getter14, align 4
  %ptr_getter16 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i17 = load i128, i128* %i, align 4
  %b18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter16, i128 0, i128 %i17
  store i128 %p15, i128* %b18, align 4
  %ptr_getter19 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i20 = load i128, i128* %i, align 4
  %x21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter19, i128 0, i128 %i20
  store i128 0, i128* %x21, align 4
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i23 = load i128, i128* %i, align 4
  %y24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 0, i128* %y24, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i26 = load i128, i128* %i, align 4
  %u27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %i26
  store i128 0, i128* %u27, align 4
  %ptr_getter28 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i29 = load i128, i128* %i, align 4
  %v30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter28, i128 0, i128 %i29
  store i128 0, i128* %v30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i31 = load i128, i128* %i, align 4
  %add = add i128 %i31, 1
  store i128 %add, i128* %i, align 4
  %i32 = load i128, i128* %i, align 4
  %k33 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i32, %k33
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %y, align 8
  %y35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 0
  store i128 1, i128* %y35, align 4
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %u, align 8
  %u37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 0
  store i128 1, i128* %u37, align 4
  store i128 0, i128* %l, align 4
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch195, %loop.exit
  store i128 0, i128* %ka, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.body38
  %a40 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %a40, i128 0, i128 %i41
  %a43 = load i128, i128* %array_getter42, align 4
  %ne = icmp ne i128 %a43, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body39
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %ka, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body39
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch46

loop.latch46:                                     ; preds = %if.exit
  %i47 = load i128, i128* %i, align 4
  %add48 = add i128 %i47, 1
  store i128 %add48, i128* %i, align 4
  %i49 = load i128, i128* %i, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %slt51 = icmp slt i128 %i49, %k50
  br i1 %slt51, label %loop.body39, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  %ka55 = load i128, i128* %ka, align 4
  %eq = icmp eq i128 %ka55, 0
  br i1 %eq, label %if.true53, label %if.false54

if.true53:                                        ; preds = %loop.exit52
  store i128 0, i128* %i, align 4
  br label %loop.body56

if.false54:                                       ; preds = %loop.exit52
  br label %if.exit72

loop.body56:                                      ; preds = %loop.latch64, %if.true53
  %x57 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %x57, i128 0, i128 %i58
  %x60 = load i128, i128* %array_getter59, align 4
  %ptr_getter61 = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i62 = load i128, i128* %i, align 4
  %ret63 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter61, i128 0, i128 %i62
  store i128 %x60, i128* %ret63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body56
  %i65 = load i128, i128* %i, align 4
  %add66 = add i128 %i65, 1
  store i128 %add66, i128* %i, align 4
  %i67 = load i128, i128* %i, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %slt69 = icmp slt i128 %i67, %k68
  br i1 %slt69, label %loop.body56, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  %ret71 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret71

if.exit72:                                        ; preds = %if.false54
  %n73 = load i128, i128* %n.bind, align 4
  %ka74 = load i128, i128* %ka, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %ka76 = load i128, i128* %ka, align 4
  %sub = sub i128 %k75, %ka76
  %b77 = load [256 x i128]*, [256 x i128]** %b, align 8
  %a78 = load [256 x i128]*, [256 x i128]** %a, align 8
  %call79 = call [256 x [256 x i128]]* @long_div2(i128 %n73, i128 %ka74, i128 %sub, [256 x i128]* %b77, [256 x i128]* %a78)
  store [256 x [256 x i128]]* %call79, [256 x [256 x i128]]** %r, align 8
  %uniform_array80 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array80, [256 x i128]** %q, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body81

loop.body81:                                      ; preds = %loop.latch89, %if.exit72
  %r82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i83 = load i128, i128* %i, align 4
  %array_getter84 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r82, i128 0, i128 0, i128 %i83
  %r85 = load i128, i128* %array_getter84, align 4
  %ptr_getter86 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i87 = load i128, i128* %i, align 4
  %q88 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter86, i128 0, i128 %i87
  store i128 %r85, i128* %q88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body81
  %i90 = load i128, i128* %i, align 4
  %add91 = add i128 %i90, 1
  store i128 %add91, i128* %i, align 4
  %i92 = load i128, i128* %i, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %ka94 = load i128, i128* %ka, align 4
  %sub95 = sub i128 %k93, %ka94
  %add96 = add i128 %sub95, 1
  %slt97 = icmp slt i128 %i92, %add96
  br i1 %slt97, label %loop.body81, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch89
  %k99 = load i128, i128* %k.bind, align 4
  %ka100 = load i128, i128* %ka, align 4
  %sub101 = sub i128 %k99, %ka100
  %add102 = add i128 %sub101, 1
  store i128 %add102, i128* %i, align 4
  br label %loop.body103

loop.body103:                                     ; preds = %loop.latch107, %loop.exit98
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i105 = load i128, i128* %i, align 4
  %q106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i105
  store i128 0, i128* %q106, align 4
  br label %loop.latch107

loop.latch107:                                    ; preds = %loop.body103
  %i108 = load i128, i128* %i, align 4
  %add109 = add i128 %i108, 1
  store i128 %add109, i128* %i, align 4
  %i110 = load i128, i128* %i, align 4
  %k111 = load i128, i128* %k.bind, align 4
  %slt112 = icmp slt i128 %i110, %k111
  br i1 %slt112, label %loop.body103, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch107
  %n114 = load i128, i128* %n.bind, align 4
  %k115 = load i128, i128* %k.bind, align 4
  %x116 = load [256 x i128]*, [256 x i128]** %x, align 8
  %n117 = load i128, i128* %n.bind, align 4
  %k118 = load i128, i128* %k.bind, align 4
  %u119 = load [256 x i128]*, [256 x i128]** %u, align 8
  %q120 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p121 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call122 = call [256 x i128]* @prod_mod(i128 %n117, i128 %k118, [256 x i128]* %u119, [256 x i128]* %q120, [256 x i128]* %p121)
  %p123 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call124 = call [256 x i128]* @long_sub_mod(i128 %n114, i128 %k115, [256 x i128]* %x116, [256 x i128]* %call122, [256 x i128]* %p123)
  store [256 x i128]* %call124, [256 x i128]** %newu, align 8
  %n125 = load i128, i128* %n.bind, align 4
  %k126 = load i128, i128* %k.bind, align 4
  %y127 = load [256 x i128]*, [256 x i128]** %y, align 8
  %n128 = load i128, i128* %n.bind, align 4
  %k129 = load i128, i128* %k.bind, align 4
  %v130 = load [256 x i128]*, [256 x i128]** %v, align 8
  %q131 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p132 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call133 = call [256 x i128]* @prod_mod(i128 %n128, i128 %k129, [256 x i128]* %v130, [256 x i128]* %q131, [256 x i128]* %p132)
  %p134 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call135 = call [256 x i128]* @long_sub_mod(i128 %n125, i128 %k126, [256 x i128]* %y127, [256 x i128]* %call133, [256 x i128]* %p134)
  store [256 x i128]* %call135, [256 x i128]** %newv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body136

loop.body136:                                     ; preds = %loop.latch188, %loop.exit113
  %a137 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %a137, i128 0, i128 %i138
  %a140 = load i128, i128* %array_getter139, align 4
  %ptr_getter141 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i142 = load i128, i128* %i, align 4
  %b143 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter141, i128 0, i128 %i142
  store i128 %a140, i128* %b143, align 4
  %i146 = load i128, i128* %i, align 4
  %ka147 = load i128, i128* %ka, align 4
  %slt148 = icmp slt i128 %i146, %ka147
  br i1 %slt148, label %if.true144, label %if.false145

if.true144:                                       ; preds = %loop.body136
  %r149 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r149, i128 0, i128 1, i128 %i150
  %r152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i154 = load i128, i128* %i, align 4
  %a155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %r152, i128* %a155, align 4
  br label %if.exit159

if.false145:                                      ; preds = %loop.body136
  %ptr_getter156 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i157 = load i128, i128* %i, align 4
  %a158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter156, i128 0, i128 %i157
  store i128 0, i128* %a158, align 4
  br label %if.exit159

if.exit159:                                       ; preds = %if.false145, %if.true144
  %u160 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i161 = load i128, i128* %i, align 4
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %u160, i128 0, i128 %i161
  %u163 = load i128, i128* %array_getter162, align 4
  %ptr_getter164 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i165 = load i128, i128* %i, align 4
  %x166 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter164, i128 0, i128 %i165
  store i128 %u163, i128* %x166, align 4
  %v167 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i168 = load i128, i128* %i, align 4
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %v167, i128 0, i128 %i168
  %v170 = load i128, i128* %array_getter169, align 4
  %ptr_getter171 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i172 = load i128, i128* %i, align 4
  %y173 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter171, i128 0, i128 %i172
  store i128 %v170, i128* %y173, align 4
  %newu174 = load [256 x i128]*, [256 x i128]** %newu, align 8
  %i175 = load i128, i128* %i, align 4
  %array_getter176 = getelementptr inbounds [256 x i128], [256 x i128]* %newu174, i128 0, i128 %i175
  %newu177 = load i128, i128* %array_getter176, align 4
  %ptr_getter178 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i179 = load i128, i128* %i, align 4
  %u180 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter178, i128 0, i128 %i179
  store i128 %newu177, i128* %u180, align 4
  %newv181 = load [256 x i128]*, [256 x i128]** %newv, align 8
  %i182 = load i128, i128* %i, align 4
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %newv181, i128 0, i128 %i182
  %newv184 = load i128, i128* %array_getter183, align 4
  %ptr_getter185 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i186 = load i128, i128* %i, align 4
  %v187 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter185, i128 0, i128 %i186
  store i128 %newv184, i128* %v187, align 4
  br label %loop.latch188

loop.latch188:                                    ; preds = %if.exit159
  %i189 = load i128, i128* %i, align 4
  %add190 = add i128 %i189, 1
  store i128 %add190, i128* %i, align 4
  %i191 = load i128, i128* %i, align 4
  %k192 = load i128, i128* %k.bind, align 4
  %slt193 = icmp slt i128 %i191, %k192
  br i1 %slt193, label %loop.body136, label %loop.exit194

loop.exit194:                                     ; preds = %loop.latch188
  br label %loop.latch195

loop.latch195:                                    ; preds = %loop.exit194
  %l196 = load i128, i128* %l, align 4
  %add197 = add i128 %l196, 1
  store i128 %add197, i128* %l, align 4
  %l198 = load i128, i128* %l, align 4
  %slt199 = icmp slt i128 %l198, 1000
  br i1 %slt199, label %loop.body38, label %loop.exit200

loop.exit200:                                     ; preds = %loop.latch195
  %ret201 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret201
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
  %j = alloca i128, align 8
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array1, [256 x [256 x [256 x i128]]]** %ab, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch14, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body2

loop.body2:                                       ; preds = %loop.latch, %loop.body
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i3
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j5 = load i128, i128* %j, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j5
  %b7 = load [256 x i128], [256 x i128]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x i128], align 8
  store [256 x i128] %b7, [256 x i128]* %spice_inline_array8, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @prod_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array8, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %i9 = load i128, i128* %i, align 4
  %j10 = load i128, i128* %j, align 4
  %ab11 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i9, i128 %j10
  %5 = bitcast [256 x i128]* %ab11 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body2
  %j12 = load i128, i128* %j, align 4
  %add = add i128 %j12, 1
  store i128 %add, i128* %j, align 4
  %j13 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j13, 2
  br i1 %slt, label %loop.body2, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch14

loop.latch14:                                     ; preds = %loop.exit
  %i15 = load i128, i128* %i, align 4
  %add16 = add i128 %i15, 1
  store i128 %add16, i128* %i, align 4
  %i17 = load i128, i128* %i, align 4
  %slt18 = icmp slt i128 %i17, 2
  br i1 %slt18, label %loop.body, label %loop.exit19

loop.exit19:                                      ; preds = %loop.latch14
  %n20 = load i128, i128* %n.bind, align 4
  %k21 = load i128, i128* %k.bind, align 4
  %ab22 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter23 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab22, i128 0, i128 0, i128 0
  %ab24 = load [256 x i128], [256 x i128]* %array_getter23, align 4
  %spice_inline_array25 = alloca [256 x i128], align 8
  store [256 x i128] %ab24, [256 x i128]* %spice_inline_array25, align 4
  %ab26 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab26, i128 0, i128 1, i128 1
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %p30 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call31 = call [256 x i128]* @long_sub_mod(i128 %n20, i128 %k21, [256 x i128]* %spice_inline_array25, [256 x i128]* %spice_inline_array29, [256 x i128]* %p30)
  %ptr_getter32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out33 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter32, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out33 to i8*
  %8 = bitcast [256 x i128]* %call31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n34 = load i128, i128* %n.bind, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %ab36 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter37 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab36, i128 0, i128 0, i128 1
  %ab38 = load [256 x i128], [256 x i128]* %array_getter37, align 4
  %spice_inline_array39 = alloca [256 x i128], align 8
  store [256 x i128] %ab38, [256 x i128]* %spice_inline_array39, align 4
  %ab40 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab40, i128 0, i128 1, i128 0
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %p44 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call45 = call [256 x i128]* @long_add_mod(i128 %n34, i128 %k35, [256 x i128]* %spice_inline_array39, [256 x i128]* %spice_inline_array43, [256 x i128]* %p44)
  %ptr_getter46 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter46, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out47 to i8*
  %10 = bitcast [256 x i128]* %call45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out48
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
  %eBits = alloca [256 x i128]*, align 8
  %bitLength = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %j = alloca i128, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitLength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i2
  %e3 = load i128, i128* %array_getter, align 4
  %j4 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e3, %j4
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j5 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i6 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i6
  %add = add i128 %j5, %mul
  %eBits7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits7, align 4
  %eBits8 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j9 = load i128, i128* %j, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %i11 = load i128, i128* %i, align 4
  %mul12 = mul i128 %n10, %i11
  %add13 = add i128 %j9, %mul12
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits8, i128 0, i128 %add13
  %eBits15 = load i128, i128* %array_getter14, align 4
  %eq = icmp eq i128 %eBits15, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %n.bind, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %add21 = add i128 %add20, 1
  store i128 %add21, i128* %bitLength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j22 = load i128, i128* %j, align 4
  %add23 = add i128 %j22, 1
  store i128 %add23, i128* %j, align 4
  %j24 = load i128, i128* %j, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j24, %n25
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul30 = mul i128 2, %k
  %slt31 = icmp slt i128 %i29, %mul30
  br i1 %slt31, label %loop.body, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch26
  %uniform_array33 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array33, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch41, %loop.exit32
  %ptr_getter35 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i36 = load i128, i128* %i, align 4
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter35, i128 0, i128 0, i128 %i36
  store i128 0, i128* %out37, align 4
  %ptr_getter38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i39 = load i128, i128* %i, align 4
  %out40 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter38, i128 0, i128 1, i128 %i39
  store i128 0, i128* %out40, align 4
  br label %loop.latch41

loop.latch41:                                     ; preds = %loop.body34
  %i42 = load i128, i128* %i, align 4
  %add43 = add i128 %i42, 1
  store i128 %add43, i128* %i, align 4
  %i44 = load i128, i128* %i, align 4
  %slt45 = icmp slt i128 %i44, 50
  br i1 %slt45, label %loop.body34, label %loop.exit46

loop.exit46:                                      ; preds = %loop.latch41
  %ptr_getter47 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out48 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter47, i128 0, i128 0, i128 0
  store i128 1, i128* %out48, align 4
  %bitLength49 = load i128, i128* %bitLength, align 4
  %sub = sub i128 %bitLength49, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch72, %loop.exit46
  %eBits53 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits53, i128 0, i128 %i54
  %eBits56 = load i128, i128* %array_getter55, align 4
  %eq57 = icmp eq i128 %eBits56, 1
  br i1 %eq57, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %n58 = load i128, i128* %n.bind, align 4
  %k59 = load i128, i128* %k.bind, align 4
  %out60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n58, i128 %k59, [256 x [256 x i128]]* %out60, [256 x [256 x i128]]* %a, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %out, align 8
  br label %if.exit61

if.false52:                                       ; preds = %loop.body50
  br label %if.exit61

if.exit61:                                        ; preds = %if.false52, %if.true51
  %i64 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i64, 0
  br i1 %sgt, label %if.true62, label %if.false63

if.true62:                                        ; preds = %if.exit61
  %n65 = load i128, i128* %n.bind, align 4
  %k66 = load i128, i128* %k.bind, align 4
  %out67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out68 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %p69 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call70 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n65, i128 %k66, [256 x [256 x i128]]* %out67, [256 x [256 x i128]]* %out68, [256 x i128]* %p69)
  store [256 x [256 x i128]]* %call70, [256 x [256 x i128]]** %out, align 8
  br label %if.exit71

if.false63:                                       ; preds = %if.exit61
  br label %if.exit71

if.exit71:                                        ; preds = %if.false63, %if.true62
  br label %loop.latch72

loop.latch72:                                     ; preds = %if.exit71
  %i73 = load i128, i128* %i, align 4
  %sub74 = sub i128 %i73, 1
  store i128 %sub74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i75, 0
  br i1 %sge, label %loop.body50, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch72
  %out77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out77
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
  %ret = alloca [256 x i128]*, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %out = alloca [256 x i128]*, align 8
  %pCopy = alloca [256 x i128]*, align 8
  %isZero = alloca i128, align 8
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a2, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i3 = load i128, i128* %i, align 4
  %add = add i128 %i3, 1
  store i128 %add, i128* %i, align 4
  %i4 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i4, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero7 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero7, 1
  br i1 %eq, label %if.true5, label %if.false6

if.true5:                                         ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body8

if.false6:                                        ; preds = %loop.exit
  br label %if.exit19

loop.body8:                                       ; preds = %loop.latch11, %if.true5
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i9 = load i128, i128* %i, align 4
  %ret10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i9
  store i128 0, i128* %ret10, align 4
  br label %loop.latch11

loop.latch11:                                     ; preds = %loop.body8
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %k15 = load i128, i128* %k.bind, align 4
  %slt16 = icmp slt i128 %i14, %k15
  br i1 %slt16, label %loop.body8, label %loop.exit17

loop.exit17:                                      ; preds = %loop.latch11
  %ret18 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret18

if.exit19:                                        ; preds = %if.false6
  %uniform_array20 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array20, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch37, %if.exit19
  %i24 = load i128, i128* %i, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %slt26 = icmp slt i128 %i24, %k25
  br i1 %slt26, label %if.true22, label %if.false23

if.true22:                                        ; preds = %loop.body21
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i27
  %p29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i31 = load i128, i128* %i, align 4
  %pCopy32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 %i31
  store i128 %p29, i128* %pCopy32, align 4
  br label %if.exit36

if.false23:                                       ; preds = %loop.body21
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i34 = load i128, i128* %i, align 4
  %pCopy35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i34
  store i128 0, i128* %pCopy35, align 4
  br label %if.exit36

if.exit36:                                        ; preds = %if.false23, %if.true22
  br label %loop.latch37

loop.latch37:                                     ; preds = %if.exit36
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %slt41 = icmp slt i128 %i40, 50
  br i1 %slt41, label %loop.body21, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch37
  %uniform_array43 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array43, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch48, %loop.exit42
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i46 = load i128, i128* %i, align 4
  %two47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %i46
  store i128 0, i128* %two47, align 4
  br label %loop.latch48

loop.latch48:                                     ; preds = %loop.body44
  %i49 = load i128, i128* %i, align 4
  %add50 = add i128 %i49, 1
  store i128 %add50, i128* %i, align 4
  %i51 = load i128, i128* %i, align 4
  %slt52 = icmp slt i128 %i51, 50
  br i1 %slt52, label %loop.body44, label %loop.exit53

loop.exit53:                                      ; preds = %loop.latch48
  %ptr_getter54 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two55 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter54, i128 0, i128 0
  store i128 2, i128* %two55, align 4
  %uniform_array56 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array56, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %n.bind, align 4
  %k57 = load i128, i128* %k.bind, align 4
  %pCopy58 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two59 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k57, [256 x i128]* %pCopy58, [256 x i128]* %two59)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array60 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array60, [256 x i128]** %out, align 8
  %n61 = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %a63 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %pCopy64 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo65 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call66 = call [256 x i128]* @mod_exp(i128 %n61, i128 %k62, [256 x i128]* %a63, [256 x i128]* %pCopy64, [256 x i128]* %pMinusTwo65)
  store [256 x i128]* %call66, [256 x i128]** %out, align 8
  %out67 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out67
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
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %out1_pre = alloca [256 x i128]*, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %out0 = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128]*, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %lambda = alloca [256 x i128]*, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a2, i128 0, i128 0
  %a4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5)
  store [256 x i128]* %call, [256 x i128]** %sq0, align 8
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %a12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a12, i128 0, i128 1
  %a14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %a14, [256 x i128]* %spice_inline_array15, align 4
  %call16 = call [256 x i128]* @prod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15)
  store [256 x i128]* %call16, [256 x i128]** %sq1, align 8
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k18
  %sq019 = load [256 x i128]*, [256 x i128]** %sq0, align 8
  %sq120 = load [256 x i128]*, [256 x i128]** %sq1, align 8
  %call21 = call [256 x i128]* @long_add(i128 %n17, i128 %mul, [256 x i128]* %sq019, [256 x i128]* %sq120)
  store [256 x i128]* %call21, [256 x i128]** %sq_sum, align 8
  %n22 = load i128, i128* %n.bind, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %add = add i128 %k24, 1
  %sq_sum25 = load [256 x i128]*, [256 x i128]** %sq_sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call26 = call [256 x [256 x i128]]* @long_div2(i128 %n22, i128 %k23, i128 %add, [256 x i128]* %sq_sum25, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call26, [256 x [256 x i128]]** %sq_sum_div, align 8
  %n27 = load i128, i128* %n.bind, align 4
  %k28 = load i128, i128* %k.bind, align 4
  %sq_sum_div29 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sq_sum_div, align 8
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sq_sum_div29, i128 0, i128 1
  %sq_sum_div31 = load [256 x i128], [256 x i128]* %array_getter30, align 4
  %spice_inline_array32 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div31, [256 x i128]* %spice_inline_array32, align 4
  %p33 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call34 = call [256 x i128]* @mod_inv(i128 %n27, i128 %k28, [256 x i128]* %spice_inline_array32, [256 x i128]* %p33)
  store [256 x i128]* %call34, [256 x i128]** %lambda, align 8
  %n35 = load i128, i128* %n.bind, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %lambda37 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %a38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter39 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a38, i128 0, i128 0
  %a40 = load [256 x i128], [256 x i128]* %array_getter39, align 4
  %spice_inline_array41 = alloca [256 x i128], align 8
  store [256 x i128] %a40, [256 x i128]* %spice_inline_array41, align 4
  %call42 = call [256 x i128]* @prod(i128 %n35, i128 %k36, [256 x i128]* %lambda37, [256 x i128]* %spice_inline_array41)
  store [256 x i128]* %call42, [256 x i128]** %out0, align 8
  %n43 = load i128, i128* %n.bind, align 4
  %k44 = load i128, i128* %k.bind, align 4
  %out045 = load [256 x i128]*, [256 x i128]** %out0, align 8
  %p46 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call47 = call [256 x [256 x i128]]* @long_div(i128 %n43, i128 %k44, [256 x i128]* %out045, [256 x i128]* %p46)
  store [256 x [256 x i128]]* %call47, [256 x [256 x i128]]** %out0_div, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %out0_div48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out0_div, align 8
  %array_getter49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out0_div48, i128 0, i128 1
  %out0_div50 = load [256 x i128], [256 x i128]* %array_getter49, align 4
  %spice_inline_array51 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div50, [256 x i128]* %spice_inline_array51, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out52 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out52 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n53 = load i128, i128* %n.bind, align 4
  %k54 = load i128, i128* %k.bind, align 4
  %p55 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %a56 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a56, i128 0, i128 1
  %a58 = load [256 x i128], [256 x i128]* %array_getter57, align 4
  %spice_inline_array59 = alloca [256 x i128], align 8
  store [256 x i128] %a58, [256 x i128]* %spice_inline_array59, align 4
  %call60 = call [256 x i128]* @long_sub(i128 %n53, i128 %k54, [256 x i128]* %p55, [256 x i128]* %spice_inline_array59)
  store [256 x i128]* %call60, [256 x i128]** %out1_pre, align 8
  %n61 = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %lambda63 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %out1_pre64 = load [256 x i128]*, [256 x i128]** %out1_pre, align 8
  %call65 = call [256 x i128]* @prod(i128 %n61, i128 %k62, [256 x i128]* %lambda63, [256 x i128]* %out1_pre64)
  store [256 x i128]* %call65, [256 x i128]** %out1, align 8
  %n66 = load i128, i128* %n.bind, align 4
  %k67 = load i128, i128* %k.bind, align 4
  %out168 = load [256 x i128]*, [256 x i128]** %out1, align 8
  %p69 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call70 = call [256 x [256 x i128]]* @long_div(i128 %n66, i128 %k67, [256 x i128]* %out168, [256 x i128]* %p69)
  store [256 x [256 x i128]]* %call70, [256 x [256 x i128]]** %out1_div, align 8
  %out1_div71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out1_div, align 8
  %array_getter72 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out1_div71, i128 0, i128 1
  %out1_div73 = load [256 x i128], [256 x i128]* %array_getter72, align 4
  %spice_inline_array74 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div73, [256 x i128]* %spice_inline_array74, align 4
  %ptr_getter75 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter75, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out76 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out77
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }