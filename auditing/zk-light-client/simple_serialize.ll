; ModuleID = 'simple_serialize.circom'
source_filename = "/Users/hongbo/code/zk-light-client-main/circuits/circuits/simple_serialize.circom"

%struct_template_circuit_bits2num = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_maj_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_h = type { i128, [4096 x i128]* }
%struct_template_circuit_rotr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_k = type { i128, [4096 x i128]* }
%struct_template_circuit_compconstant = type { i128, [4096 x i128]*, [4096 x i128]*, i128, i128 }
%struct_template_circuit_lessthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_ch_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_xor3 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_shr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bigsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_binsum = type { i128, i128, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_aliascheck = type { [4096 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_isequal = type { [4096 x i128]*, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_lesseqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_smallsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num_strict = type { [4096 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [4096 x i128]* }
%struct_template_circuit_greaterthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_t2 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits_strict = type { i128, [4096 x i128]* }
%struct_template_circuit_t1 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sigmaplus = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256compression = type { [4096 x i128]*, [4096 x i128]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_sha256 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256bytes = type { i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszlayer = type { i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszarray = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszphase0synccommittee = type { [4096 x [4096 x i128]]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszphase0beaconblockheader = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }

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
@constraint.21 = external global i1
@constraint.22 = external global i1
@constraint.23 = external global i1
@constraint.24 = external global i1
@constraint.25 = external global i1
@constraint.26 = external global i1
@constraint.27 = external global i1
@constraint.28 = external global i1
@constraint.29 = external global i1
@constraint.30 = external global i1
@constraint.31 = external global i1
@constraint.32 = external global i1
@constraint.33 = external global i1
@constraint.34 = external global i1
@constraint.35 = external global i1
@constraint.36 = external global i1
@constraint.37 = external global i1
@constraint.38 = external global i1
@constraint.39 = external global i1
@constraint.40 = external global i1
@constraint.41 = external global i1
@constraint.42 = external global i1
@constraint.43 = external global i1
@constraint.44 = external global i1
@constraint.45 = external global i1
@constraint.46 = external global i1
@constraint.47 = external global i1
@constraint.48 = external global i1
@constraint.49 = external global i1
@constraint.50 = external global i1
@constraint.51 = external global i1
@constraint.52 = external global i1
@constraint.53 = external global i1
@constraint.54 = external global i1
@constraint.55 = external global i1
@constraint.56 = external global i1
@constraint.57 = external global i1
@constraint.58 = external global i1
@constraint.59 = external global i1
@constraint.60 = external global i1
@constraint.61 = external global i1
@constraint.62 = external global i1
@constraint.63 = external global i1
@constraint.64 = external global i1
@constraint.65 = external global i1
@constraint.66 = external global i1
@constraint.67 = external global i1
@constraint.68 = external global i1
@constraint.69 = external global i1
@constraint.70 = external global i1
@constraint.71 = external global i1
@constraint.72 = external global i1
@constraint.73 = external global i1
@constraint.74 = external global i1
@constraint.75 = external global i1
@constraint.76 = external global i1
@constraint.77 = external global i1
@constraint.78 = external global i1
@constraint.79 = external global i1
@constraint.80 = external global i1
@constraint.81 = external global i1
@constraint.82 = external global i1
@constraint.83 = external global i1
@constraint.84 = external global i1
@constraint.85 = external global i1
@constraint.86 = external global i1
@constraint.87 = external global i1
@constraint.88 = external global i1
@constraint.89 = external global i1
@constraint.90 = external global i1
@constraint.91 = external global i1
@constraint.92 = external global i1
@constraint.93 = external global i1
@constraint.94 = external global i1
@constraint.95 = external global i1
@constraint.96 = external global i1
@constraint.97 = external global i1
@constraint.98 = external global i1
@constraint.99 = external global i1
@constraint.100 = external global i1
@constraint.101 = external global i1
@constraint.102 = external global i1
@constraint.103 = external global i1
@constraint.104 = external global i1
@constraint.105 = external global i1
@constraint.106 = external global i1
@constraint.107 = external global i1
@constraint.108 = external global i1
@constraint.109 = external global i1
@constraint.110 = external global i1
@constraint.111 = external global i1
@constraint.112 = external global i1
@constraint.113 = external global i1
@constraint.114 = external global i1
@constraint.115 = external global i1
@constraint.116 = external global i1
@constraint.117 = external global i1
@constraint.118 = external global i1
@constraint.119 = external global i1
@constraint.120 = external global i1
@constraint.121 = external global i1
@constraint.122 = external global i1
@constraint.123 = external global i1
@constraint.124 = external global i1
@constraint.125 = external global i1
@constraint.126 = external global i1
@constraint.127 = external global i1
@constraint.128 = external global i1
@constraint.129 = external global i1
@constraint.130 = external global i1
@constraint.131 = external global i1
@constraint.132 = external global i1
@constraint.133 = external global i1
@constraint.134 = external global i1
@constraint.135 = external global i1
@constraint.136 = external global i1
@constraint.137 = external global i1
@constraint.138 = external global i1
@constraint.139 = external global i1
@constraint.140 = external global i1
@constraint.141 = external global i1
@constraint.142 = external global i1
@constraint.143 = external global i1
@constraint.144 = external global i1
@constraint.145 = external global i1
@constraint.146 = external global i1
@constraint.147 = external global i1
@constraint.148 = external global i1
@constraint.149 = external global i1
@constraint.150 = external global i1
@constraint.151 = external global i1
@constraint.152 = external global i1
@constraint.153 = external global i1
@constraint.154 = external global i1
@constraint.155 = external global i1
@constraint.156 = external global i1
@constraint.157 = external global i1
@constraint.158 = external global i1
@constraint.159 = external global i1
@constraint.160 = external global i1
@constraint.161 = external global i1
@constraint.162 = external global i1
@constraint.163 = external global i1
@constraint.164 = external global i1
@constraint.165 = external global i1
@constraint.166 = external global i1
@constraint.167 = external global i1
@constraint.168 = external global i1
@constraint.169 = external global i1
@constraint.170 = external global i1
@constraint.171 = external global i1
@constraint.172 = external global i1
@constraint.173 = external global i1
@constraint.174 = external global i1
@constraint.175 = external global i1
@constraint.176 = external global i1
@constraint.177 = external global i1
@constraint.178 = external global i1
@constraint.179 = external global i1
@constraint.180 = external global i1
@constraint.181 = external global i1
@constraint.182 = external global i1
@constraint.183 = external global i1
@constraint.184 = external global i1
@constraint.185 = external global i1
@constraint.186 = external global i1
@constraint.187 = external global i1
@constraint.188 = external global i1
@constraint.189 = external global i1
@constraint.190 = external global i1
@constraint.191 = external global i1

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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %Bits2Num = alloca %struct_template_circuit_bits2num*, align 8
  store %struct_template_circuit_bits2num* %0, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bits2num.n.declare_arg = alloca i128, align 8
  store i128 %bits2num.n.read_arg_inner, i128* %bits2num.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %bits2num.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bits2num.in.read_input_inner, [4096 x i128]** %bits2num.in.declare_input, align 8
  %lc1 = alloca i128, align 8
  %lc12 = call i128 @fn_intrinsic_inline_init()
  store i128 %lc12, i128* %lc1, align 4
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %bits2num.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %bits2num.out.declare_output, align 4
  %e2 = alloca i128, align 8
  %e24 = call i128 @fn_intrinsic_inline_init()
  store i128 %e24, i128* %e2, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc15 = load i128, i128* %lc1, align 4
  %in = load [4096 x i128]*, [4096 x i128]** %bits2num.in.declare_input, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i6
  %in7 = load i128, i128* %array_getter, align 4
  %e28 = load i128, i128* %e2, align 4
  %mul = mul i128 %in7, %e28
  %add = add i128 %lc15, %mul
  store i128 %add, i128* %lc1, align 4
  %e29 = load i128, i128* %e2, align 4
  %e210 = load i128, i128* %e2, align 4
  %add11 = add i128 %e29, %e210
  store i128 %add11, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %n = load i128, i128* %bits2num.n.declare_arg, align 4
  %slt = icmp slt i128 %i14, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc115 = load i128, i128* %lc1, align 4
  %out16 = load i128, i128* %bits2num.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out16, i128 %lc115, i1* @constraint)
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 2
  store i128 %lc115, i128* %bits2num.out.write_output_inner, align 4
  %Bits2Num17 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %Bits2Num17, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter18, align 4
  store i128 %bits2num.out.read_output_inner, i128* %bits2num.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out19 = load i128, i128* %bits2num.out.declare_output, align 4
  %bits2num.out.write_output_inner20 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %out19, i128* %bits2num.out.write_output_inner20, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %bits2num.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %bits2num.n.write_arg_inner, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_maj_t(%struct_template_circuit_maj_t* %0) {
entry:
  %Maj_t = alloca %struct_template_circuit_maj_t*, align 8
  store %struct_template_circuit_maj_t* %0, %struct_template_circuit_maj_t** %Maj_t, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 0
  %maj_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %maj_t.n.declare_arg = alloca i128, align 8
  store i128 %maj_t.n.read_arg_inner, i128* %maj_t.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 1
  %maj_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %maj_t.a.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %maj_t.a.read_input_inner, [4096 x i128]** %maj_t.a.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 2
  %maj_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %maj_t.b.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %maj_t.b.read_input_inner, [4096 x i128]** %maj_t.b.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 3
  %maj_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %maj_t.c.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %maj_t.c.read_input_inner, [4096 x i128]** %maj_t.c.declare_input, align 8
  %k = alloca i128, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  store i128 %k4, i128* %k, align 4
  %maj_t.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %maj_t.out.declare_output, align 8
  %maj_t.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall5 to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %b = load [4096 x i128]*, [4096 x i128]** %maj_t.b.declare_input, align 8
  %k6 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k6
  %b7 = load i128, i128* %array_getter, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %maj_t.c.declare_input, align 8
  %k8 = load i128, i128* %k, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k8
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %mid11 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %k12 = load i128, i128* %k, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid11, i128 0, i128 %k12
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.1)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %k15 = load i128, i128* %k, align 4
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k15
  store i128 %mul, i128* %mid16, align 4
  %a = load [4096 x i128]*, [4096 x i128]** %maj_t.a.declare_input, align 8
  %k17 = load i128, i128* %k, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k17
  %a19 = load i128, i128* %array_getter18, align 4
  %b20 = load [4096 x i128]*, [4096 x i128]** %maj_t.b.declare_input, align 8
  %k21 = load i128, i128* %k, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b20, i128 0, i128 %k21
  %b23 = load i128, i128* %array_getter22, align 4
  %c24 = load [4096 x i128]*, [4096 x i128]** %maj_t.c.declare_input, align 8
  %k25 = load i128, i128* %k, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c24, i128 0, i128 %k25
  %c27 = load i128, i128* %array_getter26, align 4
  %add = add i128 %b23, %c27
  %mid28 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %k29 = load i128, i128* %k, align 4
  %array_getter30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid28, i128 0, i128 %k29
  %mid31 = load i128, i128* %array_getter30, align 4
  %mul32 = mul i128 2, %mid31
  %sub = sub i128 %add, %mul32
  %mul33 = mul i128 %a19, %sub
  %mid34 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %k35 = load i128, i128* %k, align 4
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid34, i128 0, i128 %k35
  %mid37 = load i128, i128* %array_getter36, align 4
  %add38 = add i128 %mul33, %mid37
  %out39 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %k40 = load i128, i128* %k, align 4
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out39, i128 0, i128 %k40
  %out42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %out42, i128 %add38, i1* @constraint.2)
  %ptr_getter43 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %k44 = load i128, i128* %k, align 4
  %out45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter43, i128 0, i128 %k44
  store i128 %add38, i128* %out45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k46 = load i128, i128* %k, align 4
  %add47 = add i128 %k46, 1
  store i128 %add47, i128* %k, align 4
  %k48 = load i128, i128* %k, align 4
  %n = load i128, i128* %maj_t.n.declare_arg, align 4
  %slt = icmp slt i128 %k48, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %mid49 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %maj_t.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 4
  store [4096 x i128]* %mid49, [4096 x i128]** %maj_t.mid.write_inter_inner, align 8
  %out50 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %maj_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 5
  store [4096 x i128]* %out50, [4096 x i128]** %maj_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 %0) {
entry:
  %struct_template_circuit_maj_t = alloca %struct_template_circuit_maj_t, align 8
  %maj_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %struct_template_circuit_maj_t, i32 0, i32 0
  store i128 %0, i128* %maj_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_maj_t* %struct_template_circuit_maj_t
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %Num2Bits = alloca %struct_template_circuit_num2bits*, align 8
  store %struct_template_circuit_num2bits* %0, %struct_template_circuit_num2bits** %Num2Bits, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %num2bits.n.declare_arg = alloca i128, align 8
  store i128 %num2bits.n.read_arg_inner, i128* %num2bits.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %num2bits.in.declare_input = alloca i128, align 8
  store i128 %num2bits.in.read_input_inner, i128* %num2bits.in.declare_input, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %lc1 = alloca i128, align 8
  %lc13 = call i128 @fn_intrinsic_inline_init()
  store i128 %lc13, i128* %lc1, align 4
  %num2bits.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits.out.declare_output, align 8
  %e2 = alloca i128, align 8
  %e24 = call i128 @fn_intrinsic_inline_init()
  store i128 %e24, i128* %e2, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load i128, i128* %num2bits.in.declare_input, align 4
  %i5 = load i128, i128* %i, align 4
  %rshift = lshr i128 %in, %i5
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i6 = load i128, i128* %i, align 4
  %out7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 %and, i128* %out7, align 4
  %out8 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out8, i128 0, i128 %i9
  %out10 = load i128, i128* %array_getter, align 4
  %out11 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out11, i128 0, i128 %i12
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.3)
  %lc115 = load i128, i128* %lc1, align 4
  %out16 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out16, i128 0, i128 %i17
  %out19 = load i128, i128* %array_getter18, align 4
  %e220 = load i128, i128* %e2, align 4
  %mul21 = mul i128 %out19, %e220
  %add = add i128 %lc115, %mul21
  store i128 %add, i128* %lc1, align 4
  %e222 = load i128, i128* %e2, align 4
  %e223 = load i128, i128* %e2, align 4
  %add24 = add i128 %e222, %e223
  store i128 %add24, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i25 = load i128, i128* %i, align 4
  %add26 = add i128 %i25, 1
  store i128 %add26, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %n = load i128, i128* %num2bits.n.declare_arg, align 4
  %slt = icmp slt i128 %i27, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc128 = load i128, i128* %lc1, align 4
  %in29 = load i128, i128* %num2bits.in.declare_input, align 4
  call void @fn_intrinsic_add_constraint(i128 %lc128, i128 %in29, i1* @constraint.4)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out30 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [4096 x i128]* %out30, [4096 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %H = alloca %struct_template_circuit_h*, align 8
  store %struct_template_circuit_h* %0, %struct_template_circuit_h** %H, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %h.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %h.x.declare_arg = alloca i128, align 8
  store i128 %h.x.read_arg_inner, i128* %h.x.declare_arg, align 4
  %h.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %h.out.declare_output, align 8
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  store [4096 x i128]* %const_inline_array, [4096 x i128]** %c, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %c3 = load [4096 x i128]*, [4096 x i128]** %c, align 8
  %x = load i128, i128* %h.x.declare_arg, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %c3, i128 0, i128 %x
  %c4 = load i128, i128* %array_getter, align 4
  %i5 = load i128, i128* %i, align 4
  %rshift = lshr i128 %c4, %i5
  %and = and i128 %rshift, 1
  %out6 = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out6, i128 0, i128 %i7
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint.5)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %i10 = load i128, i128* %i, align 4
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i10
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i12 = load i128, i128* %i, align 4
  %add = add i128 %i12, 1
  store i128 %add, i128* %i, align 4
  %i13 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i13, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out14 = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %h.out.write_output_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 1
  store [4096 x i128]* %out14, [4096 x i128]** %h.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_h* @fn_template_build_h(i128 %0) {
entry:
  %struct_template_circuit_h = alloca %struct_template_circuit_h, align 8
  %h.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %struct_template_circuit_h, i32 0, i32 0
  store i128 %0, i128* %h.x.write_arg_inner, align 4
  ret %struct_template_circuit_h* %struct_template_circuit_h
}

define i128 @rrot(i128 %0, i128 %1) {
entry:
  %rrot.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %rrot.x.declare_arg, align 4
  %rrot.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %rrot.n.declare_arg, align 4
  %x = load i128, i128* %rrot.x.declare_arg, align 4
  %n = load i128, i128* %rrot.n.declare_arg, align 4
  %rshift = lshr i128 %x, %n
  %x1 = load i128, i128* %rrot.x.declare_arg, align 4
  %n2 = load i128, i128* %rrot.n.declare_arg, align 4
  %sub = sub i128 32, %n2
  %lshift = shl i128 %x1, %sub
  %or = or i128 %rshift, %lshift
  %and = and i128 %or, 4294967295
  ret i128 %and
}

define i128 @ssigma1(i128 %0) {
entry:
  %ssigma1.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %ssigma1.x.declare_arg, align 4
  %x = load i128, i128* %ssigma1.x.declare_arg, align 4
  %call = call i128 @rrot(i128 %x, i128 17)
  %x1 = load i128, i128* %ssigma1.x.declare_arg, align 4
  %call2 = call i128 @rrot(i128 %x1, i128 19)
  %xor = xor i128 %call, %call2
  %x3 = load i128, i128* %ssigma1.x.declare_arg, align 4
  %rshift = lshr i128 %x3, 10
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define i128 @bsigma0(i128 %0) {
entry:
  %bsigma0.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %bsigma0.x.declare_arg, align 4
  %x = load i128, i128* %bsigma0.x.declare_arg, align 4
  %call = call i128 @rrot(i128 %x, i128 2)
  %x1 = load i128, i128* %bsigma0.x.declare_arg, align 4
  %call2 = call i128 @rrot(i128 %x1, i128 13)
  %xor = xor i128 %call, %call2
  %x3 = load i128, i128* %bsigma0.x.declare_arg, align 4
  %call4 = call i128 @rrot(i128 %x3, i128 22)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_rotr(%struct_template_circuit_rotr* %0) {
entry:
  %RotR = alloca %struct_template_circuit_rotr*, align 8
  store %struct_template_circuit_rotr* %0, %struct_template_circuit_rotr** %RotR, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 0
  %rotr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %rotr.n.declare_arg = alloca i128, align 8
  store i128 %rotr.n.read_arg_inner, i128* %rotr.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 1
  %rotr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %rotr.r.declare_arg = alloca i128, align 8
  store i128 %rotr.r.read_arg_inner, i128* %rotr.r.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 2
  %rotr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %rotr.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %rotr.in.read_input_inner, [4096 x i128]** %rotr.in.declare_input, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %rotr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %rotr.out.declare_output, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %rotr.in.declare_input, align 8
  %i4 = load i128, i128* %i, align 4
  %r = load i128, i128* %rotr.r.declare_arg, align 4
  %add = add i128 %i4, %r
  %n = load i128, i128* %rotr.n.declare_arg, align 4
  %mod = srem i128 %add, %n
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %mod
  %in5 = load i128, i128* %array_getter, align 4
  %out6 = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out6, i128 0, i128 %i7
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %in5, i1* @constraint.6)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %i10 = load i128, i128* %i, align 4
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i10
  store i128 %in5, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %n15 = load i128, i128* %rotr.n.declare_arg, align 4
  %slt = icmp slt i128 %i14, %n15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out16 = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %rotr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 3
  store [4096 x i128]* %out16, [4096 x i128]** %rotr.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_rotr* @fn_template_build_rotr(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_rotr = alloca %struct_template_circuit_rotr, align 8
  %rotr.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %struct_template_circuit_rotr, i32 0, i32 0
  store i128 %0, i128* %rotr.n.write_arg_inner, align 4
  %rotr.r.write_arg_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %struct_template_circuit_rotr, i32 0, i32 1
  store i128 %1, i128* %rotr.r.write_arg_inner, align 4
  ret %struct_template_circuit_rotr* %struct_template_circuit_rotr
}

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %K = alloca %struct_template_circuit_k*, align 8
  store %struct_template_circuit_k* %0, %struct_template_circuit_k** %K, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %k.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %k.x.declare_arg = alloca i128, align 8
  store i128 %k.x.read_arg_inner, i128* %k.x.declare_arg, align 4
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %k.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %k.out.declare_output, align 8
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  store [4096 x i128]* %const_inline_array, [4096 x i128]** %c, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %c3 = load [4096 x i128]*, [4096 x i128]** %c, align 8
  %x = load i128, i128* %k.x.declare_arg, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %c3, i128 0, i128 %x
  %c4 = load i128, i128* %array_getter, align 4
  %i5 = load i128, i128* %i, align 4
  %rshift = lshr i128 %c4, %i5
  %and = and i128 %rshift, 1
  %out6 = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out6, i128 0, i128 %i7
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint.7)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %i10 = load i128, i128* %i, align 4
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i10
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i12 = load i128, i128* %i, align 4
  %add = add i128 %i12, 1
  store i128 %add, i128* %i, align 4
  %i13 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i13, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out14 = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %k.out.write_output_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 1
  store [4096 x i128]* %out14, [4096 x i128]** %k.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_k* @fn_template_build_k(i128 %0) {
entry:
  %struct_template_circuit_k = alloca %struct_template_circuit_k, align 8
  %k.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %struct_template_circuit_k, i32 0, i32 0
  store i128 %0, i128* %k.x.write_arg_inner, align 4
  ret %struct_template_circuit_k* %struct_template_circuit_k
}

define i128 @sha256K(i128 %0) {
entry:
  %sha256k.i.declare_arg = alloca i128, align 8
  store i128 %0, i128* %sha256k.i.declare_arg, align 4
  %k = alloca [4096 x i128]*, align 8
  %k1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %k1, [4096 x i128]** %k, align 8
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  store [4096 x i128]* %const_inline_array, [4096 x i128]** %k, align 8
  %k2 = load [4096 x i128]*, [4096 x i128]** %k, align 8
  %i = load i128, i128* %sha256k.i.declare_arg, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %k2, i128 0, i128 %i
  %k3 = load i128, i128* %array_getter, align 4
  ret i128 %k3
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %CompConstant = alloca %struct_template_circuit_compconstant*, align 8
  store %struct_template_circuit_compconstant* %0, %struct_template_circuit_compconstant** %CompConstant, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %compconstant.ct.declare_arg = alloca i128, align 8
  store i128 %compconstant.ct.read_arg_inner, i128* %compconstant.ct.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %compconstant.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %compconstant.in.read_input_inner, [4096 x i128]** %compconstant.in.declare_input, align 8
  %smsb = alloca i128, align 8
  %smsb2 = call i128 @fn_intrinsic_inline_init()
  store i128 %smsb2, i128* %smsb, align 4
  %sum = alloca i128, align 8
  %sum3 = call i128 @fn_intrinsic_inline_init()
  store i128 %sum3, i128* %sum, align 4
  %a = alloca i128, align 8
  %a4 = call i128 @fn_intrinsic_inline_init()
  store i128 %a4, i128* %a, align 4
  %e = alloca i128, align 8
  %e5 = call i128 @fn_intrinsic_inline_init()
  store i128 %e5, i128* %e, align 4
  %num2bits = alloca %struct_template_circuit_num2bits*, align 8
  %clsb = alloca i128, align 8
  %clsb6 = call i128 @fn_intrinsic_inline_init()
  store i128 %clsb6, i128* %clsb, align 4
  %slsb = alloca i128, align 8
  %slsb7 = call i128 @fn_intrinsic_inline_init()
  store i128 %slsb7, i128* %slsb, align 4
  %compconstant.sout.declare_inter = alloca i128, align 8
  %sout = call i128 @fn_intrinsic_inline_init()
  store i128 %sout, i128* %compconstant.sout.declare_inter, align 4
  %b = alloca i128, align 8
  %b8 = call i128 @fn_intrinsic_inline_init()
  store i128 %b8, i128* %b, align 4
  %i = alloca i128, align 8
  %i9 = call i128 @fn_intrinsic_inline_init()
  store i128 %i9, i128* %i, align 4
  %cmsb = alloca i128, align 8
  %cmsb10 = call i128 @fn_intrinsic_inline_init()
  store i128 %cmsb10, i128* %cmsb, align 4
  %compconstant.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %compconstant.out.declare_output, align 4
  %compconstant.parts.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %parts, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  store i128 0, i128* %clsb, align 4
  store i128 0, i128* %cmsb, align 4
  store i128 0, i128* %slsb, align 4
  store i128 0, i128* %smsb, align 4
  store i128 0, i128* %sum, align 4
  store i128 poison, i128* %b, align 4
  store i128 1, i128* %a, align 4
  store i128 1, i128* %e, align 4
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ct = load i128, i128* %compconstant.ct.declare_arg, align 4
  %i11 = load i128, i128* %i, align 4
  %mul = mul i128 %i11, 2
  %rshift = lshr i128 %ct, %mul
  %and = and i128 %rshift, 1
  store i128 %and, i128* %clsb, align 4
  %ct12 = load i128, i128* %compconstant.ct.declare_arg, align 4
  %i13 = load i128, i128* %i, align 4
  %mul14 = mul i128 %i13, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %ct12, %add
  %and16 = and i128 %rshift15, 1
  store i128 %and16, i128* %cmsb, align 4
  %in = load [4096 x i128]*, [4096 x i128]** %compconstant.in.declare_input, align 8
  %i17 = load i128, i128* %i, align 4
  %mul18 = mul i128 %i17, 2
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  store i128 %in19, i128* %slsb, align 4
  %in20 = load [4096 x i128]*, [4096 x i128]** %compconstant.in.declare_input, align 8
  %i21 = load i128, i128* %i, align 4
  %mul22 = mul i128 %i21, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in20, i128 0, i128 %add23
  %in25 = load i128, i128* %array_getter24, align 4
  store i128 %in25, i128* %smsb, align 4
  %cmsb26 = load i128, i128* %cmsb, align 4
  %eq = icmp eq i128 %cmsb26, 0
  %clsb27 = load i128, i128* %clsb, align 4
  %eq28 = icmp eq i128 %clsb27, 0
  %and29 = and i1 %eq, %eq28
  br i1 %and29, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %b30 = load i128, i128* %b, align 4
  %neg = sub i128 0, %b30
  %smsb31 = load i128, i128* %smsb, align 4
  %mul32 = mul i128 %neg, %smsb31
  %slsb33 = load i128, i128* %slsb, align 4
  %mul34 = mul i128 %mul32, %slsb33
  %b35 = load i128, i128* %b, align 4
  %smsb36 = load i128, i128* %smsb, align 4
  %mul37 = mul i128 %b35, %smsb36
  %add38 = add i128 %mul34, %mul37
  %b39 = load i128, i128* %b, align 4
  %slsb40 = load i128, i128* %slsb, align 4
  %mul41 = mul i128 %b39, %slsb40
  %add42 = add i128 %add38, %mul41
  %parts43 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts43, i128 0, i128 %i44
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts46, i128 %add42, i1* @constraint.8)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i47 = load i128, i128* %i, align 4
  %parts48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i47
  store i128 %add42, i128* %parts48, align 4
  br label %if.exit122

if.false:                                         ; preds = %loop.body
  %cmsb51 = load i128, i128* %cmsb, align 4
  %eq52 = icmp eq i128 %cmsb51, 0
  %clsb53 = load i128, i128* %clsb, align 4
  %eq54 = icmp eq i128 %clsb53, 1
  %and55 = and i1 %eq52, %eq54
  br i1 %and55, label %if.true49, label %if.false50

if.true49:                                        ; preds = %if.false
  %a56 = load i128, i128* %a, align 4
  %smsb57 = load i128, i128* %smsb, align 4
  %mul58 = mul i128 %a56, %smsb57
  %slsb59 = load i128, i128* %slsb, align 4
  %mul60 = mul i128 %mul58, %slsb59
  %a61 = load i128, i128* %a, align 4
  %slsb62 = load i128, i128* %slsb, align 4
  %mul63 = mul i128 %a61, %slsb62
  %sub = sub i128 %mul60, %mul63
  %b64 = load i128, i128* %b, align 4
  %smsb65 = load i128, i128* %smsb, align 4
  %mul66 = mul i128 %b64, %smsb65
  %add67 = add i128 %sub, %mul66
  %a68 = load i128, i128* %a, align 4
  %smsb69 = load i128, i128* %smsb, align 4
  %mul70 = mul i128 %a68, %smsb69
  %sub71 = sub i128 %add67, %mul70
  %a72 = load i128, i128* %a, align 4
  %add73 = add i128 %sub71, %a72
  %parts74 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i75 = load i128, i128* %i, align 4
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts74, i128 0, i128 %i75
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts77, i128 %add73, i1* @constraint.9)
  %ptr_getter78 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i79 = load i128, i128* %i, align 4
  %parts80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter78, i128 0, i128 %i79
  store i128 %add73, i128* %parts80, align 4
  br label %if.exit121

if.false50:                                       ; preds = %if.false
  %cmsb83 = load i128, i128* %cmsb, align 4
  %eq84 = icmp eq i128 %cmsb83, 1
  %clsb85 = load i128, i128* %clsb, align 4
  %eq86 = icmp eq i128 %clsb85, 0
  %and87 = and i1 %eq84, %eq86
  br i1 %and87, label %if.true81, label %if.false82

if.true81:                                        ; preds = %if.false50
  %b88 = load i128, i128* %b, align 4
  %smsb89 = load i128, i128* %smsb, align 4
  %mul90 = mul i128 %b88, %smsb89
  %slsb91 = load i128, i128* %slsb, align 4
  %mul92 = mul i128 %mul90, %slsb91
  %a93 = load i128, i128* %a, align 4
  %smsb94 = load i128, i128* %smsb, align 4
  %mul95 = mul i128 %a93, %smsb94
  %sub96 = sub i128 %mul92, %mul95
  %a97 = load i128, i128* %a, align 4
  %add98 = add i128 %sub96, %a97
  %parts99 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i100 = load i128, i128* %i, align 4
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts99, i128 0, i128 %i100
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts102, i128 %add98, i1* @constraint.10)
  %ptr_getter103 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i104 = load i128, i128* %i, align 4
  %parts105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter103, i128 0, i128 %i104
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %a106 = load i128, i128* %a, align 4
  %neg107 = sub i128 0, %a106
  %smsb108 = load i128, i128* %smsb, align 4
  %mul109 = mul i128 %neg107, %smsb108
  %slsb110 = load i128, i128* %slsb, align 4
  %mul111 = mul i128 %mul109, %slsb110
  %a112 = load i128, i128* %a, align 4
  %add113 = add i128 %mul111, %a112
  %parts114 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts114, i128 0, i128 %i115
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts117, i128 %add113, i1* @constraint.11)
  %ptr_getter118 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i119 = load i128, i128* %i, align 4
  %parts120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter118, i128 0, i128 %i119
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %sum123 = load i128, i128* %sum, align 4
  %parts124 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts124, i128 0, i128 %i125
  %parts127 = load i128, i128* %array_getter126, align 4
  %add128 = add i128 %sum123, %parts127
  store i128 %add128, i128* %sum, align 4
  %b129 = load i128, i128* %b, align 4
  %e130 = load i128, i128* %e, align 4
  %sub131 = sub i128 %b129, %e130
  store i128 %sub131, i128* %b, align 4
  %a132 = load i128, i128* %a, align 4
  %e133 = load i128, i128* %e, align 4
  %add134 = add i128 %a132, %e133
  store i128 %add134, i128* %a, align 4
  %e135 = load i128, i128* %e, align 4
  %mul136 = mul i128 %e135, 2
  store i128 %mul136, i128* %e, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit122
  %i137 = load i128, i128* %i, align 4
  %add138 = add i128 %i137, 1
  store i128 %add138, i128* %i, align 4
  %i139 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i139, 127
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum140 = load i128, i128* %sum, align 4
  %sout141 = load i128, i128* %compconstant.sout.declare_inter, align 4
  call void @fn_intrinsic_add_constraint(i128 %sout141, i128 %sum140, i1* @constraint.12)
  %ptr_getter142 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter142, i32 0, i32 3
  store i128 %sum140, i128* %compconstant.sout.write_inter_inner, align 4
  %CompConstant143 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %CompConstant143, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  store i128 %compconstant.sout.read_inter_inner, i128* %compconstant.sout.declare_inter, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %num2bits, align 8
  %sout145 = load i128, i128* %compconstant.sout.declare_inter, align 4
  %num2bits146 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits146, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %sout145, i1* @constraint.13)
  %ptr_getter148 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter148, i32 0, i32 1
  store i128 %sout145, i128* %num2bits.in.write_input_outter, align 4
  %num2bits149 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits149, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  %out153 = load i128, i128* %compconstant.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out153, i128 %num2bits152, i1* @constraint.14)
  %ptr_getter154 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter154, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %CompConstant155 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %CompConstant155, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  store i128 %compconstant.out.read_output_inner, i128* %compconstant.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %parts157 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [4096 x i128]* %parts157, [4096 x i128]** %compconstant.parts.write_inter_inner, align 8
  %sout158 = load i128, i128* %compconstant.sout.declare_inter, align 4
  %compconstant.sout.write_inter_inner159 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %sout158, i128* %compconstant.sout.write_inter_inner159, align 4
  %out160 = load i128, i128* %compconstant.out.declare_output, align 4
  %compconstant.out.write_output_inner161 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %out160, i128* %compconstant.out.write_output_inner161, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %compconstant.ct.write_arg_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %compconstant.ct.write_arg_inner, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %LessThan = alloca %struct_template_circuit_lessthan*, align 8
  store %struct_template_circuit_lessthan* %0, %struct_template_circuit_lessthan** %LessThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %lessthan.n.declare_arg = alloca i128, align 8
  store i128 %lessthan.n.read_arg_inner, i128* %lessthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %lessthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %lessthan.in.read_input_inner, [4096 x i128]** %lessthan.in.declare_input, align 8
  %lessthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %lessthan.out.declare_output, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %lessthan.n.declare_arg, align 4
  %add = add i128 %n, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %lessthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %n3 = load i128, i128* %lessthan.n.declare_arg, align 4
  %lshift = shl i128 1, %n3
  %add4 = add i128 %in2, %lshift
  %in5 = load [4096 x i128]*, [4096 x i128]** %lessthan.in.declare_input, align 8
  %array_getter6 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in5, i128 0, i128 1
  %in7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %add4, %in7
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.15)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %n12 = load i128, i128* %lessthan.n.declare_arg, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %n12
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  %out16 = load i128, i128* %lessthan.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out16, i128 %sub15, i1* @constraint.16)
  %ptr_getter17 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %LessThan, align 8
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter17, i32 0, i32 2
  store i128 %sub15, i128* %lessthan.out.write_output_inner, align 4
  %LessThan18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %LessThan, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %LessThan18, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  store i128 %lessthan.out.read_output_inner, i128* %lessthan.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out20 = load i128, i128* %lessthan.out.declare_output, align 4
  %lessthan.out.write_output_inner21 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %out20, i128* %lessthan.out.write_output_inner21, align 4
  ret void
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
  %struct_template_circuit_lessthan = alloca %struct_template_circuit_lessthan, align 8
  %lessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %struct_template_circuit_lessthan, i32 0, i32 0
  store i128 %0, i128* %lessthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lessthan* %struct_template_circuit_lessthan
}

define i128 @Maj(i128 %0, i128 %1, i128 %2) {
entry:
  %maj.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %maj.x.declare_arg, align 4
  %maj.y.declare_arg = alloca i128, align 8
  store i128 %1, i128* %maj.y.declare_arg, align 4
  %maj.z.declare_arg = alloca i128, align 8
  store i128 %2, i128* %maj.z.declare_arg, align 4
  %x = load i128, i128* %maj.x.declare_arg, align 4
  %y = load i128, i128* %maj.y.declare_arg, align 4
  %and = and i128 %x, %y
  %x1 = load i128, i128* %maj.x.declare_arg, align 4
  %z = load i128, i128* %maj.z.declare_arg, align 4
  %and2 = and i128 %x1, %z
  %xor = xor i128 %and, %and2
  %y3 = load i128, i128* %maj.y.declare_arg, align 4
  %z4 = load i128, i128* %maj.z.declare_arg, align 4
  %and5 = and i128 %y3, %z4
  %xor6 = xor i128 %xor, %and5
  ret i128 %xor6
}

define void @fn_template_init_ch_t(%struct_template_circuit_ch_t* %0) {
entry:
  %Ch_t = alloca %struct_template_circuit_ch_t*, align 8
  store %struct_template_circuit_ch_t* %0, %struct_template_circuit_ch_t** %Ch_t, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 0
  %ch_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %ch_t.n.declare_arg = alloca i128, align 8
  store i128 %ch_t.n.read_arg_inner, i128* %ch_t.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 1
  %ch_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %ch_t.a.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %ch_t.a.read_input_inner, [4096 x i128]** %ch_t.a.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 2
  %ch_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %ch_t.b.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %ch_t.b.read_input_inner, [4096 x i128]** %ch_t.b.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 3
  %ch_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %ch_t.c.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %ch_t.c.read_input_inner, [4096 x i128]** %ch_t.c.declare_input, align 8
  %ch_t.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %ch_t.out.declare_output, align 8
  %k = alloca i128, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  store i128 %k4, i128* %k, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [4096 x i128]*, [4096 x i128]** %ch_t.a.declare_input, align 8
  %k5 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [4096 x i128]*, [4096 x i128]** %ch_t.b.declare_input, align 8
  %k7 = load i128, i128* %k, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k7
  %b9 = load i128, i128* %array_getter8, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %ch_t.c.declare_input, align 8
  %k10 = load i128, i128* %k, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k10
  %c12 = load i128, i128* %array_getter11, align 4
  %sub = sub i128 %b9, %c12
  %mul = mul i128 %a6, %sub
  %c13 = load [4096 x i128]*, [4096 x i128]** %ch_t.c.declare_input, align 8
  %k14 = load i128, i128* %k, align 4
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c13, i128 0, i128 %k14
  %c16 = load i128, i128* %array_getter15, align 4
  %add = add i128 %mul, %c16
  %out17 = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %k18 = load i128, i128* %k, align 4
  %array_getter19 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out17, i128 0, i128 %k18
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %add, i1* @constraint.17)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %k21 = load i128, i128* %k, align 4
  %out22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k21
  store i128 %add, i128* %out22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k23 = load i128, i128* %k, align 4
  %add24 = add i128 %k23, 1
  store i128 %add24, i128* %k, align 4
  %k25 = load i128, i128* %k, align 4
  %n = load i128, i128* %ch_t.n.declare_arg, align 4
  %slt = icmp slt i128 %k25, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out26 = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %ch_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 4
  store [4096 x i128]* %out26, [4096 x i128]** %ch_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 %0) {
entry:
  %struct_template_circuit_ch_t = alloca %struct_template_circuit_ch_t, align 8
  %ch_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %struct_template_circuit_ch_t, i32 0, i32 0
  store i128 %0, i128* %ch_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_ch_t* %struct_template_circuit_ch_t
}

define i128 @nbits(i128 %0) {
entry:
  %nbits.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %nbits.a.declare_arg, align 4
  %n = alloca i128, align 8
  %n1 = call i128 @fn_intrinsic_inline_init()
  store i128 %n1, i128* %n, align 4
  %r = alloca i128, align 8
  %r2 = call i128 @fn_intrinsic_inline_init()
  store i128 %r2, i128* %r, align 4
  store i128 1, i128* %n, align 4
  store i128 0, i128* %r, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %r3 = load i128, i128* %r, align 4
  %add = add i128 %r3, 1
  store i128 %add, i128* %r, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %n4 = load i128, i128* %n, align 4
  %mul = mul i128 %n4, 2
  store i128 %mul, i128* %n, align 4
  %n5 = load i128, i128* %n, align 4
  %sub = sub i128 %n5, 1
  %a = load i128, i128* %nbits.a.declare_arg, align 4
  %slt = icmp slt i128 %sub, %a
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %r6 = load i128, i128* %r, align 4
  ret i128 %r6
}

define void @fn_template_init_xor3(%struct_template_circuit_xor3* %0) {
entry:
  %Xor3 = alloca %struct_template_circuit_xor3*, align 8
  store %struct_template_circuit_xor3* %0, %struct_template_circuit_xor3** %Xor3, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 0
  %xor3.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %xor3.n.declare_arg = alloca i128, align 8
  store i128 %xor3.n.read_arg_inner, i128* %xor3.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 1
  %xor3.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %xor3.a.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %xor3.a.read_input_inner, [4096 x i128]** %xor3.a.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 2
  %xor3.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %xor3.b.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %xor3.b.read_input_inner, [4096 x i128]** %xor3.b.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 3
  %xor3.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %xor3.c.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %xor3.c.read_input_inner, [4096 x i128]** %xor3.c.declare_input, align 8
  %xor3.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %xor3.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall4 to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %xor3.out.declare_output, align 8
  %k = alloca i128, align 8
  %k5 = call i128 @fn_intrinsic_inline_init()
  store i128 %k5, i128* %k, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %b = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %k6 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k6
  %b7 = load i128, i128* %array_getter, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %k8 = load i128, i128* %k, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k8
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %mid11 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %k12 = load i128, i128* %k, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid11, i128 0, i128 %k12
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.18)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %k15 = load i128, i128* %k, align 4
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k15
  store i128 %mul, i128* %mid16, align 4
  %a = load [4096 x i128]*, [4096 x i128]** %xor3.a.declare_input, align 8
  %k17 = load i128, i128* %k, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k17
  %a19 = load i128, i128* %array_getter18, align 4
  %b20 = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %k21 = load i128, i128* %k, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b20, i128 0, i128 %k21
  %b23 = load i128, i128* %array_getter22, align 4
  %mul24 = mul i128 2, %b23
  %sub = sub i128 1, %mul24
  %c25 = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %k26 = load i128, i128* %k, align 4
  %array_getter27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c25, i128 0, i128 %k26
  %c28 = load i128, i128* %array_getter27, align 4
  %mul29 = mul i128 2, %c28
  %sub30 = sub i128 %sub, %mul29
  %mid31 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %k32 = load i128, i128* %k, align 4
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid31, i128 0, i128 %k32
  %mid34 = load i128, i128* %array_getter33, align 4
  %mul35 = mul i128 4, %mid34
  %add = add i128 %sub30, %mul35
  %mul36 = mul i128 %a19, %add
  %b37 = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %k38 = load i128, i128* %k, align 4
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b37, i128 0, i128 %k38
  %b40 = load i128, i128* %array_getter39, align 4
  %add41 = add i128 %mul36, %b40
  %c42 = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %k43 = load i128, i128* %k, align 4
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c42, i128 0, i128 %k43
  %c45 = load i128, i128* %array_getter44, align 4
  %add46 = add i128 %add41, %c45
  %mid47 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %k48 = load i128, i128* %k, align 4
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid47, i128 0, i128 %k48
  %mid50 = load i128, i128* %array_getter49, align 4
  %mul51 = mul i128 2, %mid50
  %sub52 = sub i128 %add46, %mul51
  %out53 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %k54 = load i128, i128* %k, align 4
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out53, i128 0, i128 %k54
  %out56 = load i128, i128* %array_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %out56, i128 %sub52, i1* @constraint.19)
  %ptr_getter57 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %k58 = load i128, i128* %k, align 4
  %out59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter57, i128 0, i128 %k58
  store i128 %sub52, i128* %out59, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k60 = load i128, i128* %k, align 4
  %add61 = add i128 %k60, 1
  store i128 %add61, i128* %k, align 4
  %k62 = load i128, i128* %k, align 4
  %n = load i128, i128* %xor3.n.declare_arg, align 4
  %slt = icmp slt i128 %k62, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %mid63 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %xor3.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 4
  store [4096 x i128]* %mid63, [4096 x i128]** %xor3.mid.write_inter_inner, align 8
  %out64 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %xor3.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 5
  store [4096 x i128]* %out64, [4096 x i128]** %xor3.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_xor3* @fn_template_build_xor3(i128 %0) {
entry:
  %struct_template_circuit_xor3 = alloca %struct_template_circuit_xor3, align 8
  %xor3.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %struct_template_circuit_xor3, i32 0, i32 0
  store i128 %0, i128* %xor3.n.write_arg_inner, align 4
  ret %struct_template_circuit_xor3* %struct_template_circuit_xor3
}

define void @fn_template_init_shr(%struct_template_circuit_shr* %0) {
entry:
  %ShR = alloca %struct_template_circuit_shr*, align 8
  store %struct_template_circuit_shr* %0, %struct_template_circuit_shr** %ShR, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %shr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %shr.n.declare_arg = alloca i128, align 8
  store i128 %shr.n.read_arg_inner, i128* %shr.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 1
  %shr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %shr.r.declare_arg = alloca i128, align 8
  store i128 %shr.r.read_arg_inner, i128* %shr.r.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 2
  %shr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %shr.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %shr.in.read_input_inner, [4096 x i128]** %shr.in.declare_input, align 8
  %shr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %shr.out.declare_output, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i4 = load i128, i128* %i, align 4
  %r = load i128, i128* %shr.r.declare_arg, align 4
  %add = add i128 %i4, %r
  %n = load i128, i128* %shr.n.declare_arg, align 4
  %sge = icmp sge i128 %add, %n
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %out5 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out5, i128 0, i128 %i6
  %out7 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %out7, i128 0, i1* @constraint.20)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i8
  store i128 0, i128* %out9, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in = load [4096 x i128]*, [4096 x i128]** %shr.in.declare_input, align 8
  %i10 = load i128, i128* %i, align 4
  %r11 = load i128, i128* %shr.r.declare_arg, align 4
  %add12 = add i128 %i10, %r11
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %add12
  %in14 = load i128, i128* %array_getter13, align 4
  %out15 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out15, i128 0, i128 %i16
  %out18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %in14, i1* @constraint.21)
  %ptr_getter19 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %i20 = load i128, i128* %i, align 4
  %out21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter19, i128 0, i128 %i20
  store i128 %in14, i128* %out21, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %n25 = load i128, i128* %shr.n.declare_arg, align 4
  %slt = icmp slt i128 %i24, %n25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out26 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %shr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 3
  store [4096 x i128]* %out26, [4096 x i128]** %shr.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_shr* @fn_template_build_shr(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_shr = alloca %struct_template_circuit_shr, align 8
  %shr.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %struct_template_circuit_shr, i32 0, i32 0
  store i128 %0, i128* %shr.n.write_arg_inner, align 4
  %shr.r.write_arg_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %struct_template_circuit_shr, i32 0, i32 1
  store i128 %1, i128* %shr.r.write_arg_inner, align 4
  ret %struct_template_circuit_shr* %struct_template_circuit_shr
}

define i128 @bsigma1(i128 %0) {
entry:
  %bsigma1.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %bsigma1.x.declare_arg, align 4
  %x = load i128, i128* %bsigma1.x.declare_arg, align 4
  %call = call i128 @rrot(i128 %x, i128 6)
  %x1 = load i128, i128* %bsigma1.x.declare_arg, align 4
  %call2 = call i128 @rrot(i128 %x1, i128 11)
  %xor = xor i128 %call, %call2
  %x3 = load i128, i128* %bsigma1.x.declare_arg, align 4
  %call4 = call i128 @rrot(i128 %x3, i128 25)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_bigsigma(%struct_template_circuit_bigsigma* %0) {
entry:
  %BigSigma = alloca %struct_template_circuit_bigsigma*, align 8
  store %struct_template_circuit_bigsigma* %0, %struct_template_circuit_bigsigma** %BigSigma, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 0
  %bigsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigsigma.ra.declare_arg = alloca i128, align 8
  store i128 %bigsigma.ra.read_arg_inner, i128* %bigsigma.ra.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 1
  %bigsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigsigma.rb.declare_arg = alloca i128, align 8
  store i128 %bigsigma.rb.read_arg_inner, i128* %bigsigma.rb.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 2
  %bigsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigsigma.rc.declare_arg = alloca i128, align 8
  store i128 %bigsigma.rc.read_arg_inner, i128* %bigsigma.rc.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 3
  %bigsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %bigsigma.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bigsigma.in.read_input_inner, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %bigsigma.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %rotc = alloca %struct_template_circuit_rotr*, align 8
  %rotb = alloca %struct_template_circuit_rotr*, align 8
  %xor3 = alloca %struct_template_circuit_xor3*, align 8
  %k = alloca i128, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  store i128 %k4, i128* %k, align 4
  %rota = alloca %struct_template_circuit_rotr*, align 8
  store i128 0, i128* %k, align 4
  %ra = load i128, i128* %bigsigma.ra.declare_arg, align 4
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %ra)
  store %struct_template_circuit_rotr* %call, %struct_template_circuit_rotr** %rota, align 8
  %rb = load i128, i128* %bigsigma.rb.declare_arg, align 4
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %rb)
  store %struct_template_circuit_rotr* %call5, %struct_template_circuit_rotr** %rotb, align 8
  %rc = load i128, i128* %bigsigma.rc.declare_arg, align 4
  %call6 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %rc)
  store %struct_template_circuit_rotr* %call6, %struct_template_circuit_rotr** %rotc, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %k7 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k7
  %in8 = load i128, i128* %array_getter, align 4
  %rota9 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rota9, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %k11 = load i128, i128* %k, align 4
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k11
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.22)
  %ptr_getter = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %ptr_getter, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %k16 = load i128, i128* %k, align 4
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k16
  store i128 %in8, i128* %rota17, align 4
  %in18 = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %k19 = load i128, i128* %k, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in18, i128 0, i128 %k19
  %in21 = load i128, i128* %array_getter20, align 4
  %rotb22 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotb22, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %k25 = load i128, i128* %k, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k25
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.23)
  %ptr_getter28 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %ptr_getter28, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %k31 = load i128, i128* %k, align 4
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k31
  store i128 %in21, i128* %rotb32, align 4
  %in33 = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %k34 = load i128, i128* %k, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in33, i128 0, i128 %k34
  %in36 = load i128, i128* %array_getter35, align 4
  %rotc37 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotc, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotc37, i32 0, i32 2
  %rotr.in.read_input_outter39 = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %k40 = load i128, i128* %k, align 4
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter39, i128 0, i128 %k40
  %rotc42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotc42, i128 %in36, i1* @constraint.24)
  %ptr_getter43 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotc, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %ptr_getter43, i32 0, i32 2
  %rotr.in.read_input_outter45 = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %k46 = load i128, i128* %k, align 4
  %rotc47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter45, i128 0, i128 %k46
  store i128 %in36, i128* %rotc47, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k48 = load i128, i128* %k, align 4
  %add = add i128 %k48, 1
  store i128 %add, i128* %k, align 4
  %k49 = load i128, i128* %k, align 4
  %slt = icmp slt i128 %k49, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call50 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  store %struct_template_circuit_xor3* %call50, %struct_template_circuit_xor3** %xor3, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch99, %loop.exit
  %rota52 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rota52, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter53, align 8
  %k54 = load i128, i128* %k, align 4
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k54
  %rota56 = load i128, i128* %array_getter55, align 4
  %xor357 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor357, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter58, align 8
  %k59 = load i128, i128* %k, align 4
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k59
  %xor361 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor361, i128 %rota56, i1* @constraint.25)
  %ptr_getter62 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter62, i32 0, i32 1
  %xor3.a.read_input_outter64 = load [4096 x i128]*, [4096 x i128]** %struct_getter63, align 8
  %k65 = load i128, i128* %k, align 4
  %xor366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter64, i128 0, i128 %k65
  store i128 %rota56, i128* %xor366, align 4
  %rotb67 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotb67, i32 0, i32 3
  %rotr.out.read_output_outter69 = load [4096 x i128]*, [4096 x i128]** %struct_getter68, align 8
  %k70 = load i128, i128* %k, align 4
  %array_getter71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter69, i128 0, i128 %k70
  %rotb72 = load i128, i128* %array_getter71, align 4
  %xor373 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor373, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter74, align 8
  %k75 = load i128, i128* %k, align 4
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k75
  %xor377 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor377, i128 %rotb72, i1* @constraint.26)
  %ptr_getter78 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter78, i32 0, i32 2
  %xor3.b.read_input_outter80 = load [4096 x i128]*, [4096 x i128]** %struct_getter79, align 8
  %k81 = load i128, i128* %k, align 4
  %xor382 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter80, i128 0, i128 %k81
  store i128 %rotb72, i128* %xor382, align 4
  %rotc83 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotc, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotc83, i32 0, i32 3
  %rotr.out.read_output_outter85 = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %k86 = load i128, i128* %k, align 4
  %array_getter87 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter85, i128 0, i128 %k86
  %rotc88 = load i128, i128* %array_getter87, align 4
  %xor389 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor389, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter90, align 8
  %k91 = load i128, i128* %k, align 4
  %array_getter92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k91
  %xor393 = load i128, i128* %array_getter92, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor393, i128 %rotc88, i1* @constraint.27)
  %ptr_getter94 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter94, i32 0, i32 3
  %xor3.c.read_input_outter96 = load [4096 x i128]*, [4096 x i128]** %struct_getter95, align 8
  %k97 = load i128, i128* %k, align 4
  %xor398 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter96, i128 0, i128 %k97
  store i128 %rotc88, i128* %xor398, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body51
  %k100 = load i128, i128* %k, align 4
  %add101 = add i128 %k100, 1
  store i128 %add101, i128* %k, align 4
  %k102 = load i128, i128* %k, align 4
  %slt103 = icmp slt i128 %k102, 32
  br i1 %slt103, label %loop.body51, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch99
  store i128 0, i128* %k, align 4
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch118, %loop.exit104
  %xor3106 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor3106, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %k108 = load i128, i128* %k, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k108
  %xor3110 = load i128, i128* %array_getter109, align 4
  %out111 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %k112 = load i128, i128* %k, align 4
  %array_getter113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out111, i128 0, i128 %k112
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %xor3110, i1* @constraint.28)
  %ptr_getter115 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %k116 = load i128, i128* %k, align 4
  %out117 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter115, i128 0, i128 %k116
  store i128 %xor3110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %k119 = load i128, i128* %k, align 4
  %add120 = add i128 %k119, 1
  store i128 %add120, i128* %k, align 4
  %k121 = load i128, i128* %k, align 4
  %slt122 = icmp slt i128 %k121, 32
  br i1 %slt122, label %loop.body105, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch118
  br label %exit

exit:                                             ; preds = %loop.exit123
  %out124 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %bigsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out124, [4096 x i128]** %bigsigma.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigsigma = alloca %struct_template_circuit_bigsigma, align 8
  %bigsigma.ra.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 0
  store i128 %0, i128* %bigsigma.ra.write_arg_inner, align 4
  %bigsigma.rb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 1
  store i128 %1, i128* %bigsigma.rb.write_arg_inner, align 4
  %bigsigma.rc.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 2
  store i128 %2, i128* %bigsigma.rc.write_arg_inner, align 4
  ret %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma
}

define i128 @ssigma0(i128 %0) {
entry:
  %ssigma0.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %ssigma0.x.declare_arg, align 4
  %x = load i128, i128* %ssigma0.x.declare_arg, align 4
  %call = call i128 @rrot(i128 %x, i128 7)
  %x1 = load i128, i128* %ssigma0.x.declare_arg, align 4
  %call2 = call i128 @rrot(i128 %x1, i128 18)
  %xor = xor i128 %call, %call2
  %x3 = load i128, i128* %ssigma0.x.declare_arg, align 4
  %rshift = lshr i128 %x3, 3
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define i128 @Ch(i128 %0, i128 %1, i128 %2) {
entry:
  %ch.x.declare_arg = alloca i128, align 8
  store i128 %0, i128* %ch.x.declare_arg, align 4
  %ch.y.declare_arg = alloca i128, align 8
  store i128 %1, i128* %ch.y.declare_arg, align 4
  %ch.z.declare_arg = alloca i128, align 8
  store i128 %2, i128* %ch.z.declare_arg, align 4
  %x = load i128, i128* %ch.x.declare_arg, align 4
  %y = load i128, i128* %ch.y.declare_arg, align 4
  %and = and i128 %x, %y
  %x1 = load i128, i128* %ch.x.declare_arg, align 4
  %xor = xor i128 4294967295, %x1
  %z = load i128, i128* %ch.z.declare_arg, align 4
  %and2 = and i128 %xor, %z
  %xor3 = xor i128 %and, %and2
  ret i128 %xor3
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %IsZero = alloca %struct_template_circuit_iszero*, align 8
  store %struct_template_circuit_iszero* %0, %struct_template_circuit_iszero** %IsZero, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %iszero.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %iszero.in.declare_input = alloca i128, align 8
  store i128 %iszero.in.read_input_inner, i128* %iszero.in.declare_input, align 4
  %iszero.inv.declare_inter = alloca i128, align 8
  %inv = call i128 @fn_intrinsic_inline_init()
  store i128 %inv, i128* %iszero.inv.declare_inter, align 4
  %iszero.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %iszero.out.declare_output, align 4
  %in = load i128, i128* %iszero.in.declare_input, align 4
  %ne = icmp ne i128 %in, 0
  %in1 = load i128, i128* %iszero.in.declare_input, align 4
  %sdiv = sdiv i128 1, %in1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %IsZero, align 8
  %iszero.inv.write_inter_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 1
  store i128 %inline_switch, i128* %iszero.inv.write_inter_inner, align 4
  %IsZero2 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %IsZero, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %IsZero2, i32 0, i32 1
  %iszero.inv.read_inter_inner = load i128, i128* %struct_getter3, align 4
  store i128 %iszero.inv.read_inter_inner, i128* %iszero.inv.declare_inter, align 4
  %in4 = load i128, i128* %iszero.in.declare_input, align 4
  %neg = sub i128 0, %in4
  %inv5 = load i128, i128* %iszero.inv.declare_inter, align 4
  %mul = mul i128 %neg, %inv5
  %add = add i128 %mul, 1
  %out6 = load i128, i128* %iszero.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out6, i128 %add, i1* @constraint.29)
  %ptr_getter7 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %IsZero, align 8
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter7, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %IsZero8 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %IsZero, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %IsZero8, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  store i128 %iszero.out.read_output_inner, i128* %iszero.out.declare_output, align 4
  %in10 = load i128, i128* %iszero.in.declare_input, align 4
  %out11 = load i128, i128* %iszero.out.declare_output, align 4
  %mul12 = mul i128 %in10, %out11
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 0, i1* @constraint.30)
  br label %exit

exit:                                             ; preds = %entry
  %inv13 = load i128, i128* %iszero.inv.declare_inter, align 4
  %iszero.inv.write_inter_inner14 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %inv13, i128* %iszero.inv.write_inter_inner14, align 4
  %out15 = load i128, i128* %iszero.out.declare_output, align 4
  %iszero.out.write_output_inner16 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %out15, i128* %iszero.out.write_output_inner16, align 4
  ret void
}

define %struct_template_circuit_iszero* @fn_template_build_iszero() {
entry:
  %struct_template_circuit_iszero = alloca %struct_template_circuit_iszero, align 8
  ret %struct_template_circuit_iszero* %struct_template_circuit_iszero
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %BinSum = alloca %struct_template_circuit_binsum*, align 8
  store %struct_template_circuit_binsum* %0, %struct_template_circuit_binsum** %BinSum, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %binsum.n.declare_arg = alloca i128, align 8
  store i128 %binsum.n.read_arg_inner, i128* %binsum.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %binsum.ops.declare_arg = alloca i128, align 8
  store i128 %binsum.ops.read_arg_inner, i128* %binsum.ops.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter2, align 8
  %binsum.in.declare_input = alloca [4096 x [4096 x i128]]*, align 8
  store [4096 x [4096 x i128]]* %binsum.in.read_input_inner, [4096 x [4096 x i128]]** %binsum.in.declare_input, align 8
  %k = alloca i128, align 8
  %k3 = call i128 @fn_intrinsic_inline_init()
  store i128 %k3, i128* %k, align 4
  %lin = alloca i128, align 8
  %lin4 = call i128 @fn_intrinsic_inline_init()
  store i128 %lin4, i128* %lin, align 4
  %lout = alloca i128, align 8
  %lout5 = call i128 @fn_intrinsic_inline_init()
  store i128 %lout5, i128* %lout, align 4
  %binsum.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %binsum.out.declare_output, align 8
  %j = alloca i128, align 8
  %j6 = call i128 @fn_intrinsic_inline_init()
  store i128 %j6, i128* %j, align 4
  %nout = alloca i128, align 8
  %nout7 = call i128 @fn_intrinsic_inline_init()
  store i128 %nout7, i128* %nout, align 4
  %e2 = alloca i128, align 8
  %e28 = call i128 @fn_intrinsic_inline_init()
  store i128 %e28, i128* %e2, align 4
  %n = load i128, i128* %binsum.n.declare_arg, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n)
  %sub = sub i128 %pow, 1
  %ops = load i128, i128* %binsum.ops.declare_arg, align 4
  %mul = mul i128 %sub, %ops
  %call = call i128 @nbits(i128 %mul)
  store i128 %call, i128* %nout, align 4
  store i128 0, i128* %lin, align 4
  store i128 0, i128* %lout, align 4
  store i128 0, i128* %k, align 4
  store i128 0, i128* %j, align 4
  store i128 0, i128* %e2, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch23, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch, %loop.body
  %lin10 = load i128, i128* %lin, align 4
  %in = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %binsum.in.declare_input, align 8
  %j11 = load i128, i128* %j, align 4
  %k12 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %in, i128 0, i128 %j11, i128 %k12
  %in13 = load i128, i128* %array_getter, align 4
  %e214 = load i128, i128* %e2, align 4
  %mul15 = mul i128 %in13, %e214
  %add = add i128 %lin10, %mul15
  store i128 %add, i128* %lin, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body9
  %j16 = load i128, i128* %j, align 4
  %add17 = add i128 %j16, 1
  store i128 %add17, i128* %j, align 4
  %j18 = load i128, i128* %j, align 4
  %ops19 = load i128, i128* %binsum.ops.declare_arg, align 4
  %slt = icmp slt i128 %j18, %ops19
  br i1 %slt, label %loop.body9, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %e220 = load i128, i128* %e2, align 4
  %e221 = load i128, i128* %e2, align 4
  %add22 = add i128 %e220, %e221
  store i128 %add22, i128* %e2, align 4
  br label %loop.latch23

loop.latch23:                                     ; preds = %loop.exit
  %k24 = load i128, i128* %k, align 4
  %add25 = add i128 %k24, 1
  store i128 %add25, i128* %k, align 4
  %k26 = load i128, i128* %k, align 4
  %n27 = load i128, i128* %binsum.n.declare_arg, align 4
  %slt28 = icmp slt i128 %k26, %n27
  br i1 %slt28, label %loop.body, label %loop.exit29

loop.exit29:                                      ; preds = %loop.latch23
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch56, %loop.exit29
  %lin31 = load i128, i128* %lin, align 4
  %k32 = load i128, i128* %k, align 4
  %rshift = lshr i128 %lin31, %k32
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %k33 = load i128, i128* %k, align 4
  %out34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k33
  store i128 %and, i128* %out34, align 4
  %out35 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %k36 = load i128, i128* %k, align 4
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out35, i128 0, i128 %k36
  %out38 = load i128, i128* %array_getter37, align 4
  %out39 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %k40 = load i128, i128* %k, align 4
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out39, i128 0, i128 %k40
  %out42 = load i128, i128* %array_getter41, align 4
  %sub43 = sub i128 %out42, 1
  %mul44 = mul i128 %out38, %sub43
  call void @fn_intrinsic_add_constraint(i128 %mul44, i128 0, i1* @constraint.31)
  %lout45 = load i128, i128* %lout, align 4
  %out46 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %k47 = load i128, i128* %k, align 4
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out46, i128 0, i128 %k47
  %out49 = load i128, i128* %array_getter48, align 4
  %e250 = load i128, i128* %e2, align 4
  %mul51 = mul i128 %out49, %e250
  %add52 = add i128 %lout45, %mul51
  store i128 %add52, i128* %lout, align 4
  %e253 = load i128, i128* %e2, align 4
  %e254 = load i128, i128* %e2, align 4
  %add55 = add i128 %e253, %e254
  store i128 %add55, i128* %e2, align 4
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body30
  %k57 = load i128, i128* %k, align 4
  %add58 = add i128 %k57, 1
  store i128 %add58, i128* %k, align 4
  %k59 = load i128, i128* %k, align 4
  %nout60 = load i128, i128* %nout, align 4
  %slt61 = icmp slt i128 %k59, %nout60
  br i1 %slt61, label %loop.body30, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  %lin63 = load i128, i128* %lin, align 4
  %lout64 = load i128, i128* %lout, align 4
  call void @fn_intrinsic_add_constraint(i128 %lin63, i128 %lout64, i1* @constraint.32)
  br label %exit

exit:                                             ; preds = %loop.exit62
  %out65 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [4096 x i128]* %out65, [4096 x i128]** %binsum.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_binsum* @fn_template_build_binsum(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_binsum = alloca %struct_template_circuit_binsum, align 8
  %binsum.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 0
  store i128 %0, i128* %binsum.n.write_arg_inner, align 4
  %binsum.ops.write_arg_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 1
  store i128 %1, i128* %binsum.ops.write_arg_inner, align 4
  ret %struct_template_circuit_binsum* %struct_template_circuit_binsum
}

define [4096 x i128]* @sha256compression([4096 x i128]* %0, [4096 x i128]* %1) {
entry:
  %sha256compression.hin.declare_arg = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %0, [4096 x i128]** %sha256compression.hin.declare_arg, align 8
  %sha256compression.inp.declare_arg = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %1, [4096 x i128]** %sha256compression.inp.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %w = alloca [4096 x i128]*, align 8
  %w2 = alloca [4096 x i128], align 8
  store [4096 x i128]* %w2, [4096 x i128]** %w, align 8
  %f = alloca i128, align 8
  %f3 = call i128 @fn_intrinsic_inline_init()
  store i128 %f3, i128* %f, align 4
  %g = alloca i128, align 8
  %g4 = call i128 @fn_intrinsic_inline_init()
  store i128 %g4, i128* %g, align 4
  %b = alloca i128, align 8
  %b5 = call i128 @fn_intrinsic_inline_init()
  store i128 %b5, i128* %b, align 4
  %h = alloca i128, align 8
  %h6 = call i128 @fn_intrinsic_inline_init()
  store i128 %h6, i128* %h, align 4
  %T1 = alloca i128, align 8
  %T17 = call i128 @fn_intrinsic_inline_init()
  store i128 %T17, i128* %T1, align 4
  %out = alloca [4096 x i128]*, align 8
  %out8 = alloca [4096 x i128], align 8
  store [4096 x i128]* %out8, [4096 x i128]** %out, align 8
  %j = alloca i128, align 8
  %j9 = call i128 @fn_intrinsic_inline_init()
  store i128 %j9, i128* %j, align 4
  %a = alloca i128, align 8
  %a10 = call i128 @fn_intrinsic_inline_init()
  store i128 %a10, i128* %a, align 4
  %c = alloca i128, align 8
  %c11 = call i128 @fn_intrinsic_inline_init()
  store i128 %c11, i128* %c, align 4
  %e = alloca i128, align 8
  %e12 = call i128 @fn_intrinsic_inline_init()
  store i128 %e12, i128* %e, align 4
  %T2 = alloca i128, align 8
  %T213 = call i128 @fn_intrinsic_inline_init()
  store i128 %T213, i128* %T2, align 4
  %d = alloca i128, align 8
  %d14 = call i128 @fn_intrinsic_inline_init()
  store i128 %d14, i128* %d, align 4
  %H = alloca [4096 x i128]*, align 8
  %H15 = alloca [4096 x i128], align 8
  store [4096 x i128]* %H15, [4096 x i128]** %H, align 8
  %uniform_array = alloca [4096 x i128], align 8
  store [4096 x i128]* %uniform_array, [4096 x i128]** %H, align 8
  store i128 0, i128* %a, align 4
  store i128 0, i128* %b, align 4
  store i128 0, i128* %c, align 4
  store i128 0, i128* %d, align 4
  store i128 0, i128* %e, align 4
  store i128 0, i128* %f, align 4
  store i128 0, i128* %g, align 4
  store i128 0, i128* %h, align 4
  %uniform_array16 = alloca [4096 x i128], align 8
  store [4096 x i128]* %uniform_array16, [4096 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch35, %entry
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %i17 = load i128, i128* %i, align 4
  %H18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i17
  store i128 0, i128* %H18, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch, %loop.body
  %H20 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %H20, i128 0, i128 %i21
  %H22 = load i128, i128* %array_getter, align 4
  %hin = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_arg, align 8
  %i23 = load i128, i128* %i, align 4
  %mul = mul i128 %i23, 32
  %j24 = load i128, i128* %j, align 4
  %add = add i128 %mul, %j24
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin, i128 0, i128 %add
  %hin26 = load i128, i128* %array_getter25, align 4
  %j27 = load i128, i128* %j, align 4
  %lshift = shl i128 %hin26, %j27
  %add28 = add i128 %H22, %lshift
  %ptr_getter29 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %i30 = load i128, i128* %i, align 4
  %H31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter29, i128 0, i128 %i30
  store i128 %add28, i128* %H31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body19
  %j32 = load i128, i128* %j, align 4
  %add33 = add i128 %j32, 1
  store i128 %add33, i128* %j, align 4
  %j34 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j34, 32
  br i1 %slt, label %loop.body19, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.exit
  %i36 = load i128, i128* %i, align 4
  %add37 = add i128 %i36, 1
  store i128 %add37, i128* %i, align 4
  %i38 = load i128, i128* %i, align 4
  %slt39 = icmp slt i128 %i38, 8
  br i1 %slt39, label %loop.body, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  %H41 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H41, i128 0, i128 0
  %H43 = load i128, i128* %array_getter42, align 4
  store i128 %H43, i128* %a, align 4
  %H44 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H44, i128 0, i128 1
  %H46 = load i128, i128* %array_getter45, align 4
  store i128 %H46, i128* %b, align 4
  %H47 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H47, i128 0, i128 2
  %H49 = load i128, i128* %array_getter48, align 4
  store i128 %H49, i128* %c, align 4
  %H50 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H50, i128 0, i128 3
  %H52 = load i128, i128* %array_getter51, align 4
  store i128 %H52, i128* %d, align 4
  %H53 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H53, i128 0, i128 4
  %H55 = load i128, i128* %array_getter54, align 4
  store i128 %H55, i128* %e, align 4
  %H56 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter57 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H56, i128 0, i128 5
  %H58 = load i128, i128* %array_getter57, align 4
  store i128 %H58, i128* %f, align 4
  %H59 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H59, i128 0, i128 6
  %H61 = load i128, i128* %array_getter60, align 4
  store i128 %H61, i128* %g, align 4
  %H62 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H62, i128 0, i128 7
  %H64 = load i128, i128* %array_getter63, align 4
  store i128 %H64, i128* %h, align 4
  %uniform_array65 = alloca [4096 x i128], align 8
  store [4096 x i128]* %uniform_array65, [4096 x i128]** %w, align 8
  store i128 0, i128* %T1, align 4
  store i128 0, i128* %T2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body66

loop.body66:                                      ; preds = %loop.latch162, %loop.exit40
  %i67 = load i128, i128* %i, align 4
  %slt68 = icmp slt i128 %i67, 16
  br i1 %slt68, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body66
  %ptr_getter69 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i70 = load i128, i128* %i, align 4
  %w71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter69, i128 0, i128 %i70
  store i128 0, i128* %w71, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body72

if.false:                                         ; preds = %loop.body66
  %w95 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i96 = load i128, i128* %i, align 4
  %sub97 = sub i128 %i96, 2
  %array_getter98 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w95, i128 0, i128 %sub97
  %w99 = load i128, i128* %array_getter98, align 4
  %call = call i128 @ssigma1(i128 %w99)
  %w100 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i101 = load i128, i128* %i, align 4
  %sub102 = sub i128 %i101, 7
  %array_getter103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w100, i128 0, i128 %sub102
  %w104 = load i128, i128* %array_getter103, align 4
  %add105 = add i128 %call, %w104
  %w106 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i107 = load i128, i128* %i, align 4
  %sub108 = sub i128 %i107, 15
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w106, i128 0, i128 %sub108
  %w110 = load i128, i128* %array_getter109, align 4
  %call111 = call i128 @ssigma0(i128 %w110)
  %add112 = add i128 %add105, %call111
  %w113 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i114 = load i128, i128* %i, align 4
  %sub115 = sub i128 %i114, 16
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w113, i128 0, i128 %sub115
  %w117 = load i128, i128* %array_getter116, align 4
  %add118 = add i128 %add112, %w117
  %and = and i128 %add118, 4294967295
  %ptr_getter119 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i120 = load i128, i128* %i, align 4
  %w121 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter119, i128 0, i128 %i120
  store i128 %and, i128* %w121, align 4
  br label %if.exit

loop.body72:                                      ; preds = %loop.latch89, %if.true
  %w73 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i74 = load i128, i128* %i, align 4
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w73, i128 0, i128 %i74
  %w76 = load i128, i128* %array_getter75, align 4
  %inp = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_arg, align 8
  %i77 = load i128, i128* %i, align 4
  %mul78 = mul i128 %i77, 32
  %add79 = add i128 %mul78, 31
  %j80 = load i128, i128* %j, align 4
  %sub = sub i128 %add79, %j80
  %array_getter81 = getelementptr inbounds [4096 x i128], [4096 x i128]* %inp, i128 0, i128 %sub
  %inp82 = load i128, i128* %array_getter81, align 4
  %j83 = load i128, i128* %j, align 4
  %lshift84 = shl i128 %inp82, %j83
  %add85 = add i128 %w76, %lshift84
  %ptr_getter86 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i87 = load i128, i128* %i, align 4
  %w88 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter86, i128 0, i128 %i87
  store i128 %add85, i128* %w88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body72
  %j90 = load i128, i128* %j, align 4
  %add91 = add i128 %j90, 1
  store i128 %add91, i128* %j, align 4
  %j92 = load i128, i128* %j, align 4
  %slt93 = icmp slt i128 %j92, 32
  br i1 %slt93, label %loop.body72, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch89
  br label %if.exit

if.exit:                                          ; preds = %if.false, %loop.exit94
  %h122 = load i128, i128* %h, align 4
  %e123 = load i128, i128* %e, align 4
  %call124 = call i128 @bsigma1(i128 %e123)
  %add125 = add i128 %h122, %call124
  %e126 = load i128, i128* %e, align 4
  %f127 = load i128, i128* %f, align 4
  %g128 = load i128, i128* %g, align 4
  %call129 = call i128 @Ch(i128 %e126, i128 %f127, i128 %g128)
  %add130 = add i128 %add125, %call129
  %i131 = load i128, i128* %i, align 4
  %call132 = call i128 @sha256K(i128 %i131)
  %add133 = add i128 %add130, %call132
  %w134 = load [4096 x i128]*, [4096 x i128]** %w, align 8
  %i135 = load i128, i128* %i, align 4
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w134, i128 0, i128 %i135
  %w137 = load i128, i128* %array_getter136, align 4
  %add138 = add i128 %add133, %w137
  %and139 = and i128 %add138, 4294967295
  store i128 %and139, i128* %T1, align 4
  %a140 = load i128, i128* %a, align 4
  %call141 = call i128 @bsigma0(i128 %a140)
  %a142 = load i128, i128* %a, align 4
  %b143 = load i128, i128* %b, align 4
  %c144 = load i128, i128* %c, align 4
  %call145 = call i128 @Maj(i128 %a142, i128 %b143, i128 %c144)
  %add146 = add i128 %call141, %call145
  %and147 = and i128 %add146, 4294967295
  store i128 %and147, i128* %T2, align 4
  %g148 = load i128, i128* %g, align 4
  store i128 %g148, i128* %h, align 4
  %f149 = load i128, i128* %f, align 4
  store i128 %f149, i128* %g, align 4
  %e150 = load i128, i128* %e, align 4
  store i128 %e150, i128* %f, align 4
  %d151 = load i128, i128* %d, align 4
  %T1152 = load i128, i128* %T1, align 4
  %add153 = add i128 %d151, %T1152
  %and154 = and i128 %add153, 4294967295
  store i128 %and154, i128* %e, align 4
  %c155 = load i128, i128* %c, align 4
  store i128 %c155, i128* %d, align 4
  %b156 = load i128, i128* %b, align 4
  store i128 %b156, i128* %c, align 4
  %a157 = load i128, i128* %a, align 4
  store i128 %a157, i128* %b, align 4
  %T1158 = load i128, i128* %T1, align 4
  %T2159 = load i128, i128* %T2, align 4
  %add160 = add i128 %T1158, %T2159
  %and161 = and i128 %add160, 4294967295
  store i128 %and161, i128* %a, align 4
  br label %loop.latch162

loop.latch162:                                    ; preds = %if.exit
  %i163 = load i128, i128* %i, align 4
  %add164 = add i128 %i163, 1
  store i128 %add164, i128* %i, align 4
  %i165 = load i128, i128* %i, align 4
  %slt166 = icmp slt i128 %i165, 64
  br i1 %slt166, label %loop.body66, label %loop.exit167

loop.exit167:                                     ; preds = %loop.latch162
  %H168 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter169 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H168, i128 0, i128 0
  %H170 = load i128, i128* %array_getter169, align 4
  %a171 = load i128, i128* %a, align 4
  %add172 = add i128 %H170, %a171
  %ptr_getter173 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H174 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter173, i128 0, i128 0
  store i128 %add172, i128* %H174, align 4
  %H175 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter176 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H175, i128 0, i128 1
  %H177 = load i128, i128* %array_getter176, align 4
  %b178 = load i128, i128* %b, align 4
  %add179 = add i128 %H177, %b178
  %ptr_getter180 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter180, i128 0, i128 1
  store i128 %add179, i128* %H181, align 4
  %H182 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter183 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H182, i128 0, i128 2
  %H184 = load i128, i128* %array_getter183, align 4
  %c185 = load i128, i128* %c, align 4
  %add186 = add i128 %H184, %c185
  %ptr_getter187 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H188 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter187, i128 0, i128 2
  store i128 %add186, i128* %H188, align 4
  %H189 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter190 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H189, i128 0, i128 3
  %H191 = load i128, i128* %array_getter190, align 4
  %d192 = load i128, i128* %d, align 4
  %add193 = add i128 %H191, %d192
  %ptr_getter194 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter194, i128 0, i128 3
  store i128 %add193, i128* %H195, align 4
  %H196 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter197 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H196, i128 0, i128 4
  %H198 = load i128, i128* %array_getter197, align 4
  %e199 = load i128, i128* %e, align 4
  %add200 = add i128 %H198, %e199
  %ptr_getter201 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H202 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter201, i128 0, i128 4
  store i128 %add200, i128* %H202, align 4
  %H203 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H203, i128 0, i128 5
  %H205 = load i128, i128* %array_getter204, align 4
  %f206 = load i128, i128* %f, align 4
  %add207 = add i128 %H205, %f206
  %ptr_getter208 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter208, i128 0, i128 5
  store i128 %add207, i128* %H209, align 4
  %H210 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter211 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H210, i128 0, i128 6
  %H212 = load i128, i128* %array_getter211, align 4
  %g213 = load i128, i128* %g, align 4
  %add214 = add i128 %H212, %g213
  %ptr_getter215 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H216 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter215, i128 0, i128 6
  store i128 %add214, i128* %H216, align 4
  %H217 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %array_getter218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H217, i128 0, i128 7
  %H219 = load i128, i128* %array_getter218, align 4
  %h220 = load i128, i128* %h, align 4
  %add221 = add i128 %H219, %h220
  %ptr_getter222 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %H223 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter222, i128 0, i128 7
  store i128 %add221, i128* %H223, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body224

loop.body224:                                     ; preds = %loop.latch245, %loop.exit167
  store i128 0, i128* %j, align 4
  br label %loop.body225

loop.body225:                                     ; preds = %loop.latch239, %loop.body224
  %H226 = load [4096 x i128]*, [4096 x i128]** %H, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [4096 x i128], [4096 x i128]* %H226, i128 0, i128 %i227
  %H229 = load i128, i128* %array_getter228, align 4
  %j230 = load i128, i128* %j, align 4
  %rshift = lshr i128 %H229, %j230
  %and231 = and i128 %rshift, 1
  %ptr_getter232 = load [4096 x i128]*, [4096 x i128]** %out, align 8
  %i233 = load i128, i128* %i, align 4
  %mul234 = mul i128 %i233, 32
  %add235 = add i128 %mul234, 31
  %j236 = load i128, i128* %j, align 4
  %sub237 = sub i128 %add235, %j236
  %out238 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter232, i128 0, i128 %sub237
  store i128 %and231, i128* %out238, align 4
  br label %loop.latch239

loop.latch239:                                    ; preds = %loop.body225
  %j240 = load i128, i128* %j, align 4
  %add241 = add i128 %j240, 1
  store i128 %add241, i128* %j, align 4
  %j242 = load i128, i128* %j, align 4
  %slt243 = icmp slt i128 %j242, 32
  br i1 %slt243, label %loop.body225, label %loop.exit244

loop.exit244:                                     ; preds = %loop.latch239
  br label %loop.latch245

loop.latch245:                                    ; preds = %loop.exit244
  %i246 = load i128, i128* %i, align 4
  %add247 = add i128 %i246, 1
  store i128 %add247, i128* %i, align 4
  %i248 = load i128, i128* %i, align 4
  %slt249 = icmp slt i128 %i248, 8
  br i1 %slt249, label %loop.body224, label %loop.exit250

loop.exit250:                                     ; preds = %loop.latch245
  %out251 = load [4096 x i128]*, [4096 x i128]** %out, align 8
  ret [4096 x i128]* %out251
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %AliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  store %struct_template_circuit_aliascheck* %0, %struct_template_circuit_aliascheck** %AliasCheck, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %aliascheck.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %aliascheck.in.read_input_inner, [4096 x i128]** %aliascheck.in.declare_input, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %compConstant = alloca %struct_template_circuit_compconstant*, align 8
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  store %struct_template_circuit_compconstant* %call, %struct_template_circuit_compconstant** %compConstant, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %aliascheck.in.declare_input, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i2
  %in3 = load i128, i128* %array_getter, align 4
  %compConstant4 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant4, i32 0, i32 1
  %compconstant.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i6
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.33)
  %ptr_getter = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %i11 = load i128, i128* %i, align 4
  %compConstant12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i11
  store i128 %in3, i128* %compConstant12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i14, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %compConstant15 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant15, i32 0, i32 4
  %compconstant.out.read_output_outter = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.34)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %GreaterEqThan = alloca %struct_template_circuit_greatereqthan*, align 8
  store %struct_template_circuit_greatereqthan* %0, %struct_template_circuit_greatereqthan** %GreaterEqThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %greatereqthan.n.declare_arg = alloca i128, align 8
  store i128 %greatereqthan.n.read_arg_inner, i128* %greatereqthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %greatereqthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %greatereqthan.in.read_input_inner, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %greatereqthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %greatereqthan.out.declare_output, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %greatereqthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.35)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.36)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %greatereqthan.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.37)
  %ptr_getter25 = load %struct_template_circuit_greatereqthan*, %struct_template_circuit_greatereqthan** %GreaterEqThan, align 8
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %GreaterEqThan26 = load %struct_template_circuit_greatereqthan*, %struct_template_circuit_greatereqthan** %GreaterEqThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %GreaterEqThan26, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %greatereqthan.out.read_output_inner, i128* %greatereqthan.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out28 = load i128, i128* %greatereqthan.out.declare_output, align 4
  %greatereqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %out28, i128* %greatereqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greatereqthan* @fn_template_build_greatereqthan(i128 %0) {
entry:
  %struct_template_circuit_greatereqthan = alloca %struct_template_circuit_greatereqthan, align 8
  %greatereqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan, i32 0, i32 0
  store i128 %0, i128* %greatereqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %IsEqual = alloca %struct_template_circuit_isequal*, align 8
  store %struct_template_circuit_isequal* %0, %struct_template_circuit_isequal** %IsEqual, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %isequal.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %isequal.in.read_input_inner, [4096 x i128]** %isequal.in.declare_input, align 8
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %isequal.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %isequal.out.declare_output, align 4
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %isequal.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [4096 x i128]*, [4096 x i128]** %isequal.in.declare_input, align 8
  %array_getter3 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %isz5 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz5, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.38)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %isz7 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz7, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  %out9 = load i128, i128* %isequal.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %iszero.out.read_output_outter, i1* @constraint.39)
  %ptr_getter10 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %IsEqual, align 8
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %ptr_getter10, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %IsEqual11 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %IsEqual, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %IsEqual11, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  store i128 %isequal.out.read_output_inner, i128* %isequal.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out13 = load i128, i128* %isequal.out.declare_output, align 4
  %isequal.out.write_output_inner14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %out13, i128* %isequal.out.write_output_inner14, align 4
  ret void
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
  %struct_template_circuit_isequal = alloca %struct_template_circuit_isequal, align 8
  ret %struct_template_circuit_isequal* %struct_template_circuit_isequal
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %Num2BitsNeg = alloca %struct_template_circuit_num2bitsneg*, align 8
  store %struct_template_circuit_num2bitsneg* %0, %struct_template_circuit_num2bitsneg** %Num2BitsNeg, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %num2bitsneg.n.declare_arg = alloca i128, align 8
  store i128 %num2bitsneg.n.read_arg_inner, i128* %num2bitsneg.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %num2bitsneg.in.declare_input = alloca i128, align 8
  store i128 %num2bitsneg.in.read_input_inner, i128* %num2bitsneg.in.declare_input, align 4
  %lc1 = alloca i128, align 8
  %lc12 = call i128 @fn_intrinsic_inline_init()
  store i128 %lc12, i128* %lc1, align 4
  %neg = alloca i128, align 8
  %neg3 = call i128 @fn_intrinsic_inline_init()
  store i128 %neg3, i128* %neg, align 4
  %isZero = alloca %struct_template_circuit_iszero*, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
  %num2bitsneg.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  store i128 0, i128* %lc1, align 4
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZero, align 8
  %n = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %eq = icmp eq i128 %n, 0
  %n5 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n5)
  %in = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %sub = sub i128 %pow, %in
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 0, i128 %sub)
  store i128 %inline_switch, i128* %neg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %neg6 = load i128, i128* %neg, align 4
  %i7 = load i128, i128* %i, align 4
  %rshift = lshr i128 %neg6, %i7
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i8
  store i128 %and, i128* %out9, align 4
  %out10 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out10, i128 0, i128 %i11
  %out12 = load i128, i128* %array_getter, align 4
  %out13 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out13, i128 0, i128 %i14
  %out16 = load i128, i128* %array_getter15, align 4
  %sub17 = sub i128 %out16, 1
  %mul = mul i128 %out12, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.40)
  %lc118 = load i128, i128* %lc1, align 4
  %out19 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out19, i128 0, i128 %i20
  %out22 = load i128, i128* %array_getter21, align 4
  %i23 = load i128, i128* %i, align 4
  %pow24 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %i23)
  %mul25 = mul i128 %out22, %pow24
  %add = add i128 %lc118, %mul25
  store i128 %add, i128* %lc1, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i26 = load i128, i128* %i, align 4
  %add27 = add i128 %i26, 1
  store i128 %add27, i128* %i, align 4
  %i28 = load i128, i128* %i, align 4
  %n29 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %slt = icmp slt i128 %i28, %n29
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in30 = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %isZero31 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero31, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %in30, i1* @constraint.41)
  %ptr_getter33 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter33, i32 0, i32 0
  store i128 %in30, i128* %iszero.in.write_input_outter, align 4
  %lc134 = load i128, i128* %lc1, align 4
  %isZero35 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero35, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter36, align 4
  %n37 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow38 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n37)
  %mul39 = mul i128 %iszero.out.read_output_outter, %pow38
  %add40 = add i128 %lc134, %mul39
  %n41 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow42 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n41)
  %in43 = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %sub44 = sub i128 %pow42, %in43
  call void @fn_intrinsic_add_constraint(i128 %add40, i128 %sub44, i1* @constraint.42)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out45 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [4096 x i128]* %out45, [4096 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %LessEqThan = alloca %struct_template_circuit_lesseqthan*, align 8
  store %struct_template_circuit_lesseqthan* %0, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %lesseqthan.n.declare_arg = alloca i128, align 8
  store i128 %lesseqthan.n.read_arg_inner, i128* %lesseqthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %lesseqthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %lesseqthan.in.read_input_inner, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %lesseqthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %lesseqthan.out.declare_output, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %lesseqthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.43)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.44)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %lesseqthan.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.45)
  %ptr_getter25 = load %struct_template_circuit_lesseqthan*, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %LessEqThan26 = load %struct_template_circuit_lesseqthan*, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %LessEqThan26, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %lesseqthan.out.read_output_inner, i128* %lesseqthan.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out28 = load i128, i128* %lesseqthan.out.declare_output, align 4
  %lesseqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %out28, i128* %lesseqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_lesseqthan* @fn_template_build_lesseqthan(i128 %0) {
entry:
  %struct_template_circuit_lesseqthan = alloca %struct_template_circuit_lesseqthan, align 8
  %lesseqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan, i32 0, i32 0
  store i128 %0, i128* %lesseqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan
}

define void @fn_template_init_smallsigma(%struct_template_circuit_smallsigma* %0) {
entry:
  %SmallSigma = alloca %struct_template_circuit_smallsigma*, align 8
  store %struct_template_circuit_smallsigma* %0, %struct_template_circuit_smallsigma** %SmallSigma, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 0
  %smallsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %smallsigma.ra.declare_arg = alloca i128, align 8
  store i128 %smallsigma.ra.read_arg_inner, i128* %smallsigma.ra.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 1
  %smallsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %smallsigma.rb.declare_arg = alloca i128, align 8
  store i128 %smallsigma.rb.read_arg_inner, i128* %smallsigma.rb.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 2
  %smallsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %smallsigma.rc.declare_arg = alloca i128, align 8
  store i128 %smallsigma.rc.read_arg_inner, i128* %smallsigma.rc.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 3
  %smallsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %smallsigma.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %smallsigma.in.read_input_inner, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %rota = alloca %struct_template_circuit_rotr*, align 8
  %rotb = alloca %struct_template_circuit_rotr*, align 8
  %k = alloca i128, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  store i128 %k4, i128* %k, align 4
  %shrc = alloca %struct_template_circuit_shr*, align 8
  %xor3 = alloca %struct_template_circuit_xor3*, align 8
  %smallsigma.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %smallsigma.out.declare_output, align 8
  store i128 0, i128* %k, align 4
  %ra = load i128, i128* %smallsigma.ra.declare_arg, align 4
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %ra)
  store %struct_template_circuit_rotr* %call, %struct_template_circuit_rotr** %rota, align 8
  %rb = load i128, i128* %smallsigma.rb.declare_arg, align 4
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %rb)
  store %struct_template_circuit_rotr* %call5, %struct_template_circuit_rotr** %rotb, align 8
  %rc = load i128, i128* %smallsigma.rc.declare_arg, align 4
  %call6 = call %struct_template_circuit_shr* @fn_template_build_shr(i128 32, i128 %rc)
  store %struct_template_circuit_shr* %call6, %struct_template_circuit_shr** %shrc, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %k7 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k7
  %in8 = load i128, i128* %array_getter, align 4
  %rota9 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rota9, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %k11 = load i128, i128* %k, align 4
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k11
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.46)
  %ptr_getter = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %ptr_getter, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %k16 = load i128, i128* %k, align 4
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k16
  store i128 %in8, i128* %rota17, align 4
  %in18 = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %k19 = load i128, i128* %k, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in18, i128 0, i128 %k19
  %in21 = load i128, i128* %array_getter20, align 4
  %rotb22 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotb22, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %k25 = load i128, i128* %k, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k25
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.47)
  %ptr_getter28 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %ptr_getter28, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %k31 = load i128, i128* %k, align 4
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k31
  store i128 %in21, i128* %rotb32, align 4
  %in33 = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %k34 = load i128, i128* %k, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in33, i128 0, i128 %k34
  %in36 = load i128, i128* %array_getter35, align 4
  %shrc37 = load %struct_template_circuit_shr*, %struct_template_circuit_shr** %shrc, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %shrc37, i32 0, i32 2
  %shr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %k39 = load i128, i128* %k, align 4
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter, i128 0, i128 %k39
  %shrc41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %shrc41, i128 %in36, i1* @constraint.48)
  %ptr_getter42 = load %struct_template_circuit_shr*, %struct_template_circuit_shr** %shrc, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %ptr_getter42, i32 0, i32 2
  %shr.in.read_input_outter44 = load [4096 x i128]*, [4096 x i128]** %struct_getter43, align 8
  %k45 = load i128, i128* %k, align 4
  %shrc46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter44, i128 0, i128 %k45
  store i128 %in36, i128* %shrc46, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k47 = load i128, i128* %k, align 4
  %add = add i128 %k47, 1
  store i128 %add, i128* %k, align 4
  %k48 = load i128, i128* %k, align 4
  %slt = icmp slt i128 %k48, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call49 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  store %struct_template_circuit_xor3* %call49, %struct_template_circuit_xor3** %xor3, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch97, %loop.exit
  %rota51 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rota, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rota51, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %k53 = load i128, i128* %k, align 4
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k53
  %rota55 = load i128, i128* %array_getter54, align 4
  %xor356 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor356, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter57, align 8
  %k58 = load i128, i128* %k, align 4
  %array_getter59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k58
  %xor360 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor360, i128 %rota55, i1* @constraint.49)
  %ptr_getter61 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter61, i32 0, i32 1
  %xor3.a.read_input_outter63 = load [4096 x i128]*, [4096 x i128]** %struct_getter62, align 8
  %k64 = load i128, i128* %k, align 4
  %xor365 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter63, i128 0, i128 %k64
  store i128 %rota55, i128* %xor365, align 4
  %rotb66 = load %struct_template_circuit_rotr*, %struct_template_circuit_rotr** %rotb, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %rotb66, i32 0, i32 3
  %rotr.out.read_output_outter68 = load [4096 x i128]*, [4096 x i128]** %struct_getter67, align 8
  %k69 = load i128, i128* %k, align 4
  %array_getter70 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter68, i128 0, i128 %k69
  %rotb71 = load i128, i128* %array_getter70, align 4
  %xor372 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor372, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter73, align 8
  %k74 = load i128, i128* %k, align 4
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k74
  %xor376 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor376, i128 %rotb71, i1* @constraint.50)
  %ptr_getter77 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter78 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter77, i32 0, i32 2
  %xor3.b.read_input_outter79 = load [4096 x i128]*, [4096 x i128]** %struct_getter78, align 8
  %k80 = load i128, i128* %k, align 4
  %xor381 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter79, i128 0, i128 %k80
  store i128 %rotb71, i128* %xor381, align 4
  %shrc82 = load %struct_template_circuit_shr*, %struct_template_circuit_shr** %shrc, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %shrc82, i32 0, i32 3
  %shr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %k84 = load i128, i128* %k, align 4
  %array_getter85 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.out.read_output_outter, i128 0, i128 %k84
  %shrc86 = load i128, i128* %array_getter85, align 4
  %xor387 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor387, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter88, align 8
  %k89 = load i128, i128* %k, align 4
  %array_getter90 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k89
  %xor391 = load i128, i128* %array_getter90, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor391, i128 %shrc86, i1* @constraint.51)
  %ptr_getter92 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %ptr_getter92, i32 0, i32 3
  %xor3.c.read_input_outter94 = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %k95 = load i128, i128* %k, align 4
  %xor396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter94, i128 0, i128 %k95
  store i128 %shrc86, i128* %xor396, align 4
  br label %loop.latch97

loop.latch97:                                     ; preds = %loop.body50
  %k98 = load i128, i128* %k, align 4
  %add99 = add i128 %k98, 1
  store i128 %add99, i128* %k, align 4
  %k100 = load i128, i128* %k, align 4
  %slt101 = icmp slt i128 %k100, 32
  br i1 %slt101, label %loop.body50, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch97
  store i128 0, i128* %k, align 4
  br label %loop.body103

loop.body103:                                     ; preds = %loop.latch116, %loop.exit102
  %xor3104 = load %struct_template_circuit_xor3*, %struct_template_circuit_xor3** %xor3, align 8
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %xor3104, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter105, align 8
  %k106 = load i128, i128* %k, align 4
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k106
  %xor3108 = load i128, i128* %array_getter107, align 4
  %out109 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %k110 = load i128, i128* %k, align 4
  %array_getter111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out109, i128 0, i128 %k110
  %out112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_add_constraint(i128 %out112, i128 %xor3108, i1* @constraint.52)
  %ptr_getter113 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %k114 = load i128, i128* %k, align 4
  %out115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter113, i128 0, i128 %k114
  store i128 %xor3108, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body103
  %k117 = load i128, i128* %k, align 4
  %add118 = add i128 %k117, 1
  store i128 %add118, i128* %k, align 4
  %k119 = load i128, i128* %k, align 4
  %slt120 = icmp slt i128 %k119, 32
  br i1 %slt120, label %loop.body103, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch116
  br label %exit

exit:                                             ; preds = %loop.exit121
  %out122 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %smallsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out122, [4096 x i128]** %smallsigma.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_smallsigma = alloca %struct_template_circuit_smallsigma, align 8
  %smallsigma.ra.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 0
  store i128 %0, i128* %smallsigma.ra.write_arg_inner, align 4
  %smallsigma.rb.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 1
  store i128 %1, i128* %smallsigma.rb.write_arg_inner, align 4
  %smallsigma.rc.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 2
  store i128 %2, i128* %smallsigma.rc.write_arg_inner, align 4
  ret %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %Bits2Num_strict = alloca %struct_template_circuit_bits2num_strict*, align 8
  store %struct_template_circuit_bits2num_strict* %0, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %bits2num_strict.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bits2num_strict.in.read_input_inner, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %bits2num_strict.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %bits2num_strict.out.declare_output, align 4
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %b2n = alloca %struct_template_circuit_bits2num*, align 8
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  store %struct_template_circuit_bits2num* %call2, %struct_template_circuit_bits2num** %b2n, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i3
  %in4 = load i128, i128* %array_getter, align 4
  %b2n5 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n5, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i7
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n9, i128 %in4, i1* @constraint.53)
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %i12 = load i128, i128* %i, align 4
  %b2n13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i12
  store i128 %in4, i128* %b2n13, align 4
  %in14 = load [4096 x i128]*, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in14, i128 0, i128 %i15
  %in17 = load i128, i128* %array_getter16, align 4
  %aliasCheck18 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck18, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i20
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.54)
  %ptr_getter23 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter23, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %i26 = load i128, i128* %i, align 4
  %aliasCheck27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i26
  store i128 %in17, i128* %aliasCheck27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i28 = load i128, i128* %i, align 4
  %add = add i128 %i28, 1
  store i128 %add, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i29, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n30 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n30, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter31, align 4
  %out32 = load i128, i128* %bits2num_strict.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out32, i128 %bits2num.out.read_output_outter, i1* @constraint.55)
  %ptr_getter33 = load %struct_template_circuit_bits2num_strict*, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %ptr_getter33, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %Bits2Num_strict34 = load %struct_template_circuit_bits2num_strict*, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %Bits2Num_strict34, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  store i128 %bits2num_strict.out.read_output_inner, i128* %bits2num_strict.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out36 = load i128, i128* %bits2num_strict.out.declare_output, align 4
  %bits2num_strict.out.write_output_inner37 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %out36, i128* %bits2num_strict.out.write_output_inner37, align 4
  ret void
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
  %struct_template_circuit_bits2num_strict = alloca %struct_template_circuit_bits2num_strict, align 8
  ret %struct_template_circuit_bits2num_strict* %struct_template_circuit_bits2num_strict
}

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %ForceEqualIfEnabled = alloca %struct_template_circuit_forceequalifenabled*, align 8
  store %struct_template_circuit_forceequalifenabled* %0, %struct_template_circuit_forceequalifenabled** %ForceEqualIfEnabled, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %forceequalifenabled.enabled.declare_input = alloca i128, align 8
  store i128 %forceequalifenabled.enabled.read_input_inner, i128* %forceequalifenabled.enabled.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %forceequalifenabled.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %forceequalifenabled.in.read_input_inner, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [4096 x i128]*, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter4 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in3, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %isz6 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz6, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.56)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %isz8 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz8, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %enabled = load i128, i128* %forceequalifenabled.enabled.declare_input, align 4
  %mul = mul i128 %sub10, %enabled
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.57)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %GreaterThan = alloca %struct_template_circuit_greaterthan*, align 8
  store %struct_template_circuit_greaterthan* %0, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %greaterthan.n.declare_arg = alloca i128, align 8
  store i128 %greaterthan.n.read_arg_inner, i128* %greaterthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %greaterthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %greaterthan.in.read_input_inner, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %greaterthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  store i128 %out, i128* %greaterthan.out.declare_output, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %greaterthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.58)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %in12, i1* @constraint.59)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %greaterthan.out.declare_output, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.60)
  %ptr_getter25 = load %struct_template_circuit_greaterthan*, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %GreaterThan26 = load %struct_template_circuit_greaterthan*, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %GreaterThan26, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %greaterthan.out.read_output_inner, i128* %greaterthan.out.declare_output, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out28 = load i128, i128* %greaterthan.out.declare_output, align 4
  %greaterthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %out28, i128* %greaterthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greaterthan* @fn_template_build_greaterthan(i128 %0) {
entry:
  %struct_template_circuit_greaterthan = alloca %struct_template_circuit_greaterthan, align 8
  %greaterthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan, i32 0, i32 0
  store i128 %0, i128* %greaterthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan
}

define void @fn_template_init_t2(%struct_template_circuit_t2* %0) {
entry:
  %T2 = alloca %struct_template_circuit_t2*, align 8
  store %struct_template_circuit_t2* %0, %struct_template_circuit_t2** %T2, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 0
  %t2.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %t2.a.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t2.a.read_input_inner, [4096 x i128]** %t2.a.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 1
  %t2.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %t2.b.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t2.b.read_input_inner, [4096 x i128]** %t2.b.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 2
  %t2.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %t2.c.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t2.c.read_input_inner, [4096 x i128]** %t2.c.declare_input, align 8
  %t2.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %t2.out.declare_output, align 8
  %k = alloca i128, align 8
  %k3 = call i128 @fn_intrinsic_inline_init()
  store i128 %k3, i128* %k, align 4
  %bigsigma0 = alloca %struct_template_circuit_bigsigma*, align 8
  %sum = alloca %struct_template_circuit_binsum*, align 8
  %maj = alloca %struct_template_circuit_maj_t*, align 8
  store i128 0, i128* %k, align 4
  %call = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 2, i128 13, i128 22)
  store %struct_template_circuit_bigsigma* %call, %struct_template_circuit_bigsigma** %bigsigma0, align 8
  %call4 = call %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 32)
  store %struct_template_circuit_maj_t* %call4, %struct_template_circuit_maj_t** %maj, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [4096 x i128]*, [4096 x i128]** %t2.a.declare_input, align 8
  %k5 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k5
  %a6 = load i128, i128* %array_getter, align 4
  %bigsigma07 = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma0, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %bigsigma07, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter8, align 8
  %k9 = load i128, i128* %k, align 4
  %array_getter10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %k9
  %bigsigma011 = load i128, i128* %array_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma011, i128 %a6, i1* @constraint.61)
  %ptr_getter = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma0, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %ptr_getter, i32 0, i32 3
  %bigsigma.in.read_input_outter13 = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %k14 = load i128, i128* %k, align 4
  %bigsigma015 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter13, i128 0, i128 %k14
  store i128 %a6, i128* %bigsigma015, align 4
  %a16 = load [4096 x i128]*, [4096 x i128]** %t2.a.declare_input, align 8
  %k17 = load i128, i128* %k, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a16, i128 0, i128 %k17
  %a19 = load i128, i128* %array_getter18, align 4
  %maj20 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %maj20, i32 0, i32 1
  %maj_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %k22 = load i128, i128* %k, align 4
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter, i128 0, i128 %k22
  %maj24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj24, i128 %a19, i1* @constraint.62)
  %ptr_getter25 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %ptr_getter25, i32 0, i32 1
  %maj_t.a.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %k28 = load i128, i128* %k, align 4
  %maj29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter27, i128 0, i128 %k28
  store i128 %a19, i128* %maj29, align 4
  %b = load [4096 x i128]*, [4096 x i128]** %t2.b.declare_input, align 8
  %k30 = load i128, i128* %k, align 4
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k30
  %b32 = load i128, i128* %array_getter31, align 4
  %maj33 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %maj33, i32 0, i32 2
  %maj_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %k35 = load i128, i128* %k, align 4
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter, i128 0, i128 %k35
  %maj37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj37, i128 %b32, i1* @constraint.63)
  %ptr_getter38 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %ptr_getter38, i32 0, i32 2
  %maj_t.b.read_input_outter40 = load [4096 x i128]*, [4096 x i128]** %struct_getter39, align 8
  %k41 = load i128, i128* %k, align 4
  %maj42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter40, i128 0, i128 %k41
  store i128 %b32, i128* %maj42, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %t2.c.declare_input, align 8
  %k43 = load i128, i128* %k, align 4
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k43
  %c45 = load i128, i128* %array_getter44, align 4
  %maj46 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %maj46, i32 0, i32 3
  %maj_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter47, align 8
  %k48 = load i128, i128* %k, align 4
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter, i128 0, i128 %k48
  %maj50 = load i128, i128* %array_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj50, i128 %c45, i1* @constraint.64)
  %ptr_getter51 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %ptr_getter51, i32 0, i32 3
  %maj_t.c.read_input_outter53 = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %k54 = load i128, i128* %k, align 4
  %maj55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter53, i128 0, i128 %k54
  store i128 %c45, i128* %maj55, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k56 = load i128, i128* %k, align 4
  %add = add i128 %k56, 1
  store i128 %add, i128* %k, align 4
  %k57 = load i128, i128* %k, align 4
  %slt = icmp slt i128 %k57, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call58 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  store %struct_template_circuit_binsum* %call58, %struct_template_circuit_binsum** %sum, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch91, %loop.exit
  %bigsigma060 = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma0, align 8
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %bigsigma060, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter61, align 8
  %k62 = load i128, i128* %k, align 4
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %k62
  %bigsigma064 = load i128, i128* %array_getter63, align 4
  %sum65 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter66 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum65, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter66, align 8
  %k67 = load i128, i128* %k, align 4
  %array_getter68 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k67
  %sum69 = load i128, i128* %array_getter68, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum69, i128 %bigsigma064, i1* @constraint.65)
  %ptr_getter70 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter70, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %k73 = load i128, i128* %k, align 4
  %sum74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 0, i128 %k73
  store i128 %bigsigma064, i128* %sum74, align 4
  %maj75 = load %struct_template_circuit_maj_t*, %struct_template_circuit_maj_t** %maj, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %maj75, i32 0, i32 5
  %maj_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %k77 = load i128, i128* %k, align 4
  %array_getter78 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.out.read_output_outter, i128 0, i128 %k77
  %maj79 = load i128, i128* %array_getter78, align 4
  %sum80 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum80, i32 0, i32 2
  %binsum.in.read_input_outter82 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter81, align 8
  %k83 = load i128, i128* %k, align 4
  %array_getter84 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter82, i128 0, i128 1, i128 %k83
  %sum85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum85, i128 %maj79, i1* @constraint.66)
  %ptr_getter86 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter86, i32 0, i32 2
  %binsum.in.read_input_outter88 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter87, align 8
  %k89 = load i128, i128* %k, align 4
  %sum90 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter88, i128 0, i128 1, i128 %k89
  store i128 %maj79, i128* %sum90, align 4
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body59
  %k92 = load i128, i128* %k, align 4
  %add93 = add i128 %k92, 1
  store i128 %add93, i128* %k, align 4
  %k94 = load i128, i128* %k, align 4
  %slt95 = icmp slt i128 %k94, 32
  br i1 %slt95, label %loop.body59, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  store i128 0, i128* %k, align 4
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch110, %loop.exit96
  %sum98 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum98, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %k100 = load i128, i128* %k, align 4
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k100
  %sum102 = load i128, i128* %array_getter101, align 4
  %out103 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %k104 = load i128, i128* %k, align 4
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out103, i128 0, i128 %k104
  %out106 = load i128, i128* %array_getter105, align 4
  call void @fn_intrinsic_add_constraint(i128 %out106, i128 %sum102, i1* @constraint.67)
  %ptr_getter107 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %k108 = load i128, i128* %k, align 4
  %out109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter107, i128 0, i128 %k108
  store i128 %sum102, i128* %out109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body97
  %k111 = load i128, i128* %k, align 4
  %add112 = add i128 %k111, 1
  store i128 %add112, i128* %k, align 4
  %k113 = load i128, i128* %k, align 4
  %slt114 = icmp slt i128 %k113, 32
  br i1 %slt114, label %loop.body97, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  br label %exit

exit:                                             ; preds = %loop.exit115
  %out116 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %t2.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 3
  store [4096 x i128]* %out116, [4096 x i128]** %t2.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t2* @fn_template_build_t2() {
entry:
  %struct_template_circuit_t2 = alloca %struct_template_circuit_t2, align 8
  ret %struct_template_circuit_t2* %struct_template_circuit_t2
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %Num2Bits_strict = alloca %struct_template_circuit_num2bits_strict*, align 8
  store %struct_template_circuit_num2bits_strict* %0, %struct_template_circuit_num2bits_strict** %Num2Bits_strict, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %num2bits_strict.in.declare_input = alloca i128, align 8
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits_strict.in.declare_input, align 4
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %num2bits_strict.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  store %struct_template_circuit_num2bits* %call2, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load i128, i128* %num2bits_strict.in.declare_input, align 4
  %n2b3 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b3, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %in, i1* @constraint.68)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %in, i128* %num2bits.in.write_input_outter, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b5 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b5, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i7
  %n2b8 = load i128, i128* %array_getter, align 4
  %out9 = load [4096 x i128]*, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out9, i128 0, i128 %i10
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %out12, i128 %n2b8, i1* @constraint.69)
  %ptr_getter13 = load [4096 x i128]*, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %i14 = load i128, i128* %i, align 4
  %out15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter13, i128 0, i128 %i14
  store i128 %n2b8, i128* %out15, align 4
  %n2b16 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b16, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [4096 x i128]*, [4096 x i128]** %struct_getter17, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i19
  %n2b21 = load i128, i128* %array_getter20, align 4
  %aliasCheck22 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck22, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i24
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.70)
  %ptr_getter27 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter27, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [4096 x i128]*, [4096 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %aliasCheck31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i30
  store i128 %n2b21, i128* %aliasCheck31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i32 = load i128, i128* %i, align 4
  %add = add i128 %i32, 1
  store i128 %add, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i33, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out34 = load [4096 x i128]*, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %num2bits_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 1
  store [4096 x i128]* %out34, [4096 x i128]** %num2bits_strict.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define void @fn_template_init_t1(%struct_template_circuit_t1* %0) {
entry:
  %T1 = alloca %struct_template_circuit_t1*, align 8
  store %struct_template_circuit_t1* %0, %struct_template_circuit_t1** %T1, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 0
  %t1.h.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %t1.h.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.h.read_input_inner, [4096 x i128]** %t1.h.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 1
  %t1.e.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %t1.e.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.e.read_input_inner, [4096 x i128]** %t1.e.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 2
  %t1.f.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %t1.f.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.f.read_input_inner, [4096 x i128]** %t1.f.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 3
  %t1.g.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %t1.g.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.g.read_input_inner, [4096 x i128]** %t1.g.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 4
  %t1.k.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %t1.k.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.k.read_input_inner, [4096 x i128]** %t1.k.declare_input, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 5
  %t1.w.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %t1.w.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %t1.w.read_input_inner, [4096 x i128]** %t1.w.declare_input, align 8
  %ki = alloca i128, align 8
  %ki6 = call i128 @fn_intrinsic_inline_init()
  store i128 %ki6, i128* %ki, align 4
  %ch = alloca %struct_template_circuit_ch_t*, align 8
  %sum = alloca %struct_template_circuit_binsum*, align 8
  %bigsigma1 = alloca %struct_template_circuit_bigsigma*, align 8
  %t1.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %t1.out.declare_output, align 8
  store i128 0, i128* %ki, align 4
  %call = call %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 32)
  store %struct_template_circuit_ch_t* %call, %struct_template_circuit_ch_t** %ch, align 8
  %call7 = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 6, i128 11, i128 25)
  store %struct_template_circuit_bigsigma* %call7, %struct_template_circuit_bigsigma** %bigsigma1, align 8
  store i128 0, i128* %ki, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %e = load [4096 x i128]*, [4096 x i128]** %t1.e.declare_input, align 8
  %ki8 = load i128, i128* %ki, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %e, i128 0, i128 %ki8
  %e9 = load i128, i128* %array_getter, align 4
  %bigsigma110 = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma1, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %bigsigma110, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %ki12 = load i128, i128* %ki, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %ki12
  %bigsigma114 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma114, i128 %e9, i1* @constraint.71)
  %ptr_getter = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma1, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %ptr_getter, i32 0, i32 3
  %bigsigma.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %ki17 = load i128, i128* %ki, align 4
  %bigsigma118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter16, i128 0, i128 %ki17
  store i128 %e9, i128* %bigsigma118, align 4
  %e19 = load [4096 x i128]*, [4096 x i128]** %t1.e.declare_input, align 8
  %ki20 = load i128, i128* %ki, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %e19, i128 0, i128 %ki20
  %e22 = load i128, i128* %array_getter21, align 4
  %ch23 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ch23, i32 0, i32 1
  %ch_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %ki25 = load i128, i128* %ki, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter, i128 0, i128 %ki25
  %ch27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch27, i128 %e22, i1* @constraint.72)
  %ptr_getter28 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ptr_getter28, i32 0, i32 1
  %ch_t.a.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %ki31 = load i128, i128* %ki, align 4
  %ch32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter30, i128 0, i128 %ki31
  store i128 %e22, i128* %ch32, align 4
  %f = load [4096 x i128]*, [4096 x i128]** %t1.f.declare_input, align 8
  %ki33 = load i128, i128* %ki, align 4
  %array_getter34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %f, i128 0, i128 %ki33
  %f35 = load i128, i128* %array_getter34, align 4
  %ch36 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ch36, i32 0, i32 2
  %ch_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter37, align 8
  %ki38 = load i128, i128* %ki, align 4
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter, i128 0, i128 %ki38
  %ch40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch40, i128 %f35, i1* @constraint.73)
  %ptr_getter41 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ptr_getter41, i32 0, i32 2
  %ch_t.b.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %ki44 = load i128, i128* %ki, align 4
  %ch45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter43, i128 0, i128 %ki44
  store i128 %f35, i128* %ch45, align 4
  %g = load [4096 x i128]*, [4096 x i128]** %t1.g.declare_input, align 8
  %ki46 = load i128, i128* %ki, align 4
  %array_getter47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %g, i128 0, i128 %ki46
  %g48 = load i128, i128* %array_getter47, align 4
  %ch49 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ch49, i32 0, i32 3
  %ch_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter50, align 8
  %ki51 = load i128, i128* %ki, align 4
  %array_getter52 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter, i128 0, i128 %ki51
  %ch53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch53, i128 %g48, i1* @constraint.74)
  %ptr_getter54 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ptr_getter54, i32 0, i32 3
  %ch_t.c.read_input_outter56 = load [4096 x i128]*, [4096 x i128]** %struct_getter55, align 8
  %ki57 = load i128, i128* %ki, align 4
  %ch58 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter56, i128 0, i128 %ki57
  store i128 %g48, i128* %ch58, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %ki59 = load i128, i128* %ki, align 4
  %add = add i128 %ki59, 1
  store i128 %add, i128* %ki, align 4
  %ki60 = load i128, i128* %ki, align 4
  %slt = icmp slt i128 %ki60, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call61 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 5)
  store %struct_template_circuit_binsum* %call61, %struct_template_circuit_binsum** %sum, align 8
  store i128 0, i128* %ki, align 4
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch136, %loop.exit
  %h = load [4096 x i128]*, [4096 x i128]** %t1.h.declare_input, align 8
  %ki63 = load i128, i128* %ki, align 4
  %array_getter64 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h, i128 0, i128 %ki63
  %h65 = load i128, i128* %array_getter64, align 4
  %sum66 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum66, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter67, align 8
  %ki68 = load i128, i128* %ki, align 4
  %array_getter69 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %ki68
  %sum70 = load i128, i128* %array_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum70, i128 %h65, i1* @constraint.75)
  %ptr_getter71 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter72 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter71, i32 0, i32 2
  %binsum.in.read_input_outter73 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter72, align 8
  %ki74 = load i128, i128* %ki, align 4
  %sum75 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter73, i128 0, i128 0, i128 %ki74
  store i128 %h65, i128* %sum75, align 4
  %bigsigma176 = load %struct_template_circuit_bigsigma*, %struct_template_circuit_bigsigma** %bigsigma1, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %bigsigma176, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter77, align 8
  %ki78 = load i128, i128* %ki, align 4
  %array_getter79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %ki78
  %bigsigma180 = load i128, i128* %array_getter79, align 4
  %sum81 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum81, i32 0, i32 2
  %binsum.in.read_input_outter83 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter82, align 8
  %ki84 = load i128, i128* %ki, align 4
  %array_getter85 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter83, i128 0, i128 1, i128 %ki84
  %sum86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum86, i128 %bigsigma180, i1* @constraint.76)
  %ptr_getter87 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter87, i32 0, i32 2
  %binsum.in.read_input_outter89 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter88, align 8
  %ki90 = load i128, i128* %ki, align 4
  %sum91 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter89, i128 0, i128 1, i128 %ki90
  store i128 %bigsigma180, i128* %sum91, align 4
  %ch92 = load %struct_template_circuit_ch_t*, %struct_template_circuit_ch_t** %ch, align 8
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %ch92, i32 0, i32 4
  %ch_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %ki94 = load i128, i128* %ki, align 4
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.out.read_output_outter, i128 0, i128 %ki94
  %ch96 = load i128, i128* %array_getter95, align 4
  %sum97 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum97, i32 0, i32 2
  %binsum.in.read_input_outter99 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter98, align 8
  %ki100 = load i128, i128* %ki, align 4
  %array_getter101 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter99, i128 0, i128 2, i128 %ki100
  %sum102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum102, i128 %ch96, i1* @constraint.77)
  %ptr_getter103 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter103, i32 0, i32 2
  %binsum.in.read_input_outter105 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter104, align 8
  %ki106 = load i128, i128* %ki, align 4
  %sum107 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter105, i128 0, i128 2, i128 %ki106
  store i128 %ch96, i128* %sum107, align 4
  %k = load [4096 x i128]*, [4096 x i128]** %t1.k.declare_input, align 8
  %ki108 = load i128, i128* %ki, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k, i128 0, i128 %ki108
  %k110 = load i128, i128* %array_getter109, align 4
  %sum111 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum111, i32 0, i32 2
  %binsum.in.read_input_outter113 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter112, align 8
  %ki114 = load i128, i128* %ki, align 4
  %array_getter115 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter113, i128 0, i128 3, i128 %ki114
  %sum116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum116, i128 %k110, i1* @constraint.78)
  %ptr_getter117 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter117, i32 0, i32 2
  %binsum.in.read_input_outter119 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter118, align 8
  %ki120 = load i128, i128* %ki, align 4
  %sum121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter119, i128 0, i128 3, i128 %ki120
  store i128 %k110, i128* %sum121, align 4
  %w = load [4096 x i128]*, [4096 x i128]** %t1.w.declare_input, align 8
  %ki122 = load i128, i128* %ki, align 4
  %array_getter123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w, i128 0, i128 %ki122
  %w124 = load i128, i128* %array_getter123, align 4
  %sum125 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum125, i32 0, i32 2
  %binsum.in.read_input_outter127 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter126, align 8
  %ki128 = load i128, i128* %ki, align 4
  %array_getter129 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter127, i128 0, i128 4, i128 %ki128
  %sum130 = load i128, i128* %array_getter129, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum130, i128 %w124, i1* @constraint.79)
  %ptr_getter131 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter131, i32 0, i32 2
  %binsum.in.read_input_outter133 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter132, align 8
  %ki134 = load i128, i128* %ki, align 4
  %sum135 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter133, i128 0, i128 4, i128 %ki134
  store i128 %w124, i128* %sum135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body62
  %ki137 = load i128, i128* %ki, align 4
  %add138 = add i128 %ki137, 1
  store i128 %add138, i128* %ki, align 4
  %ki139 = load i128, i128* %ki, align 4
  %slt140 = icmp slt i128 %ki139, 32
  br i1 %slt140, label %loop.body62, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch136
  store i128 0, i128* %ki, align 4
  br label %loop.body142

loop.body142:                                     ; preds = %loop.latch155, %loop.exit141
  %sum143 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum143, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter144, align 8
  %ki145 = load i128, i128* %ki, align 4
  %array_getter146 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %ki145
  %sum147 = load i128, i128* %array_getter146, align 4
  %out148 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %ki149 = load i128, i128* %ki, align 4
  %array_getter150 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out148, i128 0, i128 %ki149
  %out151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_add_constraint(i128 %out151, i128 %sum147, i1* @constraint.80)
  %ptr_getter152 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %ki153 = load i128, i128* %ki, align 4
  %out154 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter152, i128 0, i128 %ki153
  store i128 %sum147, i128* %out154, align 4
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.body142
  %ki156 = load i128, i128* %ki, align 4
  %add157 = add i128 %ki156, 1
  store i128 %add157, i128* %ki, align 4
  %ki158 = load i128, i128* %ki, align 4
  %slt159 = icmp slt i128 %ki158, 32
  br i1 %slt159, label %loop.body142, label %loop.exit160

loop.exit160:                                     ; preds = %loop.latch155
  br label %exit

exit:                                             ; preds = %loop.exit160
  %out161 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %t1.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 6
  store [4096 x i128]* %out161, [4096 x i128]** %t1.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t1* @fn_template_build_t1() {
entry:
  %struct_template_circuit_t1 = alloca %struct_template_circuit_t1, align 8
  ret %struct_template_circuit_t1* %struct_template_circuit_t1
}

define void @fn_template_init_sigmaplus(%struct_template_circuit_sigmaplus* %0) {
entry:
  %SigmaPlus = alloca %struct_template_circuit_sigmaplus*, align 8
  store %struct_template_circuit_sigmaplus* %0, %struct_template_circuit_sigmaplus** %SigmaPlus, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 0
  %sigmaplus.in2.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %sigmaplus.in2.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sigmaplus.in2.read_input_inner, [4096 x i128]** %sigmaplus.in2.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 1
  %sigmaplus.in7.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sigmaplus.in7.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sigmaplus.in7.read_input_inner, [4096 x i128]** %sigmaplus.in7.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 2
  %sigmaplus.in15.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %sigmaplus.in15.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sigmaplus.in15.read_input_inner, [4096 x i128]** %sigmaplus.in15.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 3
  %sigmaplus.in16.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %sigmaplus.in16.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sigmaplus.in16.read_input_inner, [4096 x i128]** %sigmaplus.in16.declare_input, align 8
  %sigma0 = alloca %struct_template_circuit_smallsigma*, align 8
  %sum = alloca %struct_template_circuit_binsum*, align 8
  %k = alloca i128, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  store i128 %k4, i128* %k, align 4
  %sigmaplus.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %sigma1 = alloca %struct_template_circuit_smallsigma*, align 8
  store i128 0, i128* %k, align 4
  %call = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 17, i128 19, i128 10)
  store %struct_template_circuit_smallsigma* %call, %struct_template_circuit_smallsigma** %sigma1, align 8
  %call5 = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 7, i128 18, i128 3)
  store %struct_template_circuit_smallsigma* %call5, %struct_template_circuit_smallsigma** %sigma0, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in2 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in2.declare_input, align 8
  %k6 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in2, i128 0, i128 %k6
  %in27 = load i128, i128* %array_getter, align 4
  %sigma18 = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma1, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %sigma18, i32 0, i32 3
  %smallsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %k10 = load i128, i128* %k, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter, i128 0, i128 %k10
  %sigma112 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma112, i128 %in27, i1* @constraint.81)
  %ptr_getter = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma1, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %ptr_getter, i32 0, i32 3
  %smallsigma.in.read_input_outter14 = load [4096 x i128]*, [4096 x i128]** %struct_getter13, align 8
  %k15 = load i128, i128* %k, align 4
  %sigma116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter14, i128 0, i128 %k15
  store i128 %in27, i128* %sigma116, align 4
  %in15 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in15.declare_input, align 8
  %k17 = load i128, i128* %k, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in15, i128 0, i128 %k17
  %in1519 = load i128, i128* %array_getter18, align 4
  %sigma020 = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma0, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %sigma020, i32 0, i32 3
  %smallsigma.in.read_input_outter22 = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %k23 = load i128, i128* %k, align 4
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter22, i128 0, i128 %k23
  %sigma025 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma025, i128 %in1519, i1* @constraint.82)
  %ptr_getter26 = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma0, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %ptr_getter26, i32 0, i32 3
  %smallsigma.in.read_input_outter28 = load [4096 x i128]*, [4096 x i128]** %struct_getter27, align 8
  %k29 = load i128, i128* %k, align 4
  %sigma030 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter28, i128 0, i128 %k29
  store i128 %in1519, i128* %sigma030, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k31 = load i128, i128* %k, align 4
  %add = add i128 %k31, 1
  store i128 %add, i128* %k, align 4
  %k32 = load i128, i128* %k, align 4
  %slt = icmp slt i128 %k32, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call33 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 4)
  store %struct_template_circuit_binsum* %call33, %struct_template_circuit_binsum** %sum, align 8
  store i128 0, i128* %k, align 4
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch95, %loop.exit
  %sigma135 = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma1, align 8
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %sigma135, i32 0, i32 4
  %smallsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter36, align 8
  %k37 = load i128, i128* %k, align 4
  %array_getter38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter, i128 0, i128 %k37
  %sigma139 = load i128, i128* %array_getter38, align 4
  %sum40 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum40, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter41, align 8
  %k42 = load i128, i128* %k, align 4
  %array_getter43 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k42
  %sum44 = load i128, i128* %array_getter43, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum44, i128 %sigma139, i1* @constraint.83)
  %ptr_getter45 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter45, i32 0, i32 2
  %binsum.in.read_input_outter47 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter46, align 8
  %k48 = load i128, i128* %k, align 4
  %sum49 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter47, i128 0, i128 0, i128 %k48
  store i128 %sigma139, i128* %sum49, align 4
  %in7 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in7.declare_input, align 8
  %k50 = load i128, i128* %k, align 4
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in7, i128 0, i128 %k50
  %in752 = load i128, i128* %array_getter51, align 4
  %sum53 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum53, i32 0, i32 2
  %binsum.in.read_input_outter55 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter54, align 8
  %k56 = load i128, i128* %k, align 4
  %array_getter57 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter55, i128 0, i128 1, i128 %k56
  %sum58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum58, i128 %in752, i1* @constraint.84)
  %ptr_getter59 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter59, i32 0, i32 2
  %binsum.in.read_input_outter61 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter60, align 8
  %k62 = load i128, i128* %k, align 4
  %sum63 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter61, i128 0, i128 1, i128 %k62
  store i128 %in752, i128* %sum63, align 4
  %sigma064 = load %struct_template_circuit_smallsigma*, %struct_template_circuit_smallsigma** %sigma0, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %sigma064, i32 0, i32 4
  %smallsigma.out.read_output_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %k67 = load i128, i128* %k, align 4
  %array_getter68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter66, i128 0, i128 %k67
  %sigma069 = load i128, i128* %array_getter68, align 4
  %sum70 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum70, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %k73 = load i128, i128* %k, align 4
  %array_getter74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 2, i128 %k73
  %sum75 = load i128, i128* %array_getter74, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum75, i128 %sigma069, i1* @constraint.85)
  %ptr_getter76 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter76, i32 0, i32 2
  %binsum.in.read_input_outter78 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter77, align 8
  %k79 = load i128, i128* %k, align 4
  %sum80 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter78, i128 0, i128 2, i128 %k79
  store i128 %sigma069, i128* %sum80, align 4
  %in16 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in16.declare_input, align 8
  %k81 = load i128, i128* %k, align 4
  %array_getter82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in16, i128 0, i128 %k81
  %in1683 = load i128, i128* %array_getter82, align 4
  %sum84 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum84, i32 0, i32 2
  %binsum.in.read_input_outter86 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter85, align 8
  %k87 = load i128, i128* %k, align 4
  %array_getter88 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter86, i128 0, i128 3, i128 %k87
  %sum89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum89, i128 %in1683, i1* @constraint.86)
  %ptr_getter90 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %ptr_getter90, i32 0, i32 2
  %binsum.in.read_input_outter92 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter91, align 8
  %k93 = load i128, i128* %k, align 4
  %sum94 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter92, i128 0, i128 3, i128 %k93
  store i128 %in1683, i128* %sum94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body34
  %k96 = load i128, i128* %k, align 4
  %add97 = add i128 %k96, 1
  store i128 %add97, i128* %k, align 4
  %k98 = load i128, i128* %k, align 4
  %slt99 = icmp slt i128 %k98, 32
  br i1 %slt99, label %loop.body34, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch95
  store i128 0, i128* %k, align 4
  br label %loop.body101

loop.body101:                                     ; preds = %loop.latch114, %loop.exit100
  %sum102 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %sum, align 8
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sum102, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter103, align 8
  %k104 = load i128, i128* %k, align 4
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k104
  %sum106 = load i128, i128* %array_getter105, align 4
  %out107 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %k108 = load i128, i128* %k, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out107, i128 0, i128 %k108
  %out110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %out110, i128 %sum106, i1* @constraint.87)
  %ptr_getter111 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %k112 = load i128, i128* %k, align 4
  %out113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter111, i128 0, i128 %k112
  store i128 %sum106, i128* %out113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body101
  %k115 = load i128, i128* %k, align 4
  %add116 = add i128 %k115, 1
  store i128 %add116, i128* %k, align 4
  %k117 = load i128, i128* %k, align 4
  %slt118 = icmp slt i128 %k117, 32
  br i1 %slt118, label %loop.body101, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch114
  br label %exit

exit:                                             ; preds = %loop.exit119
  %out120 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %sigmaplus.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 4
  store [4096 x i128]* %out120, [4096 x i128]** %sigmaplus.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus() {
entry:
  %struct_template_circuit_sigmaplus = alloca %struct_template_circuit_sigmaplus, align 8
  ret %struct_template_circuit_sigmaplus* %struct_template_circuit_sigmaplus
}

define void @fn_template_init_sha256compression(%struct_template_circuit_sha256compression* %0) {
entry:
  %Sha256compression = alloca %struct_template_circuit_sha256compression*, align 8
  store %struct_template_circuit_sha256compression* %0, %struct_template_circuit_sha256compression** %Sha256compression, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 0
  %sha256compression.hin.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %sha256compression.hin.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256compression.hin.read_input_inner, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 1
  %sha256compression.inp.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256compression.inp.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256compression.inp.read_input_inner, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %t = alloca i128, align 8
  %t2 = call i128 @fn_intrinsic_inline_init()
  store i128 %t2, i128* %t, align 4
  %sigmaPlus = alloca [4096 x %struct_template_circuit_sigmaplus*]*, align 8
  %sigmaPlus3 = alloca [4096 x %struct_template_circuit_sigmaplus*], align 8
  store [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sha256compression.e.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %e = bitcast i8* %malloccall to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %e, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %ct_k = alloca [4096 x %struct_template_circuit_k*]*, align 8
  %ct_k4 = alloca [4096 x %struct_template_circuit_k*], align 8
  store [4096 x %struct_template_circuit_k*]* %ct_k4, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %sha256compression.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall5 to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sume = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %sume6 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %sume6, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %sha256compression.f.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %f = bitcast i8* %malloccall7 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %f, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %outCalc = alloca [4096 x i128]*, align 8
  %outCalc8 = alloca [4096 x i128], align 8
  store [4096 x i128]* %outCalc8, [4096 x i128]** %outCalc, align 8
  %sha256compression.w.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %w = bitcast i8* %malloccall9 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %w, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %i = alloca i128, align 8
  %i10 = call i128 @fn_intrinsic_inline_init()
  store i128 %i10, i128* %i, align 4
  %t1 = alloca [4096 x %struct_template_circuit_t1*]*, align 8
  %t111 = alloca [4096 x %struct_template_circuit_t1*], align 8
  store [4096 x %struct_template_circuit_t1*]* %t111, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %sha256compression.d.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %d = bitcast i8* %malloccall12 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %d, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %sha256compression.c.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %c = bitcast i8* %malloccall13 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %c, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %sha256compression.a.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %a = bitcast i8* %malloccall14 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %a, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %fsum = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %fsum15 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %fsum15, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %t216 = alloca [4096 x %struct_template_circuit_t2*]*, align 8
  %t217 = alloca [4096 x %struct_template_circuit_t2*], align 8
  store [4096 x %struct_template_circuit_t2*]* %t217, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %sha256compression.h.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %h = bitcast i8* %malloccall18 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %h, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %suma = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %suma19 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %suma19, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %k = alloca i128, align 8
  %k20 = call i128 @fn_intrinsic_inline_init()
  store i128 %k20, i128* %k, align 4
  %sha256compression.b.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %b = bitcast i8* %malloccall21 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %b, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sha256compression.g.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %g = bitcast i8* %malloccall22 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %g, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %hin = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %inp = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %call = call [4096 x i128]* @sha256compression([4096 x i128]* %hin, [4096 x i128]* %inp)
  store [4096 x i128]* %call, [4096 x i128]** %outCalc, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %outCalc23 = load [4096 x i128]*, [4096 x i128]** %outCalc, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %outCalc23, i128 0, i128 %i24
  %outCalc25 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %i26 = load i128, i128* %i, align 4
  %out27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i26
  store i128 %outCalc25, i128* %out27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i28 = load i128, i128* %i, align 4
  %add = add i128 %i28, 1
  store i128 %add, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i29, 256
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch35, %loop.exit
  %call31 = call %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus()
  %ptr_getter32 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %i33 = load i128, i128* %i, align 4
  %sigmaPlus34 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter32, i128 0, i128 %i33
  store %struct_template_circuit_sigmaplus* %call31, %struct_template_circuit_sigmaplus** %sigmaPlus34, align 8
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body30
  %i36 = load i128, i128* %i, align 4
  %add37 = add i128 %i36, 1
  store i128 %add37, i128* %i, align 4
  %i38 = load i128, i128* %i, align 4
  %slt39 = icmp slt i128 %i38, 48
  br i1 %slt39, label %loop.body30, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  store i128 0, i128* %i, align 4
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch47, %loop.exit40
  %i42 = load i128, i128* %i, align 4
  %call43 = call %struct_template_circuit_k* @fn_template_build_k(i128 %i42)
  %ptr_getter44 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %i45 = load i128, i128* %i, align 4
  %ct_k46 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ptr_getter44, i128 0, i128 %i45
  store %struct_template_circuit_k* %call43, %struct_template_circuit_k** %ct_k46, align 8
  br label %loop.latch47

loop.latch47:                                     ; preds = %loop.body41
  %i48 = load i128, i128* %i, align 4
  %add49 = add i128 %i48, 1
  store i128 %add49, i128* %i, align 4
  %i50 = load i128, i128* %i, align 4
  %slt51 = icmp slt i128 %i50, 64
  br i1 %slt51, label %loop.body41, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch47
  store i128 0, i128* %i, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch58, %loop.exit52
  %call54 = call %struct_template_circuit_t1* @fn_template_build_t1()
  %ptr_getter55 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %i56 = load i128, i128* %i, align 4
  %t157 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter55, i128 0, i128 %i56
  store %struct_template_circuit_t1* %call54, %struct_template_circuit_t1** %t157, align 8
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body53
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %slt62 = icmp slt i128 %i61, 64
  br i1 %slt62, label %loop.body53, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch58
  store i128 0, i128* %i, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch69, %loop.exit63
  %call65 = call %struct_template_circuit_t2* @fn_template_build_t2()
  %ptr_getter66 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %i67 = load i128, i128* %i, align 4
  %t268 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter66, i128 0, i128 %i67
  store %struct_template_circuit_t2* %call65, %struct_template_circuit_t2** %t268, align 8
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.body64
  %i70 = load i128, i128* %i, align 4
  %add71 = add i128 %i70, 1
  store i128 %add71, i128* %i, align 4
  %i72 = load i128, i128* %i, align 4
  %slt73 = icmp slt i128 %i72, 64
  br i1 %slt73, label %loop.body64, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch69
  store i128 0, i128* %i, align 4
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch80, %loop.exit74
  %call76 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter77 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %i78 = load i128, i128* %i, align 4
  %suma79 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter77, i128 0, i128 %i78
  store %struct_template_circuit_binsum* %call76, %struct_template_circuit_binsum** %suma79, align 8
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.body75
  %i81 = load i128, i128* %i, align 4
  %add82 = add i128 %i81, 1
  store i128 %add82, i128* %i, align 4
  %i83 = load i128, i128* %i, align 4
  %slt84 = icmp slt i128 %i83, 64
  br i1 %slt84, label %loop.body75, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch80
  store i128 0, i128* %i, align 4
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch91, %loop.exit85
  %call87 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter88 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %i89 = load i128, i128* %i, align 4
  %sume90 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter88, i128 0, i128 %i89
  store %struct_template_circuit_binsum* %call87, %struct_template_circuit_binsum** %sume90, align 8
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body86
  %i92 = load i128, i128* %i, align 4
  %add93 = add i128 %i92, 1
  store i128 %add93, i128* %i, align 4
  %i94 = load i128, i128* %i, align 4
  %slt95 = icmp slt i128 %i94, 64
  br i1 %slt95, label %loop.body86, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  store i128 0, i128* %i, align 4
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch102, %loop.exit96
  %call98 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter99 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %i100 = load i128, i128* %i, align 4
  %fsum101 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter99, i128 0, i128 %i100
  store %struct_template_circuit_binsum* %call98, %struct_template_circuit_binsum** %fsum101, align 8
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body97
  %i103 = load i128, i128* %i, align 4
  %add104 = add i128 %i103, 1
  store i128 %add104, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %slt106 = icmp slt i128 %i105, 8
  br i1 %slt106, label %loop.body97, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch102
  store i128 0, i128* %k, align 4
  store i128 0, i128* %t, align 4
  store i128 0, i128* %t, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch261, %loop.exit107
  %t109 = load i128, i128* %t, align 4
  %slt110 = icmp slt i128 %t109, 16
  br i1 %slt110, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body108
  store i128 0, i128* %k, align 4
  br label %loop.body111

if.false:                                         ; preds = %loop.body108
  store i128 0, i128* %k, align 4
  br label %loop.body133

loop.body111:                                     ; preds = %loop.latch127, %if.true
  %inp112 = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %t113 = load i128, i128* %t, align 4
  %mul = mul i128 %t113, 32
  %add114 = add i128 %mul, 31
  %k115 = load i128, i128* %k, align 4
  %sub = sub i128 %add114, %k115
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %inp112, i128 0, i128 %sub
  %inp117 = load i128, i128* %array_getter116, align 4
  %w118 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t119 = load i128, i128* %t, align 4
  %k120 = load i128, i128* %k, align 4
  %array_getter121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w118, i128 0, i128 %t119, i128 %k120
  %w122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_add_constraint(i128 %w122, i128 %inp117, i1* @constraint.88)
  %ptr_getter123 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t124 = load i128, i128* %t, align 4
  %k125 = load i128, i128* %k, align 4
  %w126 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter123, i128 0, i128 %t124, i128 %k125
  store i128 %inp117, i128* %w126, align 4
  br label %loop.latch127

loop.latch127:                                    ; preds = %loop.body111
  %k128 = load i128, i128* %k, align 4
  %add129 = add i128 %k128, 1
  store i128 %add129, i128* %k, align 4
  %k130 = load i128, i128* %k, align 4
  %slt131 = icmp slt i128 %k130, 32
  br i1 %slt131, label %loop.body111, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch127
  br label %if.exit

loop.body133:                                     ; preds = %loop.latch230, %if.false
  %w134 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t135 = load i128, i128* %t, align 4
  %sub136 = sub i128 %t135, 2
  %k137 = load i128, i128* %k, align 4
  %array_getter138 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w134, i128 0, i128 %sub136, i128 %k137
  %w139 = load i128, i128* %array_getter138, align 4
  %sigmaPlus140 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t141 = load i128, i128* %t, align 4
  %sub142 = sub i128 %t141, 16
  %array_getter143 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus140, i128 0, i128 %sub142
  %sigmaPlus144 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter143, align 8
  %struct_getter145 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus144, i32 0, i32 0
  %sigmaplus.in2.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter145, align 8
  %k146 = load i128, i128* %k, align 4
  %array_getter147 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter, i128 0, i128 %k146
  %sigmaPlus148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus148, i128 %w139, i1* @constraint.89)
  %ptr_getter149 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t150 = load i128, i128* %t, align 4
  %sub151 = sub i128 %t150, 16
  %array_getter152 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter149, i128 0, i128 %sub151
  %sigmaPlus153 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter152, align 8
  %struct_getter154 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus153, i32 0, i32 0
  %sigmaplus.in2.read_input_outter155 = load [4096 x i128]*, [4096 x i128]** %struct_getter154, align 8
  %k156 = load i128, i128* %k, align 4
  %sigmaPlus157 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter155, i128 0, i128 %k156
  store i128 %w139, i128* %sigmaPlus157, align 4
  %w158 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t159 = load i128, i128* %t, align 4
  %sub160 = sub i128 %t159, 7
  %k161 = load i128, i128* %k, align 4
  %array_getter162 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w158, i128 0, i128 %sub160, i128 %k161
  %w163 = load i128, i128* %array_getter162, align 4
  %sigmaPlus164 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t165 = load i128, i128* %t, align 4
  %sub166 = sub i128 %t165, 16
  %array_getter167 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus164, i128 0, i128 %sub166
  %sigmaPlus168 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter167, align 8
  %struct_getter169 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus168, i32 0, i32 1
  %sigmaplus.in7.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter169, align 8
  %k170 = load i128, i128* %k, align 4
  %array_getter171 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter, i128 0, i128 %k170
  %sigmaPlus172 = load i128, i128* %array_getter171, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus172, i128 %w163, i1* @constraint.90)
  %ptr_getter173 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t174 = load i128, i128* %t, align 4
  %sub175 = sub i128 %t174, 16
  %array_getter176 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter173, i128 0, i128 %sub175
  %sigmaPlus177 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter176, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus177, i32 0, i32 1
  %sigmaplus.in7.read_input_outter179 = load [4096 x i128]*, [4096 x i128]** %struct_getter178, align 8
  %k180 = load i128, i128* %k, align 4
  %sigmaPlus181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter179, i128 0, i128 %k180
  store i128 %w163, i128* %sigmaPlus181, align 4
  %w182 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t183 = load i128, i128* %t, align 4
  %sub184 = sub i128 %t183, 15
  %k185 = load i128, i128* %k, align 4
  %array_getter186 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w182, i128 0, i128 %sub184, i128 %k185
  %w187 = load i128, i128* %array_getter186, align 4
  %sigmaPlus188 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t189 = load i128, i128* %t, align 4
  %sub190 = sub i128 %t189, 16
  %array_getter191 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus188, i128 0, i128 %sub190
  %sigmaPlus192 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter191, align 8
  %struct_getter193 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus192, i32 0, i32 2
  %sigmaplus.in15.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter193, align 8
  %k194 = load i128, i128* %k, align 4
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter, i128 0, i128 %k194
  %sigmaPlus196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus196, i128 %w187, i1* @constraint.91)
  %ptr_getter197 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t198 = load i128, i128* %t, align 4
  %sub199 = sub i128 %t198, 16
  %array_getter200 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter197, i128 0, i128 %sub199
  %sigmaPlus201 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter200, align 8
  %struct_getter202 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus201, i32 0, i32 2
  %sigmaplus.in15.read_input_outter203 = load [4096 x i128]*, [4096 x i128]** %struct_getter202, align 8
  %k204 = load i128, i128* %k, align 4
  %sigmaPlus205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter203, i128 0, i128 %k204
  store i128 %w187, i128* %sigmaPlus205, align 4
  %w206 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t207 = load i128, i128* %t, align 4
  %sub208 = sub i128 %t207, 16
  %k209 = load i128, i128* %k, align 4
  %array_getter210 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w206, i128 0, i128 %sub208, i128 %k209
  %w211 = load i128, i128* %array_getter210, align 4
  %sigmaPlus212 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t213 = load i128, i128* %t, align 4
  %sub214 = sub i128 %t213, 16
  %array_getter215 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus212, i128 0, i128 %sub214
  %sigmaPlus216 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter215, align 8
  %struct_getter217 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus216, i32 0, i32 3
  %sigmaplus.in16.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter217, align 8
  %k218 = load i128, i128* %k, align 4
  %array_getter219 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter, i128 0, i128 %k218
  %sigmaPlus220 = load i128, i128* %array_getter219, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus220, i128 %w211, i1* @constraint.92)
  %ptr_getter221 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t222 = load i128, i128* %t, align 4
  %sub223 = sub i128 %t222, 16
  %array_getter224 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter221, i128 0, i128 %sub223
  %sigmaPlus225 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter224, align 8
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus225, i32 0, i32 3
  %sigmaplus.in16.read_input_outter227 = load [4096 x i128]*, [4096 x i128]** %struct_getter226, align 8
  %k228 = load i128, i128* %k, align 4
  %sigmaPlus229 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter227, i128 0, i128 %k228
  store i128 %w211, i128* %sigmaPlus229, align 4
  br label %loop.latch230

loop.latch230:                                    ; preds = %loop.body133
  %k231 = load i128, i128* %k, align 4
  %add232 = add i128 %k231, 1
  store i128 %add232, i128* %k, align 4
  %k233 = load i128, i128* %k, align 4
  %slt234 = icmp slt i128 %k233, 32
  br i1 %slt234, label %loop.body133, label %loop.exit235

loop.exit235:                                     ; preds = %loop.latch230
  store i128 0, i128* %k, align 4
  br label %loop.body236

loop.body236:                                     ; preds = %loop.latch255, %loop.exit235
  %sigmaPlus237 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %t238 = load i128, i128* %t, align 4
  %sub239 = sub i128 %t238, 16
  %array_getter240 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus237, i128 0, i128 %sub239
  %sigmaPlus241 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter240, align 8
  %struct_getter242 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus241, i32 0, i32 4
  %sigmaplus.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter242, align 8
  %k243 = load i128, i128* %k, align 4
  %array_getter244 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.out.read_output_outter, i128 0, i128 %k243
  %sigmaPlus245 = load i128, i128* %array_getter244, align 4
  %w246 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t247 = load i128, i128* %t, align 4
  %k248 = load i128, i128* %k, align 4
  %array_getter249 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w246, i128 0, i128 %t247, i128 %k248
  %w250 = load i128, i128* %array_getter249, align 4
  call void @fn_intrinsic_add_constraint(i128 %w250, i128 %sigmaPlus245, i1* @constraint.93)
  %ptr_getter251 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t252 = load i128, i128* %t, align 4
  %k253 = load i128, i128* %k, align 4
  %w254 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter251, i128 0, i128 %t252, i128 %k253
  store i128 %sigmaPlus245, i128* %w254, align 4
  br label %loop.latch255

loop.latch255:                                    ; preds = %loop.body236
  %k256 = load i128, i128* %k, align 4
  %add257 = add i128 %k256, 1
  store i128 %add257, i128* %k, align 4
  %k258 = load i128, i128* %k, align 4
  %slt259 = icmp slt i128 %k258, 32
  br i1 %slt259, label %loop.body236, label %loop.exit260

loop.exit260:                                     ; preds = %loop.latch255
  br label %if.exit

if.exit:                                          ; preds = %loop.exit260, %loop.exit132
  br label %loop.latch261

loop.latch261:                                    ; preds = %if.exit
  %t262 = load i128, i128* %t, align 4
  %add263 = add i128 %t262, 1
  store i128 %add263, i128* %t, align 4
  %t264 = load i128, i128* %t, align 4
  %slt265 = icmp slt i128 %t264, 64
  br i1 %slt265, label %loop.body108, label %loop.exit266

loop.exit266:                                     ; preds = %loop.latch261
  store i128 0, i128* %k, align 4
  br label %loop.body267

loop.body267:                                     ; preds = %loop.latch363, %loop.exit266
  %hin268 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k269 = load i128, i128* %k, align 4
  %array_getter270 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin268, i128 0, i128 %k269
  %hin271 = load i128, i128* %array_getter270, align 4
  %a272 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %k273 = load i128, i128* %k, align 4
  %array_getter274 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a272, i128 0, i128 0, i128 %k273
  %a275 = load i128, i128* %array_getter274, align 4
  call void @fn_intrinsic_add_constraint(i128 %a275, i128 %hin271, i1* @constraint.94)
  %ptr_getter276 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %k277 = load i128, i128* %k, align 4
  %a278 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter276, i128 0, i128 0, i128 %k277
  store i128 %hin271, i128* %a278, align 4
  %hin279 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k280 = load i128, i128* %k, align 4
  %add281 = add i128 32, %k280
  %array_getter282 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin279, i128 0, i128 %add281
  %hin283 = load i128, i128* %array_getter282, align 4
  %b284 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %k285 = load i128, i128* %k, align 4
  %array_getter286 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b284, i128 0, i128 0, i128 %k285
  %b287 = load i128, i128* %array_getter286, align 4
  call void @fn_intrinsic_add_constraint(i128 %b287, i128 %hin283, i1* @constraint.95)
  %ptr_getter288 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %k289 = load i128, i128* %k, align 4
  %b290 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter288, i128 0, i128 0, i128 %k289
  store i128 %hin283, i128* %b290, align 4
  %hin291 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k292 = load i128, i128* %k, align 4
  %add293 = add i128 64, %k292
  %array_getter294 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin291, i128 0, i128 %add293
  %hin295 = load i128, i128* %array_getter294, align 4
  %c296 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %k297 = load i128, i128* %k, align 4
  %array_getter298 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c296, i128 0, i128 0, i128 %k297
  %c299 = load i128, i128* %array_getter298, align 4
  call void @fn_intrinsic_add_constraint(i128 %c299, i128 %hin295, i1* @constraint.96)
  %ptr_getter300 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %k301 = load i128, i128* %k, align 4
  %c302 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter300, i128 0, i128 0, i128 %k301
  store i128 %hin295, i128* %c302, align 4
  %hin303 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k304 = load i128, i128* %k, align 4
  %add305 = add i128 96, %k304
  %array_getter306 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin303, i128 0, i128 %add305
  %hin307 = load i128, i128* %array_getter306, align 4
  %d308 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %k309 = load i128, i128* %k, align 4
  %array_getter310 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d308, i128 0, i128 0, i128 %k309
  %d311 = load i128, i128* %array_getter310, align 4
  call void @fn_intrinsic_add_constraint(i128 %d311, i128 %hin307, i1* @constraint.97)
  %ptr_getter312 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %k313 = load i128, i128* %k, align 4
  %d314 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter312, i128 0, i128 0, i128 %k313
  store i128 %hin307, i128* %d314, align 4
  %hin315 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k316 = load i128, i128* %k, align 4
  %add317 = add i128 128, %k316
  %array_getter318 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin315, i128 0, i128 %add317
  %hin319 = load i128, i128* %array_getter318, align 4
  %e320 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %k321 = load i128, i128* %k, align 4
  %array_getter322 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e320, i128 0, i128 0, i128 %k321
  %e323 = load i128, i128* %array_getter322, align 4
  call void @fn_intrinsic_add_constraint(i128 %e323, i128 %hin319, i1* @constraint.98)
  %ptr_getter324 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %k325 = load i128, i128* %k, align 4
  %e326 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter324, i128 0, i128 0, i128 %k325
  store i128 %hin319, i128* %e326, align 4
  %hin327 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k328 = load i128, i128* %k, align 4
  %add329 = add i128 160, %k328
  %array_getter330 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin327, i128 0, i128 %add329
  %hin331 = load i128, i128* %array_getter330, align 4
  %f332 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %k333 = load i128, i128* %k, align 4
  %array_getter334 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f332, i128 0, i128 0, i128 %k333
  %f335 = load i128, i128* %array_getter334, align 4
  call void @fn_intrinsic_add_constraint(i128 %f335, i128 %hin331, i1* @constraint.99)
  %ptr_getter336 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %k337 = load i128, i128* %k, align 4
  %f338 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter336, i128 0, i128 0, i128 %k337
  store i128 %hin331, i128* %f338, align 4
  %hin339 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k340 = load i128, i128* %k, align 4
  %add341 = add i128 192, %k340
  %array_getter342 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin339, i128 0, i128 %add341
  %hin343 = load i128, i128* %array_getter342, align 4
  %g344 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %k345 = load i128, i128* %k, align 4
  %array_getter346 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g344, i128 0, i128 0, i128 %k345
  %g347 = load i128, i128* %array_getter346, align 4
  call void @fn_intrinsic_add_constraint(i128 %g347, i128 %hin343, i1* @constraint.100)
  %ptr_getter348 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %k349 = load i128, i128* %k, align 4
  %g350 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter348, i128 0, i128 0, i128 %k349
  store i128 %hin343, i128* %g350, align 4
  %hin351 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k352 = load i128, i128* %k, align 4
  %add353 = add i128 224, %k352
  %array_getter354 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin351, i128 0, i128 %add353
  %hin355 = load i128, i128* %array_getter354, align 4
  %h356 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %k357 = load i128, i128* %k, align 4
  %array_getter358 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h356, i128 0, i128 0, i128 %k357
  %h359 = load i128, i128* %array_getter358, align 4
  call void @fn_intrinsic_add_constraint(i128 %h359, i128 %hin355, i1* @constraint.101)
  %ptr_getter360 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %k361 = load i128, i128* %k, align 4
  %h362 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter360, i128 0, i128 0, i128 %k361
  store i128 %hin355, i128* %h362, align 4
  br label %loop.latch363

loop.latch363:                                    ; preds = %loop.body267
  %k364 = load i128, i128* %k, align 4
  %add365 = add i128 %k364, 1
  store i128 %add365, i128* %k, align 4
  %k366 = load i128, i128* %k, align 4
  %slt367 = icmp slt i128 %k366, 32
  br i1 %slt367, label %loop.body267, label %loop.exit368

loop.exit368:                                     ; preds = %loop.latch363
  store i128 0, i128* %t, align 4
  br label %loop.body369

loop.body369:                                     ; preds = %loop.latch815, %loop.exit368
  store i128 0, i128* %k, align 4
  br label %loop.body370

loop.body370:                                     ; preds = %loop.latch563, %loop.body369
  %h371 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %t372 = load i128, i128* %t, align 4
  %k373 = load i128, i128* %k, align 4
  %array_getter374 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h371, i128 0, i128 %t372, i128 %k373
  %h375 = load i128, i128* %array_getter374, align 4
  %t1376 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t377 = load i128, i128* %t, align 4
  %array_getter378 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1376, i128 0, i128 %t377
  %t1379 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter378, align 8
  %struct_getter380 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1379, i32 0, i32 0
  %t1.h.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter380, align 8
  %k381 = load i128, i128* %k, align 4
  %array_getter382 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter, i128 0, i128 %k381
  %t1383 = load i128, i128* %array_getter382, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1383, i128 %h375, i1* @constraint.102)
  %ptr_getter384 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t385 = load i128, i128* %t, align 4
  %array_getter386 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter384, i128 0, i128 %t385
  %t1387 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter386, align 8
  %struct_getter388 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1387, i32 0, i32 0
  %t1.h.read_input_outter389 = load [4096 x i128]*, [4096 x i128]** %struct_getter388, align 8
  %k390 = load i128, i128* %k, align 4
  %t1391 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter389, i128 0, i128 %k390
  store i128 %h375, i128* %t1391, align 4
  %e392 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %t393 = load i128, i128* %t, align 4
  %k394 = load i128, i128* %k, align 4
  %array_getter395 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e392, i128 0, i128 %t393, i128 %k394
  %e396 = load i128, i128* %array_getter395, align 4
  %t1397 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t398 = load i128, i128* %t, align 4
  %array_getter399 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1397, i128 0, i128 %t398
  %t1400 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter399, align 8
  %struct_getter401 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1400, i32 0, i32 1
  %t1.e.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter401, align 8
  %k402 = load i128, i128* %k, align 4
  %array_getter403 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter, i128 0, i128 %k402
  %t1404 = load i128, i128* %array_getter403, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1404, i128 %e396, i1* @constraint.103)
  %ptr_getter405 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t406 = load i128, i128* %t, align 4
  %array_getter407 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter405, i128 0, i128 %t406
  %t1408 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter407, align 8
  %struct_getter409 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1408, i32 0, i32 1
  %t1.e.read_input_outter410 = load [4096 x i128]*, [4096 x i128]** %struct_getter409, align 8
  %k411 = load i128, i128* %k, align 4
  %t1412 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter410, i128 0, i128 %k411
  store i128 %e396, i128* %t1412, align 4
  %f413 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %t414 = load i128, i128* %t, align 4
  %k415 = load i128, i128* %k, align 4
  %array_getter416 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f413, i128 0, i128 %t414, i128 %k415
  %f417 = load i128, i128* %array_getter416, align 4
  %t1418 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t419 = load i128, i128* %t, align 4
  %array_getter420 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1418, i128 0, i128 %t419
  %t1421 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter420, align 8
  %struct_getter422 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1421, i32 0, i32 2
  %t1.f.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter422, align 8
  %k423 = load i128, i128* %k, align 4
  %array_getter424 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter, i128 0, i128 %k423
  %t1425 = load i128, i128* %array_getter424, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1425, i128 %f417, i1* @constraint.104)
  %ptr_getter426 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t427 = load i128, i128* %t, align 4
  %array_getter428 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter426, i128 0, i128 %t427
  %t1429 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter428, align 8
  %struct_getter430 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1429, i32 0, i32 2
  %t1.f.read_input_outter431 = load [4096 x i128]*, [4096 x i128]** %struct_getter430, align 8
  %k432 = load i128, i128* %k, align 4
  %t1433 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter431, i128 0, i128 %k432
  store i128 %f417, i128* %t1433, align 4
  %g434 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %t435 = load i128, i128* %t, align 4
  %k436 = load i128, i128* %k, align 4
  %array_getter437 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g434, i128 0, i128 %t435, i128 %k436
  %g438 = load i128, i128* %array_getter437, align 4
  %t1439 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t440 = load i128, i128* %t, align 4
  %array_getter441 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1439, i128 0, i128 %t440
  %t1442 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter441, align 8
  %struct_getter443 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1442, i32 0, i32 3
  %t1.g.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter443, align 8
  %k444 = load i128, i128* %k, align 4
  %array_getter445 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter, i128 0, i128 %k444
  %t1446 = load i128, i128* %array_getter445, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1446, i128 %g438, i1* @constraint.105)
  %ptr_getter447 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t448 = load i128, i128* %t, align 4
  %array_getter449 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter447, i128 0, i128 %t448
  %t1450 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter449, align 8
  %struct_getter451 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1450, i32 0, i32 3
  %t1.g.read_input_outter452 = load [4096 x i128]*, [4096 x i128]** %struct_getter451, align 8
  %k453 = load i128, i128* %k, align 4
  %t1454 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter452, i128 0, i128 %k453
  store i128 %g438, i128* %t1454, align 4
  %ct_k455 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %t456 = load i128, i128* %t, align 4
  %array_getter457 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k455, i128 0, i128 %t456
  %ct_k458 = load %struct_template_circuit_k*, %struct_template_circuit_k** %array_getter457, align 8
  %struct_getter459 = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %ct_k458, i32 0, i32 1
  %k.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter459, align 8
  %k460 = load i128, i128* %k, align 4
  %array_getter461 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k.out.read_output_outter, i128 0, i128 %k460
  %ct_k462 = load i128, i128* %array_getter461, align 4
  %t1463 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t464 = load i128, i128* %t, align 4
  %array_getter465 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1463, i128 0, i128 %t464
  %t1466 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter465, align 8
  %struct_getter467 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1466, i32 0, i32 4
  %t1.k.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter467, align 8
  %k468 = load i128, i128* %k, align 4
  %array_getter469 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter, i128 0, i128 %k468
  %t1470 = load i128, i128* %array_getter469, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1470, i128 %ct_k462, i1* @constraint.106)
  %ptr_getter471 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t472 = load i128, i128* %t, align 4
  %array_getter473 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter471, i128 0, i128 %t472
  %t1474 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter473, align 8
  %struct_getter475 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1474, i32 0, i32 4
  %t1.k.read_input_outter476 = load [4096 x i128]*, [4096 x i128]** %struct_getter475, align 8
  %k477 = load i128, i128* %k, align 4
  %t1478 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter476, i128 0, i128 %k477
  store i128 %ct_k462, i128* %t1478, align 4
  %w479 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %t480 = load i128, i128* %t, align 4
  %k481 = load i128, i128* %k, align 4
  %array_getter482 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w479, i128 0, i128 %t480, i128 %k481
  %w483 = load i128, i128* %array_getter482, align 4
  %t1484 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t485 = load i128, i128* %t, align 4
  %array_getter486 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1484, i128 0, i128 %t485
  %t1487 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter486, align 8
  %struct_getter488 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1487, i32 0, i32 5
  %t1.w.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter488, align 8
  %k489 = load i128, i128* %k, align 4
  %array_getter490 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter, i128 0, i128 %k489
  %t1491 = load i128, i128* %array_getter490, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1491, i128 %w483, i1* @constraint.107)
  %ptr_getter492 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t493 = load i128, i128* %t, align 4
  %array_getter494 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter492, i128 0, i128 %t493
  %t1495 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter494, align 8
  %struct_getter496 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1495, i32 0, i32 5
  %t1.w.read_input_outter497 = load [4096 x i128]*, [4096 x i128]** %struct_getter496, align 8
  %k498 = load i128, i128* %k, align 4
  %t1499 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter497, i128 0, i128 %k498
  store i128 %w483, i128* %t1499, align 4
  %a500 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %t501 = load i128, i128* %t, align 4
  %k502 = load i128, i128* %k, align 4
  %array_getter503 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a500, i128 0, i128 %t501, i128 %k502
  %a504 = load i128, i128* %array_getter503, align 4
  %t2505 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t506 = load i128, i128* %t, align 4
  %array_getter507 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2505, i128 0, i128 %t506
  %t2508 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter507, align 8
  %struct_getter509 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2508, i32 0, i32 0
  %t2.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter509, align 8
  %k510 = load i128, i128* %k, align 4
  %array_getter511 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter, i128 0, i128 %k510
  %t2512 = load i128, i128* %array_getter511, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2512, i128 %a504, i1* @constraint.108)
  %ptr_getter513 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t514 = load i128, i128* %t, align 4
  %array_getter515 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter513, i128 0, i128 %t514
  %t2516 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter515, align 8
  %struct_getter517 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2516, i32 0, i32 0
  %t2.a.read_input_outter518 = load [4096 x i128]*, [4096 x i128]** %struct_getter517, align 8
  %k519 = load i128, i128* %k, align 4
  %t2520 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter518, i128 0, i128 %k519
  store i128 %a504, i128* %t2520, align 4
  %b521 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %t522 = load i128, i128* %t, align 4
  %k523 = load i128, i128* %k, align 4
  %array_getter524 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b521, i128 0, i128 %t522, i128 %k523
  %b525 = load i128, i128* %array_getter524, align 4
  %t2526 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t527 = load i128, i128* %t, align 4
  %array_getter528 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2526, i128 0, i128 %t527
  %t2529 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter528, align 8
  %struct_getter530 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2529, i32 0, i32 1
  %t2.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter530, align 8
  %k531 = load i128, i128* %k, align 4
  %array_getter532 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter, i128 0, i128 %k531
  %t2533 = load i128, i128* %array_getter532, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2533, i128 %b525, i1* @constraint.109)
  %ptr_getter534 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t535 = load i128, i128* %t, align 4
  %array_getter536 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter534, i128 0, i128 %t535
  %t2537 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter536, align 8
  %struct_getter538 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2537, i32 0, i32 1
  %t2.b.read_input_outter539 = load [4096 x i128]*, [4096 x i128]** %struct_getter538, align 8
  %k540 = load i128, i128* %k, align 4
  %t2541 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter539, i128 0, i128 %k540
  store i128 %b525, i128* %t2541, align 4
  %c542 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %t543 = load i128, i128* %t, align 4
  %k544 = load i128, i128* %k, align 4
  %array_getter545 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c542, i128 0, i128 %t543, i128 %k544
  %c546 = load i128, i128* %array_getter545, align 4
  %t2547 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t548 = load i128, i128* %t, align 4
  %array_getter549 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2547, i128 0, i128 %t548
  %t2550 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter549, align 8
  %struct_getter551 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2550, i32 0, i32 2
  %t2.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter551, align 8
  %k552 = load i128, i128* %k, align 4
  %array_getter553 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter, i128 0, i128 %k552
  %t2554 = load i128, i128* %array_getter553, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2554, i128 %c546, i1* @constraint.110)
  %ptr_getter555 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t556 = load i128, i128* %t, align 4
  %array_getter557 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter555, i128 0, i128 %t556
  %t2558 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter557, align 8
  %struct_getter559 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2558, i32 0, i32 2
  %t2.c.read_input_outter560 = load [4096 x i128]*, [4096 x i128]** %struct_getter559, align 8
  %k561 = load i128, i128* %k, align 4
  %t2562 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter560, i128 0, i128 %k561
  store i128 %c546, i128* %t2562, align 4
  br label %loop.latch563

loop.latch563:                                    ; preds = %loop.body370
  %k564 = load i128, i128* %k, align 4
  %add565 = add i128 %k564, 1
  store i128 %add565, i128* %k, align 4
  %k566 = load i128, i128* %k, align 4
  %slt567 = icmp slt i128 %k566, 32
  br i1 %slt567, label %loop.body370, label %loop.exit568

loop.exit568:                                     ; preds = %loop.latch563
  store i128 0, i128* %k, align 4
  br label %loop.body569

loop.body569:                                     ; preds = %loop.latch667, %loop.exit568
  %d570 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %t571 = load i128, i128* %t, align 4
  %k572 = load i128, i128* %k, align 4
  %array_getter573 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d570, i128 0, i128 %t571, i128 %k572
  %d574 = load i128, i128* %array_getter573, align 4
  %sume575 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %t576 = load i128, i128* %t, align 4
  %array_getter577 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume575, i128 0, i128 %t576
  %sume578 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter577, align 8
  %struct_getter579 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume578, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter579, align 8
  %k580 = load i128, i128* %k, align 4
  %array_getter581 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k580
  %sume582 = load i128, i128* %array_getter581, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume582, i128 %d574, i1* @constraint.111)
  %ptr_getter583 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %t584 = load i128, i128* %t, align 4
  %array_getter585 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter583, i128 0, i128 %t584
  %sume586 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter585, align 8
  %struct_getter587 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume586, i32 0, i32 2
  %binsum.in.read_input_outter588 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter587, align 8
  %k589 = load i128, i128* %k, align 4
  %sume590 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter588, i128 0, i128 0, i128 %k589
  store i128 %d574, i128* %sume590, align 4
  %t1591 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t592 = load i128, i128* %t, align 4
  %array_getter593 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1591, i128 0, i128 %t592
  %t1594 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter593, align 8
  %struct_getter595 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1594, i32 0, i32 6
  %t1.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter595, align 8
  %k596 = load i128, i128* %k, align 4
  %array_getter597 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter, i128 0, i128 %k596
  %t1598 = load i128, i128* %array_getter597, align 4
  %sume599 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %t600 = load i128, i128* %t, align 4
  %array_getter601 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume599, i128 0, i128 %t600
  %sume602 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter601, align 8
  %struct_getter603 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume602, i32 0, i32 2
  %binsum.in.read_input_outter604 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter603, align 8
  %k605 = load i128, i128* %k, align 4
  %array_getter606 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter604, i128 0, i128 1, i128 %k605
  %sume607 = load i128, i128* %array_getter606, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume607, i128 %t1598, i1* @constraint.112)
  %ptr_getter608 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %t609 = load i128, i128* %t, align 4
  %array_getter610 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter608, i128 0, i128 %t609
  %sume611 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter610, align 8
  %struct_getter612 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume611, i32 0, i32 2
  %binsum.in.read_input_outter613 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter612, align 8
  %k614 = load i128, i128* %k, align 4
  %sume615 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter613, i128 0, i128 1, i128 %k614
  store i128 %t1598, i128* %sume615, align 4
  %t1616 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t617 = load i128, i128* %t, align 4
  %array_getter618 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1616, i128 0, i128 %t617
  %t1619 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter618, align 8
  %struct_getter620 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1619, i32 0, i32 6
  %t1.out.read_output_outter621 = load [4096 x i128]*, [4096 x i128]** %struct_getter620, align 8
  %k622 = load i128, i128* %k, align 4
  %array_getter623 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter621, i128 0, i128 %k622
  %t1624 = load i128, i128* %array_getter623, align 4
  %suma625 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %t626 = load i128, i128* %t, align 4
  %array_getter627 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma625, i128 0, i128 %t626
  %suma628 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter627, align 8
  %struct_getter629 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma628, i32 0, i32 2
  %binsum.in.read_input_outter630 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter629, align 8
  %k631 = load i128, i128* %k, align 4
  %array_getter632 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter630, i128 0, i128 0, i128 %k631
  %suma633 = load i128, i128* %array_getter632, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma633, i128 %t1624, i1* @constraint.113)
  %ptr_getter634 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %t635 = load i128, i128* %t, align 4
  %array_getter636 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter634, i128 0, i128 %t635
  %suma637 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter636, align 8
  %struct_getter638 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma637, i32 0, i32 2
  %binsum.in.read_input_outter639 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter638, align 8
  %k640 = load i128, i128* %k, align 4
  %suma641 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter639, i128 0, i128 0, i128 %k640
  store i128 %t1624, i128* %suma641, align 4
  %t2642 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t216, align 8
  %t643 = load i128, i128* %t, align 4
  %array_getter644 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2642, i128 0, i128 %t643
  %t2645 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter644, align 8
  %struct_getter646 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2645, i32 0, i32 3
  %t2.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter646, align 8
  %k647 = load i128, i128* %k, align 4
  %array_getter648 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.out.read_output_outter, i128 0, i128 %k647
  %t2649 = load i128, i128* %array_getter648, align 4
  %suma650 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %t651 = load i128, i128* %t, align 4
  %array_getter652 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma650, i128 0, i128 %t651
  %suma653 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter652, align 8
  %struct_getter654 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma653, i32 0, i32 2
  %binsum.in.read_input_outter655 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter654, align 8
  %k656 = load i128, i128* %k, align 4
  %array_getter657 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter655, i128 0, i128 1, i128 %k656
  %suma658 = load i128, i128* %array_getter657, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma658, i128 %t2649, i1* @constraint.114)
  %ptr_getter659 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %t660 = load i128, i128* %t, align 4
  %array_getter661 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter659, i128 0, i128 %t660
  %suma662 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter661, align 8
  %struct_getter663 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma662, i32 0, i32 2
  %binsum.in.read_input_outter664 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter663, align 8
  %k665 = load i128, i128* %k, align 4
  %suma666 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter664, i128 0, i128 1, i128 %k665
  store i128 %t2649, i128* %suma666, align 4
  br label %loop.latch667

loop.latch667:                                    ; preds = %loop.body569
  %k668 = load i128, i128* %k, align 4
  %add669 = add i128 %k668, 1
  store i128 %add669, i128* %k, align 4
  %k670 = load i128, i128* %k, align 4
  %slt671 = icmp slt i128 %k670, 32
  br i1 %slt671, label %loop.body569, label %loop.exit672

loop.exit672:                                     ; preds = %loop.latch667
  store i128 0, i128* %k, align 4
  br label %loop.body673

loop.body673:                                     ; preds = %loop.latch809, %loop.exit672
  %g674 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %t675 = load i128, i128* %t, align 4
  %k676 = load i128, i128* %k, align 4
  %array_getter677 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g674, i128 0, i128 %t675, i128 %k676
  %g678 = load i128, i128* %array_getter677, align 4
  %h679 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %t680 = load i128, i128* %t, align 4
  %add681 = add i128 %t680, 1
  %k682 = load i128, i128* %k, align 4
  %array_getter683 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h679, i128 0, i128 %add681, i128 %k682
  %h684 = load i128, i128* %array_getter683, align 4
  call void @fn_intrinsic_add_constraint(i128 %h684, i128 %g678, i1* @constraint.115)
  %ptr_getter685 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %t686 = load i128, i128* %t, align 4
  %add687 = add i128 %t686, 1
  %k688 = load i128, i128* %k, align 4
  %h689 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter685, i128 0, i128 %add687, i128 %k688
  store i128 %g678, i128* %h689, align 4
  %f690 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %t691 = load i128, i128* %t, align 4
  %k692 = load i128, i128* %k, align 4
  %array_getter693 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f690, i128 0, i128 %t691, i128 %k692
  %f694 = load i128, i128* %array_getter693, align 4
  %g695 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %t696 = load i128, i128* %t, align 4
  %add697 = add i128 %t696, 1
  %k698 = load i128, i128* %k, align 4
  %array_getter699 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g695, i128 0, i128 %add697, i128 %k698
  %g700 = load i128, i128* %array_getter699, align 4
  call void @fn_intrinsic_add_constraint(i128 %g700, i128 %f694, i1* @constraint.116)
  %ptr_getter701 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %t702 = load i128, i128* %t, align 4
  %add703 = add i128 %t702, 1
  %k704 = load i128, i128* %k, align 4
  %g705 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter701, i128 0, i128 %add703, i128 %k704
  store i128 %f694, i128* %g705, align 4
  %e706 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %t707 = load i128, i128* %t, align 4
  %k708 = load i128, i128* %k, align 4
  %array_getter709 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e706, i128 0, i128 %t707, i128 %k708
  %e710 = load i128, i128* %array_getter709, align 4
  %f711 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %t712 = load i128, i128* %t, align 4
  %add713 = add i128 %t712, 1
  %k714 = load i128, i128* %k, align 4
  %array_getter715 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f711, i128 0, i128 %add713, i128 %k714
  %f716 = load i128, i128* %array_getter715, align 4
  call void @fn_intrinsic_add_constraint(i128 %f716, i128 %e710, i1* @constraint.117)
  %ptr_getter717 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %t718 = load i128, i128* %t, align 4
  %add719 = add i128 %t718, 1
  %k720 = load i128, i128* %k, align 4
  %f721 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter717, i128 0, i128 %add719, i128 %k720
  store i128 %e710, i128* %f721, align 4
  %sume722 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %t723 = load i128, i128* %t, align 4
  %array_getter724 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume722, i128 0, i128 %t723
  %sume725 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter724, align 8
  %struct_getter726 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume725, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter726, align 8
  %k727 = load i128, i128* %k, align 4
  %array_getter728 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k727
  %sume729 = load i128, i128* %array_getter728, align 4
  %e730 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %t731 = load i128, i128* %t, align 4
  %add732 = add i128 %t731, 1
  %k733 = load i128, i128* %k, align 4
  %array_getter734 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e730, i128 0, i128 %add732, i128 %k733
  %e735 = load i128, i128* %array_getter734, align 4
  call void @fn_intrinsic_add_constraint(i128 %e735, i128 %sume729, i1* @constraint.118)
  %ptr_getter736 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %t737 = load i128, i128* %t, align 4
  %add738 = add i128 %t737, 1
  %k739 = load i128, i128* %k, align 4
  %e740 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter736, i128 0, i128 %add738, i128 %k739
  store i128 %sume729, i128* %e740, align 4
  %c741 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %t742 = load i128, i128* %t, align 4
  %k743 = load i128, i128* %k, align 4
  %array_getter744 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c741, i128 0, i128 %t742, i128 %k743
  %c745 = load i128, i128* %array_getter744, align 4
  %d746 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %t747 = load i128, i128* %t, align 4
  %add748 = add i128 %t747, 1
  %k749 = load i128, i128* %k, align 4
  %array_getter750 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d746, i128 0, i128 %add748, i128 %k749
  %d751 = load i128, i128* %array_getter750, align 4
  call void @fn_intrinsic_add_constraint(i128 %d751, i128 %c745, i1* @constraint.119)
  %ptr_getter752 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %t753 = load i128, i128* %t, align 4
  %add754 = add i128 %t753, 1
  %k755 = load i128, i128* %k, align 4
  %d756 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter752, i128 0, i128 %add754, i128 %k755
  store i128 %c745, i128* %d756, align 4
  %b757 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %t758 = load i128, i128* %t, align 4
  %k759 = load i128, i128* %k, align 4
  %array_getter760 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b757, i128 0, i128 %t758, i128 %k759
  %b761 = load i128, i128* %array_getter760, align 4
  %c762 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %t763 = load i128, i128* %t, align 4
  %add764 = add i128 %t763, 1
  %k765 = load i128, i128* %k, align 4
  %array_getter766 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c762, i128 0, i128 %add764, i128 %k765
  %c767 = load i128, i128* %array_getter766, align 4
  call void @fn_intrinsic_add_constraint(i128 %c767, i128 %b761, i1* @constraint.120)
  %ptr_getter768 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %t769 = load i128, i128* %t, align 4
  %add770 = add i128 %t769, 1
  %k771 = load i128, i128* %k, align 4
  %c772 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter768, i128 0, i128 %add770, i128 %k771
  store i128 %b761, i128* %c772, align 4
  %a773 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %t774 = load i128, i128* %t, align 4
  %k775 = load i128, i128* %k, align 4
  %array_getter776 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a773, i128 0, i128 %t774, i128 %k775
  %a777 = load i128, i128* %array_getter776, align 4
  %b778 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %t779 = load i128, i128* %t, align 4
  %add780 = add i128 %t779, 1
  %k781 = load i128, i128* %k, align 4
  %array_getter782 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b778, i128 0, i128 %add780, i128 %k781
  %b783 = load i128, i128* %array_getter782, align 4
  call void @fn_intrinsic_add_constraint(i128 %b783, i128 %a777, i1* @constraint.121)
  %ptr_getter784 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %t785 = load i128, i128* %t, align 4
  %add786 = add i128 %t785, 1
  %k787 = load i128, i128* %k, align 4
  %b788 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter784, i128 0, i128 %add786, i128 %k787
  store i128 %a777, i128* %b788, align 4
  %suma789 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %t790 = load i128, i128* %t, align 4
  %array_getter791 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma789, i128 0, i128 %t790
  %suma792 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter791, align 8
  %struct_getter793 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma792, i32 0, i32 3
  %binsum.out.read_output_outter794 = load [4096 x i128]*, [4096 x i128]** %struct_getter793, align 8
  %k795 = load i128, i128* %k, align 4
  %array_getter796 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter794, i128 0, i128 %k795
  %suma797 = load i128, i128* %array_getter796, align 4
  %a798 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %t799 = load i128, i128* %t, align 4
  %add800 = add i128 %t799, 1
  %k801 = load i128, i128* %k, align 4
  %array_getter802 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a798, i128 0, i128 %add800, i128 %k801
  %a803 = load i128, i128* %array_getter802, align 4
  call void @fn_intrinsic_add_constraint(i128 %a803, i128 %suma797, i1* @constraint.122)
  %ptr_getter804 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %t805 = load i128, i128* %t, align 4
  %add806 = add i128 %t805, 1
  %k807 = load i128, i128* %k, align 4
  %a808 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter804, i128 0, i128 %add806, i128 %k807
  store i128 %suma797, i128* %a808, align 4
  br label %loop.latch809

loop.latch809:                                    ; preds = %loop.body673
  %k810 = load i128, i128* %k, align 4
  %add811 = add i128 %k810, 1
  store i128 %add811, i128* %k, align 4
  %k812 = load i128, i128* %k, align 4
  %slt813 = icmp slt i128 %k812, 32
  br i1 %slt813, label %loop.body673, label %loop.exit814

loop.exit814:                                     ; preds = %loop.latch809
  br label %loop.latch815

loop.latch815:                                    ; preds = %loop.exit814
  %t816 = load i128, i128* %t, align 4
  %add817 = add i128 %t816, 1
  store i128 %add817, i128* %t, align 4
  %t818 = load i128, i128* %t, align 4
  %slt819 = icmp slt i128 %t818, 64
  br i1 %slt819, label %loop.body369, label %loop.exit820

loop.exit820:                                     ; preds = %loop.latch815
  store i128 0, i128* %k, align 4
  br label %loop.body821

loop.body821:                                     ; preds = %loop.latch1134, %loop.exit820
  %hin822 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k823 = load i128, i128* %k, align 4
  %add824 = add i128 0, %k823
  %array_getter825 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin822, i128 0, i128 %add824
  %hin826 = load i128, i128* %array_getter825, align 4
  %fsum827 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter828 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum827, i128 0, i128 0
  %fsum829 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter828, align 8
  %struct_getter830 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum829, i32 0, i32 2
  %binsum.in.read_input_outter831 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter830, align 8
  %k832 = load i128, i128* %k, align 4
  %array_getter833 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter831, i128 0, i128 0, i128 %k832
  %fsum834 = load i128, i128* %array_getter833, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum834, i128 %hin826, i1* @constraint.123)
  %ptr_getter835 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter836 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter835, i128 0, i128 0
  %fsum837 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter836, align 8
  %struct_getter838 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum837, i32 0, i32 2
  %binsum.in.read_input_outter839 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter838, align 8
  %k840 = load i128, i128* %k, align 4
  %fsum841 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter839, i128 0, i128 0, i128 %k840
  store i128 %hin826, i128* %fsum841, align 4
  %a842 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %k843 = load i128, i128* %k, align 4
  %array_getter844 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a842, i128 0, i128 64, i128 %k843
  %a845 = load i128, i128* %array_getter844, align 4
  %fsum846 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter847 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum846, i128 0, i128 0
  %fsum848 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter847, align 8
  %struct_getter849 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum848, i32 0, i32 2
  %binsum.in.read_input_outter850 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter849, align 8
  %k851 = load i128, i128* %k, align 4
  %array_getter852 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter850, i128 0, i128 1, i128 %k851
  %fsum853 = load i128, i128* %array_getter852, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum853, i128 %a845, i1* @constraint.124)
  %ptr_getter854 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter855 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter854, i128 0, i128 0
  %fsum856 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter855, align 8
  %struct_getter857 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum856, i32 0, i32 2
  %binsum.in.read_input_outter858 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter857, align 8
  %k859 = load i128, i128* %k, align 4
  %fsum860 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter858, i128 0, i128 1, i128 %k859
  store i128 %a845, i128* %fsum860, align 4
  %hin861 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k862 = load i128, i128* %k, align 4
  %add863 = add i128 32, %k862
  %array_getter864 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin861, i128 0, i128 %add863
  %hin865 = load i128, i128* %array_getter864, align 4
  %fsum866 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter867 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum866, i128 0, i128 1
  %fsum868 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter867, align 8
  %struct_getter869 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum868, i32 0, i32 2
  %binsum.in.read_input_outter870 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter869, align 8
  %k871 = load i128, i128* %k, align 4
  %array_getter872 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter870, i128 0, i128 0, i128 %k871
  %fsum873 = load i128, i128* %array_getter872, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum873, i128 %hin865, i1* @constraint.125)
  %ptr_getter874 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter875 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter874, i128 0, i128 1
  %fsum876 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter875, align 8
  %struct_getter877 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum876, i32 0, i32 2
  %binsum.in.read_input_outter878 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter877, align 8
  %k879 = load i128, i128* %k, align 4
  %fsum880 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter878, i128 0, i128 0, i128 %k879
  store i128 %hin865, i128* %fsum880, align 4
  %b881 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %k882 = load i128, i128* %k, align 4
  %array_getter883 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b881, i128 0, i128 64, i128 %k882
  %b884 = load i128, i128* %array_getter883, align 4
  %fsum885 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter886 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum885, i128 0, i128 1
  %fsum887 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter886, align 8
  %struct_getter888 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum887, i32 0, i32 2
  %binsum.in.read_input_outter889 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter888, align 8
  %k890 = load i128, i128* %k, align 4
  %array_getter891 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter889, i128 0, i128 1, i128 %k890
  %fsum892 = load i128, i128* %array_getter891, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum892, i128 %b884, i1* @constraint.126)
  %ptr_getter893 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter894 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter893, i128 0, i128 1
  %fsum895 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter894, align 8
  %struct_getter896 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum895, i32 0, i32 2
  %binsum.in.read_input_outter897 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter896, align 8
  %k898 = load i128, i128* %k, align 4
  %fsum899 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter897, i128 0, i128 1, i128 %k898
  store i128 %b884, i128* %fsum899, align 4
  %hin900 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k901 = load i128, i128* %k, align 4
  %add902 = add i128 64, %k901
  %array_getter903 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin900, i128 0, i128 %add902
  %hin904 = load i128, i128* %array_getter903, align 4
  %fsum905 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter906 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum905, i128 0, i128 2
  %fsum907 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter906, align 8
  %struct_getter908 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum907, i32 0, i32 2
  %binsum.in.read_input_outter909 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter908, align 8
  %k910 = load i128, i128* %k, align 4
  %array_getter911 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter909, i128 0, i128 0, i128 %k910
  %fsum912 = load i128, i128* %array_getter911, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum912, i128 %hin904, i1* @constraint.127)
  %ptr_getter913 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter914 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter913, i128 0, i128 2
  %fsum915 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter914, align 8
  %struct_getter916 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum915, i32 0, i32 2
  %binsum.in.read_input_outter917 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter916, align 8
  %k918 = load i128, i128* %k, align 4
  %fsum919 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter917, i128 0, i128 0, i128 %k918
  store i128 %hin904, i128* %fsum919, align 4
  %c920 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %k921 = load i128, i128* %k, align 4
  %array_getter922 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c920, i128 0, i128 64, i128 %k921
  %c923 = load i128, i128* %array_getter922, align 4
  %fsum924 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter925 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum924, i128 0, i128 2
  %fsum926 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter925, align 8
  %struct_getter927 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum926, i32 0, i32 2
  %binsum.in.read_input_outter928 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter927, align 8
  %k929 = load i128, i128* %k, align 4
  %array_getter930 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter928, i128 0, i128 1, i128 %k929
  %fsum931 = load i128, i128* %array_getter930, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum931, i128 %c923, i1* @constraint.128)
  %ptr_getter932 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter933 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter932, i128 0, i128 2
  %fsum934 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter933, align 8
  %struct_getter935 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum934, i32 0, i32 2
  %binsum.in.read_input_outter936 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter935, align 8
  %k937 = load i128, i128* %k, align 4
  %fsum938 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter936, i128 0, i128 1, i128 %k937
  store i128 %c923, i128* %fsum938, align 4
  %hin939 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k940 = load i128, i128* %k, align 4
  %add941 = add i128 96, %k940
  %array_getter942 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin939, i128 0, i128 %add941
  %hin943 = load i128, i128* %array_getter942, align 4
  %fsum944 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter945 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum944, i128 0, i128 3
  %fsum946 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter945, align 8
  %struct_getter947 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum946, i32 0, i32 2
  %binsum.in.read_input_outter948 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter947, align 8
  %k949 = load i128, i128* %k, align 4
  %array_getter950 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter948, i128 0, i128 0, i128 %k949
  %fsum951 = load i128, i128* %array_getter950, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum951, i128 %hin943, i1* @constraint.129)
  %ptr_getter952 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter953 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter952, i128 0, i128 3
  %fsum954 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter953, align 8
  %struct_getter955 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum954, i32 0, i32 2
  %binsum.in.read_input_outter956 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter955, align 8
  %k957 = load i128, i128* %k, align 4
  %fsum958 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter956, i128 0, i128 0, i128 %k957
  store i128 %hin943, i128* %fsum958, align 4
  %d959 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %k960 = load i128, i128* %k, align 4
  %array_getter961 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d959, i128 0, i128 64, i128 %k960
  %d962 = load i128, i128* %array_getter961, align 4
  %fsum963 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter964 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum963, i128 0, i128 3
  %fsum965 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter964, align 8
  %struct_getter966 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum965, i32 0, i32 2
  %binsum.in.read_input_outter967 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter966, align 8
  %k968 = load i128, i128* %k, align 4
  %array_getter969 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter967, i128 0, i128 1, i128 %k968
  %fsum970 = load i128, i128* %array_getter969, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum970, i128 %d962, i1* @constraint.130)
  %ptr_getter971 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter972 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter971, i128 0, i128 3
  %fsum973 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter972, align 8
  %struct_getter974 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum973, i32 0, i32 2
  %binsum.in.read_input_outter975 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter974, align 8
  %k976 = load i128, i128* %k, align 4
  %fsum977 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter975, i128 0, i128 1, i128 %k976
  store i128 %d962, i128* %fsum977, align 4
  %hin978 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k979 = load i128, i128* %k, align 4
  %add980 = add i128 128, %k979
  %array_getter981 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin978, i128 0, i128 %add980
  %hin982 = load i128, i128* %array_getter981, align 4
  %fsum983 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter984 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum983, i128 0, i128 4
  %fsum985 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter984, align 8
  %struct_getter986 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum985, i32 0, i32 2
  %binsum.in.read_input_outter987 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter986, align 8
  %k988 = load i128, i128* %k, align 4
  %array_getter989 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter987, i128 0, i128 0, i128 %k988
  %fsum990 = load i128, i128* %array_getter989, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum990, i128 %hin982, i1* @constraint.131)
  %ptr_getter991 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter992 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter991, i128 0, i128 4
  %fsum993 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter992, align 8
  %struct_getter994 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum993, i32 0, i32 2
  %binsum.in.read_input_outter995 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter994, align 8
  %k996 = load i128, i128* %k, align 4
  %fsum997 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter995, i128 0, i128 0, i128 %k996
  store i128 %hin982, i128* %fsum997, align 4
  %e998 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %k999 = load i128, i128* %k, align 4
  %array_getter1000 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e998, i128 0, i128 64, i128 %k999
  %e1001 = load i128, i128* %array_getter1000, align 4
  %fsum1002 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1003 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1002, i128 0, i128 4
  %fsum1004 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1003, align 8
  %struct_getter1005 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1004, i32 0, i32 2
  %binsum.in.read_input_outter1006 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1005, align 8
  %k1007 = load i128, i128* %k, align 4
  %array_getter1008 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1006, i128 0, i128 1, i128 %k1007
  %fsum1009 = load i128, i128* %array_getter1008, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1009, i128 %e1001, i1* @constraint.132)
  %ptr_getter1010 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1011 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1010, i128 0, i128 4
  %fsum1012 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1011, align 8
  %struct_getter1013 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1012, i32 0, i32 2
  %binsum.in.read_input_outter1014 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1013, align 8
  %k1015 = load i128, i128* %k, align 4
  %fsum1016 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1014, i128 0, i128 1, i128 %k1015
  store i128 %e1001, i128* %fsum1016, align 4
  %hin1017 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k1018 = load i128, i128* %k, align 4
  %add1019 = add i128 160, %k1018
  %array_getter1020 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1017, i128 0, i128 %add1019
  %hin1021 = load i128, i128* %array_getter1020, align 4
  %fsum1022 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1023 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1022, i128 0, i128 5
  %fsum1024 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1023, align 8
  %struct_getter1025 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1024, i32 0, i32 2
  %binsum.in.read_input_outter1026 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1025, align 8
  %k1027 = load i128, i128* %k, align 4
  %array_getter1028 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1026, i128 0, i128 0, i128 %k1027
  %fsum1029 = load i128, i128* %array_getter1028, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1029, i128 %hin1021, i1* @constraint.133)
  %ptr_getter1030 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1031 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1030, i128 0, i128 5
  %fsum1032 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1031, align 8
  %struct_getter1033 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1032, i32 0, i32 2
  %binsum.in.read_input_outter1034 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1033, align 8
  %k1035 = load i128, i128* %k, align 4
  %fsum1036 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1034, i128 0, i128 0, i128 %k1035
  store i128 %hin1021, i128* %fsum1036, align 4
  %f1037 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %k1038 = load i128, i128* %k, align 4
  %array_getter1039 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f1037, i128 0, i128 64, i128 %k1038
  %f1040 = load i128, i128* %array_getter1039, align 4
  %fsum1041 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1042 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1041, i128 0, i128 5
  %fsum1043 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1042, align 8
  %struct_getter1044 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1043, i32 0, i32 2
  %binsum.in.read_input_outter1045 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1044, align 8
  %k1046 = load i128, i128* %k, align 4
  %array_getter1047 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1045, i128 0, i128 1, i128 %k1046
  %fsum1048 = load i128, i128* %array_getter1047, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1048, i128 %f1040, i1* @constraint.134)
  %ptr_getter1049 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1050 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1049, i128 0, i128 5
  %fsum1051 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1050, align 8
  %struct_getter1052 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1051, i32 0, i32 2
  %binsum.in.read_input_outter1053 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1052, align 8
  %k1054 = load i128, i128* %k, align 4
  %fsum1055 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1053, i128 0, i128 1, i128 %k1054
  store i128 %f1040, i128* %fsum1055, align 4
  %hin1056 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k1057 = load i128, i128* %k, align 4
  %add1058 = add i128 192, %k1057
  %array_getter1059 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1056, i128 0, i128 %add1058
  %hin1060 = load i128, i128* %array_getter1059, align 4
  %fsum1061 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1062 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1061, i128 0, i128 6
  %fsum1063 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1062, align 8
  %struct_getter1064 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1063, i32 0, i32 2
  %binsum.in.read_input_outter1065 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1064, align 8
  %k1066 = load i128, i128* %k, align 4
  %array_getter1067 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1065, i128 0, i128 0, i128 %k1066
  %fsum1068 = load i128, i128* %array_getter1067, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1068, i128 %hin1060, i1* @constraint.135)
  %ptr_getter1069 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1070 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1069, i128 0, i128 6
  %fsum1071 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1070, align 8
  %struct_getter1072 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1071, i32 0, i32 2
  %binsum.in.read_input_outter1073 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1072, align 8
  %k1074 = load i128, i128* %k, align 4
  %fsum1075 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1073, i128 0, i128 0, i128 %k1074
  store i128 %hin1060, i128* %fsum1075, align 4
  %g1076 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %k1077 = load i128, i128* %k, align 4
  %array_getter1078 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g1076, i128 0, i128 64, i128 %k1077
  %g1079 = load i128, i128* %array_getter1078, align 4
  %fsum1080 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1081 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1080, i128 0, i128 6
  %fsum1082 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1081, align 8
  %struct_getter1083 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1082, i32 0, i32 2
  %binsum.in.read_input_outter1084 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1083, align 8
  %k1085 = load i128, i128* %k, align 4
  %array_getter1086 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1084, i128 0, i128 1, i128 %k1085
  %fsum1087 = load i128, i128* %array_getter1086, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1087, i128 %g1079, i1* @constraint.136)
  %ptr_getter1088 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1089 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1088, i128 0, i128 6
  %fsum1090 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1089, align 8
  %struct_getter1091 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1090, i32 0, i32 2
  %binsum.in.read_input_outter1092 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1091, align 8
  %k1093 = load i128, i128* %k, align 4
  %fsum1094 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1092, i128 0, i128 1, i128 %k1093
  store i128 %g1079, i128* %fsum1094, align 4
  %hin1095 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %k1096 = load i128, i128* %k, align 4
  %add1097 = add i128 224, %k1096
  %array_getter1098 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1095, i128 0, i128 %add1097
  %hin1099 = load i128, i128* %array_getter1098, align 4
  %fsum1100 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1101 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1100, i128 0, i128 7
  %fsum1102 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1101, align 8
  %struct_getter1103 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1102, i32 0, i32 2
  %binsum.in.read_input_outter1104 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1103, align 8
  %k1105 = load i128, i128* %k, align 4
  %array_getter1106 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1104, i128 0, i128 0, i128 %k1105
  %fsum1107 = load i128, i128* %array_getter1106, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1107, i128 %hin1099, i1* @constraint.137)
  %ptr_getter1108 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1109 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1108, i128 0, i128 7
  %fsum1110 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1109, align 8
  %struct_getter1111 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1110, i32 0, i32 2
  %binsum.in.read_input_outter1112 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1111, align 8
  %k1113 = load i128, i128* %k, align 4
  %fsum1114 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1112, i128 0, i128 0, i128 %k1113
  store i128 %hin1099, i128* %fsum1114, align 4
  %h1115 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %k1116 = load i128, i128* %k, align 4
  %array_getter1117 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h1115, i128 0, i128 64, i128 %k1116
  %h1118 = load i128, i128* %array_getter1117, align 4
  %fsum1119 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1120 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1119, i128 0, i128 7
  %fsum1121 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1120, align 8
  %struct_getter1122 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1121, i32 0, i32 2
  %binsum.in.read_input_outter1123 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1122, align 8
  %k1124 = load i128, i128* %k, align 4
  %array_getter1125 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1123, i128 0, i128 1, i128 %k1124
  %fsum1126 = load i128, i128* %array_getter1125, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1126, i128 %h1118, i1* @constraint.138)
  %ptr_getter1127 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1128 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1127, i128 0, i128 7
  %fsum1129 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1128, align 8
  %struct_getter1130 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1129, i32 0, i32 2
  %binsum.in.read_input_outter1131 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1130, align 8
  %k1132 = load i128, i128* %k, align 4
  %fsum1133 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1131, i128 0, i128 1, i128 %k1132
  store i128 %h1118, i128* %fsum1133, align 4
  br label %loop.latch1134

loop.latch1134:                                   ; preds = %loop.body821
  %k1135 = load i128, i128* %k, align 4
  %add1136 = add i128 %k1135, 1
  store i128 %add1136, i128* %k, align 4
  %k1137 = load i128, i128* %k, align 4
  %slt1138 = icmp slt i128 %k1137, 32
  br i1 %slt1138, label %loop.body821, label %loop.exit1139

loop.exit1139:                                    ; preds = %loop.latch1134
  store i128 0, i128* %k, align 4
  br label %loop.body1140

loop.body1140:                                    ; preds = %loop.latch1245, %loop.exit1139
  %out1141 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1142 = load i128, i128* %k, align 4
  %sub1143 = sub i128 31, %k1142
  %array_getter1144 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1141, i128 0, i128 %sub1143
  %out1145 = load i128, i128* %array_getter1144, align 4
  %fsum1146 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1147 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1146, i128 0, i128 0
  %fsum1148 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1147, align 8
  %struct_getter1149 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1148, i32 0, i32 3
  %binsum.out.read_output_outter1150 = load [4096 x i128]*, [4096 x i128]** %struct_getter1149, align 8
  %k1151 = load i128, i128* %k, align 4
  %array_getter1152 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1150, i128 0, i128 %k1151
  %fsum1153 = load i128, i128* %array_getter1152, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1145, i128 %fsum1153, i1* @constraint.139)
  %out1154 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1155 = load i128, i128* %k, align 4
  %sub1156 = sub i128 63, %k1155
  %array_getter1157 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1154, i128 0, i128 %sub1156
  %out1158 = load i128, i128* %array_getter1157, align 4
  %fsum1159 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1160 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1159, i128 0, i128 1
  %fsum1161 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1160, align 8
  %struct_getter1162 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1161, i32 0, i32 3
  %binsum.out.read_output_outter1163 = load [4096 x i128]*, [4096 x i128]** %struct_getter1162, align 8
  %k1164 = load i128, i128* %k, align 4
  %array_getter1165 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1163, i128 0, i128 %k1164
  %fsum1166 = load i128, i128* %array_getter1165, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1158, i128 %fsum1166, i1* @constraint.140)
  %out1167 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1168 = load i128, i128* %k, align 4
  %sub1169 = sub i128 95, %k1168
  %array_getter1170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1167, i128 0, i128 %sub1169
  %out1171 = load i128, i128* %array_getter1170, align 4
  %fsum1172 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1173 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1172, i128 0, i128 2
  %fsum1174 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1173, align 8
  %struct_getter1175 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1174, i32 0, i32 3
  %binsum.out.read_output_outter1176 = load [4096 x i128]*, [4096 x i128]** %struct_getter1175, align 8
  %k1177 = load i128, i128* %k, align 4
  %array_getter1178 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1176, i128 0, i128 %k1177
  %fsum1179 = load i128, i128* %array_getter1178, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1171, i128 %fsum1179, i1* @constraint.141)
  %out1180 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1181 = load i128, i128* %k, align 4
  %sub1182 = sub i128 127, %k1181
  %array_getter1183 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1180, i128 0, i128 %sub1182
  %out1184 = load i128, i128* %array_getter1183, align 4
  %fsum1185 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1186 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1185, i128 0, i128 3
  %fsum1187 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1186, align 8
  %struct_getter1188 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1187, i32 0, i32 3
  %binsum.out.read_output_outter1189 = load [4096 x i128]*, [4096 x i128]** %struct_getter1188, align 8
  %k1190 = load i128, i128* %k, align 4
  %array_getter1191 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1189, i128 0, i128 %k1190
  %fsum1192 = load i128, i128* %array_getter1191, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1184, i128 %fsum1192, i1* @constraint.142)
  %out1193 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1194 = load i128, i128* %k, align 4
  %sub1195 = sub i128 159, %k1194
  %array_getter1196 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1193, i128 0, i128 %sub1195
  %out1197 = load i128, i128* %array_getter1196, align 4
  %fsum1198 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1199 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1198, i128 0, i128 4
  %fsum1200 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1199, align 8
  %struct_getter1201 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1200, i32 0, i32 3
  %binsum.out.read_output_outter1202 = load [4096 x i128]*, [4096 x i128]** %struct_getter1201, align 8
  %k1203 = load i128, i128* %k, align 4
  %array_getter1204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1202, i128 0, i128 %k1203
  %fsum1205 = load i128, i128* %array_getter1204, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1197, i128 %fsum1205, i1* @constraint.143)
  %out1206 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1207 = load i128, i128* %k, align 4
  %sub1208 = sub i128 191, %k1207
  %array_getter1209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1206, i128 0, i128 %sub1208
  %out1210 = load i128, i128* %array_getter1209, align 4
  %fsum1211 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1212 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1211, i128 0, i128 5
  %fsum1213 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1212, align 8
  %struct_getter1214 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1213, i32 0, i32 3
  %binsum.out.read_output_outter1215 = load [4096 x i128]*, [4096 x i128]** %struct_getter1214, align 8
  %k1216 = load i128, i128* %k, align 4
  %array_getter1217 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1215, i128 0, i128 %k1216
  %fsum1218 = load i128, i128* %array_getter1217, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1210, i128 %fsum1218, i1* @constraint.144)
  %out1219 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1220 = load i128, i128* %k, align 4
  %sub1221 = sub i128 223, %k1220
  %array_getter1222 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1219, i128 0, i128 %sub1221
  %out1223 = load i128, i128* %array_getter1222, align 4
  %fsum1224 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1225 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1224, i128 0, i128 6
  %fsum1226 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1225, align 8
  %struct_getter1227 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1226, i32 0, i32 3
  %binsum.out.read_output_outter1228 = load [4096 x i128]*, [4096 x i128]** %struct_getter1227, align 8
  %k1229 = load i128, i128* %k, align 4
  %array_getter1230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1228, i128 0, i128 %k1229
  %fsum1231 = load i128, i128* %array_getter1230, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1223, i128 %fsum1231, i1* @constraint.145)
  %out1232 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %k1233 = load i128, i128* %k, align 4
  %sub1234 = sub i128 255, %k1233
  %array_getter1235 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1232, i128 0, i128 %sub1234
  %out1236 = load i128, i128* %array_getter1235, align 4
  %fsum1237 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1238 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1237, i128 0, i128 7
  %fsum1239 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1238, align 8
  %struct_getter1240 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1239, i32 0, i32 3
  %binsum.out.read_output_outter1241 = load [4096 x i128]*, [4096 x i128]** %struct_getter1240, align 8
  %k1242 = load i128, i128* %k, align 4
  %array_getter1243 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1241, i128 0, i128 %k1242
  %fsum1244 = load i128, i128* %array_getter1243, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1236, i128 %fsum1244, i1* @constraint.146)
  br label %loop.latch1245

loop.latch1245:                                   ; preds = %loop.body1140
  %k1246 = load i128, i128* %k, align 4
  %add1247 = add i128 %k1246, 1
  store i128 %add1247, i128* %k, align 4
  %k1248 = load i128, i128* %k, align 4
  %slt1249 = icmp slt i128 %k1248, 32
  br i1 %slt1249, label %loop.body1140, label %loop.exit1250

loop.exit1250:                                    ; preds = %loop.latch1245
  br label %exit

exit:                                             ; preds = %loop.exit1250
  %a1251 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %sha256compression.a.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 2
  store [4096 x [4096 x i128]]* %a1251, [4096 x [4096 x i128]]** %sha256compression.a.write_inter_inner, align 8
  %b1252 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sha256compression.b.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 3
  store [4096 x [4096 x i128]]* %b1252, [4096 x [4096 x i128]]** %sha256compression.b.write_inter_inner, align 8
  %c1253 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %sha256compression.c.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 4
  store [4096 x [4096 x i128]]* %c1253, [4096 x [4096 x i128]]** %sha256compression.c.write_inter_inner, align 8
  %d1254 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %sha256compression.d.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 5
  store [4096 x [4096 x i128]]* %d1254, [4096 x [4096 x i128]]** %sha256compression.d.write_inter_inner, align 8
  %e1255 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %sha256compression.e.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 6
  store [4096 x [4096 x i128]]* %e1255, [4096 x [4096 x i128]]** %sha256compression.e.write_inter_inner, align 8
  %f1256 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %sha256compression.f.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 7
  store [4096 x [4096 x i128]]* %f1256, [4096 x [4096 x i128]]** %sha256compression.f.write_inter_inner, align 8
  %g1257 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %sha256compression.g.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 8
  store [4096 x [4096 x i128]]* %g1257, [4096 x [4096 x i128]]** %sha256compression.g.write_inter_inner, align 8
  %h1258 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %sha256compression.h.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 9
  store [4096 x [4096 x i128]]* %h1258, [4096 x [4096 x i128]]** %sha256compression.h.write_inter_inner, align 8
  %w1259 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sha256compression.w.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 10
  store [4096 x [4096 x i128]]* %w1259, [4096 x [4096 x i128]]** %sha256compression.w.write_inter_inner, align 8
  %out1260 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sha256compression.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 11
  store [4096 x i128]* %out1260, [4096 x i128]** %sha256compression.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256compression* @fn_template_build_sha256compression() {
entry:
  %struct_template_circuit_sha256compression = alloca %struct_template_circuit_sha256compression, align 8
  ret %struct_template_circuit_sha256compression* %struct_template_circuit_sha256compression
}

define void @fn_template_init_sha256(%struct_template_circuit_sha256* %0) {
entry:
  %Sha256 = alloca %struct_template_circuit_sha256*, align 8
  store %struct_template_circuit_sha256* %0, %struct_template_circuit_sha256** %Sha256, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 0
  %sha256.nbits.read_arg_inner = load i128, i128* %struct_getter, align 4
  %sha256.nbits.declare_arg = alloca i128, align 8
  store i128 %sha256.nbits.read_arg_inner, i128* %sha256.nbits.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 1
  %sha256.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256.in.read_input_inner, [4096 x i128]** %sha256.in.declare_input, align 8
  %hh0 = alloca %struct_template_circuit_h*, align 8
  %hc0 = alloca %struct_template_circuit_h*, align 8
  %he0 = alloca %struct_template_circuit_h*, align 8
  %ha0 = alloca %struct_template_circuit_h*, align 8
  %sha256.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256.out.declare_output, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %nBlocks = alloca i128, align 8
  %nBlocks3 = call i128 @fn_intrinsic_inline_init()
  store i128 %nBlocks3, i128* %nBlocks, align 4
  %sha256compression = alloca [4096 x %struct_template_circuit_sha256compression*]*, align 8
  %sha256compression4 = alloca [4096 x %struct_template_circuit_sha256compression*], align 8
  store [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %k = alloca i128, align 8
  %k5 = call i128 @fn_intrinsic_inline_init()
  store i128 %k5, i128* %k, align 4
  %hf0 = alloca %struct_template_circuit_h*, align 8
  %bitsLastBlock = alloca i128, align 8
  %bitsLastBlock6 = call i128 @fn_intrinsic_inline_init()
  store i128 %bitsLastBlock6, i128* %bitsLastBlock, align 4
  %sha256.paddedin.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %paddedIn = bitcast i8* %malloccall7 to [4096 x i128]*
  store [4096 x i128]* %paddedIn, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %hb0 = alloca %struct_template_circuit_h*, align 8
  %hg0 = alloca %struct_template_circuit_h*, align 8
  %hd0 = alloca %struct_template_circuit_h*, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %k, align 4
  store i128 0, i128* %nBlocks, align 4
  store i128 0, i128* %bitsLastBlock, align 4
  %nBits = load i128, i128* %sha256.nbits.declare_arg, align 4
  %add = add i128 %nBits, 64
  %sdiv = sdiv i128 %add, 512
  %add8 = add i128 %sdiv, 1
  store i128 %add8, i128* %nBlocks, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [4096 x i128]*, [4096 x i128]** %sha256.in.declare_input, align 8
  %k9 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k9
  %in10 = load i128, i128* %array_getter, align 4
  %paddedIn11 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %k12 = load i128, i128* %k, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn11, i128 0, i128 %k12
  %paddedIn14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn14, i128 %in10, i1* @constraint.147)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %k15 = load i128, i128* %k, align 4
  %paddedIn16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k15
  store i128 %in10, i128* %paddedIn16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %k17 = load i128, i128* %k, align 4
  %add18 = add i128 %k17, 1
  store i128 %add18, i128* %k, align 4
  %k19 = load i128, i128* %k, align 4
  %nBits20 = load i128, i128* %sha256.nbits.declare_arg, align 4
  %slt = icmp slt i128 %k19, %nBits20
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %paddedIn21 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %nBits22 = load i128, i128* %sha256.nbits.declare_arg, align 4
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn21, i128 0, i128 %nBits22
  %paddedIn24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn24, i128 1, i1* @constraint.148)
  %ptr_getter25 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %nBits26 = load i128, i128* %sha256.nbits.declare_arg, align 4
  %paddedIn27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter25, i128 0, i128 %nBits26
  store i128 1, i128* %paddedIn27, align 4
  %nBits28 = load i128, i128* %sha256.nbits.declare_arg, align 4
  %add29 = add i128 %nBits28, 1
  store i128 %add29, i128* %k, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch38, %loop.exit
  %paddedIn31 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %k32 = load i128, i128* %k, align 4
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn31, i128 0, i128 %k32
  %paddedIn34 = load i128, i128* %array_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn34, i128 0, i1* @constraint.149)
  %ptr_getter35 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %k36 = load i128, i128* %k, align 4
  %paddedIn37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter35, i128 0, i128 %k36
  store i128 0, i128* %paddedIn37, align 4
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body30
  %k39 = load i128, i128* %k, align 4
  %add40 = add i128 %k39, 1
  store i128 %add40, i128* %k, align 4
  %k41 = load i128, i128* %k, align 4
  %nBlocks42 = load i128, i128* %nBlocks, align 4
  %mul = mul i128 %nBlocks42, 512
  %sub = sub i128 %mul, 64
  %slt43 = icmp slt i128 %k41, %sub
  br i1 %slt43, label %loop.body30, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch38
  store i128 0, i128* %k, align 4
  br label %loop.body45

loop.body45:                                      ; preds = %loop.latch63, %loop.exit44
  %nBits46 = load i128, i128* %sha256.nbits.declare_arg, align 4
  %k47 = load i128, i128* %k, align 4
  %rshift = lshr i128 %nBits46, %k47
  %and = and i128 %rshift, 1
  %paddedIn48 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %nBlocks49 = load i128, i128* %nBlocks, align 4
  %mul50 = mul i128 %nBlocks49, 512
  %k51 = load i128, i128* %k, align 4
  %sub52 = sub i128 %mul50, %k51
  %sub53 = sub i128 %sub52, 1
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn48, i128 0, i128 %sub53
  %paddedIn55 = load i128, i128* %array_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn55, i128 %and, i1* @constraint.150)
  %ptr_getter56 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %nBlocks57 = load i128, i128* %nBlocks, align 4
  %mul58 = mul i128 %nBlocks57, 512
  %k59 = load i128, i128* %k, align 4
  %sub60 = sub i128 %mul58, %k59
  %sub61 = sub i128 %sub60, 1
  %paddedIn62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter56, i128 0, i128 %sub61
  store i128 %and, i128* %paddedIn62, align 4
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.body45
  %k64 = load i128, i128* %k, align 4
  %add65 = add i128 %k64, 1
  store i128 %add65, i128* %k, align 4
  %k66 = load i128, i128* %k, align 4
  %slt67 = icmp slt i128 %k66, 64
  br i1 %slt67, label %loop.body45, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch63
  %call = call %struct_template_circuit_h* @fn_template_build_h(i128 0)
  store %struct_template_circuit_h* %call, %struct_template_circuit_h** %ha0, align 8
  %call69 = call %struct_template_circuit_h* @fn_template_build_h(i128 1)
  store %struct_template_circuit_h* %call69, %struct_template_circuit_h** %hb0, align 8
  %call70 = call %struct_template_circuit_h* @fn_template_build_h(i128 2)
  store %struct_template_circuit_h* %call70, %struct_template_circuit_h** %hc0, align 8
  %call71 = call %struct_template_circuit_h* @fn_template_build_h(i128 3)
  store %struct_template_circuit_h* %call71, %struct_template_circuit_h** %hd0, align 8
  %call72 = call %struct_template_circuit_h* @fn_template_build_h(i128 4)
  store %struct_template_circuit_h* %call72, %struct_template_circuit_h** %he0, align 8
  %call73 = call %struct_template_circuit_h* @fn_template_build_h(i128 5)
  store %struct_template_circuit_h* %call73, %struct_template_circuit_h** %hf0, align 8
  %call74 = call %struct_template_circuit_h* @fn_template_build_h(i128 6)
  store %struct_template_circuit_h* %call74, %struct_template_circuit_h** %hg0, align 8
  %call75 = call %struct_template_circuit_h* @fn_template_build_h(i128 7)
  store %struct_template_circuit_h* %call75, %struct_template_circuit_h** %hh0, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch563, %loop.exit68
  %call77 = call %struct_template_circuit_sha256compression* @fn_template_build_sha256compression()
  %ptr_getter78 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i79 = load i128, i128* %i, align 4
  %sha256compression80 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter78, i128 0, i128 %i79
  store %struct_template_circuit_sha256compression* %call77, %struct_template_circuit_sha256compression** %sha256compression80, align 8
  %i81 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i81, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body76
  store i128 0, i128* %k, align 4
  br label %loop.body82

if.false:                                         ; preds = %loop.body76
  store i128 0, i128* %k, align 4
  br label %loop.body287

loop.body82:                                      ; preds = %loop.latch281, %if.true
  %ha083 = load %struct_template_circuit_h*, %struct_template_circuit_h** %ha0, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %ha083, i32 0, i32 1
  %h.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %k85 = load i128, i128* %k, align 4
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter, i128 0, i128 %k85
  %ha087 = load i128, i128* %array_getter86, align 4
  %sha256compression88 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression88, i128 0, i128 %i89
  %sha256compression91 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression91, i32 0, i32 0
  %sha256compression.hin.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter92, align 8
  %k93 = load i128, i128* %k, align 4
  %add94 = add i128 0, %k93
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter, i128 0, i128 %add94
  %sha256compression96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression96, i128 %ha087, i1* @constraint.151)
  %ptr_getter97 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i98 = load i128, i128* %i, align 4
  %array_getter99 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter97, i128 0, i128 %i98
  %sha256compression100 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter99, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression100, i32 0, i32 0
  %sha256compression.hin.read_input_outter102 = load [4096 x i128]*, [4096 x i128]** %struct_getter101, align 8
  %k103 = load i128, i128* %k, align 4
  %add104 = add i128 0, %k103
  %sha256compression105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter102, i128 0, i128 %add104
  store i128 %ha087, i128* %sha256compression105, align 4
  %hb0106 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hb0, align 8
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hb0106, i32 0, i32 1
  %h.out.read_output_outter108 = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %k109 = load i128, i128* %k, align 4
  %array_getter110 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter108, i128 0, i128 %k109
  %hb0111 = load i128, i128* %array_getter110, align 4
  %sha256compression112 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i113 = load i128, i128* %i, align 4
  %array_getter114 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression112, i128 0, i128 %i113
  %sha256compression115 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression115, i32 0, i32 0
  %sha256compression.hin.read_input_outter117 = load [4096 x i128]*, [4096 x i128]** %struct_getter116, align 8
  %k118 = load i128, i128* %k, align 4
  %add119 = add i128 32, %k118
  %array_getter120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter117, i128 0, i128 %add119
  %sha256compression121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression121, i128 %hb0111, i1* @constraint.152)
  %ptr_getter122 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i123 = load i128, i128* %i, align 4
  %array_getter124 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter122, i128 0, i128 %i123
  %sha256compression125 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression125, i32 0, i32 0
  %sha256compression.hin.read_input_outter127 = load [4096 x i128]*, [4096 x i128]** %struct_getter126, align 8
  %k128 = load i128, i128* %k, align 4
  %add129 = add i128 32, %k128
  %sha256compression130 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter127, i128 0, i128 %add129
  store i128 %hb0111, i128* %sha256compression130, align 4
  %hc0131 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hc0, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hc0131, i32 0, i32 1
  %h.out.read_output_outter133 = load [4096 x i128]*, [4096 x i128]** %struct_getter132, align 8
  %k134 = load i128, i128* %k, align 4
  %array_getter135 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter133, i128 0, i128 %k134
  %hc0136 = load i128, i128* %array_getter135, align 4
  %sha256compression137 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression137, i128 0, i128 %i138
  %sha256compression140 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter139, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression140, i32 0, i32 0
  %sha256compression.hin.read_input_outter142 = load [4096 x i128]*, [4096 x i128]** %struct_getter141, align 8
  %k143 = load i128, i128* %k, align 4
  %add144 = add i128 64, %k143
  %array_getter145 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter142, i128 0, i128 %add144
  %sha256compression146 = load i128, i128* %array_getter145, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression146, i128 %hc0136, i1* @constraint.153)
  %ptr_getter147 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i148 = load i128, i128* %i, align 4
  %array_getter149 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter147, i128 0, i128 %i148
  %sha256compression150 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter149, align 8
  %struct_getter151 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression150, i32 0, i32 0
  %sha256compression.hin.read_input_outter152 = load [4096 x i128]*, [4096 x i128]** %struct_getter151, align 8
  %k153 = load i128, i128* %k, align 4
  %add154 = add i128 64, %k153
  %sha256compression155 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter152, i128 0, i128 %add154
  store i128 %hc0136, i128* %sha256compression155, align 4
  %hd0156 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hd0, align 8
  %struct_getter157 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hd0156, i32 0, i32 1
  %h.out.read_output_outter158 = load [4096 x i128]*, [4096 x i128]** %struct_getter157, align 8
  %k159 = load i128, i128* %k, align 4
  %array_getter160 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter158, i128 0, i128 %k159
  %hd0161 = load i128, i128* %array_getter160, align 4
  %sha256compression162 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i163 = load i128, i128* %i, align 4
  %array_getter164 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression162, i128 0, i128 %i163
  %sha256compression165 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter164, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression165, i32 0, i32 0
  %sha256compression.hin.read_input_outter167 = load [4096 x i128]*, [4096 x i128]** %struct_getter166, align 8
  %k168 = load i128, i128* %k, align 4
  %add169 = add i128 96, %k168
  %array_getter170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter167, i128 0, i128 %add169
  %sha256compression171 = load i128, i128* %array_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression171, i128 %hd0161, i1* @constraint.154)
  %ptr_getter172 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i173 = load i128, i128* %i, align 4
  %array_getter174 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter172, i128 0, i128 %i173
  %sha256compression175 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression175, i32 0, i32 0
  %sha256compression.hin.read_input_outter177 = load [4096 x i128]*, [4096 x i128]** %struct_getter176, align 8
  %k178 = load i128, i128* %k, align 4
  %add179 = add i128 96, %k178
  %sha256compression180 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter177, i128 0, i128 %add179
  store i128 %hd0161, i128* %sha256compression180, align 4
  %he0181 = load %struct_template_circuit_h*, %struct_template_circuit_h** %he0, align 8
  %struct_getter182 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %he0181, i32 0, i32 1
  %h.out.read_output_outter183 = load [4096 x i128]*, [4096 x i128]** %struct_getter182, align 8
  %k184 = load i128, i128* %k, align 4
  %array_getter185 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter183, i128 0, i128 %k184
  %he0186 = load i128, i128* %array_getter185, align 4
  %sha256compression187 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i188 = load i128, i128* %i, align 4
  %array_getter189 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression187, i128 0, i128 %i188
  %sha256compression190 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter189, align 8
  %struct_getter191 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression190, i32 0, i32 0
  %sha256compression.hin.read_input_outter192 = load [4096 x i128]*, [4096 x i128]** %struct_getter191, align 8
  %k193 = load i128, i128* %k, align 4
  %add194 = add i128 128, %k193
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter192, i128 0, i128 %add194
  %sha256compression196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression196, i128 %he0186, i1* @constraint.155)
  %ptr_getter197 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i198 = load i128, i128* %i, align 4
  %array_getter199 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter197, i128 0, i128 %i198
  %sha256compression200 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression200, i32 0, i32 0
  %sha256compression.hin.read_input_outter202 = load [4096 x i128]*, [4096 x i128]** %struct_getter201, align 8
  %k203 = load i128, i128* %k, align 4
  %add204 = add i128 128, %k203
  %sha256compression205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter202, i128 0, i128 %add204
  store i128 %he0186, i128* %sha256compression205, align 4
  %hf0206 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hf0, align 8
  %struct_getter207 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hf0206, i32 0, i32 1
  %h.out.read_output_outter208 = load [4096 x i128]*, [4096 x i128]** %struct_getter207, align 8
  %k209 = load i128, i128* %k, align 4
  %array_getter210 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter208, i128 0, i128 %k209
  %hf0211 = load i128, i128* %array_getter210, align 4
  %sha256compression212 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i213 = load i128, i128* %i, align 4
  %array_getter214 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression212, i128 0, i128 %i213
  %sha256compression215 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter214, align 8
  %struct_getter216 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression215, i32 0, i32 0
  %sha256compression.hin.read_input_outter217 = load [4096 x i128]*, [4096 x i128]** %struct_getter216, align 8
  %k218 = load i128, i128* %k, align 4
  %add219 = add i128 160, %k218
  %array_getter220 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter217, i128 0, i128 %add219
  %sha256compression221 = load i128, i128* %array_getter220, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression221, i128 %hf0211, i1* @constraint.156)
  %ptr_getter222 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i223 = load i128, i128* %i, align 4
  %array_getter224 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter222, i128 0, i128 %i223
  %sha256compression225 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter224, align 8
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression225, i32 0, i32 0
  %sha256compression.hin.read_input_outter227 = load [4096 x i128]*, [4096 x i128]** %struct_getter226, align 8
  %k228 = load i128, i128* %k, align 4
  %add229 = add i128 160, %k228
  %sha256compression230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter227, i128 0, i128 %add229
  store i128 %hf0211, i128* %sha256compression230, align 4
  %hg0231 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hg0, align 8
  %struct_getter232 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hg0231, i32 0, i32 1
  %h.out.read_output_outter233 = load [4096 x i128]*, [4096 x i128]** %struct_getter232, align 8
  %k234 = load i128, i128* %k, align 4
  %array_getter235 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter233, i128 0, i128 %k234
  %hg0236 = load i128, i128* %array_getter235, align 4
  %sha256compression237 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i238 = load i128, i128* %i, align 4
  %array_getter239 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression237, i128 0, i128 %i238
  %sha256compression240 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression240, i32 0, i32 0
  %sha256compression.hin.read_input_outter242 = load [4096 x i128]*, [4096 x i128]** %struct_getter241, align 8
  %k243 = load i128, i128* %k, align 4
  %add244 = add i128 192, %k243
  %array_getter245 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter242, i128 0, i128 %add244
  %sha256compression246 = load i128, i128* %array_getter245, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression246, i128 %hg0236, i1* @constraint.157)
  %ptr_getter247 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i248 = load i128, i128* %i, align 4
  %array_getter249 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter247, i128 0, i128 %i248
  %sha256compression250 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter249, align 8
  %struct_getter251 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression250, i32 0, i32 0
  %sha256compression.hin.read_input_outter252 = load [4096 x i128]*, [4096 x i128]** %struct_getter251, align 8
  %k253 = load i128, i128* %k, align 4
  %add254 = add i128 192, %k253
  %sha256compression255 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter252, i128 0, i128 %add254
  store i128 %hg0236, i128* %sha256compression255, align 4
  %hh0256 = load %struct_template_circuit_h*, %struct_template_circuit_h** %hh0, align 8
  %struct_getter257 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %hh0256, i32 0, i32 1
  %h.out.read_output_outter258 = load [4096 x i128]*, [4096 x i128]** %struct_getter257, align 8
  %k259 = load i128, i128* %k, align 4
  %array_getter260 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter258, i128 0, i128 %k259
  %hh0261 = load i128, i128* %array_getter260, align 4
  %sha256compression262 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i263 = load i128, i128* %i, align 4
  %array_getter264 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression262, i128 0, i128 %i263
  %sha256compression265 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter264, align 8
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression265, i32 0, i32 0
  %sha256compression.hin.read_input_outter267 = load [4096 x i128]*, [4096 x i128]** %struct_getter266, align 8
  %k268 = load i128, i128* %k, align 4
  %add269 = add i128 224, %k268
  %array_getter270 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter267, i128 0, i128 %add269
  %sha256compression271 = load i128, i128* %array_getter270, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression271, i128 %hh0261, i1* @constraint.158)
  %ptr_getter272 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i273 = load i128, i128* %i, align 4
  %array_getter274 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter272, i128 0, i128 %i273
  %sha256compression275 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter274, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression275, i32 0, i32 0
  %sha256compression.hin.read_input_outter277 = load [4096 x i128]*, [4096 x i128]** %struct_getter276, align 8
  %k278 = load i128, i128* %k, align 4
  %add279 = add i128 224, %k278
  %sha256compression280 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter277, i128 0, i128 %add279
  store i128 %hh0261, i128* %sha256compression280, align 4
  br label %loop.latch281

loop.latch281:                                    ; preds = %loop.body82
  %k282 = load i128, i128* %k, align 4
  %add283 = add i128 %k282, 1
  store i128 %add283, i128* %k, align 4
  %k284 = load i128, i128* %k, align 4
  %slt285 = icmp slt i128 %k284, 32
  br i1 %slt285, label %loop.body82, label %loop.exit286

loop.exit286:                                     ; preds = %loop.latch281
  br label %if.exit

loop.body287:                                     ; preds = %loop.latch527, %if.false
  %sha256compression288 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i289 = load i128, i128* %i, align 4
  %sub290 = sub i128 %i289, 1
  %array_getter291 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression288, i128 0, i128 %sub290
  %sha256compression292 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression292, i32 0, i32 11
  %sha256compression.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter293, align 8
  %k294 = load i128, i128* %k, align 4
  %sub295 = sub i128 31, %k294
  %array_getter296 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter, i128 0, i128 %sub295
  %sha256compression297 = load i128, i128* %array_getter296, align 4
  %sha256compression298 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i299 = load i128, i128* %i, align 4
  %array_getter300 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression298, i128 0, i128 %i299
  %sha256compression301 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter300, align 8
  %struct_getter302 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression301, i32 0, i32 0
  %sha256compression.hin.read_input_outter303 = load [4096 x i128]*, [4096 x i128]** %struct_getter302, align 8
  %k304 = load i128, i128* %k, align 4
  %add305 = add i128 0, %k304
  %array_getter306 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter303, i128 0, i128 %add305
  %sha256compression307 = load i128, i128* %array_getter306, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression307, i128 %sha256compression297, i1* @constraint.159)
  %ptr_getter308 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i309 = load i128, i128* %i, align 4
  %array_getter310 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter308, i128 0, i128 %i309
  %sha256compression311 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter310, align 8
  %struct_getter312 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression311, i32 0, i32 0
  %sha256compression.hin.read_input_outter313 = load [4096 x i128]*, [4096 x i128]** %struct_getter312, align 8
  %k314 = load i128, i128* %k, align 4
  %add315 = add i128 0, %k314
  %sha256compression316 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter313, i128 0, i128 %add315
  store i128 %sha256compression297, i128* %sha256compression316, align 4
  %sha256compression317 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i318 = load i128, i128* %i, align 4
  %sub319 = sub i128 %i318, 1
  %array_getter320 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression317, i128 0, i128 %sub319
  %sha256compression321 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter320, align 8
  %struct_getter322 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression321, i32 0, i32 11
  %sha256compression.out.read_output_outter323 = load [4096 x i128]*, [4096 x i128]** %struct_getter322, align 8
  %k324 = load i128, i128* %k, align 4
  %sub325 = sub i128 63, %k324
  %array_getter326 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter323, i128 0, i128 %sub325
  %sha256compression327 = load i128, i128* %array_getter326, align 4
  %sha256compression328 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i329 = load i128, i128* %i, align 4
  %array_getter330 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression328, i128 0, i128 %i329
  %sha256compression331 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter330, align 8
  %struct_getter332 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression331, i32 0, i32 0
  %sha256compression.hin.read_input_outter333 = load [4096 x i128]*, [4096 x i128]** %struct_getter332, align 8
  %k334 = load i128, i128* %k, align 4
  %add335 = add i128 32, %k334
  %array_getter336 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter333, i128 0, i128 %add335
  %sha256compression337 = load i128, i128* %array_getter336, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression337, i128 %sha256compression327, i1* @constraint.160)
  %ptr_getter338 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i339 = load i128, i128* %i, align 4
  %array_getter340 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter338, i128 0, i128 %i339
  %sha256compression341 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter340, align 8
  %struct_getter342 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression341, i32 0, i32 0
  %sha256compression.hin.read_input_outter343 = load [4096 x i128]*, [4096 x i128]** %struct_getter342, align 8
  %k344 = load i128, i128* %k, align 4
  %add345 = add i128 32, %k344
  %sha256compression346 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter343, i128 0, i128 %add345
  store i128 %sha256compression327, i128* %sha256compression346, align 4
  %sha256compression347 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i348 = load i128, i128* %i, align 4
  %sub349 = sub i128 %i348, 1
  %array_getter350 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression347, i128 0, i128 %sub349
  %sha256compression351 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter350, align 8
  %struct_getter352 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression351, i32 0, i32 11
  %sha256compression.out.read_output_outter353 = load [4096 x i128]*, [4096 x i128]** %struct_getter352, align 8
  %k354 = load i128, i128* %k, align 4
  %sub355 = sub i128 95, %k354
  %array_getter356 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter353, i128 0, i128 %sub355
  %sha256compression357 = load i128, i128* %array_getter356, align 4
  %sha256compression358 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i359 = load i128, i128* %i, align 4
  %array_getter360 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression358, i128 0, i128 %i359
  %sha256compression361 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter360, align 8
  %struct_getter362 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression361, i32 0, i32 0
  %sha256compression.hin.read_input_outter363 = load [4096 x i128]*, [4096 x i128]** %struct_getter362, align 8
  %k364 = load i128, i128* %k, align 4
  %add365 = add i128 64, %k364
  %array_getter366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter363, i128 0, i128 %add365
  %sha256compression367 = load i128, i128* %array_getter366, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression367, i128 %sha256compression357, i1* @constraint.161)
  %ptr_getter368 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i369 = load i128, i128* %i, align 4
  %array_getter370 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter368, i128 0, i128 %i369
  %sha256compression371 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter370, align 8
  %struct_getter372 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression371, i32 0, i32 0
  %sha256compression.hin.read_input_outter373 = load [4096 x i128]*, [4096 x i128]** %struct_getter372, align 8
  %k374 = load i128, i128* %k, align 4
  %add375 = add i128 64, %k374
  %sha256compression376 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter373, i128 0, i128 %add375
  store i128 %sha256compression357, i128* %sha256compression376, align 4
  %sha256compression377 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i378 = load i128, i128* %i, align 4
  %sub379 = sub i128 %i378, 1
  %array_getter380 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression377, i128 0, i128 %sub379
  %sha256compression381 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter380, align 8
  %struct_getter382 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression381, i32 0, i32 11
  %sha256compression.out.read_output_outter383 = load [4096 x i128]*, [4096 x i128]** %struct_getter382, align 8
  %k384 = load i128, i128* %k, align 4
  %sub385 = sub i128 127, %k384
  %array_getter386 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter383, i128 0, i128 %sub385
  %sha256compression387 = load i128, i128* %array_getter386, align 4
  %sha256compression388 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i389 = load i128, i128* %i, align 4
  %array_getter390 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression388, i128 0, i128 %i389
  %sha256compression391 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter390, align 8
  %struct_getter392 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression391, i32 0, i32 0
  %sha256compression.hin.read_input_outter393 = load [4096 x i128]*, [4096 x i128]** %struct_getter392, align 8
  %k394 = load i128, i128* %k, align 4
  %add395 = add i128 96, %k394
  %array_getter396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter393, i128 0, i128 %add395
  %sha256compression397 = load i128, i128* %array_getter396, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression397, i128 %sha256compression387, i1* @constraint.162)
  %ptr_getter398 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i399 = load i128, i128* %i, align 4
  %array_getter400 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter398, i128 0, i128 %i399
  %sha256compression401 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter400, align 8
  %struct_getter402 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression401, i32 0, i32 0
  %sha256compression.hin.read_input_outter403 = load [4096 x i128]*, [4096 x i128]** %struct_getter402, align 8
  %k404 = load i128, i128* %k, align 4
  %add405 = add i128 96, %k404
  %sha256compression406 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter403, i128 0, i128 %add405
  store i128 %sha256compression387, i128* %sha256compression406, align 4
  %sha256compression407 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i408 = load i128, i128* %i, align 4
  %sub409 = sub i128 %i408, 1
  %array_getter410 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression407, i128 0, i128 %sub409
  %sha256compression411 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter410, align 8
  %struct_getter412 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression411, i32 0, i32 11
  %sha256compression.out.read_output_outter413 = load [4096 x i128]*, [4096 x i128]** %struct_getter412, align 8
  %k414 = load i128, i128* %k, align 4
  %sub415 = sub i128 159, %k414
  %array_getter416 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter413, i128 0, i128 %sub415
  %sha256compression417 = load i128, i128* %array_getter416, align 4
  %sha256compression418 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i419 = load i128, i128* %i, align 4
  %array_getter420 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression418, i128 0, i128 %i419
  %sha256compression421 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter420, align 8
  %struct_getter422 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression421, i32 0, i32 0
  %sha256compression.hin.read_input_outter423 = load [4096 x i128]*, [4096 x i128]** %struct_getter422, align 8
  %k424 = load i128, i128* %k, align 4
  %add425 = add i128 128, %k424
  %array_getter426 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter423, i128 0, i128 %add425
  %sha256compression427 = load i128, i128* %array_getter426, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression427, i128 %sha256compression417, i1* @constraint.163)
  %ptr_getter428 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i429 = load i128, i128* %i, align 4
  %array_getter430 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter428, i128 0, i128 %i429
  %sha256compression431 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter430, align 8
  %struct_getter432 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression431, i32 0, i32 0
  %sha256compression.hin.read_input_outter433 = load [4096 x i128]*, [4096 x i128]** %struct_getter432, align 8
  %k434 = load i128, i128* %k, align 4
  %add435 = add i128 128, %k434
  %sha256compression436 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter433, i128 0, i128 %add435
  store i128 %sha256compression417, i128* %sha256compression436, align 4
  %sha256compression437 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i438 = load i128, i128* %i, align 4
  %sub439 = sub i128 %i438, 1
  %array_getter440 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression437, i128 0, i128 %sub439
  %sha256compression441 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter440, align 8
  %struct_getter442 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression441, i32 0, i32 11
  %sha256compression.out.read_output_outter443 = load [4096 x i128]*, [4096 x i128]** %struct_getter442, align 8
  %k444 = load i128, i128* %k, align 4
  %sub445 = sub i128 191, %k444
  %array_getter446 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter443, i128 0, i128 %sub445
  %sha256compression447 = load i128, i128* %array_getter446, align 4
  %sha256compression448 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i449 = load i128, i128* %i, align 4
  %array_getter450 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression448, i128 0, i128 %i449
  %sha256compression451 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter450, align 8
  %struct_getter452 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression451, i32 0, i32 0
  %sha256compression.hin.read_input_outter453 = load [4096 x i128]*, [4096 x i128]** %struct_getter452, align 8
  %k454 = load i128, i128* %k, align 4
  %add455 = add i128 160, %k454
  %array_getter456 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter453, i128 0, i128 %add455
  %sha256compression457 = load i128, i128* %array_getter456, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression457, i128 %sha256compression447, i1* @constraint.164)
  %ptr_getter458 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i459 = load i128, i128* %i, align 4
  %array_getter460 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter458, i128 0, i128 %i459
  %sha256compression461 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter460, align 8
  %struct_getter462 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression461, i32 0, i32 0
  %sha256compression.hin.read_input_outter463 = load [4096 x i128]*, [4096 x i128]** %struct_getter462, align 8
  %k464 = load i128, i128* %k, align 4
  %add465 = add i128 160, %k464
  %sha256compression466 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter463, i128 0, i128 %add465
  store i128 %sha256compression447, i128* %sha256compression466, align 4
  %sha256compression467 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i468 = load i128, i128* %i, align 4
  %sub469 = sub i128 %i468, 1
  %array_getter470 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression467, i128 0, i128 %sub469
  %sha256compression471 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter470, align 8
  %struct_getter472 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression471, i32 0, i32 11
  %sha256compression.out.read_output_outter473 = load [4096 x i128]*, [4096 x i128]** %struct_getter472, align 8
  %k474 = load i128, i128* %k, align 4
  %sub475 = sub i128 223, %k474
  %array_getter476 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter473, i128 0, i128 %sub475
  %sha256compression477 = load i128, i128* %array_getter476, align 4
  %sha256compression478 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i479 = load i128, i128* %i, align 4
  %array_getter480 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression478, i128 0, i128 %i479
  %sha256compression481 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter480, align 8
  %struct_getter482 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression481, i32 0, i32 0
  %sha256compression.hin.read_input_outter483 = load [4096 x i128]*, [4096 x i128]** %struct_getter482, align 8
  %k484 = load i128, i128* %k, align 4
  %add485 = add i128 192, %k484
  %array_getter486 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter483, i128 0, i128 %add485
  %sha256compression487 = load i128, i128* %array_getter486, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression487, i128 %sha256compression477, i1* @constraint.165)
  %ptr_getter488 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i489 = load i128, i128* %i, align 4
  %array_getter490 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter488, i128 0, i128 %i489
  %sha256compression491 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter490, align 8
  %struct_getter492 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression491, i32 0, i32 0
  %sha256compression.hin.read_input_outter493 = load [4096 x i128]*, [4096 x i128]** %struct_getter492, align 8
  %k494 = load i128, i128* %k, align 4
  %add495 = add i128 192, %k494
  %sha256compression496 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter493, i128 0, i128 %add495
  store i128 %sha256compression477, i128* %sha256compression496, align 4
  %sha256compression497 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i498 = load i128, i128* %i, align 4
  %sub499 = sub i128 %i498, 1
  %array_getter500 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression497, i128 0, i128 %sub499
  %sha256compression501 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter500, align 8
  %struct_getter502 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression501, i32 0, i32 11
  %sha256compression.out.read_output_outter503 = load [4096 x i128]*, [4096 x i128]** %struct_getter502, align 8
  %k504 = load i128, i128* %k, align 4
  %sub505 = sub i128 255, %k504
  %array_getter506 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter503, i128 0, i128 %sub505
  %sha256compression507 = load i128, i128* %array_getter506, align 4
  %sha256compression508 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i509 = load i128, i128* %i, align 4
  %array_getter510 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression508, i128 0, i128 %i509
  %sha256compression511 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter510, align 8
  %struct_getter512 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression511, i32 0, i32 0
  %sha256compression.hin.read_input_outter513 = load [4096 x i128]*, [4096 x i128]** %struct_getter512, align 8
  %k514 = load i128, i128* %k, align 4
  %add515 = add i128 224, %k514
  %array_getter516 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter513, i128 0, i128 %add515
  %sha256compression517 = load i128, i128* %array_getter516, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression517, i128 %sha256compression507, i1* @constraint.166)
  %ptr_getter518 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i519 = load i128, i128* %i, align 4
  %array_getter520 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter518, i128 0, i128 %i519
  %sha256compression521 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter520, align 8
  %struct_getter522 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression521, i32 0, i32 0
  %sha256compression.hin.read_input_outter523 = load [4096 x i128]*, [4096 x i128]** %struct_getter522, align 8
  %k524 = load i128, i128* %k, align 4
  %add525 = add i128 224, %k524
  %sha256compression526 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter523, i128 0, i128 %add525
  store i128 %sha256compression507, i128* %sha256compression526, align 4
  br label %loop.latch527

loop.latch527:                                    ; preds = %loop.body287
  %k528 = load i128, i128* %k, align 4
  %add529 = add i128 %k528, 1
  store i128 %add529, i128* %k, align 4
  %k530 = load i128, i128* %k, align 4
  %slt531 = icmp slt i128 %k530, 32
  br i1 %slt531, label %loop.body287, label %loop.exit532

loop.exit532:                                     ; preds = %loop.latch527
  br label %if.exit

if.exit:                                          ; preds = %loop.exit532, %loop.exit286
  store i128 0, i128* %k, align 4
  br label %loop.body533

loop.body533:                                     ; preds = %loop.latch557, %if.exit
  %paddedIn534 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %i535 = load i128, i128* %i, align 4
  %mul536 = mul i128 %i535, 512
  %k537 = load i128, i128* %k, align 4
  %add538 = add i128 %mul536, %k537
  %array_getter539 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn534, i128 0, i128 %add538
  %paddedIn540 = load i128, i128* %array_getter539, align 4
  %sha256compression541 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i542 = load i128, i128* %i, align 4
  %array_getter543 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression541, i128 0, i128 %i542
  %sha256compression544 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter543, align 8
  %struct_getter545 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression544, i32 0, i32 1
  %sha256compression.inp.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter545, align 8
  %k546 = load i128, i128* %k, align 4
  %array_getter547 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter, i128 0, i128 %k546
  %sha256compression548 = load i128, i128* %array_getter547, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression548, i128 %paddedIn540, i1* @constraint.167)
  %ptr_getter549 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i550 = load i128, i128* %i, align 4
  %array_getter551 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter549, i128 0, i128 %i550
  %sha256compression552 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter551, align 8
  %struct_getter553 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression552, i32 0, i32 1
  %sha256compression.inp.read_input_outter554 = load [4096 x i128]*, [4096 x i128]** %struct_getter553, align 8
  %k555 = load i128, i128* %k, align 4
  %sha256compression556 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter554, i128 0, i128 %k555
  store i128 %paddedIn540, i128* %sha256compression556, align 4
  br label %loop.latch557

loop.latch557:                                    ; preds = %loop.body533
  %k558 = load i128, i128* %k, align 4
  %add559 = add i128 %k558, 1
  store i128 %add559, i128* %k, align 4
  %k560 = load i128, i128* %k, align 4
  %slt561 = icmp slt i128 %k560, 512
  br i1 %slt561, label %loop.body533, label %loop.exit562

loop.exit562:                                     ; preds = %loop.latch557
  br label %loop.latch563

loop.latch563:                                    ; preds = %loop.exit562
  %i564 = load i128, i128* %i, align 4
  %add565 = add i128 %i564, 1
  store i128 %add565, i128* %i, align 4
  %i566 = load i128, i128* %i, align 4
  %nBlocks567 = load i128, i128* %nBlocks, align 4
  %slt568 = icmp slt i128 %i566, %nBlocks567
  br i1 %slt568, label %loop.body76, label %loop.exit569

loop.exit569:                                     ; preds = %loop.latch563
  store i128 0, i128* %k, align 4
  br label %loop.body570

loop.body570:                                     ; preds = %loop.latch588, %loop.exit569
  %sha256compression571 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %nBlocks572 = load i128, i128* %nBlocks, align 4
  %sub573 = sub i128 %nBlocks572, 1
  %array_getter574 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression571, i128 0, i128 %sub573
  %sha256compression575 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter574, align 8
  %struct_getter576 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression575, i32 0, i32 11
  %sha256compression.out.read_output_outter577 = load [4096 x i128]*, [4096 x i128]** %struct_getter576, align 8
  %k578 = load i128, i128* %k, align 4
  %array_getter579 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter577, i128 0, i128 %k578
  %sha256compression580 = load i128, i128* %array_getter579, align 4
  %out581 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %k582 = load i128, i128* %k, align 4
  %array_getter583 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out581, i128 0, i128 %k582
  %out584 = load i128, i128* %array_getter583, align 4
  call void @fn_intrinsic_add_constraint(i128 %out584, i128 %sha256compression580, i1* @constraint.168)
  %ptr_getter585 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %k586 = load i128, i128* %k, align 4
  %out587 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter585, i128 0, i128 %k586
  store i128 %sha256compression580, i128* %out587, align 4
  br label %loop.latch588

loop.latch588:                                    ; preds = %loop.body570
  %k589 = load i128, i128* %k, align 4
  %add590 = add i128 %k589, 1
  store i128 %add590, i128* %k, align 4
  %k591 = load i128, i128* %k, align 4
  %slt592 = icmp slt i128 %k591, 256
  br i1 %slt592, label %loop.body570, label %loop.exit593

loop.exit593:                                     ; preds = %loop.latch588
  br label %exit

exit:                                             ; preds = %loop.exit593
  %paddedIn594 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %sha256.paddedin.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 2
  store [4096 x i128]* %paddedIn594, [4096 x i128]** %sha256.paddedin.write_inter_inner, align 8
  %out595 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %sha256.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 3
  store [4096 x i128]* %out595, [4096 x i128]** %sha256.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %0) {
entry:
  %struct_template_circuit_sha256 = alloca %struct_template_circuit_sha256, align 8
  %sha256.nbits.write_arg_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %struct_template_circuit_sha256, i32 0, i32 0
  store i128 %0, i128* %sha256.nbits.write_arg_inner, align 4
  ret %struct_template_circuit_sha256* %struct_template_circuit_sha256
}

define void @fn_template_init_sha256bytes(%struct_template_circuit_sha256bytes* %0) {
entry:
  %Sha256Bytes = alloca %struct_template_circuit_sha256bytes*, align 8
  store %struct_template_circuit_sha256bytes* %0, %struct_template_circuit_sha256bytes** %Sha256Bytes, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 0
  %sha256bytes.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %sha256bytes.n.declare_arg = alloca i128, align 8
  store i128 %sha256bytes.n.read_arg_inner, i128* %sha256bytes.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 1
  %sha256bytes.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256bytes.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256bytes.in.read_input_inner, [4096 x i128]** %sha256bytes.in.declare_input, align 8
  %byte_to_bits = alloca [4096 x %struct_template_circuit_num2bits*]*, align 8
  %byte_to_bits2 = alloca [4096 x %struct_template_circuit_num2bits*], align 8
  store [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits2, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %sha256bytes.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %sha256 = alloca %struct_template_circuit_sha256*, align 8
  %bits_to_bytes = alloca [4096 x %struct_template_circuit_bits2num*]*, align 8
  %bits_to_bytes4 = alloca [4096 x %struct_template_circuit_bits2num*], align 8
  store [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes4, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %j = alloca i128, align 8
  %j5 = call i128 @fn_intrinsic_inline_init()
  store i128 %j5, i128* %j, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 8)
  %ptr_getter = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %i6 = load i128, i128* %i, align 4
  %byte_to_bits7 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i6
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %byte_to_bits7, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %sha256bytes.in.declare_input, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i8
  %in9 = load i128, i128* %array_getter, align 4
  %byte_to_bits10 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits10, i128 0, i128 %i11
  %byte_to_bits13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter12, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits13, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %in9, i1* @constraint.169)
  %ptr_getter15 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %ptr_getter15, i128 0, i128 %i16
  %byte_to_bits18 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter17, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits18, i32 0, i32 1
  store i128 %in9, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add = add i128 %i19, 1
  store i128 %add, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %n = load i128, i128* %sha256bytes.n.declare_arg, align 4
  %slt = icmp slt i128 %i20, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n21 = load i128, i128* %sha256bytes.n.declare_arg, align 4
  %mul = mul i128 %n21, 8
  %call22 = call %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %mul)
  store %struct_template_circuit_sha256* %call22, %struct_template_circuit_sha256** %sha256, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch55, %loop.exit
  store i128 0, i128* %j, align 4
  br label %loop.body24

loop.body24:                                      ; preds = %loop.latch49, %loop.body23
  %byte_to_bits25 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits25, i128 0, i128 %i26
  %byte_to_bits28 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits28, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %j30 = load i128, i128* %j, align 4
  %sub = sub i128 7, %j30
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %sub
  %byte_to_bits32 = load i128, i128* %array_getter31, align 4
  %sha25633 = load %struct_template_circuit_sha256*, %struct_template_circuit_sha256** %sha256, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %sha25633, i32 0, i32 1
  %sha256.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %i35 = load i128, i128* %i, align 4
  %mul36 = mul i128 %i35, 8
  %j37 = load i128, i128* %j, align 4
  %add38 = add i128 %mul36, %j37
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter, i128 0, i128 %add38
  %sha25640 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha25640, i128 %byte_to_bits32, i1* @constraint.170)
  %ptr_getter41 = load %struct_template_circuit_sha256*, %struct_template_circuit_sha256** %sha256, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %ptr_getter41, i32 0, i32 1
  %sha256.in.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %i44 = load i128, i128* %i, align 4
  %mul45 = mul i128 %i44, 8
  %j46 = load i128, i128* %j, align 4
  %add47 = add i128 %mul45, %j46
  %sha25648 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter43, i128 0, i128 %add47
  store i128 %byte_to_bits32, i128* %sha25648, align 4
  br label %loop.latch49

loop.latch49:                                     ; preds = %loop.body24
  %j50 = load i128, i128* %j, align 4
  %add51 = add i128 %j50, 1
  store i128 %add51, i128* %j, align 4
  %j52 = load i128, i128* %j, align 4
  %slt53 = icmp slt i128 %j52, 8
  br i1 %slt53, label %loop.body24, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch49
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit54
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %i, align 4
  %i58 = load i128, i128* %i, align 4
  %n59 = load i128, i128* %sha256bytes.n.declare_arg, align 4
  %slt60 = icmp slt i128 %i58, %n59
  br i1 %slt60, label %loop.body23, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  store i128 0, i128* %i, align 4
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch112, %loop.exit61
  %call63 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 8)
  %ptr_getter64 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %i65 = load i128, i128* %i, align 4
  %bits_to_bytes66 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %ptr_getter64, i128 0, i128 %i65
  store %struct_template_circuit_bits2num* %call63, %struct_template_circuit_bits2num** %bits_to_bytes66, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch94, %loop.body62
  %sha25668 = load %struct_template_circuit_sha256*, %struct_template_circuit_sha256** %sha256, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %sha25668, i32 0, i32 3
  %sha256.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter69, align 8
  %i70 = load i128, i128* %i, align 4
  %mul71 = mul i128 %i70, 8
  %j72 = load i128, i128* %j, align 4
  %add73 = add i128 %mul71, %j72
  %array_getter74 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.out.read_output_outter, i128 0, i128 %add73
  %sha25675 = load i128, i128* %array_getter74, align 4
  %bits_to_bytes76 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %i77 = load i128, i128* %i, align 4
  %array_getter78 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes76, i128 0, i128 %i77
  %bits_to_bytes79 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes79, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter80, align 8
  %j81 = load i128, i128* %j, align 4
  %sub82 = sub i128 7, %j81
  %array_getter83 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %sub82
  %bits_to_bytes84 = load i128, i128* %array_getter83, align 4
  call void @fn_intrinsic_add_constraint(i128 %bits_to_bytes84, i128 %sha25675, i1* @constraint.171)
  %ptr_getter85 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %i86 = load i128, i128* %i, align 4
  %array_getter87 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %ptr_getter85, i128 0, i128 %i86
  %bits_to_bytes88 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter87, align 8
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes88, i32 0, i32 1
  %bits2num.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %j91 = load i128, i128* %j, align 4
  %sub92 = sub i128 7, %j91
  %bits_to_bytes93 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter90, i128 0, i128 %sub92
  store i128 %sha25675, i128* %bits_to_bytes93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body67
  %j95 = load i128, i128* %j, align 4
  %add96 = add i128 %j95, 1
  store i128 %add96, i128* %j, align 4
  %j97 = load i128, i128* %j, align 4
  %slt98 = icmp slt i128 %j97, 8
  br i1 %slt98, label %loop.body67, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch94
  %bits_to_bytes100 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes100, i128 0, i128 %i101
  %bits_to_bytes103 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter102, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes103, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter104, align 4
  %out105 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %i106 = load i128, i128* %i, align 4
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out105, i128 0, i128 %i106
  %out108 = load i128, i128* %array_getter107, align 4
  call void @fn_intrinsic_add_constraint(i128 %out108, i128 %bits2num.out.read_output_outter, i1* @constraint.172)
  %ptr_getter109 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %i110 = load i128, i128* %i, align 4
  %out111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter109, i128 0, i128 %i110
  store i128 %bits2num.out.read_output_outter, i128* %out111, align 4
  br label %loop.latch112

loop.latch112:                                    ; preds = %loop.exit99
  %i113 = load i128, i128* %i, align 4
  %add114 = add i128 %i113, 1
  store i128 %add114, i128* %i, align 4
  %i115 = load i128, i128* %i, align 4
  %slt116 = icmp slt i128 %i115, 32
  br i1 %slt116, label %loop.body62, label %loop.exit117

loop.exit117:                                     ; preds = %loop.latch112
  br label %exit

exit:                                             ; preds = %loop.exit117
  %out118 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %sha256bytes.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 2
  store [4096 x i128]* %out118, [4096 x i128]** %sha256bytes.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 %0) {
entry:
  %struct_template_circuit_sha256bytes = alloca %struct_template_circuit_sha256bytes, align 8
  %sha256bytes.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %struct_template_circuit_sha256bytes, i32 0, i32 0
  store i128 %0, i128* %sha256bytes.n.write_arg_inner, align 4
  ret %struct_template_circuit_sha256bytes* %struct_template_circuit_sha256bytes
}

define void @fn_template_init_sszlayer(%struct_template_circuit_sszlayer* %0) {
entry:
  %SSZLayer = alloca %struct_template_circuit_sszlayer*, align 8
  store %struct_template_circuit_sszlayer* %0, %struct_template_circuit_sszlayer** %SSZLayer, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 0
  %sszlayer.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %sszlayer.num_bytes.declare_arg = alloca i128, align 8
  store i128 %sszlayer.num_bytes.read_arg_inner, i128* %sszlayer.num_bytes.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 1
  %sszlayer.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sszlayer.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszlayer.in.read_input_inner, [4096 x i128]** %sszlayer.in.declare_input, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %num_pairs = alloca i128, align 8
  %num_pairs3 = call i128 @fn_intrinsic_inline_init()
  store i128 %num_pairs3, i128* %num_pairs, align 4
  %j = alloca i128, align 8
  %j4 = call i128 @fn_intrinsic_inline_init()
  store i128 %j4, i128* %j, align 4
  %sszlayer.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %hashers = alloca [4096 x %struct_template_circuit_sha256bytes*]*, align 8
  %hashers5 = alloca [4096 x %struct_template_circuit_sha256bytes*], align 8
  store [4096 x %struct_template_circuit_sha256bytes*]* %hashers5, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %num_bytes = load i128, i128* %sszlayer.num_bytes.declare_arg, align 4
  %sdiv = sdiv i128 %num_bytes, 64
  store i128 %sdiv, i128* %num_pairs, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %call = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  %ptr_getter = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %i6 = load i128, i128* %i, align 4
  %hashers7 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %ptr_getter, i128 0, i128 %i6
  store %struct_template_circuit_sha256bytes* %call, %struct_template_circuit_sha256bytes** %hashers7, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %in = load [4096 x i128]*, [4096 x i128]** %sszlayer.in.declare_input, align 8
  %i9 = load i128, i128* %i, align 4
  %mul = mul i128 %i9, 64
  %j10 = load i128, i128* %j, align 4
  %add = add i128 %mul, %j10
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %add
  %in11 = load i128, i128* %array_getter, align 4
  %hashers12 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers12, i128 0, i128 %i13
  %hashers15 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter14, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers15, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter16, align 8
  %j17 = load i128, i128* %j, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %j17
  %hashers19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %hashers19, i128 %in11, i1* @constraint.173)
  %ptr_getter20 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %ptr_getter20, i128 0, i128 %i21
  %hashers23 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers23, i32 0, i32 1
  %sha256bytes.in.read_input_outter25 = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %j26 = load i128, i128* %j, align 4
  %hashers27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter25, i128 0, i128 %j26
  store i128 %in11, i128* %hashers27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body8
  %j28 = load i128, i128* %j, align 4
  %add29 = add i128 %j28, 1
  store i128 %add29, i128* %j, align 4
  %j30 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j30, 64
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %num_pairs35 = load i128, i128* %num_pairs, align 4
  %slt36 = icmp slt i128 %i34, %num_pairs35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  store i128 0, i128* %i, align 4
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch67, %loop.exit37
  store i128 0, i128* %j, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch61, %loop.body38
  %hashers40 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers40, i128 0, i128 %i41
  %hashers43 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter42, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers43, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %j45 = load i128, i128* %j, align 4
  %array_getter46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %j45
  %hashers47 = load i128, i128* %array_getter46, align 4
  %out48 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %i49 = load i128, i128* %i, align 4
  %mul50 = mul i128 %i49, 32
  %j51 = load i128, i128* %j, align 4
  %add52 = add i128 %mul50, %j51
  %array_getter53 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out48, i128 0, i128 %add52
  %out54 = load i128, i128* %array_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %out54, i128 %hashers47, i1* @constraint.174)
  %ptr_getter55 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %i56 = load i128, i128* %i, align 4
  %mul57 = mul i128 %i56, 32
  %j58 = load i128, i128* %j, align 4
  %add59 = add i128 %mul57, %j58
  %out60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter55, i128 0, i128 %add59
  store i128 %hashers47, i128* %out60, align 4
  br label %loop.latch61

loop.latch61:                                     ; preds = %loop.body39
  %j62 = load i128, i128* %j, align 4
  %add63 = add i128 %j62, 1
  store i128 %add63, i128* %j, align 4
  %j64 = load i128, i128* %j, align 4
  %slt65 = icmp slt i128 %j64, 32
  br i1 %slt65, label %loop.body39, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch61
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.exit66
  %i68 = load i128, i128* %i, align 4
  %add69 = add i128 %i68, 1
  store i128 %add69, i128* %i, align 4
  %i70 = load i128, i128* %i, align 4
  %num_pairs71 = load i128, i128* %num_pairs, align 4
  %slt72 = icmp slt i128 %i70, %num_pairs71
  br i1 %slt72, label %loop.body38, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  br label %exit

exit:                                             ; preds = %loop.exit73
  %out74 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %sszlayer.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 2
  store [4096 x i128]* %out74, [4096 x i128]** %sszlayer.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszlayer* @fn_template_build_sszlayer(i128 %0) {
entry:
  %struct_template_circuit_sszlayer = alloca %struct_template_circuit_sszlayer, align 8
  %sszlayer.num_bytes.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %struct_template_circuit_sszlayer, i32 0, i32 0
  store i128 %0, i128* %sszlayer.num_bytes.write_arg_inner, align 4
  ret %struct_template_circuit_sszlayer* %struct_template_circuit_sszlayer
}

define void @fn_template_init_sszarray(%struct_template_circuit_sszarray* %0) {
entry:
  %SSZArray = alloca %struct_template_circuit_sszarray*, align 8
  store %struct_template_circuit_sszarray* %0, %struct_template_circuit_sszarray** %SSZArray, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 0
  %sszarray.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %sszarray.num_bytes.declare_arg = alloca i128, align 8
  store i128 %sszarray.num_bytes.read_arg_inner, i128* %sszarray.num_bytes.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 1
  %sszarray.log2b.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %sszarray.log2b.declare_arg = alloca i128, align 8
  store i128 %sszarray.log2b.read_arg_inner, i128* %sszarray.log2b.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 2
  %sszarray.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %sszarray.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszarray.in.read_input_inner, [4096 x i128]** %sszarray.in.declare_input, align 8
  %num_input_bytes = alloca i128, align 8
  %num_input_bytes3 = call i128 @fn_intrinsic_inline_init()
  store i128 %num_input_bytes3, i128* %num_input_bytes, align 4
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
  %sszarray.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszarray.out.declare_output, align 8
  %layer_idx = alloca i128, align 8
  %layer_idx5 = call i128 @fn_intrinsic_inline_init()
  store i128 %layer_idx5, i128* %layer_idx, align 4
  %ssz_layers = alloca [4096 x %struct_template_circuit_sszlayer*]*, align 8
  %ssz_layers6 = alloca [4096 x %struct_template_circuit_sszlayer*], align 8
  store [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  store i128 0, i128* %layer_idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch59, %entry
  %num_bytes = load i128, i128* %sszarray.num_bytes.declare_arg, align 4
  %layer_idx7 = load i128, i128* %layer_idx, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %layer_idx7)
  %sdiv = sdiv i128 %num_bytes, %pow
  store i128 %sdiv, i128* %num_input_bytes, align 4
  %num_input_bytes8 = load i128, i128* %num_input_bytes, align 4
  %call = call %struct_template_circuit_sszlayer* @fn_template_build_sszlayer(i128 %num_input_bytes8)
  %ptr_getter = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx9 = load i128, i128* %layer_idx, align 4
  %ssz_layers10 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter, i128 0, i128 %layer_idx9
  store %struct_template_circuit_sszlayer* %call, %struct_template_circuit_sszlayer** %ssz_layers10, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch, %loop.body
  %layer_idx12 = load i128, i128* %layer_idx, align 4
  %eq = icmp eq i128 %layer_idx12, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body11
  %in = load [4096 x i128]*, [4096 x i128]** %sszarray.in.declare_input, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i13
  %in14 = load i128, i128* %array_getter, align 4
  %ssz_layers15 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx16 = load i128, i128* %layer_idx, align 4
  %array_getter17 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers15, i128 0, i128 %layer_idx16
  %ssz_layers18 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter17, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers18, i32 0, i32 1
  %sszlayer.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter, i128 0, i128 %i20
  %ssz_layers22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_layers22, i128 %in14, i1* @constraint.175)
  %ptr_getter23 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx24 = load i128, i128* %layer_idx, align 4
  %array_getter25 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter23, i128 0, i128 %layer_idx24
  %ssz_layers26 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter25, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers26, i32 0, i32 1
  %sszlayer.in.read_input_outter28 = load [4096 x i128]*, [4096 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %ssz_layers30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter28, i128 0, i128 %i29
  store i128 %in14, i128* %ssz_layers30, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body11
  %ssz_layers31 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx32 = load i128, i128* %layer_idx, align 4
  %sub = sub i128 %layer_idx32, 1
  %array_getter33 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers31, i128 0, i128 %sub
  %ssz_layers34 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers34, i32 0, i32 2
  %sszlayer.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter35, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter, i128 0, i128 %i36
  %ssz_layers38 = load i128, i128* %array_getter37, align 4
  %ssz_layers39 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx40 = load i128, i128* %layer_idx, align 4
  %array_getter41 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers39, i128 0, i128 %layer_idx40
  %ssz_layers42 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter41, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers42, i32 0, i32 1
  %sszlayer.in.read_input_outter44 = load [4096 x i128]*, [4096 x i128]** %struct_getter43, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter44, i128 0, i128 %i45
  %ssz_layers47 = load i128, i128* %array_getter46, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_layers47, i128 %ssz_layers38, i1* @constraint.176)
  %ptr_getter48 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %layer_idx49 = load i128, i128* %layer_idx, align 4
  %array_getter50 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter48, i128 0, i128 %layer_idx49
  %ssz_layers51 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter50, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers51, i32 0, i32 1
  %sszlayer.in.read_input_outter53 = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %i54 = load i128, i128* %i, align 4
  %ssz_layers55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter53, i128 0, i128 %i54
  store i128 %ssz_layers38, i128* %ssz_layers55, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i56 = load i128, i128* %i, align 4
  %add = add i128 %i56, 1
  store i128 %add, i128* %i, align 4
  %i57 = load i128, i128* %i, align 4
  %num_input_bytes58 = load i128, i128* %num_input_bytes, align 4
  %slt = icmp slt i128 %i57, %num_input_bytes58
  br i1 %slt, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.exit
  %layer_idx60 = load i128, i128* %layer_idx, align 4
  %add61 = add i128 %layer_idx60, 1
  store i128 %add61, i128* %layer_idx, align 4
  %layer_idx62 = load i128, i128* %layer_idx, align 4
  %log2b = load i128, i128* %sszarray.log2b.declare_arg, align 4
  %slt63 = icmp slt i128 %layer_idx62, %log2b
  br i1 %slt63, label %loop.body, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch59
  store i128 0, i128* %i, align 4
  br label %loop.body65

loop.body65:                                      ; preds = %loop.latch83, %loop.exit64
  %ssz_layers66 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %log2b67 = load i128, i128* %sszarray.log2b.declare_arg, align 4
  %sub68 = sub i128 %log2b67, 1
  %array_getter69 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers66, i128 0, i128 %sub68
  %ssz_layers70 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter69, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers70, i32 0, i32 2
  %sszlayer.out.read_output_outter72 = load [4096 x i128]*, [4096 x i128]** %struct_getter71, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter72, i128 0, i128 %i73
  %ssz_layers75 = load i128, i128* %array_getter74, align 4
  %out76 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %i77 = load i128, i128* %i, align 4
  %array_getter78 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out76, i128 0, i128 %i77
  %out79 = load i128, i128* %array_getter78, align 4
  call void @fn_intrinsic_add_constraint(i128 %out79, i128 %ssz_layers75, i1* @constraint.177)
  %ptr_getter80 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %i81 = load i128, i128* %i, align 4
  %out82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter80, i128 0, i128 %i81
  store i128 %ssz_layers75, i128* %out82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body65
  %i84 = load i128, i128* %i, align 4
  %add85 = add i128 %i84, 1
  store i128 %add85, i128* %i, align 4
  %i86 = load i128, i128* %i, align 4
  %slt87 = icmp slt i128 %i86, 32
  br i1 %slt87, label %loop.body65, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch83
  br label %exit

exit:                                             ; preds = %loop.exit88
  %out89 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %sszarray.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 3
  store [4096 x i128]* %out89, [4096 x i128]** %sszarray.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_sszarray = alloca %struct_template_circuit_sszarray, align 8
  %sszarray.num_bytes.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %struct_template_circuit_sszarray, i32 0, i32 0
  store i128 %0, i128* %sszarray.num_bytes.write_arg_inner, align 4
  %sszarray.log2b.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %struct_template_circuit_sszarray, i32 0, i32 1
  store i128 %1, i128* %sszarray.log2b.write_arg_inner, align 4
  ret %struct_template_circuit_sszarray* %struct_template_circuit_sszarray
}

define void @fn_template_init_sszphase0synccommittee(%struct_template_circuit_sszphase0synccommittee* %0) {
entry:
  %SSZPhase0SyncCommittee = alloca %struct_template_circuit_sszphase0synccommittee*, align 8
  store %struct_template_circuit_sszphase0synccommittee* %0, %struct_template_circuit_sszphase0synccommittee** %SSZPhase0SyncCommittee, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 0
  %sszphase0synccommittee.pubkeys.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter, align 8
  %sszphase0synccommittee.pubkeys.declare_input = alloca [4096 x [4096 x i128]]*, align 8
  store [4096 x [4096 x i128]]* %sszphase0synccommittee.pubkeys.read_input_inner, [4096 x [4096 x i128]]** %sszphase0synccommittee.pubkeys.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 1
  %sszphase0synccommittee.aggregate_pubkey.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sszphase0synccommittee.aggregate_pubkey.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0synccommittee.aggregate_pubkey.read_input_inner, [4096 x i128]** %sszphase0synccommittee.aggregate_pubkey.declare_input, align 8
  %j = alloca i128, align 8
  %j2 = call i128 @fn_intrinsic_inline_init()
  store i128 %j2, i128* %j, align 4
  %ssz_pubkeys = alloca %struct_template_circuit_sszarray*, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %sszphase0synccommittee.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %hasher = alloca %struct_template_circuit_sha256bytes*, align 8
  %ssz_aggregate_pubkey = alloca %struct_template_circuit_sszarray*, align 8
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 32768, i128 10)
  store %struct_template_circuit_sszarray* %call, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch43, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body4

loop.body4:                                       ; preds = %loop.latch, %loop.body
  %j5 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j5, 48
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body4
  %pubkeys = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sszphase0synccommittee.pubkeys.declare_input, align 8
  %i6 = load i128, i128* %i, align 4
  %j7 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %pubkeys, i128 0, i128 %i6, i128 %j7
  %pubkeys8 = load i128, i128* %array_getter, align 4
  %ssz_pubkeys9 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_pubkeys9, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %mul = mul i128 %i11, 64
  %j12 = load i128, i128* %j, align 4
  %add = add i128 %mul, %j12
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %add
  %ssz_pubkeys14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_pubkeys14, i128 %pubkeys8, i1* @constraint.178)
  %ptr_getter = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter, i32 0, i32 2
  %sszarray.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %mul18 = mul i128 %i17, 64
  %j19 = load i128, i128* %j, align 4
  %add20 = add i128 %mul18, %j19
  %ssz_pubkeys21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter16, i128 0, i128 %add20
  store i128 %pubkeys8, i128* %ssz_pubkeys21, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body4
  %ssz_pubkeys22 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_pubkeys22, i32 0, i32 2
  %sszarray.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %i25 = load i128, i128* %i, align 4
  %mul26 = mul i128 %i25, 64
  %j27 = load i128, i128* %j, align 4
  %add28 = add i128 %mul26, %j27
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter24, i128 0, i128 %add28
  %ssz_pubkeys30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_pubkeys30, i128 0, i1* @constraint.179)
  %ptr_getter31 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter31, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %i34 = load i128, i128* %i, align 4
  %mul35 = mul i128 %i34, 64
  %j36 = load i128, i128* %j, align 4
  %add37 = add i128 %mul35, %j36
  %ssz_pubkeys38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %add37
  store i128 0, i128* %ssz_pubkeys38, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j39 = load i128, i128* %j, align 4
  %add40 = add i128 %j39, 1
  store i128 %add40, i128* %j, align 4
  %j41 = load i128, i128* %j, align 4
  %slt42 = icmp slt i128 %j41, 64
  br i1 %slt42, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch43

loop.latch43:                                     ; preds = %loop.exit
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %i, align 4
  %i46 = load i128, i128* %i, align 4
  %slt47 = icmp slt i128 %i46, 512
  br i1 %slt47, label %loop.body, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch43
  %call49 = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 64, i128 1)
  store %struct_template_circuit_sszarray* %call49, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch81, %loop.exit48
  %i53 = load i128, i128* %i, align 4
  %slt54 = icmp slt i128 %i53, 48
  br i1 %slt54, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %aggregate_pubkey = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.aggregate_pubkey.declare_input, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aggregate_pubkey, i128 0, i128 %i55
  %aggregate_pubkey57 = load i128, i128* %array_getter56, align 4
  %ssz_aggregate_pubkey58 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_aggregate_pubkey58, i32 0, i32 2
  %sszarray.in.read_input_outter60 = load [4096 x i128]*, [4096 x i128]** %struct_getter59, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter60, i128 0, i128 %i61
  %ssz_aggregate_pubkey63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_aggregate_pubkey63, i128 %aggregate_pubkey57, i1* @constraint.180)
  %ptr_getter64 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter64, i32 0, i32 2
  %sszarray.in.read_input_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %i67 = load i128, i128* %i, align 4
  %ssz_aggregate_pubkey68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter66, i128 0, i128 %i67
  store i128 %aggregate_pubkey57, i128* %ssz_aggregate_pubkey68, align 4
  br label %if.exit80

if.false52:                                       ; preds = %loop.body50
  %ssz_aggregate_pubkey69 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_aggregate_pubkey69, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i72
  %ssz_aggregate_pubkey74 = load i128, i128* %array_getter73, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_aggregate_pubkey74, i128 0, i1* @constraint.181)
  %ptr_getter75 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter75, i32 0, i32 2
  %sszarray.in.read_input_outter77 = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %i78 = load i128, i128* %i, align 4
  %ssz_aggregate_pubkey79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter77, i128 0, i128 %i78
  store i128 0, i128* %ssz_aggregate_pubkey79, align 4
  br label %if.exit80

if.exit80:                                        ; preds = %if.false52, %if.true51
  br label %loop.latch81

loop.latch81:                                     ; preds = %if.exit80
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %slt85 = icmp slt i128 %i84, 64
  br i1 %slt85, label %loop.body50, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch81
  %call87 = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  store %struct_template_circuit_sha256bytes* %call87, %struct_template_circuit_sha256bytes** %hasher, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch126, %loop.exit86
  %i91 = load i128, i128* %i, align 4
  %slt92 = icmp slt i128 %i91, 32
  br i1 %slt92, label %if.true89, label %if.false90

if.true89:                                        ; preds = %loop.body88
  %ssz_pubkeys93 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_pubkeys, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_pubkeys93, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i95
  %ssz_pubkeys97 = load i128, i128* %array_getter96, align 4
  %hasher98 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %hasher, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hasher98, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %i100 = load i128, i128* %i, align 4
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %i100
  %hasher102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %hasher102, i128 %ssz_pubkeys97, i1* @constraint.182)
  %ptr_getter103 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %hasher, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %ptr_getter103, i32 0, i32 1
  %sha256bytes.in.read_input_outter105 = load [4096 x i128]*, [4096 x i128]** %struct_getter104, align 8
  %i106 = load i128, i128* %i, align 4
  %hasher107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter105, i128 0, i128 %i106
  store i128 %ssz_pubkeys97, i128* %hasher107, align 4
  br label %if.exit125

if.false90:                                       ; preds = %loop.body88
  %ssz_aggregate_pubkey108 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_aggregate_pubkey, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_aggregate_pubkey108, i32 0, i32 3
  %sszarray.out.read_output_outter110 = load [4096 x i128]*, [4096 x i128]** %struct_getter109, align 8
  %i111 = load i128, i128* %i, align 4
  %sub = sub i128 %i111, 32
  %array_getter112 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter110, i128 0, i128 %sub
  %ssz_aggregate_pubkey113 = load i128, i128* %array_getter112, align 4
  %hasher114 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %hasher, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hasher114, i32 0, i32 1
  %sha256bytes.in.read_input_outter116 = load [4096 x i128]*, [4096 x i128]** %struct_getter115, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter116, i128 0, i128 %i117
  %hasher119 = load i128, i128* %array_getter118, align 4
  call void @fn_intrinsic_add_constraint(i128 %hasher119, i128 %ssz_aggregate_pubkey113, i1* @constraint.183)
  %ptr_getter120 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %hasher, align 8
  %struct_getter121 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %ptr_getter120, i32 0, i32 1
  %sha256bytes.in.read_input_outter122 = load [4096 x i128]*, [4096 x i128]** %struct_getter121, align 8
  %i123 = load i128, i128* %i, align 4
  %hasher124 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter122, i128 0, i128 %i123
  store i128 %ssz_aggregate_pubkey113, i128* %hasher124, align 4
  br label %if.exit125

if.exit125:                                       ; preds = %if.false90, %if.true89
  br label %loop.latch126

loop.latch126:                                    ; preds = %if.exit125
  %i127 = load i128, i128* %i, align 4
  %add128 = add i128 %i127, 1
  store i128 %add128, i128* %i, align 4
  %i129 = load i128, i128* %i, align 4
  %slt130 = icmp slt i128 %i129, 64
  br i1 %slt130, label %loop.body88, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch126
  store i128 0, i128* %i, align 4
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch145, %loop.exit131
  %hasher133 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %hasher, align 8
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hasher133, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter134, align 8
  %i135 = load i128, i128* %i, align 4
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %i135
  %hasher137 = load i128, i128* %array_getter136, align 4
  %out138 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %i139 = load i128, i128* %i, align 4
  %array_getter140 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out138, i128 0, i128 %i139
  %out141 = load i128, i128* %array_getter140, align 4
  call void @fn_intrinsic_add_constraint(i128 %out141, i128 %hasher137, i1* @constraint.184)
  %ptr_getter142 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %i143 = load i128, i128* %i, align 4
  %out144 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter142, i128 0, i128 %i143
  store i128 %hasher137, i128* %out144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body132
  %i146 = load i128, i128* %i, align 4
  %add147 = add i128 %i146, 1
  store i128 %add147, i128* %i, align 4
  %i148 = load i128, i128* %i, align 4
  %slt149 = icmp slt i128 %i148, 32
  br i1 %slt149, label %loop.body132, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch145
  br label %exit

exit:                                             ; preds = %loop.exit150
  %out151 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %sszphase0synccommittee.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 2
  store [4096 x i128]* %out151, [4096 x i128]** %sszphase0synccommittee.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0synccommittee* @fn_template_build_sszphase0synccommittee() {
entry:
  %struct_template_circuit_sszphase0synccommittee = alloca %struct_template_circuit_sszphase0synccommittee, align 8
  ret %struct_template_circuit_sszphase0synccommittee* %struct_template_circuit_sszphase0synccommittee
}

define void @fn_template_init_sszphase0beaconblockheader(%struct_template_circuit_sszphase0beaconblockheader* %0) {
entry:
  %SSZPhase0BeaconBlockHeader = alloca %struct_template_circuit_sszphase0beaconblockheader*, align 8
  store %struct_template_circuit_sszphase0beaconblockheader* %0, %struct_template_circuit_sszphase0beaconblockheader** %SSZPhase0BeaconBlockHeader, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 0
  %sszphase0beaconblockheader.slot.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %sszphase0beaconblockheader.slot.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0beaconblockheader.slot.read_input_inner, [4096 x i128]** %sszphase0beaconblockheader.slot.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 1
  %sszphase0beaconblockheader.proposer_index.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sszphase0beaconblockheader.proposer_index.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0beaconblockheader.proposer_index.read_input_inner, [4096 x i128]** %sszphase0beaconblockheader.proposer_index.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 2
  %sszphase0beaconblockheader.parent_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %sszphase0beaconblockheader.parent_root.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0beaconblockheader.parent_root.read_input_inner, [4096 x i128]** %sszphase0beaconblockheader.parent_root.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 3
  %sszphase0beaconblockheader.state_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %sszphase0beaconblockheader.state_root.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0beaconblockheader.state_root.read_input_inner, [4096 x i128]** %sszphase0beaconblockheader.state_root.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 4
  %sszphase0beaconblockheader.body_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %sszphase0beaconblockheader.body_root.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0beaconblockheader.body_root.read_input_inner, [4096 x i128]** %sszphase0beaconblockheader.body_root.declare_input, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  store i128 %i5, i128* %i, align 4
  %sszphase0beaconblockheader.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %ssz_beacon_block_header = alloca %struct_template_circuit_sszarray*, align 8
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 256, i128 3)
  store %struct_template_circuit_sszarray* %call, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i6 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i6, 32
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %slot = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.slot.declare_input, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %slot, i128 0, i128 %i7
  %slot8 = load i128, i128* %array_getter, align 4
  %ssz_beacon_block_header9 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header9, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %i11
  %ssz_beacon_block_header13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header13, i128 %slot8, i1* @constraint.185)
  %ptr_getter = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter, i32 0, i32 2
  %sszarray.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %ssz_beacon_block_header17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter15, i128 0, i128 %i16
  store i128 %slot8, i128* %ssz_beacon_block_header17, align 4
  br label %if.exit107

if.false:                                         ; preds = %loop.body
  %i20 = load i128, i128* %i, align 4
  %slt21 = icmp slt i128 %i20, 64
  br i1 %slt21, label %if.true18, label %if.false19

if.true18:                                        ; preds = %if.false
  %proposer_index = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.proposer_index.declare_input, align 8
  %i22 = load i128, i128* %i, align 4
  %sub = sub i128 %i22, 32
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %proposer_index, i128 0, i128 %sub
  %proposer_index24 = load i128, i128* %array_getter23, align 4
  %ssz_beacon_block_header25 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header25, i32 0, i32 2
  %sszarray.in.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter27, i128 0, i128 %i28
  %ssz_beacon_block_header30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header30, i128 %proposer_index24, i1* @constraint.186)
  %ptr_getter31 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter31, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %i34 = load i128, i128* %i, align 4
  %ssz_beacon_block_header35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %i34
  store i128 %proposer_index24, i128* %ssz_beacon_block_header35, align 4
  br label %if.exit106

if.false19:                                       ; preds = %if.false
  %i38 = load i128, i128* %i, align 4
  %slt39 = icmp slt i128 %i38, 96
  br i1 %slt39, label %if.true36, label %if.false37

if.true36:                                        ; preds = %if.false19
  %parent_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.parent_root.declare_input, align 8
  %i40 = load i128, i128* %i, align 4
  %sub41 = sub i128 %i40, 64
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parent_root, i128 0, i128 %sub41
  %parent_root43 = load i128, i128* %array_getter42, align 4
  %ssz_beacon_block_header44 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header44, i32 0, i32 2
  %sszarray.in.read_input_outter46 = load [4096 x i128]*, [4096 x i128]** %struct_getter45, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter46, i128 0, i128 %i47
  %ssz_beacon_block_header49 = load i128, i128* %array_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header49, i128 %parent_root43, i1* @constraint.187)
  %ptr_getter50 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter50, i32 0, i32 2
  %sszarray.in.read_input_outter52 = load [4096 x i128]*, [4096 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %ssz_beacon_block_header54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter52, i128 0, i128 %i53
  store i128 %parent_root43, i128* %ssz_beacon_block_header54, align 4
  br label %if.exit105

if.false37:                                       ; preds = %if.false19
  %i57 = load i128, i128* %i, align 4
  %slt58 = icmp slt i128 %i57, 128
  br i1 %slt58, label %if.true55, label %if.false56

if.true55:                                        ; preds = %if.false37
  %state_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.state_root.declare_input, align 8
  %i59 = load i128, i128* %i, align 4
  %sub60 = sub i128 %i59, 96
  %array_getter61 = getelementptr inbounds [4096 x i128], [4096 x i128]* %state_root, i128 0, i128 %sub60
  %state_root62 = load i128, i128* %array_getter61, align 4
  %ssz_beacon_block_header63 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header63, i32 0, i32 2
  %sszarray.in.read_input_outter65 = load [4096 x i128]*, [4096 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter65, i128 0, i128 %i66
  %ssz_beacon_block_header68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header68, i128 %state_root62, i1* @constraint.188)
  %ptr_getter69 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter69, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %i72 = load i128, i128* %i, align 4
  %ssz_beacon_block_header73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i72
  store i128 %state_root62, i128* %ssz_beacon_block_header73, align 4
  br label %if.exit104

if.false56:                                       ; preds = %if.false37
  %i76 = load i128, i128* %i, align 4
  %slt77 = icmp slt i128 %i76, 160
  br i1 %slt77, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.false56
  %body_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.body_root.declare_input, align 8
  %i78 = load i128, i128* %i, align 4
  %sub79 = sub i128 %i78, 128
  %array_getter80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %body_root, i128 0, i128 %sub79
  %body_root81 = load i128, i128* %array_getter80, align 4
  %ssz_beacon_block_header82 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header82, i32 0, i32 2
  %sszarray.in.read_input_outter84 = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter84, i128 0, i128 %i85
  %ssz_beacon_block_header87 = load i128, i128* %array_getter86, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header87, i128 %body_root81, i1* @constraint.189)
  %ptr_getter88 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter88, i32 0, i32 2
  %sszarray.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %i91 = load i128, i128* %i, align 4
  %ssz_beacon_block_header92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter90, i128 0, i128 %i91
  store i128 %body_root81, i128* %ssz_beacon_block_header92, align 4
  br label %if.exit

if.false75:                                       ; preds = %if.false56
  %ssz_beacon_block_header93 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header93, i32 0, i32 2
  %sszarray.in.read_input_outter95 = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter95, i128 0, i128 %i96
  %ssz_beacon_block_header98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header98, i128 0, i1* @constraint.190)
  %ptr_getter99 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ptr_getter99, i32 0, i32 2
  %sszarray.in.read_input_outter101 = load [4096 x i128]*, [4096 x i128]** %struct_getter100, align 8
  %i102 = load i128, i128* %i, align 4
  %ssz_beacon_block_header103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter101, i128 0, i128 %i102
  store i128 0, i128* %ssz_beacon_block_header103, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false75, %if.true74
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit, %if.true55
  br label %if.exit105

if.exit105:                                       ; preds = %if.exit104, %if.true36
  br label %if.exit106

if.exit106:                                       ; preds = %if.exit105, %if.true18
  br label %if.exit107

if.exit107:                                       ; preds = %if.exit106, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit107
  %i108 = load i128, i128* %i, align 4
  %add = add i128 %i108, 1
  store i128 %add, i128* %i, align 4
  %i109 = load i128, i128* %i, align 4
  %slt110 = icmp slt i128 %i109, 256
  br i1 %slt110, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch124, %loop.exit
  %ssz_beacon_block_header112 = load %struct_template_circuit_sszarray*, %struct_template_circuit_sszarray** %ssz_beacon_block_header, align 8
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %ssz_beacon_block_header112, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter113, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i114
  %ssz_beacon_block_header116 = load i128, i128* %array_getter115, align 4
  %out117 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %i118 = load i128, i128* %i, align 4
  %array_getter119 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out117, i128 0, i128 %i118
  %out120 = load i128, i128* %array_getter119, align 4
  call void @fn_intrinsic_add_constraint(i128 %out120, i128 %ssz_beacon_block_header116, i1* @constraint.191)
  %ptr_getter121 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %i122 = load i128, i128* %i, align 4
  %out123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter121, i128 0, i128 %i122
  store i128 %ssz_beacon_block_header116, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body111
  %i125 = load i128, i128* %i, align 4
  %add126 = add i128 %i125, 1
  store i128 %add126, i128* %i, align 4
  %i127 = load i128, i128* %i, align 4
  %slt128 = icmp slt i128 %i127, 32
  br i1 %slt128, label %loop.body111, label %loop.exit129

loop.exit129:                                     ; preds = %loop.latch124
  br label %exit

exit:                                             ; preds = %loop.exit129
  %out130 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %sszphase0beaconblockheader.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 5
  store [4096 x i128]* %out130, [4096 x i128]** %sszphase0beaconblockheader.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0beaconblockheader* @fn_template_build_sszphase0beaconblockheader() {
entry:
  %struct_template_circuit_sszphase0beaconblockheader = alloca %struct_template_circuit_sszphase0beaconblockheader, align 8
  ret %struct_template_circuit_sszphase0beaconblockheader* %struct_template_circuit_sszphase0beaconblockheader
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
