; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedfp2multiplynocarryunequal = type { i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp12fp2multiplynocarryunequal = type { i128, i128, i128, i128, [2 x [256 x i128]]*, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_signedfp12multiplynocarryunequal = type { i128, i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_signedfp2multiplynocarry = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_iszero = type { i128, i128 }
%struct_template_circuit_lessthan = type { i128, [2 x i128]*, i128 }
%struct_template_circuit_signedfp12multiplynocarry = type { i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_signedfp12scalarmultiplynocarryunequal = type { i128, i128, i128, i128, [256 x i128]*, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_greatereqthan = type { i128, [2 x i128]*, i128 }
%struct_template_circuit_signedfp12fp2multiplynocarry = type { i128, i128, i128, [2 x [256 x i128]]*, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_signedfp12scalarmultiplynocarry = type { i128, i128, i128, [256 x i128]*, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_lesseqthan = type { i128, [2 x i128]*, i128 }
%struct_template_circuit_greaterthan = type { i128, [2 x i128]*, i128 }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_isequal = type { [2 x i128]*, i128 }
%struct_template_circuit_compconstant = type { i128, [254 x i128]*, i128 }
%struct_template_circuit_rangecheck2d = type { i128, i128, [2 x [256 x i128]]* }
%struct_template_circuit_aliascheck = type { [254 x i128]* }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [2 x i128]* }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fp2iszero = type { i128, i128, [256 x i128]*, [2 x [256 x i128]]*, i128 }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]* }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_fpiszero = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bits2num_strict = type { [254 x i128]*, i128 }
%struct_template_circuit_fpsgn0 = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fp2isequal = type { i128, i128, [256 x i128]*, [2 x [256 x i128]]*, [2 x [256 x i128]]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [254 x i128]* }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpisequal = type { i128, i128, [256 x i128]*, [2 x [256 x i128]]*, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsubtract = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2sgn0 = type { i128, i128, i128, [2 x [256 x i128]]*, i128 }
%struct_template_circuit_primereduce = type { i128, i128, i128, i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_checkcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp12compress = type { i128, i128, i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp2compress = type { i128, i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpnegate = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2conjugate = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedcheckcarrymodtozero = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2add = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2subtract = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfpcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2frobeniusmap = type { i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp12multiplynocarrycompress = type { i128, i128, i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp12add = type { i128, i128, i128, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_signedfp2multiplynocarrycompress = type { i128, i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp2divide = type { i128, i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp2multiplynocarrycompressthree = type { i128, i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp2carrymodp = type { i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_fpmultiply = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp2multiplythree = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp12carrymodp = type { i128, i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp2negate = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_signedfp2compresscarry = type { i128, i128, i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fp12multiply = type { i128, i128, i128, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]*, [256 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp6invert = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp2multiply = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]*, [2 x [256 x i128]]* }
%struct_template_circuit_fp12square = type { i128, i128, i128, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp12frobeniusmap = type { i128, i128, i128, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp12exp = type { i128, i128, i128, i128, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp12invert = type { i128, i128, i128, [6 x [2 x [256 x i128]]]*, [6 x [2 x [256 x i128]]]* }
%struct_template_circuit_fp2invert = type { i128, i128, i128, [2 x [256 x i128]]*, [2 x [256 x i128]]* }

@constraint = external global i1
@constraint.1 = external global i1

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
declare i128 @llvm.powi.i128.i128(i128, i128) #0

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %read_input_inner.not.in = load i128, i128* %struct_getter, align 4
  %in = alloca i128, align 8
  store i128 %read_input_inner.not.in, i128* %in, align 4
  %out = alloca i128, align 8
  %in1 = load i128, i128* %in, align 4
  %add = add i128 1, %in1
  %in2 = load i128, i128* %in, align 4
  %mul = mul i128 2, %in2
  %sub = sub i128 %add, %mul
  store i128 %sub, i128* %out, align 4
  %out3 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out3, i128 %sub, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %out4 = load i128, i128* %out, align 4
  %write_output_inner.not.out = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %out4, i128* %write_output_inner.not.out, align 4
  ret void
}

define %struct_template_circuit_not* @fn_template_build_not() {
entry:
  %struct_template_circuit_not = alloca %struct_template_circuit_not, align 8
  ret %struct_template_circuit_not* %struct_template_circuit_not
}

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 0
  %read_input_inner.xor.a = load i128, i128* %struct_getter, align 4
  %a = alloca i128, align 8
  store i128 %read_input_inner.xor.a, i128* %a, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 1
  %read_input_inner.xor.b = load i128, i128* %struct_getter1, align 4
  %b = alloca i128, align 8
  store i128 %read_input_inner.xor.b, i128* %b, align 4
  %out = alloca i128, align 8
  %a2 = load i128, i128* %a, align 4
  %b3 = load i128, i128* %b, align 4
  %add = add i128 %a2, %b3
  %a4 = load i128, i128* %a, align 4
  %mul = mul i128 2, %a4
  %b5 = load i128, i128* %b, align 4
  %mul6 = mul i128 %mul, %b5
  %sub = sub i128 %add, %mul6
  store i128 %sub, i128* %out, align 4
  %out7 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out7, i128 %sub, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %out8 = load i128, i128* %out, align 4
  %write_output_inner.xor.out = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %out8, i128* %write_output_inner.xor.out, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor() {
entry:
  %struct_template_circuit_xor = alloca %struct_template_circuit_xor, align 8
  ret %struct_template_circuit_xor* %struct_template_circuit_xor
}

define void @fn_template_init_bigmultshortlong2d(%struct_template_circuit_bigmultshortlong2d* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 0
  %read_arg_inner.bigmultshortlong2d.n = load i128, i128* %struct_getter, align 4
  %n = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.n, i128* %n, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 1
  %read_arg_inner.bigmultshortlong2d.k = load i128, i128* %struct_getter1, align 4
  %k = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.k, i128* %k, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 2
  %read_arg_inner.bigmultshortlong2d.l = load i128, i128* %struct_getter2, align 4
  %l = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.l, i128* %l, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 3
  %read_input_inner.bigmultshortlong2d.a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %a = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2d.a, [256 x [256 x i128]]** %a, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 4
  %read_input_inner.bigmultshortlong2d.b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter4, align 8
  %b = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2d.b, [256 x [256 x i128]]** %b, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %b_poly = bitcast i8* %malloccall to [256 x [256 x i128]]*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg1 = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %prod_val = bitcast i8* %malloccall6 to [256 x [256 x i128]]*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k2 = bitcast i8* %malloccall7 to i128*
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %pow = bitcast i8* %malloccall8 to [256 x [256 x i128]]*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out_poly = bitcast i8* %malloccall10 to [256 x [256 x i128]]*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i1 = bitcast i8* %malloccall11 to i128*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall12 to i128*
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg2 = bitcast i8* %malloccall13 to i128*
  %out = alloca [256 x [256 x i128]], align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j2 = bitcast i8* %malloccall14 to i128*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j1 = bitcast i8* %malloccall15 to i128*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %a_poly = bitcast i8* %malloccall16 to [256 x [256 x i128]]*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i2 = bitcast i8* %malloccall17 to i128*
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]* %prod_val, align 8
  store i128 0, i128* %i, align 4
  %i18 = load i128, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry
  %i.phi = phi i128 [ %i18, %entry ], [ %i31, %loop.latch28 ]
  store i128 %i.phi, i128* %i, align 4
  store i128 0, i128* %j, align 4
  %j19 = load i128, i128* %j, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch, %loop.body
  %j.phi = phi i128 [ %j19, %loop.body ], [ %j25, %loop.latch ]
  store i128 %j.phi, i128* %j, align 4
  %i21 = load i128, i128* %i, align 4
  %j22 = load i128, i128* %j, align 4
  %prod_val23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val, i128 0, i128 %i21, i128 %j22
  store i128 0, i128* %prod_val23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body20
  %j24 = load i128, i128* %j, align 4
  %add = add i128 %j24, 1
  store i128 %add, i128* %j, align 4
  %j25 = load i128, i128* %j, align 4
  %j26 = load i128, i128* %j, align 4
  %k27 = load i128, i128* %k, align 4
  %mul = mul i128 2, %k27
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j26, %sub
  br i1 %slt, label %loop.body20, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.exit
  %i29 = load i128, i128* %i, align 4
  %add30 = add i128 %i29, 1
  store i128 %add30, i128* %i, align 4
  %i31 = load i128, i128* %i, align 4
  %i32 = load i128, i128* %i, align 4
  %l33 = load i128, i128* %l, align 4
  %mul34 = mul i128 2, %l33
  %sub35 = sub i128 %mul34, 1
  %slt36 = icmp slt i128 %i32, %sub35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch28
  store i128 0, i128* %i1, align 4
  %i138 = load i128, i128* %i1, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.exit37
  %i1.phi = phi i128 [ %i138, %loop.exit37 ]
  store i128 %i1.phi, i128* %i1, align 4
  store i128 0, i128* %i2, align 4
  %i240 = load i128, i128* %i2, align 4
  br label %loop.body41

loop.body41:                                      ; preds = %loop.body39
  %i2.phi = phi i128 [ %i240, %loop.body39 ]
  store i128 %i2.phi, i128* %i2, align 4
  store i128 0, i128* %j1, align 4
  %j142 = load i128, i128* %j1, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.body41
  %j1.phi = phi i128 [ %j142, %loop.body41 ]
  store i128 %j1.phi, i128* %j1, align 4
  store i128 0, i128* %j2, align 4
  %j244 = load i128, i128* %j2, align 4
  br label %loop.body45

loop.body45:                                      ; preds = %loop.body43
  %j2.phi = phi i128 [ %j244, %loop.body43 ]
  store i128 %j2.phi, i128* %j2, align 4
  %i146 = load i128, i128* %i1, align 4
  %i247 = load i128, i128* %i2, align 4
  %add48 = add i128 %i146, %i247
  store i128 %add48, i128* %i, align 4
  %j149 = load i128, i128* %j1, align 4
  %j250 = load i128, i128* %j2, align 4
  %add51 = add i128 %j149, %j250
  store i128 %add51, i128* %j, align 4
  %i52 = load i128, i128* %i, align 4
  %cast_idx = trunc i128 %i52 to i64
  %j53 = load i128, i128* %j, align 4
  %cast_idx54 = trunc i128 %j53 to i64
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val, i128 0, i64 %cast_idx, i64 %cast_idx54
  %prod_val55 = load i128, i128* %array_getter, align 4
  %i156 = load i128, i128* %i1, align 4
  %cast_idx57 = trunc i128 %i156 to i64
  %j158 = load i128, i128* %j1, align 4
  %cast_idx59 = trunc i128 %j158 to i64
}

define %struct_template_circuit_bigmultshortlong2d* @fn_template_build_bigmultshortlong2d(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong2d = alloca %struct_template_circuit_bigmultshortlong2d, align 8
  %write_arg_inner.bigmultshortlong2d.n = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultshortlong2d.n, align 4
  %write_arg_inner.bigmultshortlong2d.k = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultshortlong2d.k, align 4
  %write_arg_inner.bigmultshortlong2d.l = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmultshortlong2d.l, align 4
  ret %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d
}

define [2 x [50 x i128]]* @signed_Fp2_mult_w6(i128 %0, [0 x [256 x i128]]* %1, i128 %2) {
entry:
}

define void @fn_template_init_nor(%struct_template_circuit_nor* %0) {
entry:
}

define %struct_template_circuit_nor* @fn_template_build_nor() {
entry:
}

define [4 x [4 x [2 x [7 x i128]]]]* @get_iso3_coeffs(i128 %0, i128 %1) {
entry:
}

define [50 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_bigmultshortlong2dunequal(%struct_template_circuit_bigmultshortlong2dunequal* %0) {
entry:
}

define %struct_template_circuit_bigmultshortlong2dunequal* @fn_template_build_bigmultshortlong2dunequal(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define [2 x [2 x [7 x i128]]]* @get_generator_G2(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
}

define %struct_template_circuit_and* @fn_template_build_and() {
entry:
}

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_bigmultshortlong(%struct_template_circuit_bigmultshortlong* %0) {
entry:
}

define %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %0, i128 %1, i128 %2) {
entry:
}

define i128 @nbits(i128 %0) {
entry:
}

define void @fn_template_init_multiand(%struct_template_circuit_multiand* %0) {
entry:
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
}

define [51 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define [50 x i128]* @get_BLS12_381_prime(i128 %0, i128 %1) {
entry:
}

define i128 @log_ceil(i128 %0) {
entry:
}

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
}

define %struct_template_circuit_nand* @fn_template_build_nand() {
entry:
}

define i128 @get_BLS12_381_parameter() {
entry:
}

define [4 x [2 x [50 x i128]]]* @get_roots_of_unity(i128 %0, i128 %1) {
entry:
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
}

define void @fn_template_init_bigmultshortlongunequal(%struct_template_circuit_bigmultshortlongunequal* %0) {
entry:
}

define %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_signedfp2multiplynocarryunequal(%struct_template_circuit_signedfp2multiplynocarryunequal* %0) {
entry:
}

define %struct_template_circuit_signedfp2multiplynocarryunequal* @fn_template_build_signedfp2multiplynocarryunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define [2 x [50 x i128]]* @get_generator_G1(i128 %0, i128 %1) {
entry:
}

define [12 x [6 x [2 x [20 x i128]]]]* @get_Fp12_frobenius(i128 %0, i128 %1) {
entry:
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_signedfp12fp2multiplynocarryunequal(%struct_template_circuit_signedfp12fp2multiplynocarryunequal* %0) {
entry:
}

define %struct_template_circuit_signedfp12fp2multiplynocarryunequal* @fn_template_build_signedfp12fp2multiplynocarryunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define i128 @max(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_signedfp12multiplynocarryunequal(%struct_template_circuit_signedfp12multiplynocarryunequal* %0) {
entry:
}

define %struct_template_circuit_signedfp12multiplynocarryunequal* @fn_template_build_signedfp12multiplynocarryunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define [50 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
}

define [20 x [50 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
}

define %struct_template_circuit_or* @fn_template_build_or() {
entry:
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
}

define i128 @min(i128 %0, i128 %1) {
entry:
}

define i128 @get_fp_sgn0([0 x i128]* %0) {
entry:
}

define void @fn_template_init_split(%struct_template_circuit_split* %0) {
entry:
}

define %struct_template_circuit_split* @fn_template_build_split(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_signedfp2multiplynocarry(%struct_template_circuit_signedfp2multiplynocarry* %0) {
entry:
}

define %struct_template_circuit_signedfp2multiplynocarry* @fn_template_build_signedfp2multiplynocarry(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
}

define %struct_template_circuit_iszero* @fn_template_build_iszero() {
entry:
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
}

define [50 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define i128 @short_div(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_signedfp12multiplynocarry(%struct_template_circuit_signedfp12multiplynocarry* %0) {
entry:
}

define %struct_template_circuit_signedfp12multiplynocarry* @fn_template_build_signedfp12multiplynocarry(i128 %0, i128 %1, i128 %2) {
entry:
}

define [50 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_signedfp12scalarmultiplynocarryunequal(%struct_template_circuit_signedfp12scalarmultiplynocarryunequal* %0) {
entry:
}

define %struct_template_circuit_signedfp12scalarmultiplynocarryunequal* @fn_template_build_signedfp12scalarmultiplynocarryunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
}

define %struct_template_circuit_greatereqthan* @fn_template_build_greatereqthan(i128 %0) {
entry:
}

define void @fn_template_init_signedfp12fp2multiplynocarry(%struct_template_circuit_signedfp12fp2multiplynocarry* %0) {
entry:
}

define %struct_template_circuit_signedfp12fp2multiplynocarry* @fn_template_build_signedfp12fp2multiplynocarry(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_signedfp12scalarmultiplynocarry(%struct_template_circuit_signedfp12scalarmultiplynocarry* %0) {
entry:
}

define %struct_template_circuit_signedfp12scalarmultiplynocarry* @fn_template_build_signedfp12scalarmultiplynocarry(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
}

define %struct_template_circuit_binsum* @fn_template_build_binsum(i128 %0, i128 %1) {
entry:
}

define [2 x [50 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, i128 %4) {
entry:
}

define i128 @get_fp2_sgn0(i128 %0, [0 x [0 x i128]]* %1) {
entry:
}

define void @fn_template_init_modsumthree(%struct_template_circuit_modsumthree* %0) {
entry:
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
}

define [4 x [2 x [50 x i128]]]* @get_etas(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_modsub(%struct_template_circuit_modsub* %0) {
entry:
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
}

define %struct_template_circuit_lesseqthan* @fn_template_build_lesseqthan(i128 %0) {
entry:
}

define [50 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
}

define %struct_template_circuit_greaterthan* @fn_template_build_greaterthan(i128 %0) {
entry:
}

define void @fn_template_init_splitthree(%struct_template_circuit_splitthree* %0) {
entry:
}

define %struct_template_circuit_splitthree* @fn_template_build_splitthree(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
}

define void @fn_template_init_rangecheck2d(%struct_template_circuit_rangecheck2d* %0) {
entry:
}

define %struct_template_circuit_rangecheck2d* @fn_template_build_rangecheck2d(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
}

define void @fn_template_init_modprod(%struct_template_circuit_modprod* %0) {
entry:
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
}

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
}

define [50 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
}

define void @fn_template_init_biglessthan(%struct_template_circuit_biglessthan* %0) {
entry:
}

define %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %0, i128 %1) {
entry:
}

define [2 x [50 x i128]]* @long_div(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_fp2iszero(%struct_template_circuit_fp2iszero* %0) {
entry:
}

define %struct_template_circuit_fp2iszero* @fn_template_build_fp2iszero(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_modsumfour(%struct_template_circuit_modsumfour* %0) {
entry:
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
}

define i128 @prod_mod(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_modsum(%struct_template_circuit_modsum* %0) {
entry:
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
}

define void @fn_template_init_checkcarrytozero(%struct_template_circuit_checkcarrytozero* %0) {
entry:
}

define %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_modsubthree(%struct_template_circuit_modsubthree* %0) {
entry:
}

define %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %0) {
entry:
}

define void @fn_template_init_longtoshortnoendcarry(%struct_template_circuit_longtoshortnoendcarry* %0) {
entry:
}

define %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_bigiszero(%struct_template_circuit_bigiszero* %0) {
entry:
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
}

define void @fn_template_init_bigisequal(%struct_template_circuit_bigisequal* %0) {
entry:
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
}

define [2 x [50 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
}

define i128 @long_add_mod(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_fpiszero(%struct_template_circuit_fpiszero* %0) {
entry:
}

define %struct_template_circuit_fpiszero* @fn_template_build_fpiszero(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define [50 x i128]* @long_sub_mod(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define [50 x i128]* @find_Fp_inverse(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
}

define void @fn_template_init_fpsgn0(%struct_template_circuit_fpsgn0* %0) {
entry:
}

define %struct_template_circuit_fpsgn0* @fn_template_build_fpsgn0(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define [256 x [2 x [50 x i128]]]* @find_Fp12_product(i128 %0, i128 %1, [256 x [0 x [256 x i128]]]* %2, [256 x [0 x [256 x i128]]]* %3, i128 %4) {
entry:
}

define void @fn_template_init_fp2isequal(%struct_template_circuit_fp2isequal* %0) {
entry:
}

define %struct_template_circuit_fp2isequal* @fn_template_build_fp2isequal(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
}

define void @fn_template_init_bigsub(%struct_template_circuit_bigsub* %0) {
entry:
}

define %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_fpisequal(%struct_template_circuit_fpisequal* %0) {
entry:
}

define %struct_template_circuit_fpisequal* @fn_template_build_fpisequal(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_bigadd(%struct_template_circuit_bigadd* %0) {
entry:
}

define %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_fpsubtract(%struct_template_circuit_fpsubtract* %0) {
entry:
}

define %struct_template_circuit_fpsubtract* @fn_template_build_fpsubtract(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_fp2sgn0(%struct_template_circuit_fp2sgn0* %0) {
entry:
}

define %struct_template_circuit_fp2sgn0* @fn_template_build_fp2sgn0(i128 %0, i128 %1, i128 %2) {
entry:
}

define [2 x [2 x [50 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, i128 %4) {
entry:
}

define [50 x i128]* @mod_exp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
}

define void @fn_template_init_primereduce(%struct_template_circuit_primereduce* %0) {
entry:
}

define %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_bigmult(%struct_template_circuit_bigmult* %0) {
entry:
}

define %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_checkcarrymodp(%struct_template_circuit_checkcarrymodp* %0) {
entry:
}

define %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
}

define [2 x [50 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3, i128 %4) {
entry:
}

define [2 x [50 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3, i128 %4) {
entry:
}

define void @fn_template_init_fp12compress(%struct_template_circuit_fp12compress* %0) {
entry:
}

define %struct_template_circuit_fp12compress* @fn_template_build_fp12compress(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_fp2compress(%struct_template_circuit_fp2compress* %0) {
entry:
}

define %struct_template_circuit_fp2compress* @fn_template_build_fp2compress(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_bigmod2(%struct_template_circuit_bigmod2* %0) {
entry:
}

define %struct_template_circuit_bigmod2* @fn_template_build_bigmod2(i128 %0, i128 %1, i128 %2) {
entry:
}

define [6 x [2 x [50 x i128]]]* @find_Fp12_sum(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, i128 %4) {
entry:
}

define [2 x [50 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, i128 %4) {
entry:
}

define void @fn_template_init_bigaddmodp(%struct_template_circuit_bigaddmodp* %0) {
entry:
}

define %struct_template_circuit_bigaddmodp* @fn_template_build_bigaddmodp(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_bigsubmodp(%struct_template_circuit_bigsubmodp* %0) {
entry:
}

define %struct_template_circuit_bigsubmodp* @fn_template_build_bigsubmodp(i128 %0, i128 %1) {
entry:
}

define [50 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
}

define void @fn_template_init_fpadd(%struct_template_circuit_fpadd* %0) {
entry:
}

define %struct_template_circuit_fpadd* @fn_template_build_fpadd(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_fpnegate(%struct_template_circuit_fpnegate* %0) {
entry:
}

define %struct_template_circuit_fpnegate* @fn_template_build_fpnegate(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
}

define void @fn_template_init_fp2conjugate(%struct_template_circuit_fp2conjugate* %0) {
entry:
}

define %struct_template_circuit_fp2conjugate* @fn_template_build_fp2conjugate(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_bigmod(%struct_template_circuit_bigmod* %0) {
entry:
}

define %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_signedcheckcarrymodtozero(%struct_template_circuit_signedcheckcarrymodtozero* %0) {
entry:
}

define %struct_template_circuit_signedcheckcarrymodtozero* @fn_template_build_signedcheckcarrymodtozero(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_fp2add(%struct_template_circuit_fp2add* %0) {
entry:
}

define %struct_template_circuit_fp2add* @fn_template_build_fp2add(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_bigmultmodp(%struct_template_circuit_bigmultmodp* %0) {
entry:
}

define %struct_template_circuit_bigmultmodp* @fn_template_build_bigmultmodp(i128 %0, i128 %1) {
entry:
}

define void @fn_template_init_fp2subtract(%struct_template_circuit_fp2subtract* %0) {
entry:
}

define %struct_template_circuit_fp2subtract* @fn_template_build_fp2subtract(i128 %0, i128 %1, i128 %2) {
entry:
}

define [2 x [50 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [0 x i128]* %2, i128 %3) {
entry:
}

define void @fn_template_init_signedfpcarrymodp(%struct_template_circuit_signedfpcarrymodp* %0) {
entry:
}

define %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define [6 x [2 x [50 x i128]]]* @find_Fp12_diff(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, i128 %4) {
entry:
}

define [2 x [50 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
}

define [6 x [2 x [50 x i128]]]* @find_Fp6_inverse(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4, i128 %5) {
entry:
}

define void @fn_template_init_fp2frobeniusmap(%struct_template_circuit_fp2frobeniusmap* %0) {
entry:
}

define %struct_template_circuit_fp2frobeniusmap* @fn_template_build_fp2frobeniusmap(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_signedfp12multiplynocarrycompress(%struct_template_circuit_signedfp12multiplynocarrycompress* %0) {
entry:
}

define %struct_template_circuit_signedfp12multiplynocarrycompress* @fn_template_build_signedfp12multiplynocarrycompress(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_fp12add(%struct_template_circuit_fp12add* %0) {
entry:
}

define %struct_template_circuit_fp12add* @fn_template_build_fp12add(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_signedfp2multiplynocarrycompress(%struct_template_circuit_signedfp2multiplynocarrycompress* %0) {
entry:
}

define %struct_template_circuit_signedfp2multiplynocarrycompress* @fn_template_build_signedfp2multiplynocarrycompress(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_signedfp2divide(%struct_template_circuit_signedfp2divide* %0) {
entry:
}

define %struct_template_circuit_signedfp2divide* @fn_template_build_signedfp2divide(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_signedfp2multiplynocarrycompressthree(%struct_template_circuit_signedfp2multiplynocarrycompressthree* %0) {
entry:
}

define %struct_template_circuit_signedfp2multiplynocarrycompressthree* @fn_template_build_signedfp2multiplynocarrycompressthree(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_signedfp2carrymodp(%struct_template_circuit_signedfp2carrymodp* %0) {
entry:
}

define %struct_template_circuit_signedfp2carrymodp* @fn_template_build_signedfp2carrymodp(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_fpmultiply(%struct_template_circuit_fpmultiply* %0) {
entry:
}

define %struct_template_circuit_fpmultiply* @fn_template_build_fpmultiply(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp2multiplythree(%struct_template_circuit_fp2multiplythree* %0) {
entry:
}

define %struct_template_circuit_fp2multiplythree* @fn_template_build_fp2multiplythree(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_signedfp12carrymodp(%struct_template_circuit_signedfp12carrymodp* %0) {
entry:
}

define %struct_template_circuit_signedfp12carrymodp* @fn_template_build_signedfp12carrymodp(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_fp2negate(%struct_template_circuit_fp2negate* %0) {
entry:
}

define %struct_template_circuit_fp2negate* @fn_template_build_fp2negate(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_signedfp2compresscarry(%struct_template_circuit_signedfp2compresscarry* %0) {
entry:
}

define %struct_template_circuit_signedfp2compresscarry* @fn_template_build_signedfp2compresscarry(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
}

define void @fn_template_init_bigmodinv(%struct_template_circuit_bigmodinv* %0) {
entry:
}

define %struct_template_circuit_bigmodinv* @fn_template_build_bigmodinv(i128 %0, i128 %1) {
entry:
}

define [6 x [2 x [50 x i128]]]* @find_Fp12_inverse(i128 %0, i128 %1, i128 %2, [256 x [256 x [256 x i128]]]* %3) {
entry:
}

define void @fn_template_init_fp12multiply(%struct_template_circuit_fp12multiply* %0) {
entry:
}

define %struct_template_circuit_fp12multiply* @fn_template_build_fp12multiply(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp6invert(%struct_template_circuit_fp6invert* %0) {
entry:
}

define %struct_template_circuit_fp6invert* @fn_template_build_fp6invert(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp2multiply(%struct_template_circuit_fp2multiply* %0) {
entry:
}

define %struct_template_circuit_fp2multiply* @fn_template_build_fp2multiply(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp12square(%struct_template_circuit_fp12square* %0) {
entry:
}

define %struct_template_circuit_fp12square* @fn_template_build_fp12square(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp12frobeniusmap(%struct_template_circuit_fp12frobeniusmap* %0) {
entry:
}

define %struct_template_circuit_fp12frobeniusmap* @fn_template_build_fp12frobeniusmap(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp12exp(%struct_template_circuit_fp12exp* %0) {
entry:
}

define %struct_template_circuit_fp12exp* @fn_template_build_fp12exp(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
}

define void @fn_template_init_fp12invert(%struct_template_circuit_fp12invert* %0) {
entry:
}

define %struct_template_circuit_fp12invert* @fn_template_build_fp12invert(i128 %0, i128 %1, i128 %2) {
entry:
}

define void @fn_template_init_fp2invert(%struct_template_circuit_fp2invert* %0) {
entry:
}

define %struct_template_circuit_fp2invert* @fn_template_build_fp2invert(i128 %0, i128 %1, i128 %2) {
entry:
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
