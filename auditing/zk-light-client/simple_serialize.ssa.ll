; ModuleID = './auditing/zk-light-client/simple_serialize.ll'
source_filename = "/Users/hongbo/code/zk-light-client/circuits/circuits/simple_serialize.circom"

%struct_template_circuit_rotr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_xor3 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bigsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_ch_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_h = type { i128, [4096 x i128]* }
%struct_template_circuit_num2bits = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_k = type { i128, [4096 x i128]* }
%struct_template_circuit_maj_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_isequal = type { [4096 x i128]*, i128 }
%struct_template_circuit_shr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_compconstant = type { i128, [4096 x i128]*, [4096 x i128]*, i128, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_aliascheck = type { [4096 x i128]* }
%struct_template_circuit_smallsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_binsum = type { i128, i128, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_forceequalifenabled = type { i128, [4096 x i128]* }
%struct_template_circuit_bits2num_strict = type { [4096 x i128]*, i128 }
%struct_template_circuit_sigmaplus = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_t2 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_t1 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits_strict = type { i128, [4096 x i128]* }
%struct_template_circuit_lessthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_greaterthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_sha256compression = type { [4096 x i128]*, [4096 x i128]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_lesseqthan = type { i128, [4096 x i128]*, i128 }
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

define void @fn_template_init_rotr(%struct_template_circuit_rotr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 0
  %rotr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 1
  %rotr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 2
  %rotr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %rotr.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %rotr.in.read_input_inner, [4096 x i128]** %rotr.in.declare_input, align 8
  %rotr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %rotr.out.declare_output, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add15, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %rotr.in.declare_input, align 8
  %add = add i128 %i.0, %rotr.r.read_arg_inner
  %mod = srem i128 %add, %rotr.n.read_arg_inner
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %mod
  %in7 = load i128, i128* %array_getter, align 4
  %out8 = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %array_getter10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out8, i128 0, i128 %i.0
  %out11 = load i128, i128* %array_getter10, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out11, i128 %in7, i1* @constraint)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %out13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %in7, i128* %out13, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add15 = add i128 %i.0, 1
  %slt = icmp slt i128 %add15, %rotr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %rotr.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %rotr.n.read_arg_inner)
  %ptr_cast18 = bitcast [4096 x i128]** %rotr.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast18, i128 %rotr.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out19 = load [4096 x i128]*, [4096 x i128]** %rotr.out.declare_output, align 8
  %rotr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 3
  store [4096 x i128]* %out19, [4096 x i128]** %rotr.out.write_output_inner, align 8
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

define void @fn_template_init_xor3(%struct_template_circuit_xor3* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 0
  %xor3.n.read_arg_inner = load i128, i128* %struct_getter, align 4
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
  %k4 = call i128 @fn_intrinsic_utils_init()
  %xor3.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %xor3.out.declare_output, align 8
  %xor3.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall5 to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %xor3.mid.declare_inter, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add65, %loop.latch ]
  %b = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k.0
  %b11 = load i128, i128* %array_getter, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k.0
  %c14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %b11, %c14
  %mid15 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %array_getter17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid15, i128 0, i128 %k.0
  %mid18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mid18, i128 %mul, i1* @constraint.1)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %mid20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k.0
  store i128 %mul, i128* %mid20, align 4
  %a = load [4096 x i128]*, [4096 x i128]** %xor3.a.declare_input, align 8
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k.0
  %a23 = load i128, i128* %array_getter22, align 4
  %b24 = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b24, i128 0, i128 %k.0
  %b27 = load i128, i128* %array_getter26, align 4
  %mul28 = mul i128 2, %b27
  %sub = sub i128 1, %mul28
  %c29 = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c29, i128 0, i128 %k.0
  %c32 = load i128, i128* %array_getter31, align 4
  %mul33 = mul i128 2, %c32
  %sub34 = sub i128 %sub, %mul33
  %mid35 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid35, i128 0, i128 %k.0
  %mid38 = load i128, i128* %array_getter37, align 4
  %mul39 = mul i128 4, %mid38
  %add = add i128 %sub34, %mul39
  %mul40 = mul i128 %a23, %add
  %b41 = load [4096 x i128]*, [4096 x i128]** %xor3.b.declare_input, align 8
  %array_getter43 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b41, i128 0, i128 %k.0
  %b44 = load i128, i128* %array_getter43, align 4
  %add45 = add i128 %mul40, %b44
  %c46 = load [4096 x i128]*, [4096 x i128]** %xor3.c.declare_input, align 8
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c46, i128 0, i128 %k.0
  %c49 = load i128, i128* %array_getter48, align 4
  %add50 = add i128 %add45, %c49
  %mid51 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %array_getter53 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid51, i128 0, i128 %k.0
  %mid54 = load i128, i128* %array_getter53, align 4
  %mul55 = mul i128 2, %mid54
  %sub56 = sub i128 %add50, %mul55
  %out57 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %array_getter59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out57, i128 0, i128 %k.0
  %out60 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out60, i128 %sub56, i1* @constraint.2)
  %ptr_getter61 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %out63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter61, i128 0, i128 %k.0
  store i128 %sub56, i128* %out63, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add65 = add i128 %k.0, 1
  %slt = icmp slt i128 %add65, %xor3.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %xor3.mid.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %xor3.n.read_arg_inner)
  %ptr_cast68 = bitcast [4096 x i128]** %xor3.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %xor3.n.read_arg_inner)
  %ptr_cast69 = bitcast [4096 x i128]** %xor3.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast69, i128 %xor3.n.read_arg_inner)
  %ptr_cast70 = bitcast [4096 x i128]** %xor3.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast70, i128 %xor3.n.read_arg_inner)
  %ptr_cast71 = bitcast [4096 x i128]** %xor3.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast71, i128 %xor3.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %mid72 = load [4096 x i128]*, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %xor3.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 4
  store [4096 x i128]* %mid72, [4096 x i128]** %xor3.mid.write_inter_inner, align 8
  %out73 = load [4096 x i128]*, [4096 x i128]** %xor3.out.declare_output, align 8
  %xor3.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 5
  store [4096 x i128]* %out73, [4096 x i128]** %xor3.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_xor3* @fn_template_build_xor3(i128 %0) {
entry:
  %struct_template_circuit_xor3 = alloca %struct_template_circuit_xor3, align 8
  %xor3.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %struct_template_circuit_xor3, i32 0, i32 0
  store i128 %0, i128* %xor3.n.write_arg_inner, align 4
  ret %struct_template_circuit_xor3* %struct_template_circuit_xor3
}

define void @fn_template_init_bigsigma(%struct_template_circuit_bigsigma* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 0
  %bigsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 1
  %bigsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 2
  %bigsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 3
  %bigsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %bigsigma.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bigsigma.in.read_input_inner, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %k4 = call i128 @fn_intrinsic_utils_init()
  %bigsigma.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_utils_constraint(i128 %rota13, i128 %in8, i1* @constraint.3)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %in18 = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in18, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %rotb27, i128 %in21, i1* @constraint.4)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %in33 = load [4096 x i128]*, [4096 x i128]** %bigsigma.in.declare_input, align 8
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in33, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 2
  %rotr.in.read_input_outter39 = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter39, i128 0, i128 %k.0
  %rotc42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_utils_constraint(i128 %rotc42, i128 %in36, i1* @constraint.5)
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 2
  %rotr.in.read_input_outter45 = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %rotc47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter45, i128 0, i128 %k.0
  store i128 %in36, i128* %rotc47, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call50 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch99, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add101, %loop.latch99 ]
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter53, align 8
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k.1
  %rota56 = load i128, i128* %array_getter55, align 4
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter58, align 8
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k.1
  %xor361 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor361, i128 %rota56, i1* @constraint.6)
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 1
  %xor3.a.read_input_outter64 = load [4096 x i128]*, [4096 x i128]** %struct_getter63, align 8
  %xor366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter64, i128 0, i128 %k.1
  store i128 %rota56, i128* %xor366, align 4
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 3
  %rotr.out.read_output_outter69 = load [4096 x i128]*, [4096 x i128]** %struct_getter68, align 8
  %array_getter71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter69, i128 0, i128 %k.1
  %rotb72 = load i128, i128* %array_getter71, align 4
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter74, align 8
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k.1
  %xor377 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor377, i128 %rotb72, i1* @constraint.7)
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 2
  %xor3.b.read_input_outter80 = load [4096 x i128]*, [4096 x i128]** %struct_getter79, align 8
  %xor382 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter80, i128 0, i128 %k.1
  store i128 %rotb72, i128* %xor382, align 4
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 3
  %rotr.out.read_output_outter85 = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %array_getter87 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter85, i128 0, i128 %k.1
  %rotc88 = load i128, i128* %array_getter87, align 4
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter90, align 8
  %array_getter92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k.1
  %xor393 = load i128, i128* %array_getter92, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor393, i128 %rotc88, i1* @constraint.8)
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 3
  %xor3.c.read_input_outter96 = load [4096 x i128]*, [4096 x i128]** %struct_getter95, align 8
  %xor398 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter96, i128 0, i128 %k.1
  store i128 %rotc88, i128* %xor398, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body51
  %add101 = add i128 %k.1, 1
  %slt103 = icmp slt i128 %add101, 32
  br i1 %slt103, label %loop.body51, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch99
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch118, %loop.exit104
  %k.2 = phi i128 [ 0, %loop.exit104 ], [ %add120, %loop.latch118 ]
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k.2
  %xor3110 = load i128, i128* %array_getter109, align 4
  %out111 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %array_getter113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out111, i128 0, i128 %k.2
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out114, i128 %xor3110, i1* @constraint.9)
  %ptr_getter115 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %out117 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter115, i128 0, i128 %k.2
  store i128 %xor3110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %add120 = add i128 %k.2, 1
  %slt122 = icmp slt i128 %add120, 32
  br i1 %slt122, label %loop.body105, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch118
  br label %arraydim

arraydim:                                         ; preds = %loop.exit123
  %ptr_cast = bitcast [4096 x i128]** %bigsigma.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast124 = bitcast [4096 x i128]** %bigsigma.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast124, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out125 = load [4096 x i128]*, [4096 x i128]** %bigsigma.out.declare_output, align 8
  %bigsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out125, [4096 x i128]** %bigsigma.out.write_output_inner, align 8
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

define i128 @sha256K(i128 %0) {
entry:
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %0
  %k3 = load i128, i128* %array_getter, align 4
  ret i128 %k3
}

define i128 @Maj(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %and2 = and i128 %0, %2
  %xor = xor i128 %and, %and2
  %and5 = and i128 %1, %2
  %xor6 = xor i128 %xor, %and5
  ret i128 %xor6
}

define void @fn_template_init_ch_t(%struct_template_circuit_ch_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 0
  %ch_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
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
  %k4 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add27, %loop.latch ]
  %a = load [4096 x i128]*, [4096 x i128]** %ch_t.a.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k.0
  %a9 = load i128, i128* %array_getter, align 4
  %b = load [4096 x i128]*, [4096 x i128]** %ch_t.b.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k.0
  %b12 = load i128, i128* %array_getter11, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %ch_t.c.declare_input, align 8
  %array_getter14 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k.0
  %c15 = load i128, i128* %array_getter14, align 4
  %sub = sub i128 %b12, %c15
  %mul = mul i128 %a9, %sub
  %c16 = load [4096 x i128]*, [4096 x i128]** %ch_t.c.declare_input, align 8
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c16, i128 0, i128 %k.0
  %c19 = load i128, i128* %array_getter18, align 4
  %add = add i128 %mul, %c19
  %out20 = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out20, i128 0, i128 %k.0
  %out23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out23, i128 %add, i1* @constraint.10)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %out25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k.0
  store i128 %add, i128* %out25, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add27 = add i128 %k.0, 1
  %slt = icmp slt i128 %add27, %ch_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %ch_t.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %ch_t.n.read_arg_inner)
  %ptr_cast30 = bitcast [4096 x i128]** %ch_t.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast30, i128 %ch_t.n.read_arg_inner)
  %ptr_cast31 = bitcast [4096 x i128]** %ch_t.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast31, i128 %ch_t.n.read_arg_inner)
  %ptr_cast32 = bitcast [4096 x i128]** %ch_t.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast32, i128 %ch_t.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out33 = load [4096 x i128]*, [4096 x i128]** %ch_t.out.declare_output, align 8
  %ch_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 4
  store [4096 x i128]* %out33, [4096 x i128]** %ch_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 %0) {
entry:
  %struct_template_circuit_ch_t = alloca %struct_template_circuit_ch_t, align 8
  %ch_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %struct_template_circuit_ch_t, i32 0, i32 0
  store i128 %0, i128* %ch_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_ch_t* %struct_template_circuit_ch_t
}

define i128 @Ch(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %xor = xor i128 4294967295, %0
  %and2 = and i128 %xor, %2
  %xor3 = xor i128 %and, %and2
  ret i128 %xor3
}

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %h.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
  %h.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %h.out.declare_output, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  store [4096 x i128]* %const_inline_array, [4096 x i128]** %c, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %c3 = load [4096 x i128]*, [4096 x i128]** %c, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %c3, i128 0, i128 %h.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %out6 = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out6, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 %and, i1* @constraint.11)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %h.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast14 = bitcast [4096 x i128]** %c to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast14, i128 8)
  br label %exit

exit:                                             ; preds = %arraydim
  %out15 = load [4096 x i128]*, [4096 x i128]** %h.out.declare_output, align 8
  %h.out.write_output_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 1
  store [4096 x i128]* %out15, [4096 x i128]** %h.out.write_output_inner, align 8
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
  %rshift = lshr i128 %0, %1
  %sub = sub i128 32, %1
  %lshift = shl i128 %0, %sub
  %or = or i128 %rshift, %lshift
  %and = and i128 %or, 4294967295
  ret i128 %and
}

define i128 @ssigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 17)
  %call2 = call i128 @rrot(i128 %0, i128 19)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 10
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %e22 = call i128 @fn_intrinsic_utils_init()
  %num2bits.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  %lc14 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %rshift = lshr i128 %num2bits.in.read_input_inner, %i.0
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %out7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out7, align 4
  %out8 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out8, i128 0, i128 %i.0
  %out10 = load i128, i128* %array_getter, align 4
  %out11 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out11, i128 0, i128 %i.0
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.12)
  %out16 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out16, i128 0, i128 %i.0
  %out19 = load i128, i128* %array_getter18, align 4
  %mul21 = mul i128 %out19, %e2.0
  %add = add i128 %lc1.0, %mul21
  %add24 = add i128 %e2.0, %e2.0
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add26 = add i128 %i.0, 1
  %slt = icmp slt i128 %add26, %num2bits.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.13)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %num2bits.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %num2bits.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out31 = load [4096 x i128]*, [4096 x i128]** %num2bits.out.declare_output, align 8
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [4096 x i128]* %out31, [4096 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define i128 @ssigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 7)
  %call2 = call i128 @rrot(i128 %0, i128 18)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 3
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define i128 @bsigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 2)
  %call2 = call i128 @rrot(i128 %0, i128 13)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 22)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %k.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  %k.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %k.out.declare_output, align 8
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  store [4096 x i128]* %const_inline_array, [4096 x i128]** %c, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %c3 = load [4096 x i128]*, [4096 x i128]** %c, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %c3, i128 0, i128 %k.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %out6 = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out6, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 %and, i1* @constraint.14)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %k.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast14 = bitcast [4096 x i128]** %c to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast14, i128 64)
  br label %exit

exit:                                             ; preds = %arraydim
  %out15 = load [4096 x i128]*, [4096 x i128]** %k.out.declare_output, align 8
  %k.out.write_output_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 1
  store [4096 x i128]* %out15, [4096 x i128]** %k.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_k* @fn_template_build_k(i128 %0) {
entry:
  %struct_template_circuit_k = alloca %struct_template_circuit_k, align 8
  %k.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %struct_template_circuit_k, i32 0, i32 0
  store i128 %0, i128* %k.x.write_arg_inner, align 4
  ret %struct_template_circuit_k* %struct_template_circuit_k
}

define void @fn_template_init_maj_t(%struct_template_circuit_maj_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 0
  %maj_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
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
  %maj_t.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %maj_t.out.declare_output, align 8
  %maj_t.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall4 to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %k5 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add51, %loop.latch ]
  %b = load [4096 x i128]*, [4096 x i128]** %maj_t.b.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k.0
  %b11 = load i128, i128* %array_getter, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %maj_t.c.declare_input, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k.0
  %c14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %b11, %c14
  %mid15 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %array_getter17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid15, i128 0, i128 %k.0
  %mid18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mid18, i128 %mul, i1* @constraint.15)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %mid20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k.0
  store i128 %mul, i128* %mid20, align 4
  %a = load [4096 x i128]*, [4096 x i128]** %maj_t.a.declare_input, align 8
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k.0
  %a23 = load i128, i128* %array_getter22, align 4
  %b24 = load [4096 x i128]*, [4096 x i128]** %maj_t.b.declare_input, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b24, i128 0, i128 %k.0
  %b27 = load i128, i128* %array_getter26, align 4
  %c28 = load [4096 x i128]*, [4096 x i128]** %maj_t.c.declare_input, align 8
  %array_getter30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c28, i128 0, i128 %k.0
  %c31 = load i128, i128* %array_getter30, align 4
  %add = add i128 %b27, %c31
  %mid32 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %array_getter34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid32, i128 0, i128 %k.0
  %mid35 = load i128, i128* %array_getter34, align 4
  %mul36 = mul i128 2, %mid35
  %sub = sub i128 %add, %mul36
  %mul37 = mul i128 %a23, %sub
  %mid38 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid38, i128 0, i128 %k.0
  %mid41 = load i128, i128* %array_getter40, align 4
  %add42 = add i128 %mul37, %mid41
  %out43 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out43, i128 0, i128 %k.0
  %out46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out46, i128 %add42, i1* @constraint.16)
  %ptr_getter47 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %out49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter47, i128 0, i128 %k.0
  store i128 %add42, i128* %out49, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add51 = add i128 %k.0, 1
  %slt = icmp slt i128 %add51, %maj_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %maj_t.mid.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %maj_t.n.read_arg_inner)
  %ptr_cast54 = bitcast [4096 x i128]** %maj_t.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast54, i128 %maj_t.n.read_arg_inner)
  %ptr_cast55 = bitcast [4096 x i128]** %maj_t.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast55, i128 %maj_t.n.read_arg_inner)
  %ptr_cast56 = bitcast [4096 x i128]** %maj_t.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast56, i128 %maj_t.n.read_arg_inner)
  %ptr_cast57 = bitcast [4096 x i128]** %maj_t.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast57, i128 %maj_t.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %mid58 = load [4096 x i128]*, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %maj_t.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 4
  store [4096 x i128]* %mid58, [4096 x i128]** %maj_t.mid.write_inter_inner, align 8
  %out59 = load [4096 x i128]*, [4096 x i128]** %maj_t.out.declare_output, align 8
  %maj_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 5
  store [4096 x i128]* %out59, [4096 x i128]** %maj_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 %0) {
entry:
  %struct_template_circuit_maj_t = alloca %struct_template_circuit_maj_t, align 8
  %maj_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %struct_template_circuit_maj_t, i32 0, i32 0
  store i128 %0, i128* %maj_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_maj_t* %struct_template_circuit_maj_t
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %iszero.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %inv = call i128 @fn_intrinsic_utils_init()
  %ne = icmp ne i128 %iszero.in.read_input_inner, 0
  %sdiv = sdiv i128 1, %iszero.in.read_input_inner
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %ne, i128 %sdiv, i128 0)
  %iszero.inv.write_inter_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %utils_switch, i128* %iszero.inv.write_inter_inner, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  %iszero.inv.read_inter_inner = load i128, i128* %struct_getter3, align 4
  %neg = sub i128 0, %iszero.in.read_input_inner
  %mul = mul i128 %neg, %iszero.inv.read_inter_inner
  %add = add i128 %mul, 1
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.17)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_utils_constraint(i128 %mul12, i128 0, i1* @constraint.18)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %iszero.inv.write_inter_inner14 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %iszero.inv.read_inter_inner, i128* %iszero.inv.write_inter_inner14, align 4
  %iszero.out.write_output_inner16 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %iszero.out.read_output_inner, i128* %iszero.out.write_output_inner16, align 4
  ret void
}

define %struct_template_circuit_iszero* @fn_template_build_iszero() {
entry:
  %struct_template_circuit_iszero = alloca %struct_template_circuit_iszero, align 8
  ret %struct_template_circuit_iszero* %struct_template_circuit_iszero
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %isequal.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %isequal.in.read_input_inner, [4096 x i128]** %isequal.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %in = load [4096 x i128]*, [4096 x i128]** %isequal.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [4096 x i128]*, [4096 x i128]** %isequal.in.declare_input, align 8
  %array_getter3 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.19)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.20)
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %isequal.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %isequal.out.write_output_inner14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %isequal.out.read_output_inner, i128* %isequal.out.write_output_inner14, align 4
  ret void
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
  %struct_template_circuit_isequal = alloca %struct_template_circuit_isequal, align 8
  ret %struct_template_circuit_isequal* %struct_template_circuit_isequal
}

define i128 @nbits(i128 %0) {
entry:
  %r1 = call i128 @fn_intrinsic_utils_init()
  %n2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %r.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %n.0 = phi i128 [ 1, %entry ], [ %mul, %loop.latch ]
  %add = add i128 %r.0, 1
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %mul = mul i128 %n.0, 2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %sub, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 %add
}

define void @fn_template_init_shr(%struct_template_circuit_shr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %shr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 1
  %shr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 2
  %shr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %shr.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %shr.in.read_input_inner, [4096 x i128]** %shr.in.declare_input, align 8
  %shr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %shr.out.declare_output, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch ]
  %add = add i128 %i.0, %shr.r.read_arg_inner
  %sge = icmp sge i128 %add, %shr.n.read_arg_inner
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %out7 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out7, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 0, i1* @constraint.21)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 0, i128* %out11, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in = load [4096 x i128]*, [4096 x i128]** %shr.in.declare_input, align 8
  %add14 = add i128 %i.0, %shr.r.read_arg_inner
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %add14
  %in16 = load i128, i128* %array_getter15, align 4
  %out17 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %array_getter19 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out17, i128 0, i128 %i.0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out20, i128 %in16, i1* @constraint.22)
  %ptr_getter21 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %out23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter21, i128 0, i128 %i.0
  store i128 %in16, i128* %out23, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add25 = add i128 %i.0, 1
  %slt = icmp slt i128 %add25, %shr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %shr.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %shr.n.read_arg_inner)
  %ptr_cast28 = bitcast [4096 x i128]** %shr.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast28, i128 %shr.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out29 = load [4096 x i128]*, [4096 x i128]** %shr.out.declare_output, align 8
  %shr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 3
  store [4096 x i128]* %out29, [4096 x i128]** %shr.out.write_output_inner, align 8
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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %bits2num.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bits2num.in.read_input_inner, [4096 x i128]** %bits2num.in.declare_input, align 8
  %e22 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %lc14 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %bits2num.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i.0
  %in7 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %in7, %e2.0
  %add = add i128 %lc1.0, %mul
  %add11 = add i128 %e2.0, %e2.0
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add13 = add i128 %i.0, 1
  %slt = icmp slt i128 %add13, %bits2num.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.23)
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %add, i128* %bits2num.out.write_output_inner, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %bits2num.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bits2num.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %bits2num.out.write_output_inner21 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %bits2num.out.read_output_inner, i128* %bits2num.out.write_output_inner21, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %bits2num.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %bits2num.n.write_arg_inner, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %compconstant.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %compconstant.in.read_input_inner, [4096 x i128]** %compconstant.in.declare_input, align 8
  %slsb2 = call i128 @fn_intrinsic_utils_init()
  %clsb3 = call i128 @fn_intrinsic_utils_init()
  %cmsb4 = call i128 @fn_intrinsic_utils_init()
  %compconstant.parts.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %parts, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %sout = call i128 @fn_intrinsic_utils_init()
  %sum5 = call i128 @fn_intrinsic_utils_init()
  %a6 = call i128 @fn_intrinsic_utils_init()
  %smsb7 = call i128 @fn_intrinsic_utils_init()
  %i8 = call i128 @fn_intrinsic_utils_init()
  %e9 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %b10 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %b.0 = phi i128 [ -1, %entry ], [ %sub131, %loop.latch ]
  %mul = mul i128 %i.0, 2
  %rshift = lshr i128 %compconstant.ct.read_arg_inner, %mul
  %and = and i128 %rshift, 1
  %mul14 = mul i128 %i.0, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %compconstant.ct.read_arg_inner, %add
  %and16 = and i128 %rshift15, 1
  %in = load [4096 x i128]*, [4096 x i128]** %compconstant.in.declare_input, align 8
  %mul18 = mul i128 %i.0, 2
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  %in20 = load [4096 x i128]*, [4096 x i128]** %compconstant.in.declare_input, align 8
  %mul22 = mul i128 %i.0, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in20, i128 0, i128 %add23
  %in25 = load i128, i128* %array_getter24, align 4
  %eq = icmp eq i128 %and16, 0
  %eq28 = icmp eq i128 %and, 0
  %and29 = and i1 %eq, %eq28
  br i1 %and29, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %neg = sub i128 0, %b.0
  %mul32 = mul i128 %neg, %in25
  %mul34 = mul i128 %mul32, %in19
  %mul37 = mul i128 %b.0, %in25
  %add38 = add i128 %mul34, %mul37
  %mul41 = mul i128 %b.0, %in19
  %add42 = add i128 %add38, %mul41
  %parts43 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts43, i128 0, i128 %i.0
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts46, i128 %add42, i1* @constraint.24)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %parts48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %add42, i128* %parts48, align 4
  br label %if.exit122

if.false:                                         ; preds = %loop.body
  %eq52 = icmp eq i128 %and16, 0
  %eq54 = icmp eq i128 %and, 1
  %and55 = and i1 %eq52, %eq54
  br i1 %and55, label %if.true49, label %if.false50

if.true49:                                        ; preds = %if.false
  %mul58 = mul i128 %a.0, %in25
  %mul60 = mul i128 %mul58, %in19
  %mul63 = mul i128 %a.0, %in19
  %sub = sub i128 %mul60, %mul63
  %mul66 = mul i128 %b.0, %in25
  %add67 = add i128 %sub, %mul66
  %mul70 = mul i128 %a.0, %in25
  %sub71 = sub i128 %add67, %mul70
  %add73 = add i128 %sub71, %a.0
  %parts74 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts74, i128 0, i128 %i.0
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts77, i128 %add73, i1* @constraint.25)
  %ptr_getter78 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %parts80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter78, i128 0, i128 %i.0
  store i128 %add73, i128* %parts80, align 4
  br label %if.exit121

if.false50:                                       ; preds = %if.false
  %eq84 = icmp eq i128 %and16, 1
  %eq86 = icmp eq i128 %and, 0
  %and87 = and i1 %eq84, %eq86
  br i1 %and87, label %if.true81, label %if.false82

if.true81:                                        ; preds = %if.false50
  %mul90 = mul i128 %b.0, %in25
  %mul92 = mul i128 %mul90, %in19
  %mul95 = mul i128 %a.0, %in25
  %sub96 = sub i128 %mul92, %mul95
  %add98 = add i128 %sub96, %a.0
  %parts99 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts99, i128 0, i128 %i.0
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts102, i128 %add98, i1* @constraint.26)
  %ptr_getter103 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %parts105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter103, i128 0, i128 %i.0
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %neg107 = sub i128 0, %a.0
  %mul109 = mul i128 %neg107, %in25
  %mul111 = mul i128 %mul109, %in19
  %add113 = add i128 %mul111, %a.0
  %parts114 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts114, i128 0, i128 %i.0
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts117, i128 %add113, i1* @constraint.27)
  %ptr_getter118 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %parts120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter118, i128 0, i128 %i.0
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %parts124 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter126 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts124, i128 0, i128 %i.0
  %parts127 = load i128, i128* %array_getter126, align 4
  %add128 = add i128 %sum.0, %parts127
  %sub131 = sub i128 %b.0, %e.0
  %add134 = add i128 %a.0, %e.0
  %mul136 = mul i128 %e.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit122
  %add138 = add i128 %i.0, 1
  %slt = icmp slt i128 %add138, 127
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_utils_constraint(i128 %sout, i128 %add128, i1* @constraint.28)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.29)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %num2bits152, i1* @constraint.30)
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %compconstant.parts.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 127)
  %ptr_cast157 = bitcast [4096 x i128]** %compconstant.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast157, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
  %parts158 = load [4096 x i128]*, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [4096 x i128]* %parts158, [4096 x i128]** %compconstant.parts.write_inter_inner, align 8
  %compconstant.sout.write_inter_inner160 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %compconstant.sout.read_inter_inner, i128* %compconstant.sout.write_inter_inner160, align 4
  %compconstant.out.write_output_inner162 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %compconstant.out.read_output_inner, i128* %compconstant.out.write_output_inner162, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %compconstant.ct.write_arg_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %compconstant.ct.write_arg_inner, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %neg2 = call i128 @fn_intrinsic_utils_init()
  %lc13 = call i128 @fn_intrinsic_utils_init()
  %num2bitsneg.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %eq = icmp eq i128 %num2bitsneg.n.read_arg_inner, 0
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub = sub i128 %pow, %num2bitsneg.in.read_input_inner
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %eq, i128 0, i128 %sub)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add28, %loop.latch ]
  %rshift = lshr i128 %utils_switch, %i.0
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %out10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out10, align 4
  %out11 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out11, i128 0, i128 %i.0
  %out13 = load i128, i128* %array_getter, align 4
  %out14 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out14, i128 0, i128 %i.0
  %out17 = load i128, i128* %array_getter16, align 4
  %sub18 = sub i128 %out17, 1
  %mul = mul i128 %out13, %sub18
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.31)
  %out20 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out20, i128 0, i128 %i.0
  %out23 = load i128, i128* %array_getter22, align 4
  %pow25 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %i.0)
  %mul26 = mul i128 %out23, %pow25
  %add = add i128 %lc1.0, %mul26
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add28 = add i128 %i.0, 1
  %slt = icmp slt i128 %add28, %num2bitsneg.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.32)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter37, align 4
  %pow39 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul40 = mul i128 %iszero.out.read_output_outter, %pow39
  %add41 = add i128 %add, %mul40
  %pow43 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub45 = sub i128 %pow43, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %add41, i128 %sub45, i1* @constraint.33)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %num2bitsneg.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %num2bitsneg.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out46 = load [4096 x i128]*, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [4096 x i128]* %out46, [4096 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %aliascheck.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %aliascheck.in.read_input_inner, [4096 x i128]** %aliascheck.in.declare_input, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %aliascheck.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i.0
  %in3 = load i128, i128* %array_getter, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %array_getter7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i.0
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.34)
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %compConstant12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i.0
  store i128 %in3, i128* %compConstant12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 4
  %compconstant.out.read_output_outter = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.35)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %aliascheck.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_smallsigma(%struct_template_circuit_smallsigma* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 0
  %smallsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 1
  %smallsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 2
  %smallsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 3
  %smallsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %smallsigma.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %smallsigma.in.read_input_inner, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %k4 = call i128 @fn_intrinsic_utils_init()
  %smallsigma.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_shr* @fn_template_build_shr(i128 32, i128 %smallsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_utils_constraint(i128 %rota13, i128 %in8, i1* @constraint.36)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %in18 = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in18, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %rotb27, i128 %in21, i1* @constraint.37)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %in33 = load [4096 x i128]*, [4096 x i128]** %smallsigma.in.declare_input, align 8
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in33, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 2
  %shr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter, i128 0, i128 %k.0
  %shrc41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %shrc41, i128 %in36, i1* @constraint.38)
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 2
  %shr.in.read_input_outter44 = load [4096 x i128]*, [4096 x i128]** %struct_getter43, align 8
  %shrc46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter44, i128 0, i128 %k.0
  store i128 %in36, i128* %shrc46, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call49 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch97, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add99, %loop.latch97 ]
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k.1
  %rota55 = load i128, i128* %array_getter54, align 4
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter57, align 8
  %array_getter59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k.1
  %xor360 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor360, i128 %rota55, i1* @constraint.39)
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 1
  %xor3.a.read_input_outter63 = load [4096 x i128]*, [4096 x i128]** %struct_getter62, align 8
  %xor365 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter63, i128 0, i128 %k.1
  store i128 %rota55, i128* %xor365, align 4
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 3
  %rotr.out.read_output_outter68 = load [4096 x i128]*, [4096 x i128]** %struct_getter67, align 8
  %array_getter70 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter68, i128 0, i128 %k.1
  %rotb71 = load i128, i128* %array_getter70, align 4
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter73, align 8
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k.1
  %xor376 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor376, i128 %rotb71, i1* @constraint.40)
  %struct_getter78 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 2
  %xor3.b.read_input_outter79 = load [4096 x i128]*, [4096 x i128]** %struct_getter78, align 8
  %xor381 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter79, i128 0, i128 %k.1
  store i128 %rotb71, i128* %xor381, align 4
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 3
  %shr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %array_getter85 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.out.read_output_outter, i128 0, i128 %k.1
  %shrc86 = load i128, i128* %array_getter85, align 4
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter88, align 8
  %array_getter90 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k.1
  %xor391 = load i128, i128* %array_getter90, align 4
  call void @fn_intrinsic_utils_constraint(i128 %xor391, i128 %shrc86, i1* @constraint.41)
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 3
  %xor3.c.read_input_outter94 = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %xor396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter94, i128 0, i128 %k.1
  store i128 %shrc86, i128* %xor396, align 4
  br label %loop.latch97

loop.latch97:                                     ; preds = %loop.body50
  %add99 = add i128 %k.1, 1
  %slt101 = icmp slt i128 %add99, 32
  br i1 %slt101, label %loop.body50, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch97
  br label %loop.body103

loop.body103:                                     ; preds = %loop.latch116, %loop.exit102
  %k.2 = phi i128 [ 0, %loop.exit102 ], [ %add118, %loop.latch116 ]
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter105, align 8
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k.2
  %xor3108 = load i128, i128* %array_getter107, align 4
  %out109 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %array_getter111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out109, i128 0, i128 %k.2
  %out112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out112, i128 %xor3108, i1* @constraint.42)
  %ptr_getter113 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %out115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter113, i128 0, i128 %k.2
  store i128 %xor3108, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body103
  %add118 = add i128 %k.2, 1
  %slt120 = icmp slt i128 %add118, 32
  br i1 %slt120, label %loop.body103, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch116
  br label %arraydim

arraydim:                                         ; preds = %loop.exit121
  %ptr_cast = bitcast [4096 x i128]** %smallsigma.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast122 = bitcast [4096 x i128]** %smallsigma.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out123 = load [4096 x i128]*, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %smallsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out123, [4096 x i128]** %smallsigma.out.write_output_inner, align 8
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

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter2, align 8
  %binsum.in.declare_input = alloca [4096 x [4096 x i128]]*, align 8
  store [4096 x [4096 x i128]]* %binsum.in.read_input_inner, [4096 x [4096 x i128]]** %binsum.in.declare_input, align 8
  %binsum.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %binsum.out.declare_output, align 8
  %k3 = call i128 @fn_intrinsic_utils_init()
  %lin4 = call i128 @fn_intrinsic_utils_init()
  %e25 = call i128 @fn_intrinsic_utils_init()
  %lout6 = call i128 @fn_intrinsic_utils_init()
  %nout7 = call i128 @fn_intrinsic_utils_init()
  %j8 = call i128 @fn_intrinsic_utils_init()
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %binsum.n.read_arg_inner)
  %sub = sub i128 %pow, 1
  %mul = mul i128 %sub, %binsum.ops.read_arg_inner
  %call = call i128 @nbits(i128 %mul)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  %e2.0 = phi i128 [ 1, %entry ], [ %add25, %loop.latch26 ]
  %lin.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch26 ]
  %k.0 = phi i128 [ 0, %entry ], [ %add28, %loop.latch26 ]
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add20, %loop.latch ]
  %in = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %binsum.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %in, i128 0, i128 %j.0, i128 %k.0
  %in16 = load i128, i128* %array_getter, align 4
  %mul18 = mul i128 %in16, %e2.0
  %add = add i128 %lin.1, %mul18
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %add20 = add i128 %j.0, 1
  %slt = icmp slt i128 %add20, %binsum.ops.read_arg_inner
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add25 = add i128 %e2.0, %e2.0
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %add28 = add i128 %k.0, 1
  %slt31 = icmp slt i128 %add28, %binsum.n.read_arg_inner
  br i1 %slt31, label %loop.body, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch26
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch59, %loop.exit32
  %e2.1 = phi i128 [ 1, %loop.exit32 ], [ %add58, %loop.latch59 ]
  %k.1 = phi i128 [ 0, %loop.exit32 ], [ %add61, %loop.latch59 ]
  %lout.0 = phi i128 [ 0, %loop.exit32 ], [ %add55, %loop.latch59 ]
  %rshift = lshr i128 %add, %k.1
  %and = and i128 %rshift, 1
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %out37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k.1
  store i128 %and, i128* %out37, align 4
  %out38 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out38, i128 0, i128 %k.1
  %out41 = load i128, i128* %array_getter40, align 4
  %out42 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out42, i128 0, i128 %k.1
  %out45 = load i128, i128* %array_getter44, align 4
  %sub46 = sub i128 %out45, 1
  %mul47 = mul i128 %out41, %sub46
  call void @fn_intrinsic_utils_constraint(i128 %mul47, i128 0, i1* @constraint.43)
  %out49 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out49, i128 0, i128 %k.1
  %out52 = load i128, i128* %array_getter51, align 4
  %mul54 = mul i128 %out52, %e2.1
  %add55 = add i128 %lout.0, %mul54
  %add58 = add i128 %e2.1, %e2.1
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body33
  %add61 = add i128 %k.1, 1
  %slt64 = icmp slt i128 %add61, %call
  br i1 %slt64, label %loop.body33, label %loop.exit65

loop.exit65:                                      ; preds = %loop.latch59
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %add55, i1* @constraint.44)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit65
  %ptr_cast = bitcast [4096 x [4096 x i128]]** %binsum.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %binsum.ops.read_arg_inner, i128 %binsum.n.read_arg_inner)
  %ptr_cast68 = bitcast [4096 x i128]** %binsum.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %call)
  br label %exit

exit:                                             ; preds = %arraydim
  %out69 = load [4096 x i128]*, [4096 x i128]** %binsum.out.declare_output, align 8
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [4096 x i128]* %out69, [4096 x i128]** %binsum.out.write_output_inner, align 8
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

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %forceequalifenabled.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %forceequalifenabled.in.read_input_inner, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %in = load [4096 x i128]*, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [4096 x i128]*, [4096 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter4 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in3, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.45)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %mul = mul i128 %sub10, %forceequalifenabled.enabled.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.46)
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %forceequalifenabled.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define i128 @bsigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 6)
  %call2 = call i128 @rrot(i128 %0, i128 11)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 25)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %bits2num_strict.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bits2num_strict.in.read_input_inner, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i.0
  %in4 = load i128, i128* %array_getter, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n9, i128 %in4, i1* @constraint.47)
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %b2n13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i.0
  store i128 %in4, i128* %b2n13, align 4
  %in14 = load [4096 x i128]*, [4096 x i128]** %bits2num_strict.in.declare_input, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in14, i128 0, i128 %i.0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.48)
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %aliasCheck27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i.0
  store i128 %in17, i128* %aliasCheck27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.49)
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %bits2num_strict.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
  %bits2num_strict.out.write_output_inner37 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num_strict.out.read_output_inner, i128* %bits2num_strict.out.write_output_inner37, align 4
  ret void
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
  %struct_template_circuit_bits2num_strict = alloca %struct_template_circuit_bits2num_strict, align 8
  ret %struct_template_circuit_bits2num_strict* %struct_template_circuit_bits2num_strict
}

define void @fn_template_init_sigmaplus(%struct_template_circuit_sigmaplus* %0) {
entry:
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
  %k4 = call i128 @fn_intrinsic_utils_init()
  %sigmaplus.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %call = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 17, i128 19, i128 10)
  %call5 = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 7, i128 18, i128 3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in2 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in2.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in2, i128 0, i128 %k.0
  %in27 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter, i128 0, i128 %k.0
  %sigma112 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigma112, i128 %in27, i1* @constraint.50)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter14 = load [4096 x i128]*, [4096 x i128]** %struct_getter13, align 8
  %sigma116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter14, i128 0, i128 %k.0
  store i128 %in27, i128* %sigma116, align 4
  %in15 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in15.declare_input, align 8
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in15, i128 0, i128 %k.0
  %in1519 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 3
  %smallsigma.in.read_input_outter22 = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter22, i128 0, i128 %k.0
  %sigma025 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigma025, i128 %in1519, i1* @constraint.51)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 3
  %smallsigma.in.read_input_outter28 = load [4096 x i128]*, [4096 x i128]** %struct_getter27, align 8
  %sigma030 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter28, i128 0, i128 %k.0
  store i128 %in1519, i128* %sigma030, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call33 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 4)
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch95, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add97, %loop.latch95 ]
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 4
  %smallsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter36, align 8
  %array_getter38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter, i128 0, i128 %k.1
  %sigma139 = load i128, i128* %array_getter38, align 4
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter41, align 8
  %array_getter43 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.1
  %sum44 = load i128, i128* %array_getter43, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum44, i128 %sigma139, i1* @constraint.52)
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter47 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter46, align 8
  %sum49 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter47, i128 0, i128 0, i128 %k.1
  store i128 %sigma139, i128* %sum49, align 4
  %in7 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in7.declare_input, align 8
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in7, i128 0, i128 %k.1
  %in752 = load i128, i128* %array_getter51, align 4
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter55 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter54, align 8
  %array_getter57 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter55, i128 0, i128 1, i128 %k.1
  %sum58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum58, i128 %in752, i1* @constraint.53)
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter61 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter60, align 8
  %sum63 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter61, i128 0, i128 1, i128 %k.1
  store i128 %in752, i128* %sum63, align 4
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 4
  %smallsigma.out.read_output_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %array_getter68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter66, i128 0, i128 %k.1
  %sigma069 = load i128, i128* %array_getter68, align 4
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %array_getter74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 2, i128 %k.1
  %sum75 = load i128, i128* %array_getter74, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum75, i128 %sigma069, i1* @constraint.54)
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter78 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter77, align 8
  %sum80 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter78, i128 0, i128 2, i128 %k.1
  store i128 %sigma069, i128* %sum80, align 4
  %in16 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.in16.declare_input, align 8
  %array_getter82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in16, i128 0, i128 %k.1
  %in1683 = load i128, i128* %array_getter82, align 4
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter86 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter85, align 8
  %array_getter88 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter86, i128 0, i128 3, i128 %k.1
  %sum89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum89, i128 %in1683, i1* @constraint.55)
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter92 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter91, align 8
  %sum94 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter92, i128 0, i128 3, i128 %k.1
  store i128 %in1683, i128* %sum94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body34
  %add97 = add i128 %k.1, 1
  %slt99 = icmp slt i128 %add97, 32
  br i1 %slt99, label %loop.body34, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch95
  br label %loop.body101

loop.body101:                                     ; preds = %loop.latch114, %loop.exit100
  %k.2 = phi i128 [ 0, %loop.exit100 ], [ %add116, %loop.latch114 ]
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter103, align 8
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.2
  %sum106 = load i128, i128* %array_getter105, align 4
  %out107 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out107, i128 0, i128 %k.2
  %out110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out110, i128 %sum106, i1* @constraint.56)
  %ptr_getter111 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %out113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter111, i128 0, i128 %k.2
  store i128 %sum106, i128* %out113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body101
  %add116 = add i128 %k.2, 1
  %slt118 = icmp slt i128 %add116, 32
  br i1 %slt118, label %loop.body101, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch114
  br label %arraydim

arraydim:                                         ; preds = %loop.exit119
  %ptr_cast = bitcast [4096 x i128]** %sigmaplus.in16.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast120 = bitcast [4096 x i128]** %sigmaplus.in7.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast120, i128 32)
  %ptr_cast121 = bitcast [4096 x i128]** %sigmaplus.in15.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 32)
  %ptr_cast122 = bitcast [4096 x i128]** %sigmaplus.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 32)
  %ptr_cast123 = bitcast [4096 x i128]** %sigmaplus.in2.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast123, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out124 = load [4096 x i128]*, [4096 x i128]** %sigmaplus.out.declare_output, align 8
  %sigmaplus.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 4
  store [4096 x i128]* %out124, [4096 x i128]** %sigmaplus.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus() {
entry:
  %struct_template_circuit_sigmaplus = alloca %struct_template_circuit_sigmaplus, align 8
  ret %struct_template_circuit_sigmaplus* %struct_template_circuit_sigmaplus
}

define void @fn_template_init_t2(%struct_template_circuit_t2* %0) {
entry:
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
  %k3 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 2, i128 13, i128 22)
  %call4 = call %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 32)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %a = load [4096 x i128]*, [4096 x i128]** %t2.a.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %a, i128 0, i128 %k.0
  %a6 = load i128, i128* %array_getter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter8, align 8
  %array_getter10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %k.0
  %bigsigma011 = load i128, i128* %array_getter10, align 4
  call void @fn_intrinsic_utils_constraint(i128 %bigsigma011, i128 %a6, i1* @constraint.57)
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter13 = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %bigsigma015 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter13, i128 0, i128 %k.0
  store i128 %a6, i128* %bigsigma015, align 4
  %a16 = load [4096 x i128]*, [4096 x i128]** %t2.a.declare_input, align 8
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %a16, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter, i128 0, i128 %k.0
  %maj24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %maj24, i128 %a19, i1* @constraint.58)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %maj29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter27, i128 0, i128 %k.0
  store i128 %a19, i128* %maj29, align 4
  %b = load [4096 x i128]*, [4096 x i128]** %t2.b.declare_input, align 8
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %b, i128 0, i128 %k.0
  %b32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter, i128 0, i128 %k.0
  %maj37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_utils_constraint(i128 %maj37, i128 %b32, i1* @constraint.59)
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter40 = load [4096 x i128]*, [4096 x i128]** %struct_getter39, align 8
  %maj42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter40, i128 0, i128 %k.0
  store i128 %b32, i128* %maj42, align 4
  %c = load [4096 x i128]*, [4096 x i128]** %t2.c.declare_input, align 8
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %c, i128 0, i128 %k.0
  %c45 = load i128, i128* %array_getter44, align 4
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 3
  %maj_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter47, align 8
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter, i128 0, i128 %k.0
  %maj50 = load i128, i128* %array_getter49, align 4
  call void @fn_intrinsic_utils_constraint(i128 %maj50, i128 %c45, i1* @constraint.60)
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 3
  %maj_t.c.read_input_outter53 = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %maj55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter53, i128 0, i128 %k.0
  store i128 %c45, i128* %maj55, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call58 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch91, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add93, %loop.latch91 ]
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter61, align 8
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %k.1
  %bigsigma064 = load i128, i128* %array_getter63, align 4
  %struct_getter66 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter66, align 8
  %array_getter68 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.1
  %sum69 = load i128, i128* %array_getter68, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum69, i128 %bigsigma064, i1* @constraint.61)
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %sum74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 0, i128 %k.1
  store i128 %bigsigma064, i128* %sum74, align 4
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 5
  %maj_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %array_getter78 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.out.read_output_outter, i128 0, i128 %k.1
  %maj79 = load i128, i128* %array_getter78, align 4
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter82 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter81, align 8
  %array_getter84 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter82, i128 0, i128 1, i128 %k.1
  %sum85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum85, i128 %maj79, i1* @constraint.62)
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter88 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter87, align 8
  %sum90 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter88, i128 0, i128 1, i128 %k.1
  store i128 %maj79, i128* %sum90, align 4
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body59
  %add93 = add i128 %k.1, 1
  %slt95 = icmp slt i128 %add93, 32
  br i1 %slt95, label %loop.body59, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch110, %loop.exit96
  %k.2 = phi i128 [ 0, %loop.exit96 ], [ %add112, %loop.latch110 ]
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.2
  %sum102 = load i128, i128* %array_getter101, align 4
  %out103 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out103, i128 0, i128 %k.2
  %out106 = load i128, i128* %array_getter105, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out106, i128 %sum102, i1* @constraint.63)
  %ptr_getter107 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %out109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter107, i128 0, i128 %k.2
  store i128 %sum102, i128* %out109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body97
  %add112 = add i128 %k.2, 1
  %slt114 = icmp slt i128 %add112, 32
  br i1 %slt114, label %loop.body97, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  br label %arraydim

arraydim:                                         ; preds = %loop.exit115
  %ptr_cast = bitcast [4096 x i128]** %t2.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast116 = bitcast [4096 x i128]** %t2.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast116, i128 32)
  %ptr_cast117 = bitcast [4096 x i128]** %t2.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast117, i128 32)
  %ptr_cast118 = bitcast [4096 x i128]** %t2.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast118, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out119 = load [4096 x i128]*, [4096 x i128]** %t2.out.declare_output, align 8
  %t2.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 3
  store [4096 x i128]* %out119, [4096 x i128]** %t2.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t2* @fn_template_build_t2() {
entry:
  %struct_template_circuit_t2 = alloca %struct_template_circuit_t2, align 8
  ret %struct_template_circuit_t2* %struct_template_circuit_t2
}

define void @fn_template_init_t1(%struct_template_circuit_t1* %0) {
entry:
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
  %t1.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %t1.out.declare_output, align 8
  %ki6 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 32)
  %call7 = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 6, i128 11, i128 25)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ki.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e = load [4096 x i128]*, [4096 x i128]** %t1.e.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %e, i128 0, i128 %ki.0
  %e9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %ki.0
  %bigsigma114 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %bigsigma114, i128 %e9, i1* @constraint.64)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %bigsigma118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter16, i128 0, i128 %ki.0
  store i128 %e9, i128* %bigsigma118, align 4
  %e19 = load [4096 x i128]*, [4096 x i128]** %t1.e.declare_input, align 8
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %e19, i128 0, i128 %ki.0
  %e22 = load i128, i128* %array_getter21, align 4
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter, i128 0, i128 %ki.0
  %ch27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ch27, i128 %e22, i1* @constraint.65)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %ch32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter30, i128 0, i128 %ki.0
  store i128 %e22, i128* %ch32, align 4
  %f = load [4096 x i128]*, [4096 x i128]** %t1.f.declare_input, align 8
  %array_getter34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %f, i128 0, i128 %ki.0
  %f35 = load i128, i128* %array_getter34, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter37, align 8
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter, i128 0, i128 %ki.0
  %ch40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ch40, i128 %f35, i1* @constraint.66)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %ch45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter43, i128 0, i128 %ki.0
  store i128 %f35, i128* %ch45, align 4
  %g = load [4096 x i128]*, [4096 x i128]** %t1.g.declare_input, align 8
  %array_getter47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %g, i128 0, i128 %ki.0
  %g48 = load i128, i128* %array_getter47, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 3
  %ch_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter, i128 0, i128 %ki.0
  %ch53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ch53, i128 %g48, i1* @constraint.67)
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 3
  %ch_t.c.read_input_outter56 = load [4096 x i128]*, [4096 x i128]** %struct_getter55, align 8
  %ch58 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter56, i128 0, i128 %ki.0
  store i128 %g48, i128* %ch58, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %ki.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call61 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 5)
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch136, %loop.exit
  %ki.1 = phi i128 [ 0, %loop.exit ], [ %add138, %loop.latch136 ]
  %h = load [4096 x i128]*, [4096 x i128]** %t1.h.declare_input, align 8
  %array_getter64 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h, i128 0, i128 %ki.1
  %h65 = load i128, i128* %array_getter64, align 4
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter67, align 8
  %array_getter69 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %ki.1
  %sum70 = load i128, i128* %array_getter69, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum70, i128 %h65, i1* @constraint.68)
  %struct_getter72 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter73 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter72, align 8
  %sum75 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter73, i128 0, i128 0, i128 %ki.1
  store i128 %h65, i128* %sum75, align 4
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter77, align 8
  %array_getter79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %ki.1
  %bigsigma180 = load i128, i128* %array_getter79, align 4
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter83 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter82, align 8
  %array_getter85 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter83, i128 0, i128 1, i128 %ki.1
  %sum86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum86, i128 %bigsigma180, i1* @constraint.69)
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter89 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter88, align 8
  %sum91 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter89, i128 0, i128 1, i128 %ki.1
  store i128 %bigsigma180, i128* %sum91, align 4
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 4
  %ch_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.out.read_output_outter, i128 0, i128 %ki.1
  %ch96 = load i128, i128* %array_getter95, align 4
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter99 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter98, align 8
  %array_getter101 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter99, i128 0, i128 2, i128 %ki.1
  %sum102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum102, i128 %ch96, i1* @constraint.70)
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter105 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter104, align 8
  %sum107 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter105, i128 0, i128 2, i128 %ki.1
  store i128 %ch96, i128* %sum107, align 4
  %k = load [4096 x i128]*, [4096 x i128]** %t1.k.declare_input, align 8
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k, i128 0, i128 %ki.1
  %k110 = load i128, i128* %array_getter109, align 4
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter113 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter112, align 8
  %array_getter115 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter113, i128 0, i128 3, i128 %ki.1
  %sum116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum116, i128 %k110, i1* @constraint.71)
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter119 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter118, align 8
  %sum121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter119, i128 0, i128 3, i128 %ki.1
  store i128 %k110, i128* %sum121, align 4
  %w = load [4096 x i128]*, [4096 x i128]** %t1.w.declare_input, align 8
  %array_getter123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %w, i128 0, i128 %ki.1
  %w124 = load i128, i128* %array_getter123, align 4
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter127 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter126, align 8
  %array_getter129 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter127, i128 0, i128 4, i128 %ki.1
  %sum130 = load i128, i128* %array_getter129, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum130, i128 %w124, i1* @constraint.72)
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter133 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter132, align 8
  %sum135 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter133, i128 0, i128 4, i128 %ki.1
  store i128 %w124, i128* %sum135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body62
  %add138 = add i128 %ki.1, 1
  %slt140 = icmp slt i128 %add138, 32
  br i1 %slt140, label %loop.body62, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch136
  br label %loop.body142

loop.body142:                                     ; preds = %loop.latch155, %loop.exit141
  %ki.2 = phi i128 [ 0, %loop.exit141 ], [ %add157, %loop.latch155 ]
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter144, align 8
  %array_getter146 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %ki.2
  %sum147 = load i128, i128* %array_getter146, align 4
  %out148 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %array_getter150 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out148, i128 0, i128 %ki.2
  %out151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out151, i128 %sum147, i1* @constraint.73)
  %ptr_getter152 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %out154 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter152, i128 0, i128 %ki.2
  store i128 %sum147, i128* %out154, align 4
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.body142
  %add157 = add i128 %ki.2, 1
  %slt159 = icmp slt i128 %add157, 32
  br i1 %slt159, label %loop.body142, label %loop.exit160

loop.exit160:                                     ; preds = %loop.latch155
  br label %arraydim

arraydim:                                         ; preds = %loop.exit160
  %ptr_cast = bitcast [4096 x i128]** %t1.e.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast161 = bitcast [4096 x i128]** %t1.g.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast161, i128 32)
  %ptr_cast162 = bitcast [4096 x i128]** %t1.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast162, i128 32)
  %ptr_cast163 = bitcast [4096 x i128]** %t1.k.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast163, i128 32)
  %ptr_cast164 = bitcast [4096 x i128]** %t1.f.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast164, i128 32)
  %ptr_cast165 = bitcast [4096 x i128]** %t1.h.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast165, i128 32)
  %ptr_cast166 = bitcast [4096 x i128]** %t1.w.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast166, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out167 = load [4096 x i128]*, [4096 x i128]** %t1.out.declare_output, align 8
  %t1.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 6
  store [4096 x i128]* %out167, [4096 x i128]** %t1.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t1* @fn_template_build_t1() {
entry:
  %struct_template_circuit_t1 = alloca %struct_template_circuit_t1, align 8
  ret %struct_template_circuit_t1* %struct_template_circuit_t1
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %i1 = call i128 @fn_intrinsic_utils_init()
  %num2bits_strict.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.74)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b8 = load i128, i128* %array_getter, align 4
  %out9 = load [4096 x i128]*, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out9, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out12, i128 %n2b8, i1* @constraint.75)
  %ptr_getter13 = load [4096 x i128]*, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %out15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter13, i128 0, i128 %i.0
  store i128 %n2b8, i128* %out15, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [4096 x i128]*, [4096 x i128]** %struct_getter17, align 8
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i.0
  %n2b21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.76)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [4096 x i128]*, [4096 x i128]** %struct_getter28, align 8
  %aliasCheck31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i.0
  store i128 %n2b21, i128* %aliasCheck31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [4096 x i128]** %num2bits_strict.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
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

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %lessthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %lessthan.in.read_input_inner, [4096 x i128]** %lessthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %lessthan.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %lessthan.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %in = load [4096 x i128]*, [4096 x i128]** %lessthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 0
  %in3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %lessthan.n.read_arg_inner
  %add5 = add i128 %in3, %lshift
  %in6 = load [4096 x i128]*, [4096 x i128]** %lessthan.in.declare_input, align 8
  %array_getter7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in6, i128 0, i128 1
  %in8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %add5, %in8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.77)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %array_getter14 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b15 = load i128, i128* %array_getter14, align 4
  %sub16 = sub i128 1, %n2b15
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub16, i1* @constraint.78)
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %sub16, i128* %lessthan.out.write_output_inner, align 4
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter20, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %lessthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %lessthan.out.write_output_inner22 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_inner, i128* %lessthan.out.write_output_inner22, align 4
  ret void
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
  %struct_template_circuit_lessthan = alloca %struct_template_circuit_lessthan, align 8
  %lessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %struct_template_circuit_lessthan, i32 0, i32 0
  store i128 %0, i128* %lessthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lessthan* %struct_template_circuit_lessthan
}

define [4096 x i128]* @sha256compression([4096 x i128]* %0, [4096 x i128]* %1) {
entry:
  %T21 = call i128 @fn_intrinsic_utils_init()
  %d2 = call i128 @fn_intrinsic_utils_init()
  %b3 = call i128 @fn_intrinsic_utils_init()
  %f5 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
  %h7 = call i128 @fn_intrinsic_utils_init()
  %T19 = call i128 @fn_intrinsic_utils_init()
  %a10 = call i128 @fn_intrinsic_utils_init()
  %e11 = call i128 @fn_intrinsic_utils_init()
  %g13 = call i128 @fn_intrinsic_utils_init()
  %c14 = call i128 @fn_intrinsic_utils_init()
  %j15 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [4096 x i128], align 8
  %uniform_array16 = alloca [4096 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch35, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add37, %loop.latch35 ]
  %H18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %H18, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add33, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  %H22 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %i.0, 32
  %add = add i128 %mul, %j.0
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %0, i128 0, i128 %add
  %hin26 = load i128, i128* %array_getter25, align 4
  %lshift = shl i128 %hin26, %j.0
  %add28 = add i128 %H22, %lshift
  %H31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add28, i128* %H31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body19
  %add33 = add i128 %j.0, 1
  %slt = icmp slt i128 %add33, 32
  br i1 %slt, label %loop.body19, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.exit
  %add37 = add i128 %i.0, 1
  %slt39 = icmp slt i128 %add37, 8
  br i1 %slt39, label %loop.body, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  %H43 = load i128, i128* %array_getter42, align 4
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  %H46 = load i128, i128* %array_getter45, align 4
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  %H49 = load i128, i128* %array_getter48, align 4
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  %H52 = load i128, i128* %array_getter51, align 4
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  %H55 = load i128, i128* %array_getter54, align 4
  %array_getter57 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  %H58 = load i128, i128* %array_getter57, align 4
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  %H61 = load i128, i128* %array_getter60, align 4
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  %H64 = load i128, i128* %array_getter63, align 4
  %uniform_array65 = alloca [4096 x i128], align 8
  br label %loop.body66

loop.body66:                                      ; preds = %loop.latch162, %loop.exit40
  %g.0 = phi i128 [ %H61, %loop.exit40 ], [ %f.0, %loop.latch162 ]
  %e.0 = phi i128 [ %H55, %loop.exit40 ], [ %and154, %loop.latch162 ]
  %a.0 = phi i128 [ %H43, %loop.exit40 ], [ %and161, %loop.latch162 ]
  %h.0 = phi i128 [ %H64, %loop.exit40 ], [ %g.0, %loop.latch162 ]
  %i.1 = phi i128 [ 0, %loop.exit40 ], [ %add164, %loop.latch162 ]
  %f.0 = phi i128 [ %H58, %loop.exit40 ], [ %e.0, %loop.latch162 ]
  %b.0 = phi i128 [ %H46, %loop.exit40 ], [ %a.0, %loop.latch162 ]
  %d.0 = phi i128 [ %H52, %loop.exit40 ], [ %c.0, %loop.latch162 ]
  %c.0 = phi i128 [ %H49, %loop.exit40 ], [ %b.0, %loop.latch162 ]
  %slt68 = icmp slt i128 %i.1, 16
  br i1 %slt68, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body66
  %w71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 0, i128* %w71, align 4
  br label %loop.body72

if.false:                                         ; preds = %loop.body66
  %sub97 = sub i128 %i.1, 2
  %array_getter98 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub97
  %w99 = load i128, i128* %array_getter98, align 4
  %call = call i128 @ssigma1(i128 %w99)
  %sub102 = sub i128 %i.1, 7
  %array_getter103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub102
  %w104 = load i128, i128* %array_getter103, align 4
  %add105 = add i128 %call, %w104
  %sub108 = sub i128 %i.1, 15
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub108
  %w110 = load i128, i128* %array_getter109, align 4
  %call111 = call i128 @ssigma0(i128 %w110)
  %add112 = add i128 %add105, %call111
  %sub115 = sub i128 %i.1, 16
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub115
  %w117 = load i128, i128* %array_getter116, align 4
  %add118 = add i128 %add112, %w117
  %and = and i128 %add118, 4294967295
  %w121 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 %and, i128* %w121, align 4
  br label %if.exit

loop.body72:                                      ; preds = %loop.latch89, %if.true
  %j.1 = phi i128 [ 0, %if.true ], [ %add91, %loop.latch89 ]
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  %w76 = load i128, i128* %array_getter75, align 4
  %mul78 = mul i128 %i.1, 32
  %add79 = add i128 %mul78, 31
  %sub = sub i128 %add79, %j.1
  %array_getter81 = getelementptr inbounds [4096 x i128], [4096 x i128]* %1, i128 0, i128 %sub
  %inp82 = load i128, i128* %array_getter81, align 4
  %lshift84 = shl i128 %inp82, %j.1
  %add85 = add i128 %w76, %lshift84
  %w88 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 %add85, i128* %w88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body72
  %add91 = add i128 %j.1, 1
  %slt93 = icmp slt i128 %add91, 32
  br i1 %slt93, label %loop.body72, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch89
  br label %if.exit

if.exit:                                          ; preds = %loop.exit94, %if.false
  %call124 = call i128 @bsigma1(i128 %e.0)
  %add125 = add i128 %h.0, %call124
  %call129 = call i128 @Ch(i128 %e.0, i128 %f.0, i128 %g.0)
  %add130 = add i128 %add125, %call129
  %call132 = call i128 @sha256K(i128 %i.1)
  %add133 = add i128 %add130, %call132
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  %w137 = load i128, i128* %array_getter136, align 4
  %add138 = add i128 %add133, %w137
  %and139 = and i128 %add138, 4294967295
  %call141 = call i128 @bsigma0(i128 %a.0)
  %call145 = call i128 @Maj(i128 %a.0, i128 %b.0, i128 %c.0)
  %add146 = add i128 %call141, %call145
  %and147 = and i128 %add146, 4294967295
  %add153 = add i128 %d.0, %and139
  %and154 = and i128 %add153, 4294967295
  %add160 = add i128 %and139, %and147
  %and161 = and i128 %add160, 4294967295
  br label %loop.latch162

loop.latch162:                                    ; preds = %if.exit
  %add164 = add i128 %i.1, 1
  %slt166 = icmp slt i128 %add164, 64
  br i1 %slt166, label %loop.body66, label %loop.exit167

loop.exit167:                                     ; preds = %loop.latch162
  %array_getter169 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  %H170 = load i128, i128* %array_getter169, align 4
  %add172 = add i128 %H170, %and161
  %H174 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  store i128 %add172, i128* %H174, align 4
  %array_getter176 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  %H177 = load i128, i128* %array_getter176, align 4
  %add179 = add i128 %H177, %a.0
  %H181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  store i128 %add179, i128* %H181, align 4
  %array_getter183 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  %H184 = load i128, i128* %array_getter183, align 4
  %add186 = add i128 %H184, %b.0
  %H188 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  store i128 %add186, i128* %H188, align 4
  %array_getter190 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  %H191 = load i128, i128* %array_getter190, align 4
  %add193 = add i128 %H191, %c.0
  %H195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  store i128 %add193, i128* %H195, align 4
  %array_getter197 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  %H198 = load i128, i128* %array_getter197, align 4
  %add200 = add i128 %H198, %and154
  %H202 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  store i128 %add200, i128* %H202, align 4
  %array_getter204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  %H205 = load i128, i128* %array_getter204, align 4
  %add207 = add i128 %H205, %e.0
  %H209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  store i128 %add207, i128* %H209, align 4
  %array_getter211 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  %H212 = load i128, i128* %array_getter211, align 4
  %add214 = add i128 %H212, %f.0
  %H216 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  store i128 %add214, i128* %H216, align 4
  %array_getter218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  %H219 = load i128, i128* %array_getter218, align 4
  %add221 = add i128 %H219, %g.0
  %H223 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  store i128 %add221, i128* %H223, align 4
  br label %loop.body224

loop.body224:                                     ; preds = %loop.latch245, %loop.exit167
  %i.2 = phi i128 [ 0, %loop.exit167 ], [ %add247, %loop.latch245 ]
  br label %loop.body225

loop.body225:                                     ; preds = %loop.latch239, %loop.body224
  %j.2 = phi i128 [ 0, %loop.body224 ], [ %add241, %loop.latch239 ]
  %array_getter228 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.2
  %H229 = load i128, i128* %array_getter228, align 4
  %rshift = lshr i128 %H229, %j.2
  %and231 = and i128 %rshift, 1
  %mul234 = mul i128 %i.2, 32
  %add235 = add i128 %mul234, 31
  %sub237 = sub i128 %add235, %j.2
  %out238 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array16, i128 0, i128 %sub237
  store i128 %and231, i128* %out238, align 4
  br label %loop.latch239

loop.latch239:                                    ; preds = %loop.body225
  %add241 = add i128 %j.2, 1
  %slt243 = icmp slt i128 %add241, 32
  br i1 %slt243, label %loop.body225, label %loop.exit244

loop.exit244:                                     ; preds = %loop.latch239
  br label %loop.latch245

loop.latch245:                                    ; preds = %loop.exit244
  %add247 = add i128 %i.2, 1
  %slt249 = icmp slt i128 %add247, 8
  br i1 %slt249, label %loop.body224, label %loop.exit250

loop.exit250:                                     ; preds = %loop.latch245
  ret [4096 x i128]* %uniform_array16
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %greaterthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %greaterthan.in.read_input_inner, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greaterthan.n.read_arg_inner)
  %in = load [4096 x i128]*, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.79)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %in12, i1* @constraint.80)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.81)
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %greaterthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %greaterthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %greaterthan.out.read_output_inner, i128* %greaterthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greaterthan* @fn_template_build_greaterthan(i128 %0) {
entry:
  %struct_template_circuit_greaterthan = alloca %struct_template_circuit_greaterthan, align 8
  %greaterthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan, i32 0, i32 0
  store i128 %0, i128* %greaterthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan
}

define void @fn_template_init_sha256compression(%struct_template_circuit_sha256compression* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 0
  %sha256compression.hin.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %sha256compression.hin.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256compression.hin.read_input_inner, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 1
  %sha256compression.inp.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256compression.inp.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256compression.inp.read_input_inner, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %sha256compression.g.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %g = bitcast i8* %malloccall to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %g, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %t2 = call i128 @fn_intrinsic_utils_init()
  %sha256compression.w.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %w = bitcast i8* %malloccall3 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %w, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sha256compression.a.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %a = bitcast i8* %malloccall4 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %a, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %sha256compression.f.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %f = bitcast i8* %malloccall5 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %f, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %outCalc = alloca [4096 x i128]*, align 8
  %outCalc6 = alloca [4096 x i128], align 8
  store [4096 x i128]* %outCalc6, [4096 x i128]** %outCalc, align 8
  %ct_k = alloca [4096 x %struct_template_circuit_k*]*, align 8
  %ct_k7 = alloca [4096 x %struct_template_circuit_k*], align 8
  store [4096 x %struct_template_circuit_k*]* %ct_k7, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %sha256compression.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall8 to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sha256compression.e.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %e = bitcast i8* %malloccall9 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %e, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %sha256compression.d.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %d = bitcast i8* %malloccall10 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %d, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %i11 = call i128 @fn_intrinsic_utils_init()
  %t212 = alloca [4096 x %struct_template_circuit_t2*]*, align 8
  %t213 = alloca [4096 x %struct_template_circuit_t2*], align 8
  store [4096 x %struct_template_circuit_t2*]* %t213, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %t1 = alloca [4096 x %struct_template_circuit_t1*]*, align 8
  %t114 = alloca [4096 x %struct_template_circuit_t1*], align 8
  store [4096 x %struct_template_circuit_t1*]* %t114, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %sha256compression.b.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %b = bitcast i8* %malloccall15 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %b, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sigmaPlus = alloca [4096 x %struct_template_circuit_sigmaplus*]*, align 8
  %sigmaPlus16 = alloca [4096 x %struct_template_circuit_sigmaplus*], align 8
  store [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus16, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %suma = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %suma17 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %suma17, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %sume = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %sume18 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %sume18, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %fsum = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %fsum19 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %fsum19, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %k20 = call i128 @fn_intrinsic_utils_init()
  %sha256compression.h.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %h = bitcast i8* %malloccall21 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %h, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %sha256compression.c.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %c = bitcast i8* %malloccall22 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %c, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %hin = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %inp = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %call = call [4096 x i128]* @sha256compression([4096 x i128]* %hin, [4096 x i128]* %inp)
  store [4096 x i128]* %call, [4096 x i128]** %outCalc, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %outCalc23 = load [4096 x i128]*, [4096 x i128]** %outCalc, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %outCalc23, i128 0, i128 %i.0
  %outCalc25 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %out27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %outCalc25, i128* %out27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 256
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch35, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add37, %loop.latch35 ]
  %call31 = call %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus()
  %ptr_getter32 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sigmaPlus34 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter32, i128 0, i128 %i.1
  store %struct_template_circuit_sigmaplus* %call31, %struct_template_circuit_sigmaplus** %sigmaPlus34, align 8
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body30
  %add37 = add i128 %i.1, 1
  %slt39 = icmp slt i128 %add37, 48
  br i1 %slt39, label %loop.body30, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch47, %loop.exit40
  %i.2 = phi i128 [ 0, %loop.exit40 ], [ %add49, %loop.latch47 ]
  %call43 = call %struct_template_circuit_k* @fn_template_build_k(i128 %i.2)
  %ptr_getter44 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %ct_k46 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ptr_getter44, i128 0, i128 %i.2
  store %struct_template_circuit_k* %call43, %struct_template_circuit_k** %ct_k46, align 8
  br label %loop.latch47

loop.latch47:                                     ; preds = %loop.body41
  %add49 = add i128 %i.2, 1
  %slt51 = icmp slt i128 %add49, 64
  br i1 %slt51, label %loop.body41, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch47
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch58, %loop.exit52
  %i.3 = phi i128 [ 0, %loop.exit52 ], [ %add60, %loop.latch58 ]
  %call54 = call %struct_template_circuit_t1* @fn_template_build_t1()
  %ptr_getter55 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t157 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter55, i128 0, i128 %i.3
  store %struct_template_circuit_t1* %call54, %struct_template_circuit_t1** %t157, align 8
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body53
  %add60 = add i128 %i.3, 1
  %slt62 = icmp slt i128 %add60, 64
  br i1 %slt62, label %loop.body53, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch58
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch69, %loop.exit63
  %i.4 = phi i128 [ 0, %loop.exit63 ], [ %add71, %loop.latch69 ]
  %call65 = call %struct_template_circuit_t2* @fn_template_build_t2()
  %ptr_getter66 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %t268 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter66, i128 0, i128 %i.4
  store %struct_template_circuit_t2* %call65, %struct_template_circuit_t2** %t268, align 8
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.body64
  %add71 = add i128 %i.4, 1
  %slt73 = icmp slt i128 %add71, 64
  br i1 %slt73, label %loop.body64, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch69
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch80, %loop.exit74
  %i.5 = phi i128 [ 0, %loop.exit74 ], [ %add82, %loop.latch80 ]
  %call76 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter77 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %suma79 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter77, i128 0, i128 %i.5
  store %struct_template_circuit_binsum* %call76, %struct_template_circuit_binsum** %suma79, align 8
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.body75
  %add82 = add i128 %i.5, 1
  %slt84 = icmp slt i128 %add82, 64
  br i1 %slt84, label %loop.body75, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch80
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch91, %loop.exit85
  %i.6 = phi i128 [ 0, %loop.exit85 ], [ %add93, %loop.latch91 ]
  %call87 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter88 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %sume90 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter88, i128 0, i128 %i.6
  store %struct_template_circuit_binsum* %call87, %struct_template_circuit_binsum** %sume90, align 8
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body86
  %add93 = add i128 %i.6, 1
  %slt95 = icmp slt i128 %add93, 64
  br i1 %slt95, label %loop.body86, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch102, %loop.exit96
  %i.7 = phi i128 [ 0, %loop.exit96 ], [ %add104, %loop.latch102 ]
  %call98 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter99 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %fsum101 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter99, i128 0, i128 %i.7
  store %struct_template_circuit_binsum* %call98, %struct_template_circuit_binsum** %fsum101, align 8
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body97
  %add104 = add i128 %i.7, 1
  %slt106 = icmp slt i128 %add104, 8
  br i1 %slt106, label %loop.body97, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch102
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch262, %loop.exit107
  %t.0 = phi i128 [ 0, %loop.exit107 ], [ %add264, %loop.latch262 ]
  %slt110 = icmp slt i128 %t.0, 16
  br i1 %slt110, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body108
  br label %loop.body111

if.false:                                         ; preds = %loop.body108
  br label %loop.body133

loop.body111:                                     ; preds = %loop.latch127, %if.true
  %k.0 = phi i128 [ 0, %if.true ], [ %add129, %loop.latch127 ]
  %inp112 = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %mul = mul i128 %t.0, 32
  %add114 = add i128 %mul, 31
  %sub = sub i128 %add114, %k.0
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %inp112, i128 0, i128 %sub
  %inp117 = load i128, i128* %array_getter116, align 4
  %w118 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w118, i128 0, i128 %t.0, i128 %k.0
  %w122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_utils_constraint(i128 %w122, i128 %inp117, i1* @constraint.82)
  %ptr_getter123 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %w126 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter123, i128 0, i128 %t.0, i128 %k.0
  store i128 %inp117, i128* %w126, align 4
  br label %loop.latch127

loop.latch127:                                    ; preds = %loop.body111
  %add129 = add i128 %k.0, 1
  %slt131 = icmp slt i128 %add129, 32
  br i1 %slt131, label %loop.body111, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch127
  br label %if.exit

loop.body133:                                     ; preds = %loop.latch231, %if.false
  %k.1 = phi i128 [ 0, %if.false ], [ %add233, %loop.latch231 ]
  %w134 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub136 = sub i128 %t.0, 2
  %array_getter138 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w134, i128 0, i128 %sub136, i128 %k.1
  %w139 = load i128, i128* %array_getter138, align 4
  %sigmaPlus140 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub142 = sub i128 %t.0, 16
  %array_getter143 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus140, i128 0, i128 %sub142
  %sigmaPlus144 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter143, align 8
  %struct_getter145 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus144, i32 0, i32 0
  %sigmaplus.in2.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter145, align 8
  %array_getter147 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus148, i128 %w139, i1* @constraint.83)
  %ptr_getter149 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub151 = sub i128 %t.0, 16
  %array_getter152 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter149, i128 0, i128 %sub151
  %sigmaPlus153 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter152, align 8
  %struct_getter154 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus153, i32 0, i32 0
  %sigmaplus.in2.read_input_outter155 = load [4096 x i128]*, [4096 x i128]** %struct_getter154, align 8
  %sigmaPlus157 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter155, i128 0, i128 %k.1
  store i128 %w139, i128* %sigmaPlus157, align 4
  %w158 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub160 = sub i128 %t.0, 7
  %array_getter162 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w158, i128 0, i128 %sub160, i128 %k.1
  %w163 = load i128, i128* %array_getter162, align 4
  %sigmaPlus164 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub166 = sub i128 %t.0, 16
  %array_getter167 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus164, i128 0, i128 %sub166
  %sigmaPlus168 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter167, align 8
  %struct_getter169 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus168, i32 0, i32 1
  %sigmaplus.in7.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter169, align 8
  %array_getter171 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus172 = load i128, i128* %array_getter171, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus172, i128 %w163, i1* @constraint.84)
  %ptr_getter173 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub175 = sub i128 %t.0, 16
  %array_getter176 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter173, i128 0, i128 %sub175
  %sigmaPlus177 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter176, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus177, i32 0, i32 1
  %sigmaplus.in7.read_input_outter179 = load [4096 x i128]*, [4096 x i128]** %struct_getter178, align 8
  %sigmaPlus181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter179, i128 0, i128 %k.1
  store i128 %w163, i128* %sigmaPlus181, align 4
  %w182 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub184 = sub i128 %t.0, 15
  %array_getter186 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w182, i128 0, i128 %sub184, i128 %k.1
  %w187 = load i128, i128* %array_getter186, align 4
  %sigmaPlus188 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub190 = sub i128 %t.0, 16
  %array_getter191 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus188, i128 0, i128 %sub190
  %sigmaPlus192 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter191, align 8
  %struct_getter193 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus192, i32 0, i32 2
  %sigmaplus.in15.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter193, align 8
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus196, i128 %w187, i1* @constraint.85)
  %ptr_getter197 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub199 = sub i128 %t.0, 16
  %array_getter200 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter197, i128 0, i128 %sub199
  %sigmaPlus201 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter200, align 8
  %struct_getter202 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus201, i32 0, i32 2
  %sigmaplus.in15.read_input_outter203 = load [4096 x i128]*, [4096 x i128]** %struct_getter202, align 8
  %sigmaPlus205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter203, i128 0, i128 %k.1
  store i128 %w187, i128* %sigmaPlus205, align 4
  %w206 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub208 = sub i128 %t.0, 16
  %array_getter210 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w206, i128 0, i128 %sub208, i128 %k.1
  %w211 = load i128, i128* %array_getter210, align 4
  %sigmaPlus212 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub215 = sub i128 %t.0, 16
  %array_getter216 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus212, i128 0, i128 %sub215
  %sigmaPlus217 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter216, align 8
  %struct_getter218 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus217, i32 0, i32 3
  %sigmaplus.in16.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter218, align 8
  %array_getter220 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus221 = load i128, i128* %array_getter220, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus221, i128 %w211, i1* @constraint.86)
  %ptr_getter222 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub224 = sub i128 %t.0, 16
  %array_getter225 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter222, i128 0, i128 %sub224
  %sigmaPlus226 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter225, align 8
  %struct_getter227 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus226, i32 0, i32 3
  %sigmaplus.in16.read_input_outter228 = load [4096 x i128]*, [4096 x i128]** %struct_getter227, align 8
  %sigmaPlus230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter228, i128 0, i128 %k.1
  store i128 %w211, i128* %sigmaPlus230, align 4
  br label %loop.latch231

loop.latch231:                                    ; preds = %loop.body133
  %add233 = add i128 %k.1, 1
  %slt235 = icmp slt i128 %add233, 32
  br i1 %slt235, label %loop.body133, label %loop.exit236

loop.exit236:                                     ; preds = %loop.latch231
  br label %loop.body237

loop.body237:                                     ; preds = %loop.latch256, %loop.exit236
  %k.2 = phi i128 [ 0, %loop.exit236 ], [ %add258, %loop.latch256 ]
  %sigmaPlus238 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub240 = sub i128 %t.0, 16
  %array_getter241 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus238, i128 0, i128 %sub240
  %sigmaPlus242 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter241, align 8
  %struct_getter243 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus242, i32 0, i32 4
  %sigmaplus.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter243, align 8
  %array_getter245 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.out.read_output_outter, i128 0, i128 %k.2
  %sigmaPlus246 = load i128, i128* %array_getter245, align 4
  %w247 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter250 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w247, i128 0, i128 %t.0, i128 %k.2
  %w251 = load i128, i128* %array_getter250, align 4
  call void @fn_intrinsic_utils_constraint(i128 %w251, i128 %sigmaPlus246, i1* @constraint.87)
  %ptr_getter252 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %w255 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter252, i128 0, i128 %t.0, i128 %k.2
  store i128 %sigmaPlus246, i128* %w255, align 4
  br label %loop.latch256

loop.latch256:                                    ; preds = %loop.body237
  %add258 = add i128 %k.2, 1
  %slt260 = icmp slt i128 %add258, 32
  br i1 %slt260, label %loop.body237, label %loop.exit261

loop.exit261:                                     ; preds = %loop.latch256
  br label %if.exit

if.exit:                                          ; preds = %loop.exit261, %loop.exit132
  br label %loop.latch262

loop.latch262:                                    ; preds = %if.exit
  %add264 = add i128 %t.0, 1
  %slt266 = icmp slt i128 %add264, 64
  br i1 %slt266, label %loop.body108, label %loop.exit267

loop.exit267:                                     ; preds = %loop.latch262
  br label %loop.body268

loop.body268:                                     ; preds = %loop.latch364, %loop.exit267
  %k.3 = phi i128 [ 0, %loop.exit267 ], [ %add366, %loop.latch364 ]
  %hin269 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %array_getter271 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin269, i128 0, i128 %k.3
  %hin272 = load i128, i128* %array_getter271, align 4
  %a273 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter275 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a273, i128 0, i128 0, i128 %k.3
  %a276 = load i128, i128* %array_getter275, align 4
  call void @fn_intrinsic_utils_constraint(i128 %a276, i128 %hin272, i1* @constraint.88)
  %ptr_getter277 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %a279 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter277, i128 0, i128 0, i128 %k.3
  store i128 %hin272, i128* %a279, align 4
  %hin280 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add282 = add i128 32, %k.3
  %array_getter283 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin280, i128 0, i128 %add282
  %hin284 = load i128, i128* %array_getter283, align 4
  %b285 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter287 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b285, i128 0, i128 0, i128 %k.3
  %b288 = load i128, i128* %array_getter287, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b288, i128 %hin284, i1* @constraint.89)
  %ptr_getter289 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %b291 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter289, i128 0, i128 0, i128 %k.3
  store i128 %hin284, i128* %b291, align 4
  %hin292 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add294 = add i128 64, %k.3
  %array_getter295 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin292, i128 0, i128 %add294
  %hin296 = load i128, i128* %array_getter295, align 4
  %c297 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter299 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c297, i128 0, i128 0, i128 %k.3
  %c300 = load i128, i128* %array_getter299, align 4
  call void @fn_intrinsic_utils_constraint(i128 %c300, i128 %hin296, i1* @constraint.90)
  %ptr_getter301 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %c303 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter301, i128 0, i128 0, i128 %k.3
  store i128 %hin296, i128* %c303, align 4
  %hin304 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add306 = add i128 96, %k.3
  %array_getter307 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin304, i128 0, i128 %add306
  %hin308 = load i128, i128* %array_getter307, align 4
  %d309 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter311 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d309, i128 0, i128 0, i128 %k.3
  %d312 = load i128, i128* %array_getter311, align 4
  call void @fn_intrinsic_utils_constraint(i128 %d312, i128 %hin308, i1* @constraint.91)
  %ptr_getter313 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %d315 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter313, i128 0, i128 0, i128 %k.3
  store i128 %hin308, i128* %d315, align 4
  %hin316 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add318 = add i128 128, %k.3
  %array_getter319 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin316, i128 0, i128 %add318
  %hin320 = load i128, i128* %array_getter319, align 4
  %e321 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter323 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e321, i128 0, i128 0, i128 %k.3
  %e324 = load i128, i128* %array_getter323, align 4
  call void @fn_intrinsic_utils_constraint(i128 %e324, i128 %hin320, i1* @constraint.92)
  %ptr_getter325 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %e327 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter325, i128 0, i128 0, i128 %k.3
  store i128 %hin320, i128* %e327, align 4
  %hin328 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add330 = add i128 160, %k.3
  %array_getter331 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin328, i128 0, i128 %add330
  %hin332 = load i128, i128* %array_getter331, align 4
  %f333 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter335 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f333, i128 0, i128 0, i128 %k.3
  %f336 = load i128, i128* %array_getter335, align 4
  call void @fn_intrinsic_utils_constraint(i128 %f336, i128 %hin332, i1* @constraint.93)
  %ptr_getter337 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %f339 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter337, i128 0, i128 0, i128 %k.3
  store i128 %hin332, i128* %f339, align 4
  %hin340 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add342 = add i128 192, %k.3
  %array_getter343 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin340, i128 0, i128 %add342
  %hin344 = load i128, i128* %array_getter343, align 4
  %g345 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter347 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g345, i128 0, i128 0, i128 %k.3
  %g348 = load i128, i128* %array_getter347, align 4
  call void @fn_intrinsic_utils_constraint(i128 %g348, i128 %hin344, i1* @constraint.94)
  %ptr_getter349 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %g351 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter349, i128 0, i128 0, i128 %k.3
  store i128 %hin344, i128* %g351, align 4
  %hin352 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add354 = add i128 224, %k.3
  %array_getter355 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin352, i128 0, i128 %add354
  %hin356 = load i128, i128* %array_getter355, align 4
  %h357 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter359 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h357, i128 0, i128 0, i128 %k.3
  %h360 = load i128, i128* %array_getter359, align 4
  call void @fn_intrinsic_utils_constraint(i128 %h360, i128 %hin356, i1* @constraint.95)
  %ptr_getter361 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %h363 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter361, i128 0, i128 0, i128 %k.3
  store i128 %hin356, i128* %h363, align 4
  br label %loop.latch364

loop.latch364:                                    ; preds = %loop.body268
  %add366 = add i128 %k.3, 1
  %slt368 = icmp slt i128 %add366, 32
  br i1 %slt368, label %loop.body268, label %loop.exit369

loop.exit369:                                     ; preds = %loop.latch364
  br label %loop.body370

loop.body370:                                     ; preds = %loop.latch816, %loop.exit369
  %t.1 = phi i128 [ 0, %loop.exit369 ], [ %add818, %loop.latch816 ]
  br label %loop.body371

loop.body371:                                     ; preds = %loop.latch564, %loop.body370
  %k.4 = phi i128 [ 0, %loop.body370 ], [ %add566, %loop.latch564 ]
  %h372 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter375 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h372, i128 0, i128 %t.1, i128 %k.4
  %h376 = load i128, i128* %array_getter375, align 4
  %t1377 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter379 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1377, i128 0, i128 %t.1
  %t1380 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter379, align 8
  %struct_getter381 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1380, i32 0, i32 0
  %t1.h.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter381, align 8
  %array_getter383 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter, i128 0, i128 %k.4
  %t1384 = load i128, i128* %array_getter383, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1384, i128 %h376, i1* @constraint.96)
  %ptr_getter385 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter387 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter385, i128 0, i128 %t.1
  %t1388 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter387, align 8
  %struct_getter389 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1388, i32 0, i32 0
  %t1.h.read_input_outter390 = load [4096 x i128]*, [4096 x i128]** %struct_getter389, align 8
  %t1392 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter390, i128 0, i128 %k.4
  store i128 %h376, i128* %t1392, align 4
  %e393 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter396 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e393, i128 0, i128 %t.1, i128 %k.4
  %e397 = load i128, i128* %array_getter396, align 4
  %t1398 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter400 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1398, i128 0, i128 %t.1
  %t1401 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter400, align 8
  %struct_getter402 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1401, i32 0, i32 1
  %t1.e.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter402, align 8
  %array_getter404 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter, i128 0, i128 %k.4
  %t1405 = load i128, i128* %array_getter404, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1405, i128 %e397, i1* @constraint.97)
  %ptr_getter406 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter408 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter406, i128 0, i128 %t.1
  %t1409 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter408, align 8
  %struct_getter410 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1409, i32 0, i32 1
  %t1.e.read_input_outter411 = load [4096 x i128]*, [4096 x i128]** %struct_getter410, align 8
  %t1413 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter411, i128 0, i128 %k.4
  store i128 %e397, i128* %t1413, align 4
  %f414 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter417 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f414, i128 0, i128 %t.1, i128 %k.4
  %f418 = load i128, i128* %array_getter417, align 4
  %t1419 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter421 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1419, i128 0, i128 %t.1
  %t1422 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter421, align 8
  %struct_getter423 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1422, i32 0, i32 2
  %t1.f.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter423, align 8
  %array_getter425 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter, i128 0, i128 %k.4
  %t1426 = load i128, i128* %array_getter425, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1426, i128 %f418, i1* @constraint.98)
  %ptr_getter427 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter429 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter427, i128 0, i128 %t.1
  %t1430 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter429, align 8
  %struct_getter431 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1430, i32 0, i32 2
  %t1.f.read_input_outter432 = load [4096 x i128]*, [4096 x i128]** %struct_getter431, align 8
  %t1434 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter432, i128 0, i128 %k.4
  store i128 %f418, i128* %t1434, align 4
  %g435 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter438 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g435, i128 0, i128 %t.1, i128 %k.4
  %g439 = load i128, i128* %array_getter438, align 4
  %t1440 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter442 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1440, i128 0, i128 %t.1
  %t1443 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter442, align 8
  %struct_getter444 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1443, i32 0, i32 3
  %t1.g.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter444, align 8
  %array_getter446 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter, i128 0, i128 %k.4
  %t1447 = load i128, i128* %array_getter446, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1447, i128 %g439, i1* @constraint.99)
  %ptr_getter448 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter450 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter448, i128 0, i128 %t.1
  %t1451 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter450, align 8
  %struct_getter452 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1451, i32 0, i32 3
  %t1.g.read_input_outter453 = load [4096 x i128]*, [4096 x i128]** %struct_getter452, align 8
  %t1455 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter453, i128 0, i128 %k.4
  store i128 %g439, i128* %t1455, align 4
  %ct_k456 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %array_getter458 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k456, i128 0, i128 %t.1
  %ct_k459 = load %struct_template_circuit_k*, %struct_template_circuit_k** %array_getter458, align 8
  %struct_getter460 = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %ct_k459, i32 0, i32 1
  %k.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter460, align 8
  %array_getter462 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k.out.read_output_outter, i128 0, i128 %k.4
  %ct_k463 = load i128, i128* %array_getter462, align 4
  %t1464 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter466 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1464, i128 0, i128 %t.1
  %t1467 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter466, align 8
  %struct_getter468 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1467, i32 0, i32 4
  %t1.k.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter468, align 8
  %array_getter470 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter, i128 0, i128 %k.4
  %t1471 = load i128, i128* %array_getter470, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1471, i128 %ct_k463, i1* @constraint.100)
  %ptr_getter472 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter474 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter472, i128 0, i128 %t.1
  %t1475 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter474, align 8
  %struct_getter476 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1475, i32 0, i32 4
  %t1.k.read_input_outter477 = load [4096 x i128]*, [4096 x i128]** %struct_getter476, align 8
  %t1479 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter477, i128 0, i128 %k.4
  store i128 %ct_k463, i128* %t1479, align 4
  %w480 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter483 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w480, i128 0, i128 %t.1, i128 %k.4
  %w484 = load i128, i128* %array_getter483, align 4
  %t1485 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter487 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1485, i128 0, i128 %t.1
  %t1488 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter487, align 8
  %struct_getter489 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1488, i32 0, i32 5
  %t1.w.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter489, align 8
  %array_getter491 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter, i128 0, i128 %k.4
  %t1492 = load i128, i128* %array_getter491, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1492, i128 %w484, i1* @constraint.101)
  %ptr_getter493 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter495 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter493, i128 0, i128 %t.1
  %t1496 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter495, align 8
  %struct_getter497 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1496, i32 0, i32 5
  %t1.w.read_input_outter498 = load [4096 x i128]*, [4096 x i128]** %struct_getter497, align 8
  %t1500 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter498, i128 0, i128 %k.4
  store i128 %w484, i128* %t1500, align 4
  %a501 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter504 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a501, i128 0, i128 %t.1, i128 %k.4
  %a505 = load i128, i128* %array_getter504, align 4
  %t2506 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter508 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2506, i128 0, i128 %t.1
  %t2509 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter508, align 8
  %struct_getter510 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2509, i32 0, i32 0
  %t2.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter510, align 8
  %array_getter512 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter, i128 0, i128 %k.4
  %t2513 = load i128, i128* %array_getter512, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2513, i128 %a505, i1* @constraint.102)
  %ptr_getter514 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter516 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter514, i128 0, i128 %t.1
  %t2517 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter516, align 8
  %struct_getter518 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2517, i32 0, i32 0
  %t2.a.read_input_outter519 = load [4096 x i128]*, [4096 x i128]** %struct_getter518, align 8
  %t2521 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter519, i128 0, i128 %k.4
  store i128 %a505, i128* %t2521, align 4
  %b522 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter525 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b522, i128 0, i128 %t.1, i128 %k.4
  %b526 = load i128, i128* %array_getter525, align 4
  %t2527 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter529 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2527, i128 0, i128 %t.1
  %t2530 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter529, align 8
  %struct_getter531 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2530, i32 0, i32 1
  %t2.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter531, align 8
  %array_getter533 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter, i128 0, i128 %k.4
  %t2534 = load i128, i128* %array_getter533, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2534, i128 %b526, i1* @constraint.103)
  %ptr_getter535 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter537 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter535, i128 0, i128 %t.1
  %t2538 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter537, align 8
  %struct_getter539 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2538, i32 0, i32 1
  %t2.b.read_input_outter540 = load [4096 x i128]*, [4096 x i128]** %struct_getter539, align 8
  %t2542 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter540, i128 0, i128 %k.4
  store i128 %b526, i128* %t2542, align 4
  %c543 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter546 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c543, i128 0, i128 %t.1, i128 %k.4
  %c547 = load i128, i128* %array_getter546, align 4
  %t2548 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter550 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2548, i128 0, i128 %t.1
  %t2551 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter550, align 8
  %struct_getter552 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2551, i32 0, i32 2
  %t2.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter552, align 8
  %array_getter554 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter, i128 0, i128 %k.4
  %t2555 = load i128, i128* %array_getter554, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2555, i128 %c547, i1* @constraint.104)
  %ptr_getter556 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter558 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter556, i128 0, i128 %t.1
  %t2559 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter558, align 8
  %struct_getter560 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2559, i32 0, i32 2
  %t2.c.read_input_outter561 = load [4096 x i128]*, [4096 x i128]** %struct_getter560, align 8
  %t2563 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter561, i128 0, i128 %k.4
  store i128 %c547, i128* %t2563, align 4
  br label %loop.latch564

loop.latch564:                                    ; preds = %loop.body371
  %add566 = add i128 %k.4, 1
  %slt568 = icmp slt i128 %add566, 32
  br i1 %slt568, label %loop.body371, label %loop.exit569

loop.exit569:                                     ; preds = %loop.latch564
  br label %loop.body570

loop.body570:                                     ; preds = %loop.latch668, %loop.exit569
  %k.5 = phi i128 [ 0, %loop.exit569 ], [ %add670, %loop.latch668 ]
  %d571 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter574 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d571, i128 0, i128 %t.1, i128 %k.5
  %d575 = load i128, i128* %array_getter574, align 4
  %sume576 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter578 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume576, i128 0, i128 %t.1
  %sume579 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter578, align 8
  %struct_getter580 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume579, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter580, align 8
  %array_getter582 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.5
  %sume583 = load i128, i128* %array_getter582, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sume583, i128 %d575, i1* @constraint.105)
  %ptr_getter584 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter586 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter584, i128 0, i128 %t.1
  %sume587 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter586, align 8
  %struct_getter588 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume587, i32 0, i32 2
  %binsum.in.read_input_outter589 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter588, align 8
  %sume591 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter589, i128 0, i128 0, i128 %k.5
  store i128 %d575, i128* %sume591, align 4
  %t1592 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter594 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1592, i128 0, i128 %t.1
  %t1595 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter594, align 8
  %struct_getter596 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1595, i32 0, i32 6
  %t1.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter596, align 8
  %array_getter598 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter, i128 0, i128 %k.5
  %t1599 = load i128, i128* %array_getter598, align 4
  %sume600 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter602 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume600, i128 0, i128 %t.1
  %sume603 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter602, align 8
  %struct_getter604 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume603, i32 0, i32 2
  %binsum.in.read_input_outter605 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter604, align 8
  %array_getter607 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter605, i128 0, i128 1, i128 %k.5
  %sume608 = load i128, i128* %array_getter607, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sume608, i128 %t1599, i1* @constraint.106)
  %ptr_getter609 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter611 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter609, i128 0, i128 %t.1
  %sume612 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter611, align 8
  %struct_getter613 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume612, i32 0, i32 2
  %binsum.in.read_input_outter614 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter613, align 8
  %sume616 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter614, i128 0, i128 1, i128 %k.5
  store i128 %t1599, i128* %sume616, align 4
  %t1617 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter619 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1617, i128 0, i128 %t.1
  %t1620 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter619, align 8
  %struct_getter621 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1620, i32 0, i32 6
  %t1.out.read_output_outter622 = load [4096 x i128]*, [4096 x i128]** %struct_getter621, align 8
  %array_getter624 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter622, i128 0, i128 %k.5
  %t1625 = load i128, i128* %array_getter624, align 4
  %suma626 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter628 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma626, i128 0, i128 %t.1
  %suma629 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter628, align 8
  %struct_getter630 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma629, i32 0, i32 2
  %binsum.in.read_input_outter631 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter630, align 8
  %array_getter633 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter631, i128 0, i128 0, i128 %k.5
  %suma634 = load i128, i128* %array_getter633, align 4
  call void @fn_intrinsic_utils_constraint(i128 %suma634, i128 %t1625, i1* @constraint.107)
  %ptr_getter635 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter637 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter635, i128 0, i128 %t.1
  %suma638 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter637, align 8
  %struct_getter639 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma638, i32 0, i32 2
  %binsum.in.read_input_outter640 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter639, align 8
  %suma642 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter640, i128 0, i128 0, i128 %k.5
  store i128 %t1625, i128* %suma642, align 4
  %t2643 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t212, align 8
  %array_getter645 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2643, i128 0, i128 %t.1
  %t2646 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter645, align 8
  %struct_getter647 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2646, i32 0, i32 3
  %t2.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter647, align 8
  %array_getter649 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.out.read_output_outter, i128 0, i128 %k.5
  %t2650 = load i128, i128* %array_getter649, align 4
  %suma651 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter653 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma651, i128 0, i128 %t.1
  %suma654 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter653, align 8
  %struct_getter655 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma654, i32 0, i32 2
  %binsum.in.read_input_outter656 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter655, align 8
  %array_getter658 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter656, i128 0, i128 1, i128 %k.5
  %suma659 = load i128, i128* %array_getter658, align 4
  call void @fn_intrinsic_utils_constraint(i128 %suma659, i128 %t2650, i1* @constraint.108)
  %ptr_getter660 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter662 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter660, i128 0, i128 %t.1
  %suma663 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter662, align 8
  %struct_getter664 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma663, i32 0, i32 2
  %binsum.in.read_input_outter665 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter664, align 8
  %suma667 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter665, i128 0, i128 1, i128 %k.5
  store i128 %t2650, i128* %suma667, align 4
  br label %loop.latch668

loop.latch668:                                    ; preds = %loop.body570
  %add670 = add i128 %k.5, 1
  %slt672 = icmp slt i128 %add670, 32
  br i1 %slt672, label %loop.body570, label %loop.exit673

loop.exit673:                                     ; preds = %loop.latch668
  br label %loop.body674

loop.body674:                                     ; preds = %loop.latch810, %loop.exit673
  %k.6 = phi i128 [ 0, %loop.exit673 ], [ %add812, %loop.latch810 ]
  %g675 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter678 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g675, i128 0, i128 %t.1, i128 %k.6
  %g679 = load i128, i128* %array_getter678, align 4
  %h680 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %add682 = add i128 %t.1, 1
  %array_getter684 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h680, i128 0, i128 %add682, i128 %k.6
  %h685 = load i128, i128* %array_getter684, align 4
  call void @fn_intrinsic_utils_constraint(i128 %h685, i128 %g679, i1* @constraint.109)
  %ptr_getter686 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %add688 = add i128 %t.1, 1
  %h690 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter686, i128 0, i128 %add688, i128 %k.6
  store i128 %g679, i128* %h690, align 4
  %f691 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter694 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f691, i128 0, i128 %t.1, i128 %k.6
  %f695 = load i128, i128* %array_getter694, align 4
  %g696 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %add698 = add i128 %t.1, 1
  %array_getter700 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g696, i128 0, i128 %add698, i128 %k.6
  %g701 = load i128, i128* %array_getter700, align 4
  call void @fn_intrinsic_utils_constraint(i128 %g701, i128 %f695, i1* @constraint.110)
  %ptr_getter702 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %add704 = add i128 %t.1, 1
  %g706 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter702, i128 0, i128 %add704, i128 %k.6
  store i128 %f695, i128* %g706, align 4
  %e707 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter710 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e707, i128 0, i128 %t.1, i128 %k.6
  %e711 = load i128, i128* %array_getter710, align 4
  %f712 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %add714 = add i128 %t.1, 1
  %array_getter716 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f712, i128 0, i128 %add714, i128 %k.6
  %f717 = load i128, i128* %array_getter716, align 4
  call void @fn_intrinsic_utils_constraint(i128 %f717, i128 %e711, i1* @constraint.111)
  %ptr_getter718 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %add720 = add i128 %t.1, 1
  %f722 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter718, i128 0, i128 %add720, i128 %k.6
  store i128 %e711, i128* %f722, align 4
  %sume723 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter725 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume723, i128 0, i128 %t.1
  %sume726 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter725, align 8
  %struct_getter727 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume726, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter727, align 8
  %array_getter729 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.6
  %sume730 = load i128, i128* %array_getter729, align 4
  %e731 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %add733 = add i128 %t.1, 1
  %array_getter735 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e731, i128 0, i128 %add733, i128 %k.6
  %e736 = load i128, i128* %array_getter735, align 4
  call void @fn_intrinsic_utils_constraint(i128 %e736, i128 %sume730, i1* @constraint.112)
  %ptr_getter737 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %add739 = add i128 %t.1, 1
  %e741 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter737, i128 0, i128 %add739, i128 %k.6
  store i128 %sume730, i128* %e741, align 4
  %c742 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter745 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c742, i128 0, i128 %t.1, i128 %k.6
  %c746 = load i128, i128* %array_getter745, align 4
  %d747 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %add749 = add i128 %t.1, 1
  %array_getter751 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d747, i128 0, i128 %add749, i128 %k.6
  %d752 = load i128, i128* %array_getter751, align 4
  call void @fn_intrinsic_utils_constraint(i128 %d752, i128 %c746, i1* @constraint.113)
  %ptr_getter753 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %add755 = add i128 %t.1, 1
  %d757 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter753, i128 0, i128 %add755, i128 %k.6
  store i128 %c746, i128* %d757, align 4
  %b758 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter761 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b758, i128 0, i128 %t.1, i128 %k.6
  %b762 = load i128, i128* %array_getter761, align 4
  %c763 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %add765 = add i128 %t.1, 1
  %array_getter767 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c763, i128 0, i128 %add765, i128 %k.6
  %c768 = load i128, i128* %array_getter767, align 4
  call void @fn_intrinsic_utils_constraint(i128 %c768, i128 %b762, i1* @constraint.114)
  %ptr_getter769 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %add771 = add i128 %t.1, 1
  %c773 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter769, i128 0, i128 %add771, i128 %k.6
  store i128 %b762, i128* %c773, align 4
  %a774 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter777 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a774, i128 0, i128 %t.1, i128 %k.6
  %a778 = load i128, i128* %array_getter777, align 4
  %b779 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %add781 = add i128 %t.1, 1
  %array_getter783 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b779, i128 0, i128 %add781, i128 %k.6
  %b784 = load i128, i128* %array_getter783, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b784, i128 %a778, i1* @constraint.115)
  %ptr_getter785 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %add787 = add i128 %t.1, 1
  %b789 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter785, i128 0, i128 %add787, i128 %k.6
  store i128 %a778, i128* %b789, align 4
  %suma790 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter792 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma790, i128 0, i128 %t.1
  %suma793 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter792, align 8
  %struct_getter794 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma793, i32 0, i32 3
  %binsum.out.read_output_outter795 = load [4096 x i128]*, [4096 x i128]** %struct_getter794, align 8
  %array_getter797 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter795, i128 0, i128 %k.6
  %suma798 = load i128, i128* %array_getter797, align 4
  %a799 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %add801 = add i128 %t.1, 1
  %array_getter803 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a799, i128 0, i128 %add801, i128 %k.6
  %a804 = load i128, i128* %array_getter803, align 4
  call void @fn_intrinsic_utils_constraint(i128 %a804, i128 %suma798, i1* @constraint.116)
  %ptr_getter805 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %add807 = add i128 %t.1, 1
  %a809 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter805, i128 0, i128 %add807, i128 %k.6
  store i128 %suma798, i128* %a809, align 4
  br label %loop.latch810

loop.latch810:                                    ; preds = %loop.body674
  %add812 = add i128 %k.6, 1
  %slt814 = icmp slt i128 %add812, 32
  br i1 %slt814, label %loop.body674, label %loop.exit815

loop.exit815:                                     ; preds = %loop.latch810
  br label %loop.latch816

loop.latch816:                                    ; preds = %loop.exit815
  %add818 = add i128 %t.1, 1
  %slt820 = icmp slt i128 %add818, 64
  br i1 %slt820, label %loop.body370, label %loop.exit821

loop.exit821:                                     ; preds = %loop.latch816
  br label %loop.body822

loop.body822:                                     ; preds = %loop.latch1135, %loop.exit821
  %k.7 = phi i128 [ 0, %loop.exit821 ], [ %add1137, %loop.latch1135 ]
  %hin823 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add825 = add i128 0, %k.7
  %array_getter826 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin823, i128 0, i128 %add825
  %hin827 = load i128, i128* %array_getter826, align 4
  %fsum828 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter829 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum828, i128 0, i128 0
  %fsum830 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter829, align 8
  %struct_getter831 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum830, i32 0, i32 2
  %binsum.in.read_input_outter832 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter831, align 8
  %array_getter834 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter832, i128 0, i128 0, i128 %k.7
  %fsum835 = load i128, i128* %array_getter834, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum835, i128 %hin827, i1* @constraint.117)
  %ptr_getter836 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter837 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter836, i128 0, i128 0
  %fsum838 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter837, align 8
  %struct_getter839 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum838, i32 0, i32 2
  %binsum.in.read_input_outter840 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter839, align 8
  %fsum842 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter840, i128 0, i128 0, i128 %k.7
  store i128 %hin827, i128* %fsum842, align 4
  %a843 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter845 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a843, i128 0, i128 64, i128 %k.7
  %a846 = load i128, i128* %array_getter845, align 4
  %fsum847 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter848 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum847, i128 0, i128 0
  %fsum849 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter848, align 8
  %struct_getter850 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum849, i32 0, i32 2
  %binsum.in.read_input_outter851 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter850, align 8
  %array_getter853 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter851, i128 0, i128 1, i128 %k.7
  %fsum854 = load i128, i128* %array_getter853, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum854, i128 %a846, i1* @constraint.118)
  %ptr_getter855 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter856 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter855, i128 0, i128 0
  %fsum857 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter856, align 8
  %struct_getter858 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum857, i32 0, i32 2
  %binsum.in.read_input_outter859 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter858, align 8
  %fsum861 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter859, i128 0, i128 1, i128 %k.7
  store i128 %a846, i128* %fsum861, align 4
  %hin862 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add864 = add i128 32, %k.7
  %array_getter865 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin862, i128 0, i128 %add864
  %hin866 = load i128, i128* %array_getter865, align 4
  %fsum867 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter868 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum867, i128 0, i128 1
  %fsum869 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter868, align 8
  %struct_getter870 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum869, i32 0, i32 2
  %binsum.in.read_input_outter871 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter870, align 8
  %array_getter873 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter871, i128 0, i128 0, i128 %k.7
  %fsum874 = load i128, i128* %array_getter873, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum874, i128 %hin866, i1* @constraint.119)
  %ptr_getter875 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter876 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter875, i128 0, i128 1
  %fsum877 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter876, align 8
  %struct_getter878 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum877, i32 0, i32 2
  %binsum.in.read_input_outter879 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter878, align 8
  %fsum881 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter879, i128 0, i128 0, i128 %k.7
  store i128 %hin866, i128* %fsum881, align 4
  %b882 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter884 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b882, i128 0, i128 64, i128 %k.7
  %b885 = load i128, i128* %array_getter884, align 4
  %fsum886 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter887 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum886, i128 0, i128 1
  %fsum888 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter887, align 8
  %struct_getter889 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum888, i32 0, i32 2
  %binsum.in.read_input_outter890 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter889, align 8
  %array_getter892 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter890, i128 0, i128 1, i128 %k.7
  %fsum893 = load i128, i128* %array_getter892, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum893, i128 %b885, i1* @constraint.120)
  %ptr_getter894 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter895 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter894, i128 0, i128 1
  %fsum896 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter895, align 8
  %struct_getter897 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum896, i32 0, i32 2
  %binsum.in.read_input_outter898 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter897, align 8
  %fsum900 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter898, i128 0, i128 1, i128 %k.7
  store i128 %b885, i128* %fsum900, align 4
  %hin901 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add903 = add i128 64, %k.7
  %array_getter904 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin901, i128 0, i128 %add903
  %hin905 = load i128, i128* %array_getter904, align 4
  %fsum906 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter907 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum906, i128 0, i128 2
  %fsum908 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter907, align 8
  %struct_getter909 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum908, i32 0, i32 2
  %binsum.in.read_input_outter910 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter909, align 8
  %array_getter912 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter910, i128 0, i128 0, i128 %k.7
  %fsum913 = load i128, i128* %array_getter912, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum913, i128 %hin905, i1* @constraint.121)
  %ptr_getter914 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter915 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter914, i128 0, i128 2
  %fsum916 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter915, align 8
  %struct_getter917 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum916, i32 0, i32 2
  %binsum.in.read_input_outter918 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter917, align 8
  %fsum920 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter918, i128 0, i128 0, i128 %k.7
  store i128 %hin905, i128* %fsum920, align 4
  %c921 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter923 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c921, i128 0, i128 64, i128 %k.7
  %c924 = load i128, i128* %array_getter923, align 4
  %fsum925 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter926 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum925, i128 0, i128 2
  %fsum927 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter926, align 8
  %struct_getter928 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum927, i32 0, i32 2
  %binsum.in.read_input_outter929 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter928, align 8
  %array_getter931 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter929, i128 0, i128 1, i128 %k.7
  %fsum932 = load i128, i128* %array_getter931, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum932, i128 %c924, i1* @constraint.122)
  %ptr_getter933 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter934 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter933, i128 0, i128 2
  %fsum935 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter934, align 8
  %struct_getter936 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum935, i32 0, i32 2
  %binsum.in.read_input_outter937 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter936, align 8
  %fsum939 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter937, i128 0, i128 1, i128 %k.7
  store i128 %c924, i128* %fsum939, align 4
  %hin940 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add942 = add i128 96, %k.7
  %array_getter943 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin940, i128 0, i128 %add942
  %hin944 = load i128, i128* %array_getter943, align 4
  %fsum945 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter946 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum945, i128 0, i128 3
  %fsum947 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter946, align 8
  %struct_getter948 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum947, i32 0, i32 2
  %binsum.in.read_input_outter949 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter948, align 8
  %array_getter951 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter949, i128 0, i128 0, i128 %k.7
  %fsum952 = load i128, i128* %array_getter951, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum952, i128 %hin944, i1* @constraint.123)
  %ptr_getter953 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter954 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter953, i128 0, i128 3
  %fsum955 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter954, align 8
  %struct_getter956 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum955, i32 0, i32 2
  %binsum.in.read_input_outter957 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter956, align 8
  %fsum959 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter957, i128 0, i128 0, i128 %k.7
  store i128 %hin944, i128* %fsum959, align 4
  %d960 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter962 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d960, i128 0, i128 64, i128 %k.7
  %d963 = load i128, i128* %array_getter962, align 4
  %fsum964 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter965 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum964, i128 0, i128 3
  %fsum966 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter965, align 8
  %struct_getter967 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum966, i32 0, i32 2
  %binsum.in.read_input_outter968 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter967, align 8
  %array_getter970 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter968, i128 0, i128 1, i128 %k.7
  %fsum971 = load i128, i128* %array_getter970, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum971, i128 %d963, i1* @constraint.124)
  %ptr_getter972 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter973 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter972, i128 0, i128 3
  %fsum974 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter973, align 8
  %struct_getter975 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum974, i32 0, i32 2
  %binsum.in.read_input_outter976 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter975, align 8
  %fsum978 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter976, i128 0, i128 1, i128 %k.7
  store i128 %d963, i128* %fsum978, align 4
  %hin979 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add981 = add i128 128, %k.7
  %array_getter982 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin979, i128 0, i128 %add981
  %hin983 = load i128, i128* %array_getter982, align 4
  %fsum984 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter985 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum984, i128 0, i128 4
  %fsum986 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter985, align 8
  %struct_getter987 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum986, i32 0, i32 2
  %binsum.in.read_input_outter988 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter987, align 8
  %array_getter990 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter988, i128 0, i128 0, i128 %k.7
  %fsum991 = load i128, i128* %array_getter990, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum991, i128 %hin983, i1* @constraint.125)
  %ptr_getter992 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter993 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter992, i128 0, i128 4
  %fsum994 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter993, align 8
  %struct_getter995 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum994, i32 0, i32 2
  %binsum.in.read_input_outter996 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter995, align 8
  %fsum998 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter996, i128 0, i128 0, i128 %k.7
  store i128 %hin983, i128* %fsum998, align 4
  %e999 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter1001 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e999, i128 0, i128 64, i128 %k.7
  %e1002 = load i128, i128* %array_getter1001, align 4
  %fsum1003 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1004 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1003, i128 0, i128 4
  %fsum1005 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1004, align 8
  %struct_getter1006 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1005, i32 0, i32 2
  %binsum.in.read_input_outter1007 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1006, align 8
  %array_getter1009 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1007, i128 0, i128 1, i128 %k.7
  %fsum1010 = load i128, i128* %array_getter1009, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1010, i128 %e1002, i1* @constraint.126)
  %ptr_getter1011 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1012 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1011, i128 0, i128 4
  %fsum1013 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1012, align 8
  %struct_getter1014 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1013, i32 0, i32 2
  %binsum.in.read_input_outter1015 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1014, align 8
  %fsum1017 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1015, i128 0, i128 1, i128 %k.7
  store i128 %e1002, i128* %fsum1017, align 4
  %hin1018 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1020 = add i128 160, %k.7
  %array_getter1021 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1018, i128 0, i128 %add1020
  %hin1022 = load i128, i128* %array_getter1021, align 4
  %fsum1023 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1024 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1023, i128 0, i128 5
  %fsum1025 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1024, align 8
  %struct_getter1026 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1025, i32 0, i32 2
  %binsum.in.read_input_outter1027 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1026, align 8
  %array_getter1029 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1027, i128 0, i128 0, i128 %k.7
  %fsum1030 = load i128, i128* %array_getter1029, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1030, i128 %hin1022, i1* @constraint.127)
  %ptr_getter1031 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1032 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1031, i128 0, i128 5
  %fsum1033 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1032, align 8
  %struct_getter1034 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1033, i32 0, i32 2
  %binsum.in.read_input_outter1035 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1034, align 8
  %fsum1037 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1035, i128 0, i128 0, i128 %k.7
  store i128 %hin1022, i128* %fsum1037, align 4
  %f1038 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter1040 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f1038, i128 0, i128 64, i128 %k.7
  %f1041 = load i128, i128* %array_getter1040, align 4
  %fsum1042 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1043 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1042, i128 0, i128 5
  %fsum1044 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1043, align 8
  %struct_getter1045 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1044, i32 0, i32 2
  %binsum.in.read_input_outter1046 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1045, align 8
  %array_getter1048 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1046, i128 0, i128 1, i128 %k.7
  %fsum1049 = load i128, i128* %array_getter1048, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1049, i128 %f1041, i1* @constraint.128)
  %ptr_getter1050 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1051 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1050, i128 0, i128 5
  %fsum1052 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1051, align 8
  %struct_getter1053 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1052, i32 0, i32 2
  %binsum.in.read_input_outter1054 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1053, align 8
  %fsum1056 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1054, i128 0, i128 1, i128 %k.7
  store i128 %f1041, i128* %fsum1056, align 4
  %hin1057 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1059 = add i128 192, %k.7
  %array_getter1060 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1057, i128 0, i128 %add1059
  %hin1061 = load i128, i128* %array_getter1060, align 4
  %fsum1062 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1063 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1062, i128 0, i128 6
  %fsum1064 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1063, align 8
  %struct_getter1065 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1064, i32 0, i32 2
  %binsum.in.read_input_outter1066 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1065, align 8
  %array_getter1068 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1066, i128 0, i128 0, i128 %k.7
  %fsum1069 = load i128, i128* %array_getter1068, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1069, i128 %hin1061, i1* @constraint.129)
  %ptr_getter1070 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1071 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1070, i128 0, i128 6
  %fsum1072 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1071, align 8
  %struct_getter1073 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1072, i32 0, i32 2
  %binsum.in.read_input_outter1074 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1073, align 8
  %fsum1076 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1074, i128 0, i128 0, i128 %k.7
  store i128 %hin1061, i128* %fsum1076, align 4
  %g1077 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter1079 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g1077, i128 0, i128 64, i128 %k.7
  %g1080 = load i128, i128* %array_getter1079, align 4
  %fsum1081 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1082 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1081, i128 0, i128 6
  %fsum1083 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1082, align 8
  %struct_getter1084 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1083, i32 0, i32 2
  %binsum.in.read_input_outter1085 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1084, align 8
  %array_getter1087 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1085, i128 0, i128 1, i128 %k.7
  %fsum1088 = load i128, i128* %array_getter1087, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1088, i128 %g1080, i1* @constraint.130)
  %ptr_getter1089 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1090 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1089, i128 0, i128 6
  %fsum1091 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1090, align 8
  %struct_getter1092 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1091, i32 0, i32 2
  %binsum.in.read_input_outter1093 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1092, align 8
  %fsum1095 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1093, i128 0, i128 1, i128 %k.7
  store i128 %g1080, i128* %fsum1095, align 4
  %hin1096 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1098 = add i128 224, %k.7
  %array_getter1099 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1096, i128 0, i128 %add1098
  %hin1100 = load i128, i128* %array_getter1099, align 4
  %fsum1101 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1102 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1101, i128 0, i128 7
  %fsum1103 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1102, align 8
  %struct_getter1104 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1103, i32 0, i32 2
  %binsum.in.read_input_outter1105 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1104, align 8
  %array_getter1107 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1105, i128 0, i128 0, i128 %k.7
  %fsum1108 = load i128, i128* %array_getter1107, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1108, i128 %hin1100, i1* @constraint.131)
  %ptr_getter1109 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1110 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1109, i128 0, i128 7
  %fsum1111 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1110, align 8
  %struct_getter1112 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1111, i32 0, i32 2
  %binsum.in.read_input_outter1113 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1112, align 8
  %fsum1115 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1113, i128 0, i128 0, i128 %k.7
  store i128 %hin1100, i128* %fsum1115, align 4
  %h1116 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter1118 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h1116, i128 0, i128 64, i128 %k.7
  %h1119 = load i128, i128* %array_getter1118, align 4
  %fsum1120 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1121 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1120, i128 0, i128 7
  %fsum1122 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1121, align 8
  %struct_getter1123 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1122, i32 0, i32 2
  %binsum.in.read_input_outter1124 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1123, align 8
  %array_getter1126 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1124, i128 0, i128 1, i128 %k.7
  %fsum1127 = load i128, i128* %array_getter1126, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1127, i128 %h1119, i1* @constraint.132)
  %ptr_getter1128 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1129 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1128, i128 0, i128 7
  %fsum1130 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1129, align 8
  %struct_getter1131 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1130, i32 0, i32 2
  %binsum.in.read_input_outter1132 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1131, align 8
  %fsum1134 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1132, i128 0, i128 1, i128 %k.7
  store i128 %h1119, i128* %fsum1134, align 4
  br label %loop.latch1135

loop.latch1135:                                   ; preds = %loop.body822
  %add1137 = add i128 %k.7, 1
  %slt1139 = icmp slt i128 %add1137, 32
  br i1 %slt1139, label %loop.body822, label %loop.exit1140

loop.exit1140:                                    ; preds = %loop.latch1135
  br label %loop.body1141

loop.body1141:                                    ; preds = %loop.latch1246, %loop.exit1140
  %k.8 = phi i128 [ 0, %loop.exit1140 ], [ %add1248, %loop.latch1246 ]
  %out1142 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1144 = sub i128 31, %k.8
  %array_getter1145 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1142, i128 0, i128 %sub1144
  %out1146 = load i128, i128* %array_getter1145, align 4
  %fsum1147 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1148 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1147, i128 0, i128 0
  %fsum1149 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1148, align 8
  %struct_getter1150 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1149, i32 0, i32 3
  %binsum.out.read_output_outter1151 = load [4096 x i128]*, [4096 x i128]** %struct_getter1150, align 8
  %array_getter1153 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1151, i128 0, i128 %k.8
  %fsum1154 = load i128, i128* %array_getter1153, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1146, i128 %fsum1154, i1* @constraint.133)
  %out1155 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1157 = sub i128 63, %k.8
  %array_getter1158 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1155, i128 0, i128 %sub1157
  %out1159 = load i128, i128* %array_getter1158, align 4
  %fsum1160 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1161 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1160, i128 0, i128 1
  %fsum1162 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1161, align 8
  %struct_getter1163 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1162, i32 0, i32 3
  %binsum.out.read_output_outter1164 = load [4096 x i128]*, [4096 x i128]** %struct_getter1163, align 8
  %array_getter1166 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1164, i128 0, i128 %k.8
  %fsum1167 = load i128, i128* %array_getter1166, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1159, i128 %fsum1167, i1* @constraint.134)
  %out1168 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1170 = sub i128 95, %k.8
  %array_getter1171 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1168, i128 0, i128 %sub1170
  %out1172 = load i128, i128* %array_getter1171, align 4
  %fsum1173 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1174 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1173, i128 0, i128 2
  %fsum1175 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1174, align 8
  %struct_getter1176 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1175, i32 0, i32 3
  %binsum.out.read_output_outter1177 = load [4096 x i128]*, [4096 x i128]** %struct_getter1176, align 8
  %array_getter1179 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1177, i128 0, i128 %k.8
  %fsum1180 = load i128, i128* %array_getter1179, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1172, i128 %fsum1180, i1* @constraint.135)
  %out1181 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1183 = sub i128 127, %k.8
  %array_getter1184 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1181, i128 0, i128 %sub1183
  %out1185 = load i128, i128* %array_getter1184, align 4
  %fsum1186 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1187 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1186, i128 0, i128 3
  %fsum1188 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1187, align 8
  %struct_getter1189 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1188, i32 0, i32 3
  %binsum.out.read_output_outter1190 = load [4096 x i128]*, [4096 x i128]** %struct_getter1189, align 8
  %array_getter1192 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1190, i128 0, i128 %k.8
  %fsum1193 = load i128, i128* %array_getter1192, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1185, i128 %fsum1193, i1* @constraint.136)
  %out1194 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1196 = sub i128 159, %k.8
  %array_getter1197 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1194, i128 0, i128 %sub1196
  %out1198 = load i128, i128* %array_getter1197, align 4
  %fsum1199 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1200 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1199, i128 0, i128 4
  %fsum1201 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1200, align 8
  %struct_getter1202 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1201, i32 0, i32 3
  %binsum.out.read_output_outter1203 = load [4096 x i128]*, [4096 x i128]** %struct_getter1202, align 8
  %array_getter1205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1203, i128 0, i128 %k.8
  %fsum1206 = load i128, i128* %array_getter1205, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1198, i128 %fsum1206, i1* @constraint.137)
  %out1207 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1209 = sub i128 191, %k.8
  %array_getter1210 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1207, i128 0, i128 %sub1209
  %out1211 = load i128, i128* %array_getter1210, align 4
  %fsum1212 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1213 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1212, i128 0, i128 5
  %fsum1214 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1213, align 8
  %struct_getter1215 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1214, i32 0, i32 3
  %binsum.out.read_output_outter1216 = load [4096 x i128]*, [4096 x i128]** %struct_getter1215, align 8
  %array_getter1218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1216, i128 0, i128 %k.8
  %fsum1219 = load i128, i128* %array_getter1218, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1211, i128 %fsum1219, i1* @constraint.138)
  %out1220 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1222 = sub i128 223, %k.8
  %array_getter1223 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1220, i128 0, i128 %sub1222
  %out1224 = load i128, i128* %array_getter1223, align 4
  %fsum1225 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1226 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1225, i128 0, i128 6
  %fsum1227 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1226, align 8
  %struct_getter1228 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1227, i32 0, i32 3
  %binsum.out.read_output_outter1229 = load [4096 x i128]*, [4096 x i128]** %struct_getter1228, align 8
  %array_getter1231 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1229, i128 0, i128 %k.8
  %fsum1232 = load i128, i128* %array_getter1231, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1224, i128 %fsum1232, i1* @constraint.139)
  %out1233 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1235 = sub i128 255, %k.8
  %array_getter1236 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1233, i128 0, i128 %sub1235
  %out1237 = load i128, i128* %array_getter1236, align 4
  %fsum1238 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1239 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1238, i128 0, i128 7
  %fsum1240 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1239, align 8
  %struct_getter1241 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1240, i32 0, i32 3
  %binsum.out.read_output_outter1242 = load [4096 x i128]*, [4096 x i128]** %struct_getter1241, align 8
  %array_getter1244 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1242, i128 0, i128 %k.8
  %fsum1245 = load i128, i128* %array_getter1244, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1237, i128 %fsum1245, i1* @constraint.140)
  br label %loop.latch1246

loop.latch1246:                                   ; preds = %loop.body1141
  %add1248 = add i128 %k.8, 1
  %slt1250 = icmp slt i128 %add1248, 32
  br i1 %slt1250, label %loop.body1141, label %loop.exit1251

loop.exit1251:                                    ; preds = %loop.latch1246
  br label %arraydim

arraydim:                                         ; preds = %loop.exit1251
  %ptr_cast = bitcast [4096 x [4096 x i128]]** %sha256compression.f.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 65, i128 32)
  %ptr_cast1252 = bitcast [4096 x %struct_template_circuit_t2*]** %t212 to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1252, i128 64)
  %ptr_cast1253 = bitcast [4096 x i128]** %outCalc to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1253, i128 256)
  %ptr_cast1254 = bitcast [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1254, i128 48)
  %ptr_cast1255 = bitcast [4096 x %struct_template_circuit_binsum*]** %fsum to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1255, i128 8)
  %ptr_cast1256 = bitcast [4096 x i128]** %sha256compression.inp.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1256, i128 512)
  %ptr_cast1257 = bitcast [4096 x [4096 x i128]]** %sha256compression.a.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1257, i128 65, i128 32)
  %ptr_cast1258 = bitcast [4096 x [4096 x i128]]** %sha256compression.w.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1258, i128 64, i128 32)
  %ptr_cast1259 = bitcast [4096 x i128]** %sha256compression.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1259, i128 256)
  %ptr_cast1260 = bitcast [4096 x %struct_template_circuit_k*]** %ct_k to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1260, i128 64)
  %ptr_cast1261 = bitcast [4096 x [4096 x i128]]** %sha256compression.b.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1261, i128 65, i128 32)
  %ptr_cast1262 = bitcast [4096 x %struct_template_circuit_binsum*]** %sume to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1262, i128 64)
  %ptr_cast1263 = bitcast [4096 x %struct_template_circuit_binsum*]** %suma to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1263, i128 64)
  %ptr_cast1264 = bitcast [4096 x [4096 x i128]]** %sha256compression.h.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1264, i128 65, i128 32)
  %ptr_cast1265 = bitcast [4096 x [4096 x i128]]** %sha256compression.c.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1265, i128 65, i128 32)
  %ptr_cast1266 = bitcast [4096 x [4096 x i128]]** %sha256compression.g.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1266, i128 65, i128 32)
  %ptr_cast1267 = bitcast [4096 x i128]** %sha256compression.hin.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1267, i128 256)
  %ptr_cast1268 = bitcast [4096 x [4096 x i128]]** %sha256compression.e.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1268, i128 65, i128 32)
  %ptr_cast1269 = bitcast [4096 x %struct_template_circuit_t1*]** %t1 to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1269, i128 64)
  %ptr_cast1270 = bitcast [4096 x [4096 x i128]]** %sha256compression.d.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1270, i128 65, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %a1271 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %sha256compression.a.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 2
  store [4096 x [4096 x i128]]* %a1271, [4096 x [4096 x i128]]** %sha256compression.a.write_inter_inner, align 8
  %b1272 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sha256compression.b.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 3
  store [4096 x [4096 x i128]]* %b1272, [4096 x [4096 x i128]]** %sha256compression.b.write_inter_inner, align 8
  %c1273 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %sha256compression.c.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 4
  store [4096 x [4096 x i128]]* %c1273, [4096 x [4096 x i128]]** %sha256compression.c.write_inter_inner, align 8
  %d1274 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %sha256compression.d.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 5
  store [4096 x [4096 x i128]]* %d1274, [4096 x [4096 x i128]]** %sha256compression.d.write_inter_inner, align 8
  %e1275 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %sha256compression.e.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 6
  store [4096 x [4096 x i128]]* %e1275, [4096 x [4096 x i128]]** %sha256compression.e.write_inter_inner, align 8
  %f1276 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %sha256compression.f.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 7
  store [4096 x [4096 x i128]]* %f1276, [4096 x [4096 x i128]]** %sha256compression.f.write_inter_inner, align 8
  %g1277 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %sha256compression.g.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 8
  store [4096 x [4096 x i128]]* %g1277, [4096 x [4096 x i128]]** %sha256compression.g.write_inter_inner, align 8
  %h1278 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %sha256compression.h.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 9
  store [4096 x [4096 x i128]]* %h1278, [4096 x [4096 x i128]]** %sha256compression.h.write_inter_inner, align 8
  %w1279 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sha256compression.w.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 10
  store [4096 x [4096 x i128]]* %w1279, [4096 x [4096 x i128]]** %sha256compression.w.write_inter_inner, align 8
  %out1280 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sha256compression.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 11
  store [4096 x i128]* %out1280, [4096 x i128]** %sha256compression.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256compression* @fn_template_build_sha256compression() {
entry:
  %struct_template_circuit_sha256compression = alloca %struct_template_circuit_sha256compression, align 8
  ret %struct_template_circuit_sha256compression* %struct_template_circuit_sha256compression
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %greatereqthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %greatereqthan.in.read_input_inner, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greatereqthan.n.read_arg_inner)
  %in = load [4096 x i128]*, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.141)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.142)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.143)
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %greatereqthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %greatereqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %greatereqthan.out.read_output_inner, i128* %greatereqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greatereqthan* @fn_template_build_greatereqthan(i128 %0) {
entry:
  %struct_template_circuit_greatereqthan = alloca %struct_template_circuit_greatereqthan, align 8
  %greatereqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan, i32 0, i32 0
  store i128 %0, i128* %greatereqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %lesseqthan.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %lesseqthan.in.read_input_inner, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %lesseqthan.n.read_arg_inner)
  %in = load [4096 x i128]*, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.144)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [4096 x i128]*, [4096 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.145)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.146)
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [4096 x i128]** %lesseqthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %lesseqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lesseqthan.out.read_output_inner, i128* %lesseqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_lesseqthan* @fn_template_build_lesseqthan(i128 %0) {
entry:
  %struct_template_circuit_lesseqthan = alloca %struct_template_circuit_lesseqthan, align 8
  %lesseqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan, i32 0, i32 0
  store i128 %0, i128* %lesseqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan
}

define void @fn_template_init_sha256(%struct_template_circuit_sha256* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 0
  %sha256.nbits.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 1
  %sha256.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256.in.read_input_inner, [4096 x i128]** %sha256.in.declare_input, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  %sha256.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256.out.declare_output, align 8
  %nBlocks3 = call i128 @fn_intrinsic_utils_init()
  %bitsLastBlock4 = call i128 @fn_intrinsic_utils_init()
  %sha256compression = alloca [4096 x %struct_template_circuit_sha256compression*]*, align 8
  %sha256compression5 = alloca [4096 x %struct_template_circuit_sha256compression*], align 8
  store [4096 x %struct_template_circuit_sha256compression*]* %sha256compression5, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sha256.paddedin.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %paddedIn = bitcast i8* %malloccall6 to [4096 x i128]*
  store [4096 x i128]* %paddedIn, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %k7 = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %sha256.nbits.read_arg_inner, 64
  %sdiv = sdiv i128 %add, 512
  %add9 = add i128 %sdiv, 1
  %mul = mul i128 %add9, 512
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %sha256.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %k.0
  %in12 = load i128, i128* %array_getter, align 4
  %paddedIn13 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn13, i128 0, i128 %k.0
  %paddedIn16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %paddedIn16, i128 %in12, i1* @constraint.147)
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %paddedIn18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %k.0
  store i128 %in12, i128* %paddedIn18, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add20 = add i128 %k.0, 1
  %slt = icmp slt i128 %add20, %sha256.nbits.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %paddedIn23 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn23, i128 0, i128 %sha256.nbits.read_arg_inner
  %paddedIn26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %paddedIn26, i128 1, i1* @constraint.148)
  %ptr_getter27 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %paddedIn29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter27, i128 0, i128 %sha256.nbits.read_arg_inner
  store i128 1, i128* %paddedIn29, align 4
  %add31 = add i128 %sha256.nbits.read_arg_inner, 1
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch40, %loop.exit
  %k.1 = phi i128 [ %add31, %loop.exit ], [ %add42, %loop.latch40 ]
  %paddedIn33 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn33, i128 0, i128 %k.1
  %paddedIn36 = load i128, i128* %array_getter35, align 4
  call void @fn_intrinsic_utils_constraint(i128 %paddedIn36, i128 0, i1* @constraint.149)
  %ptr_getter37 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %paddedIn39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter37, i128 0, i128 %k.1
  store i128 0, i128* %paddedIn39, align 4
  br label %loop.latch40

loop.latch40:                                     ; preds = %loop.body32
  %add42 = add i128 %k.1, 1
  %mul45 = mul i128 %add9, 512
  %sub = sub i128 %mul45, 64
  %slt46 = icmp slt i128 %add42, %sub
  br i1 %slt46, label %loop.body32, label %loop.exit47

loop.exit47:                                      ; preds = %loop.latch40
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch66, %loop.exit47
  %k.2 = phi i128 [ 0, %loop.exit47 ], [ %add68, %loop.latch66 ]
  %rshift = lshr i128 %sha256.nbits.read_arg_inner, %k.2
  %and = and i128 %rshift, 1
  %paddedIn51 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %mul53 = mul i128 %add9, 512
  %sub55 = sub i128 %mul53, %k.2
  %sub56 = sub i128 %sub55, 1
  %array_getter57 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn51, i128 0, i128 %sub56
  %paddedIn58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %paddedIn58, i128 %and, i1* @constraint.150)
  %ptr_getter59 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %mul61 = mul i128 %add9, 512
  %sub63 = sub i128 %mul61, %k.2
  %sub64 = sub i128 %sub63, 1
  %paddedIn65 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter59, i128 0, i128 %sub64
  store i128 %and, i128* %paddedIn65, align 4
  br label %loop.latch66

loop.latch66:                                     ; preds = %loop.body48
  %add68 = add i128 %k.2, 1
  %slt70 = icmp slt i128 %add68, 64
  br i1 %slt70, label %loop.body48, label %loop.exit71

loop.exit71:                                      ; preds = %loop.latch66
  %call = call %struct_template_circuit_h* @fn_template_build_h(i128 0)
  %call72 = call %struct_template_circuit_h* @fn_template_build_h(i128 1)
  %call73 = call %struct_template_circuit_h* @fn_template_build_h(i128 2)
  %call74 = call %struct_template_circuit_h* @fn_template_build_h(i128 3)
  %call75 = call %struct_template_circuit_h* @fn_template_build_h(i128 4)
  %call76 = call %struct_template_circuit_h* @fn_template_build_h(i128 5)
  %call77 = call %struct_template_circuit_h* @fn_template_build_h(i128 6)
  %call78 = call %struct_template_circuit_h* @fn_template_build_h(i128 7)
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch567, %loop.exit71
  %i.0 = phi i128 [ 0, %loop.exit71 ], [ %add569, %loop.latch567 ]
  %call81 = call %struct_template_circuit_sha256compression* @fn_template_build_sha256compression()
  %ptr_getter82 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sha256compression84 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter82, i128 0, i128 %i.0
  store %struct_template_circuit_sha256compression* %call81, %struct_template_circuit_sha256compression** %sha256compression84, align 8
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body80
  br label %loop.body86

if.false:                                         ; preds = %loop.body80
  br label %loop.body291

loop.body86:                                      ; preds = %loop.latch285, %if.true
  %k.3 = phi i128 [ 0, %if.true ], [ %add287, %loop.latch285 ]
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call, i32 0, i32 1
  %h.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter88, align 8
  %array_getter90 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter, i128 0, i128 %k.3
  %ha091 = load i128, i128* %array_getter90, align 4
  %sha256compression92 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter94 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression92, i128 0, i128 %i.0
  %sha256compression95 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter94, align 8
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression95, i32 0, i32 0
  %sha256compression.hin.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter96, align 8
  %add98 = add i128 0, %k.3
  %array_getter99 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter, i128 0, i128 %add98
  %sha256compression100 = load i128, i128* %array_getter99, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression100, i128 %ha091, i1* @constraint.151)
  %ptr_getter101 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter103 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter101, i128 0, i128 %i.0
  %sha256compression104 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter103, align 8
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression104, i32 0, i32 0
  %sha256compression.hin.read_input_outter106 = load [4096 x i128]*, [4096 x i128]** %struct_getter105, align 8
  %add108 = add i128 0, %k.3
  %sha256compression109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter106, i128 0, i128 %add108
  store i128 %ha091, i128* %sha256compression109, align 4
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call72, i32 0, i32 1
  %h.out.read_output_outter112 = load [4096 x i128]*, [4096 x i128]** %struct_getter111, align 8
  %array_getter114 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter112, i128 0, i128 %k.3
  %hb0115 = load i128, i128* %array_getter114, align 4
  %sha256compression116 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter118 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression116, i128 0, i128 %i.0
  %sha256compression119 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter118, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression119, i32 0, i32 0
  %sha256compression.hin.read_input_outter121 = load [4096 x i128]*, [4096 x i128]** %struct_getter120, align 8
  %add123 = add i128 32, %k.3
  %array_getter124 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter121, i128 0, i128 %add123
  %sha256compression125 = load i128, i128* %array_getter124, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression125, i128 %hb0115, i1* @constraint.152)
  %ptr_getter126 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter128 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter126, i128 0, i128 %i.0
  %sha256compression129 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter128, align 8
  %struct_getter130 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression129, i32 0, i32 0
  %sha256compression.hin.read_input_outter131 = load [4096 x i128]*, [4096 x i128]** %struct_getter130, align 8
  %add133 = add i128 32, %k.3
  %sha256compression134 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter131, i128 0, i128 %add133
  store i128 %hb0115, i128* %sha256compression134, align 4
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call73, i32 0, i32 1
  %h.out.read_output_outter137 = load [4096 x i128]*, [4096 x i128]** %struct_getter136, align 8
  %array_getter139 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter137, i128 0, i128 %k.3
  %hc0140 = load i128, i128* %array_getter139, align 4
  %sha256compression141 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter143 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression141, i128 0, i128 %i.0
  %sha256compression144 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter143, align 8
  %struct_getter145 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression144, i32 0, i32 0
  %sha256compression.hin.read_input_outter146 = load [4096 x i128]*, [4096 x i128]** %struct_getter145, align 8
  %add148 = add i128 64, %k.3
  %array_getter149 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter146, i128 0, i128 %add148
  %sha256compression150 = load i128, i128* %array_getter149, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression150, i128 %hc0140, i1* @constraint.153)
  %ptr_getter151 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter153 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter151, i128 0, i128 %i.0
  %sha256compression154 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter153, align 8
  %struct_getter155 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression154, i32 0, i32 0
  %sha256compression.hin.read_input_outter156 = load [4096 x i128]*, [4096 x i128]** %struct_getter155, align 8
  %add158 = add i128 64, %k.3
  %sha256compression159 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter156, i128 0, i128 %add158
  store i128 %hc0140, i128* %sha256compression159, align 4
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call74, i32 0, i32 1
  %h.out.read_output_outter162 = load [4096 x i128]*, [4096 x i128]** %struct_getter161, align 8
  %array_getter164 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter162, i128 0, i128 %k.3
  %hd0165 = load i128, i128* %array_getter164, align 4
  %sha256compression166 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter168 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression166, i128 0, i128 %i.0
  %sha256compression169 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter168, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression169, i32 0, i32 0
  %sha256compression.hin.read_input_outter171 = load [4096 x i128]*, [4096 x i128]** %struct_getter170, align 8
  %add173 = add i128 96, %k.3
  %array_getter174 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter171, i128 0, i128 %add173
  %sha256compression175 = load i128, i128* %array_getter174, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression175, i128 %hd0165, i1* @constraint.154)
  %ptr_getter176 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter178 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter176, i128 0, i128 %i.0
  %sha256compression179 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter178, align 8
  %struct_getter180 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression179, i32 0, i32 0
  %sha256compression.hin.read_input_outter181 = load [4096 x i128]*, [4096 x i128]** %struct_getter180, align 8
  %add183 = add i128 96, %k.3
  %sha256compression184 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter181, i128 0, i128 %add183
  store i128 %hd0165, i128* %sha256compression184, align 4
  %struct_getter186 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call75, i32 0, i32 1
  %h.out.read_output_outter187 = load [4096 x i128]*, [4096 x i128]** %struct_getter186, align 8
  %array_getter189 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter187, i128 0, i128 %k.3
  %he0190 = load i128, i128* %array_getter189, align 4
  %sha256compression191 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter193 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression191, i128 0, i128 %i.0
  %sha256compression194 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter193, align 8
  %struct_getter195 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression194, i32 0, i32 0
  %sha256compression.hin.read_input_outter196 = load [4096 x i128]*, [4096 x i128]** %struct_getter195, align 8
  %add198 = add i128 128, %k.3
  %array_getter199 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter196, i128 0, i128 %add198
  %sha256compression200 = load i128, i128* %array_getter199, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression200, i128 %he0190, i1* @constraint.155)
  %ptr_getter201 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter203 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter201, i128 0, i128 %i.0
  %sha256compression204 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter203, align 8
  %struct_getter205 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression204, i32 0, i32 0
  %sha256compression.hin.read_input_outter206 = load [4096 x i128]*, [4096 x i128]** %struct_getter205, align 8
  %add208 = add i128 128, %k.3
  %sha256compression209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter206, i128 0, i128 %add208
  store i128 %he0190, i128* %sha256compression209, align 4
  %struct_getter211 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call76, i32 0, i32 1
  %h.out.read_output_outter212 = load [4096 x i128]*, [4096 x i128]** %struct_getter211, align 8
  %array_getter214 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter212, i128 0, i128 %k.3
  %hf0215 = load i128, i128* %array_getter214, align 4
  %sha256compression216 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter218 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression216, i128 0, i128 %i.0
  %sha256compression219 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter218, align 8
  %struct_getter220 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression219, i32 0, i32 0
  %sha256compression.hin.read_input_outter221 = load [4096 x i128]*, [4096 x i128]** %struct_getter220, align 8
  %add223 = add i128 160, %k.3
  %array_getter224 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter221, i128 0, i128 %add223
  %sha256compression225 = load i128, i128* %array_getter224, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression225, i128 %hf0215, i1* @constraint.156)
  %ptr_getter226 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter228 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter226, i128 0, i128 %i.0
  %sha256compression229 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter228, align 8
  %struct_getter230 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression229, i32 0, i32 0
  %sha256compression.hin.read_input_outter231 = load [4096 x i128]*, [4096 x i128]** %struct_getter230, align 8
  %add233 = add i128 160, %k.3
  %sha256compression234 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter231, i128 0, i128 %add233
  store i128 %hf0215, i128* %sha256compression234, align 4
  %struct_getter236 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call77, i32 0, i32 1
  %h.out.read_output_outter237 = load [4096 x i128]*, [4096 x i128]** %struct_getter236, align 8
  %array_getter239 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter237, i128 0, i128 %k.3
  %hg0240 = load i128, i128* %array_getter239, align 4
  %sha256compression241 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter243 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression241, i128 0, i128 %i.0
  %sha256compression244 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter243, align 8
  %struct_getter245 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression244, i32 0, i32 0
  %sha256compression.hin.read_input_outter246 = load [4096 x i128]*, [4096 x i128]** %struct_getter245, align 8
  %add248 = add i128 192, %k.3
  %array_getter249 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter246, i128 0, i128 %add248
  %sha256compression250 = load i128, i128* %array_getter249, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression250, i128 %hg0240, i1* @constraint.157)
  %ptr_getter251 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter253 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter251, i128 0, i128 %i.0
  %sha256compression254 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter253, align 8
  %struct_getter255 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression254, i32 0, i32 0
  %sha256compression.hin.read_input_outter256 = load [4096 x i128]*, [4096 x i128]** %struct_getter255, align 8
  %add258 = add i128 192, %k.3
  %sha256compression259 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter256, i128 0, i128 %add258
  store i128 %hg0240, i128* %sha256compression259, align 4
  %struct_getter261 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call78, i32 0, i32 1
  %h.out.read_output_outter262 = load [4096 x i128]*, [4096 x i128]** %struct_getter261, align 8
  %array_getter264 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter262, i128 0, i128 %k.3
  %hh0265 = load i128, i128* %array_getter264, align 4
  %sha256compression266 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter268 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression266, i128 0, i128 %i.0
  %sha256compression269 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter268, align 8
  %struct_getter270 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression269, i32 0, i32 0
  %sha256compression.hin.read_input_outter271 = load [4096 x i128]*, [4096 x i128]** %struct_getter270, align 8
  %add273 = add i128 224, %k.3
  %array_getter274 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter271, i128 0, i128 %add273
  %sha256compression275 = load i128, i128* %array_getter274, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression275, i128 %hh0265, i1* @constraint.158)
  %ptr_getter276 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter278 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter276, i128 0, i128 %i.0
  %sha256compression279 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter278, align 8
  %struct_getter280 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression279, i32 0, i32 0
  %sha256compression.hin.read_input_outter281 = load [4096 x i128]*, [4096 x i128]** %struct_getter280, align 8
  %add283 = add i128 224, %k.3
  %sha256compression284 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter281, i128 0, i128 %add283
  store i128 %hh0265, i128* %sha256compression284, align 4
  br label %loop.latch285

loop.latch285:                                    ; preds = %loop.body86
  %add287 = add i128 %k.3, 1
  %slt289 = icmp slt i128 %add287, 32
  br i1 %slt289, label %loop.body86, label %loop.exit290

loop.exit290:                                     ; preds = %loop.latch285
  br label %if.exit

loop.body291:                                     ; preds = %loop.latch531, %if.false
  %k.4 = phi i128 [ 0, %if.false ], [ %add533, %loop.latch531 ]
  %sha256compression292 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub294 = sub i128 %i.0, 1
  %array_getter295 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression292, i128 0, i128 %sub294
  %sha256compression296 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter295, align 8
  %struct_getter297 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression296, i32 0, i32 11
  %sha256compression.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter297, align 8
  %sub299 = sub i128 31, %k.4
  %array_getter300 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter, i128 0, i128 %sub299
  %sha256compression301 = load i128, i128* %array_getter300, align 4
  %sha256compression302 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter304 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression302, i128 0, i128 %i.0
  %sha256compression305 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter304, align 8
  %struct_getter306 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression305, i32 0, i32 0
  %sha256compression.hin.read_input_outter307 = load [4096 x i128]*, [4096 x i128]** %struct_getter306, align 8
  %add309 = add i128 0, %k.4
  %array_getter310 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter307, i128 0, i128 %add309
  %sha256compression311 = load i128, i128* %array_getter310, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression311, i128 %sha256compression301, i1* @constraint.159)
  %ptr_getter312 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter314 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter312, i128 0, i128 %i.0
  %sha256compression315 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter314, align 8
  %struct_getter316 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression315, i32 0, i32 0
  %sha256compression.hin.read_input_outter317 = load [4096 x i128]*, [4096 x i128]** %struct_getter316, align 8
  %add319 = add i128 0, %k.4
  %sha256compression320 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter317, i128 0, i128 %add319
  store i128 %sha256compression301, i128* %sha256compression320, align 4
  %sha256compression321 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub323 = sub i128 %i.0, 1
  %array_getter324 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression321, i128 0, i128 %sub323
  %sha256compression325 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter324, align 8
  %struct_getter326 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression325, i32 0, i32 11
  %sha256compression.out.read_output_outter327 = load [4096 x i128]*, [4096 x i128]** %struct_getter326, align 8
  %sub329 = sub i128 63, %k.4
  %array_getter330 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter327, i128 0, i128 %sub329
  %sha256compression331 = load i128, i128* %array_getter330, align 4
  %sha256compression332 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter334 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression332, i128 0, i128 %i.0
  %sha256compression335 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter334, align 8
  %struct_getter336 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression335, i32 0, i32 0
  %sha256compression.hin.read_input_outter337 = load [4096 x i128]*, [4096 x i128]** %struct_getter336, align 8
  %add339 = add i128 32, %k.4
  %array_getter340 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter337, i128 0, i128 %add339
  %sha256compression341 = load i128, i128* %array_getter340, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression341, i128 %sha256compression331, i1* @constraint.160)
  %ptr_getter342 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter344 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter342, i128 0, i128 %i.0
  %sha256compression345 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter344, align 8
  %struct_getter346 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression345, i32 0, i32 0
  %sha256compression.hin.read_input_outter347 = load [4096 x i128]*, [4096 x i128]** %struct_getter346, align 8
  %add349 = add i128 32, %k.4
  %sha256compression350 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter347, i128 0, i128 %add349
  store i128 %sha256compression331, i128* %sha256compression350, align 4
  %sha256compression351 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub353 = sub i128 %i.0, 1
  %array_getter354 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression351, i128 0, i128 %sub353
  %sha256compression355 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter354, align 8
  %struct_getter356 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression355, i32 0, i32 11
  %sha256compression.out.read_output_outter357 = load [4096 x i128]*, [4096 x i128]** %struct_getter356, align 8
  %sub359 = sub i128 95, %k.4
  %array_getter360 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter357, i128 0, i128 %sub359
  %sha256compression361 = load i128, i128* %array_getter360, align 4
  %sha256compression362 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter364 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression362, i128 0, i128 %i.0
  %sha256compression365 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter364, align 8
  %struct_getter366 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression365, i32 0, i32 0
  %sha256compression.hin.read_input_outter367 = load [4096 x i128]*, [4096 x i128]** %struct_getter366, align 8
  %add369 = add i128 64, %k.4
  %array_getter370 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter367, i128 0, i128 %add369
  %sha256compression371 = load i128, i128* %array_getter370, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression371, i128 %sha256compression361, i1* @constraint.161)
  %ptr_getter372 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter374 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter372, i128 0, i128 %i.0
  %sha256compression375 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter374, align 8
  %struct_getter376 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression375, i32 0, i32 0
  %sha256compression.hin.read_input_outter377 = load [4096 x i128]*, [4096 x i128]** %struct_getter376, align 8
  %add379 = add i128 64, %k.4
  %sha256compression380 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter377, i128 0, i128 %add379
  store i128 %sha256compression361, i128* %sha256compression380, align 4
  %sha256compression381 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub383 = sub i128 %i.0, 1
  %array_getter384 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression381, i128 0, i128 %sub383
  %sha256compression385 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter384, align 8
  %struct_getter386 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression385, i32 0, i32 11
  %sha256compression.out.read_output_outter387 = load [4096 x i128]*, [4096 x i128]** %struct_getter386, align 8
  %sub389 = sub i128 127, %k.4
  %array_getter390 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter387, i128 0, i128 %sub389
  %sha256compression391 = load i128, i128* %array_getter390, align 4
  %sha256compression392 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter394 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression392, i128 0, i128 %i.0
  %sha256compression395 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter394, align 8
  %struct_getter396 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression395, i32 0, i32 0
  %sha256compression.hin.read_input_outter397 = load [4096 x i128]*, [4096 x i128]** %struct_getter396, align 8
  %add399 = add i128 96, %k.4
  %array_getter400 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter397, i128 0, i128 %add399
  %sha256compression401 = load i128, i128* %array_getter400, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression401, i128 %sha256compression391, i1* @constraint.162)
  %ptr_getter402 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter404 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter402, i128 0, i128 %i.0
  %sha256compression405 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter404, align 8
  %struct_getter406 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression405, i32 0, i32 0
  %sha256compression.hin.read_input_outter407 = load [4096 x i128]*, [4096 x i128]** %struct_getter406, align 8
  %add409 = add i128 96, %k.4
  %sha256compression410 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter407, i128 0, i128 %add409
  store i128 %sha256compression391, i128* %sha256compression410, align 4
  %sha256compression411 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub413 = sub i128 %i.0, 1
  %array_getter414 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression411, i128 0, i128 %sub413
  %sha256compression415 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter414, align 8
  %struct_getter416 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression415, i32 0, i32 11
  %sha256compression.out.read_output_outter417 = load [4096 x i128]*, [4096 x i128]** %struct_getter416, align 8
  %sub419 = sub i128 159, %k.4
  %array_getter420 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter417, i128 0, i128 %sub419
  %sha256compression421 = load i128, i128* %array_getter420, align 4
  %sha256compression422 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter424 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression422, i128 0, i128 %i.0
  %sha256compression425 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter424, align 8
  %struct_getter426 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression425, i32 0, i32 0
  %sha256compression.hin.read_input_outter427 = load [4096 x i128]*, [4096 x i128]** %struct_getter426, align 8
  %add429 = add i128 128, %k.4
  %array_getter430 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter427, i128 0, i128 %add429
  %sha256compression431 = load i128, i128* %array_getter430, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression431, i128 %sha256compression421, i1* @constraint.163)
  %ptr_getter432 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter434 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter432, i128 0, i128 %i.0
  %sha256compression435 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter434, align 8
  %struct_getter436 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression435, i32 0, i32 0
  %sha256compression.hin.read_input_outter437 = load [4096 x i128]*, [4096 x i128]** %struct_getter436, align 8
  %add439 = add i128 128, %k.4
  %sha256compression440 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter437, i128 0, i128 %add439
  store i128 %sha256compression421, i128* %sha256compression440, align 4
  %sha256compression441 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub443 = sub i128 %i.0, 1
  %array_getter444 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression441, i128 0, i128 %sub443
  %sha256compression445 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter444, align 8
  %struct_getter446 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression445, i32 0, i32 11
  %sha256compression.out.read_output_outter447 = load [4096 x i128]*, [4096 x i128]** %struct_getter446, align 8
  %sub449 = sub i128 191, %k.4
  %array_getter450 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter447, i128 0, i128 %sub449
  %sha256compression451 = load i128, i128* %array_getter450, align 4
  %sha256compression452 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter454 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression452, i128 0, i128 %i.0
  %sha256compression455 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter454, align 8
  %struct_getter456 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression455, i32 0, i32 0
  %sha256compression.hin.read_input_outter457 = load [4096 x i128]*, [4096 x i128]** %struct_getter456, align 8
  %add459 = add i128 160, %k.4
  %array_getter460 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter457, i128 0, i128 %add459
  %sha256compression461 = load i128, i128* %array_getter460, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression461, i128 %sha256compression451, i1* @constraint.164)
  %ptr_getter462 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter464 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter462, i128 0, i128 %i.0
  %sha256compression465 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter464, align 8
  %struct_getter466 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression465, i32 0, i32 0
  %sha256compression.hin.read_input_outter467 = load [4096 x i128]*, [4096 x i128]** %struct_getter466, align 8
  %add469 = add i128 160, %k.4
  %sha256compression470 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter467, i128 0, i128 %add469
  store i128 %sha256compression451, i128* %sha256compression470, align 4
  %sha256compression471 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub473 = sub i128 %i.0, 1
  %array_getter474 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression471, i128 0, i128 %sub473
  %sha256compression475 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter474, align 8
  %struct_getter476 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression475, i32 0, i32 11
  %sha256compression.out.read_output_outter477 = load [4096 x i128]*, [4096 x i128]** %struct_getter476, align 8
  %sub479 = sub i128 223, %k.4
  %array_getter480 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter477, i128 0, i128 %sub479
  %sha256compression481 = load i128, i128* %array_getter480, align 4
  %sha256compression482 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter484 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression482, i128 0, i128 %i.0
  %sha256compression485 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter484, align 8
  %struct_getter486 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression485, i32 0, i32 0
  %sha256compression.hin.read_input_outter487 = load [4096 x i128]*, [4096 x i128]** %struct_getter486, align 8
  %add489 = add i128 192, %k.4
  %array_getter490 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter487, i128 0, i128 %add489
  %sha256compression491 = load i128, i128* %array_getter490, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression491, i128 %sha256compression481, i1* @constraint.165)
  %ptr_getter492 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter494 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter492, i128 0, i128 %i.0
  %sha256compression495 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter494, align 8
  %struct_getter496 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression495, i32 0, i32 0
  %sha256compression.hin.read_input_outter497 = load [4096 x i128]*, [4096 x i128]** %struct_getter496, align 8
  %add499 = add i128 192, %k.4
  %sha256compression500 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter497, i128 0, i128 %add499
  store i128 %sha256compression481, i128* %sha256compression500, align 4
  %sha256compression501 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub503 = sub i128 %i.0, 1
  %array_getter504 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression501, i128 0, i128 %sub503
  %sha256compression505 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter504, align 8
  %struct_getter506 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression505, i32 0, i32 11
  %sha256compression.out.read_output_outter507 = load [4096 x i128]*, [4096 x i128]** %struct_getter506, align 8
  %sub509 = sub i128 255, %k.4
  %array_getter510 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter507, i128 0, i128 %sub509
  %sha256compression511 = load i128, i128* %array_getter510, align 4
  %sha256compression512 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter514 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression512, i128 0, i128 %i.0
  %sha256compression515 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter514, align 8
  %struct_getter516 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression515, i32 0, i32 0
  %sha256compression.hin.read_input_outter517 = load [4096 x i128]*, [4096 x i128]** %struct_getter516, align 8
  %add519 = add i128 224, %k.4
  %array_getter520 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter517, i128 0, i128 %add519
  %sha256compression521 = load i128, i128* %array_getter520, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression521, i128 %sha256compression511, i1* @constraint.166)
  %ptr_getter522 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter524 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter522, i128 0, i128 %i.0
  %sha256compression525 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter524, align 8
  %struct_getter526 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression525, i32 0, i32 0
  %sha256compression.hin.read_input_outter527 = load [4096 x i128]*, [4096 x i128]** %struct_getter526, align 8
  %add529 = add i128 224, %k.4
  %sha256compression530 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter527, i128 0, i128 %add529
  store i128 %sha256compression511, i128* %sha256compression530, align 4
  br label %loop.latch531

loop.latch531:                                    ; preds = %loop.body291
  %add533 = add i128 %k.4, 1
  %slt535 = icmp slt i128 %add533, 32
  br i1 %slt535, label %loop.body291, label %loop.exit536

loop.exit536:                                     ; preds = %loop.latch531
  br label %if.exit

if.exit:                                          ; preds = %loop.exit536, %loop.exit290
  br label %loop.body537

loop.body537:                                     ; preds = %loop.latch561, %if.exit
  %k.5 = phi i128 [ 0, %if.exit ], [ %add563, %loop.latch561 ]
  %paddedIn538 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %mul540 = mul i128 %i.0, 512
  %add542 = add i128 %mul540, %k.5
  %array_getter543 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn538, i128 0, i128 %add542
  %paddedIn544 = load i128, i128* %array_getter543, align 4
  %sha256compression545 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter547 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression545, i128 0, i128 %i.0
  %sha256compression548 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter547, align 8
  %struct_getter549 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression548, i32 0, i32 1
  %sha256compression.inp.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter549, align 8
  %array_getter551 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter, i128 0, i128 %k.5
  %sha256compression552 = load i128, i128* %array_getter551, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha256compression552, i128 %paddedIn544, i1* @constraint.167)
  %ptr_getter553 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %array_getter555 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %ptr_getter553, i128 0, i128 %i.0
  %sha256compression556 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter555, align 8
  %struct_getter557 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression556, i32 0, i32 1
  %sha256compression.inp.read_input_outter558 = load [4096 x i128]*, [4096 x i128]** %struct_getter557, align 8
  %sha256compression560 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter558, i128 0, i128 %k.5
  store i128 %paddedIn544, i128* %sha256compression560, align 4
  br label %loop.latch561

loop.latch561:                                    ; preds = %loop.body537
  %add563 = add i128 %k.5, 1
  %slt565 = icmp slt i128 %add563, 512
  br i1 %slt565, label %loop.body537, label %loop.exit566

loop.exit566:                                     ; preds = %loop.latch561
  br label %loop.latch567

loop.latch567:                                    ; preds = %loop.exit566
  %add569 = add i128 %i.0, 1
  %slt572 = icmp slt i128 %add569, %add9
  br i1 %slt572, label %loop.body80, label %loop.exit573

loop.exit573:                                     ; preds = %loop.latch567
  br label %loop.body574

loop.body574:                                     ; preds = %loop.latch592, %loop.exit573
  %k.6 = phi i128 [ 0, %loop.exit573 ], [ %add594, %loop.latch592 ]
  %sha256compression575 = load [4096 x %struct_template_circuit_sha256compression*]*, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %sub577 = sub i128 %add9, 1
  %array_getter578 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression575, i128 0, i128 %sub577
  %sha256compression579 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter578, align 8
  %struct_getter580 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression579, i32 0, i32 11
  %sha256compression.out.read_output_outter581 = load [4096 x i128]*, [4096 x i128]** %struct_getter580, align 8
  %array_getter583 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter581, i128 0, i128 %k.6
  %sha256compression584 = load i128, i128* %array_getter583, align 4
  %out585 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %array_getter587 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out585, i128 0, i128 %k.6
  %out588 = load i128, i128* %array_getter587, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out588, i128 %sha256compression584, i1* @constraint.168)
  %ptr_getter589 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %out591 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter589, i128 0, i128 %k.6
  store i128 %sha256compression584, i128* %out591, align 4
  br label %loop.latch592

loop.latch592:                                    ; preds = %loop.body574
  %add594 = add i128 %k.6, 1
  %slt596 = icmp slt i128 %add594, 256
  br i1 %slt596, label %loop.body574, label %loop.exit597

loop.exit597:                                     ; preds = %loop.latch592
  br label %arraydim

arraydim:                                         ; preds = %loop.exit597
  %ptr_cast = bitcast [4096 x i128]** %sha256.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sha256.nbits.read_arg_inner)
  %ptr_cast598 = bitcast [4096 x i128]** %sha256.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast598, i128 256)
  %ptr_cast599 = bitcast [4096 x %struct_template_circuit_sha256compression*]** %sha256compression to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast599, i128 %add9)
  %ptr_cast600 = bitcast [4096 x i128]** %sha256.paddedin.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast600, i128 %mul)
  br label %exit

exit:                                             ; preds = %arraydim
  %paddedIn601 = load [4096 x i128]*, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %sha256.paddedin.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 2
  store [4096 x i128]* %paddedIn601, [4096 x i128]** %sha256.paddedin.write_inter_inner, align 8
  %out602 = load [4096 x i128]*, [4096 x i128]** %sha256.out.declare_output, align 8
  %sha256.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 3
  store [4096 x i128]* %out602, [4096 x i128]** %sha256.out.write_output_inner, align 8
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
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 0
  %sha256bytes.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 1
  %sha256bytes.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256bytes.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256bytes.in.read_input_inner, [4096 x i128]** %sha256bytes.in.declare_input, align 8
  %j2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %sha256bytes.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %byte_to_bits = alloca [4096 x %struct_template_circuit_num2bits*]*, align 8
  %byte_to_bits4 = alloca [4096 x %struct_template_circuit_num2bits*], align 8
  store [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits4, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %bits_to_bytes = alloca [4096 x %struct_template_circuit_bits2num*]*, align 8
  %bits_to_bytes5 = alloca [4096 x %struct_template_circuit_bits2num*], align 8
  store [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 8)
  %ptr_getter = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %byte_to_bits8 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %byte_to_bits8, align 8
  %in = load [4096 x i128]*, [4096 x i128]** %sha256bytes.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i.0
  %in10 = load i128, i128* %array_getter, align 4
  %byte_to_bits11 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %array_getter13 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits11, i128 0, i128 %i.0
  %byte_to_bits14 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter13, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits14, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %in10, i1* @constraint.169)
  %ptr_getter16 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %array_getter18 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %ptr_getter16, i128 0, i128 %i.0
  %byte_to_bits19 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter18, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits19, i32 0, i32 1
  store i128 %in10, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sha256bytes.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %mul = mul i128 %sha256bytes.n.read_arg_inner, 8
  %call24 = call %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %mul)
  br label %loop.body25

loop.body25:                                      ; preds = %loop.latch57, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add59, %loop.latch57 ]
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch51, %loop.body25
  %j.0 = phi i128 [ 0, %loop.body25 ], [ %add53, %loop.latch51 ]
  %byte_to_bits27 = load [4096 x %struct_template_circuit_num2bits*]*, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %array_getter29 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits27, i128 0, i128 %i.1
  %byte_to_bits30 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter29, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits30, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter31, align 8
  %sub = sub i128 7, %j.0
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %sub
  %byte_to_bits34 = load i128, i128* %array_getter33, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call24, i32 0, i32 1
  %sha256.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter36, align 8
  %mul38 = mul i128 %i.1, 8
  %add40 = add i128 %mul38, %j.0
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter, i128 0, i128 %add40
  %sha25642 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sha25642, i128 %byte_to_bits34, i1* @constraint.170)
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call24, i32 0, i32 1
  %sha256.in.read_input_outter45 = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %mul47 = mul i128 %i.1, 8
  %add49 = add i128 %mul47, %j.0
  %sha25650 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter45, i128 0, i128 %add49
  store i128 %byte_to_bits34, i128* %sha25650, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body26
  %add53 = add i128 %j.0, 1
  %slt55 = icmp slt i128 %add53, 8
  br i1 %slt55, label %loop.body26, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.exit56
  %add59 = add i128 %i.1, 1
  %slt62 = icmp slt i128 %add59, %sha256bytes.n.read_arg_inner
  br i1 %slt62, label %loop.body25, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch114, %loop.exit63
  %i.2 = phi i128 [ 0, %loop.exit63 ], [ %add116, %loop.latch114 ]
  %call65 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 8)
  %ptr_getter66 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %bits_to_bytes68 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %ptr_getter66, i128 0, i128 %i.2
  store %struct_template_circuit_bits2num* %call65, %struct_template_circuit_bits2num** %bits_to_bytes68, align 8
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch96, %loop.body64
  %j.1 = phi i128 [ 0, %loop.body64 ], [ %add98, %loop.latch96 ]
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call24, i32 0, i32 3
  %sha256.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter71, align 8
  %mul73 = mul i128 %i.2, 8
  %add75 = add i128 %mul73, %j.1
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.out.read_output_outter, i128 0, i128 %add75
  %sha25677 = load i128, i128* %array_getter76, align 4
  %bits_to_bytes78 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %array_getter80 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes78, i128 0, i128 %i.2
  %bits_to_bytes81 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes81, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter82, align 8
  %sub84 = sub i128 7, %j.1
  %array_getter85 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %sub84
  %bits_to_bytes86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_utils_constraint(i128 %bits_to_bytes86, i128 %sha25677, i1* @constraint.171)
  %ptr_getter87 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %array_getter89 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %ptr_getter87, i128 0, i128 %i.2
  %bits_to_bytes90 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter89, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes90, i32 0, i32 1
  %bits2num.in.read_input_outter92 = load [4096 x i128]*, [4096 x i128]** %struct_getter91, align 8
  %sub94 = sub i128 7, %j.1
  %bits_to_bytes95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter92, i128 0, i128 %sub94
  store i128 %sha25677, i128* %bits_to_bytes95, align 4
  br label %loop.latch96

loop.latch96:                                     ; preds = %loop.body69
  %add98 = add i128 %j.1, 1
  %slt100 = icmp slt i128 %add98, 8
  br i1 %slt100, label %loop.body69, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch96
  %bits_to_bytes102 = load [4096 x %struct_template_circuit_bits2num*]*, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %array_getter104 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes102, i128 0, i128 %i.2
  %bits_to_bytes105 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter104, align 8
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes105, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter106, align 4
  %out107 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out107, i128 0, i128 %i.2
  %out110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out110, i128 %bits2num.out.read_output_outter, i1* @constraint.172)
  %ptr_getter111 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %out113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter111, i128 0, i128 %i.2
  store i128 %bits2num.out.read_output_outter, i128* %out113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.exit101
  %add116 = add i128 %i.2, 1
  %slt118 = icmp slt i128 %add116, 32
  br i1 %slt118, label %loop.body64, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch114
  br label %arraydim

arraydim:                                         ; preds = %loop.exit119
  %ptr_cast = bitcast [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sha256bytes.n.read_arg_inner)
  %ptr_cast120 = bitcast [4096 x i128]** %sha256bytes.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast120, i128 %sha256bytes.n.read_arg_inner)
  %ptr_cast121 = bitcast [4096 x i128]** %sha256bytes.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 32)
  %ptr_cast122 = bitcast [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out123 = load [4096 x i128]*, [4096 x i128]** %sha256bytes.out.declare_output, align 8
  %sha256bytes.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 2
  store [4096 x i128]* %out123, [4096 x i128]** %sha256bytes.out.write_output_inner, align 8
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
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 0
  %sszlayer.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 1
  %sszlayer.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sszlayer.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszlayer.in.read_input_inner, [4096 x i128]** %sszlayer.in.declare_input, align 8
  %hashers = alloca [4096 x %struct_template_circuit_sha256bytes*]*, align 8
  %hashers2 = alloca [4096 x %struct_template_circuit_sha256bytes*], align 8
  store [4096 x %struct_template_circuit_sha256bytes*]* %hashers2, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %sszlayer.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %num_pairs3 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %j5 = call i128 @fn_intrinsic_utils_init()
  %sdiv = sdiv i128 %sszlayer.num_bytes.read_arg_inner, 2
  %sdiv8 = sdiv i128 %sszlayer.num_bytes.read_arg_inner, 64
  %sdiv10 = sdiv i128 %sszlayer.num_bytes.read_arg_inner, 64
  br label %loop.body

loop.body:                                        ; preds = %loop.latch36, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add38, %loop.latch36 ]
  %call = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  %ptr_getter = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %hashers12 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_sha256bytes* %call, %struct_template_circuit_sha256bytes** %hashers12, align 8
  br label %loop.body13

loop.body13:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add34, %loop.latch ]
  %in = load [4096 x i128]*, [4096 x i128]** %sszlayer.in.declare_input, align 8
  %mul = mul i128 %i.0, 64
  %add = add i128 %mul, %j.0
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %add
  %in16 = load i128, i128* %array_getter, align 4
  %hashers17 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %array_getter19 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers17, i128 0, i128 %i.0
  %hashers20 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter19, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers20, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %j.0
  %hashers24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %hashers24, i128 %in16, i1* @constraint.173)
  %ptr_getter25 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %array_getter27 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %ptr_getter25, i128 0, i128 %i.0
  %hashers28 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers28, i32 0, i32 1
  %sha256bytes.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %hashers32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter30, i128 0, i128 %j.0
  store i128 %in16, i128* %hashers32, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body13
  %add34 = add i128 %j.0, 1
  %slt = icmp slt i128 %add34, 64
  br i1 %slt, label %loop.body13, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch36

loop.latch36:                                     ; preds = %loop.exit
  %add38 = add i128 %i.0, 1
  %slt41 = icmp slt i128 %add38, %sdiv8
  br i1 %slt41, label %loop.body, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch36
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch72, %loop.exit42
  %i.1 = phi i128 [ 0, %loop.exit42 ], [ %add74, %loop.latch72 ]
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch66, %loop.body43
  %j.1 = phi i128 [ 0, %loop.body43 ], [ %add68, %loop.latch66 ]
  %hashers45 = load [4096 x %struct_template_circuit_sha256bytes*]*, [4096 x %struct_template_circuit_sha256bytes*]** %hashers, align 8
  %array_getter47 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers45, i128 0, i128 %i.1
  %hashers48 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter47, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers48, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter49, align 8
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %j.1
  %hashers52 = load i128, i128* %array_getter51, align 4
  %out53 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %mul55 = mul i128 %i.1, 32
  %add57 = add i128 %mul55, %j.1
  %array_getter58 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out53, i128 0, i128 %add57
  %out59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out59, i128 %hashers52, i1* @constraint.174)
  %ptr_getter60 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %mul62 = mul i128 %i.1, 32
  %add64 = add i128 %mul62, %j.1
  %out65 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter60, i128 0, i128 %add64
  store i128 %hashers52, i128* %out65, align 4
  br label %loop.latch66

loop.latch66:                                     ; preds = %loop.body44
  %add68 = add i128 %j.1, 1
  %slt70 = icmp slt i128 %add68, 32
  br i1 %slt70, label %loop.body44, label %loop.exit71

loop.exit71:                                      ; preds = %loop.latch66
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.exit71
  %add74 = add i128 %i.1, 1
  %slt77 = icmp slt i128 %add74, %sdiv8
  br i1 %slt77, label %loop.body43, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  br label %arraydim

arraydim:                                         ; preds = %loop.exit78
  %ptr_cast = bitcast [4096 x i128]** %sszlayer.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sszlayer.num_bytes.read_arg_inner)
  %ptr_cast79 = bitcast [4096 x i128]** %sszlayer.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast79, i128 %sdiv)
  %ptr_cast80 = bitcast [4096 x %struct_template_circuit_sha256bytes*]** %hashers to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast80, i128 %sdiv10)
  br label %exit

exit:                                             ; preds = %arraydim
  %out81 = load [4096 x i128]*, [4096 x i128]** %sszlayer.out.declare_output, align 8
  %sszlayer.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 2
  store [4096 x i128]* %out81, [4096 x i128]** %sszlayer.out.write_output_inner, align 8
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
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 0
  %sszarray.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 1
  %sszarray.log2b.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 2
  %sszarray.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %sszarray.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszarray.in.read_input_inner, [4096 x i128]** %sszarray.in.declare_input, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  %layer_idx4 = call i128 @fn_intrinsic_utils_init()
  %ssz_layers = alloca [4096 x %struct_template_circuit_sszlayer*]*, align 8
  %ssz_layers5 = alloca [4096 x %struct_template_circuit_sszlayer*], align 8
  store [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers5, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %num_input_bytes6 = call i128 @fn_intrinsic_utils_init()
  %sszarray.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszarray.out.declare_output, align 8
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %sszarray.log2b.read_arg_inner)
  %mul = mul i128 32, %pow
  %eq = icmp eq i128 %mul, %sszarray.num_bytes.read_arg_inner
  call void @fn_intrinsic_utils_assert(i1 %eq)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch64, %entry
  %layer_idx.0 = phi i128 [ 0, %entry ], [ %add66, %loop.latch64 ]
  %pow11 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %layer_idx.0)
  %sdiv = sdiv i128 %sszarray.num_bytes.read_arg_inner, %pow11
  %call = call %struct_template_circuit_sszlayer* @fn_template_build_sszlayer(i128 %sdiv)
  %ptr_getter = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %ssz_layers14 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter, i128 0, i128 %layer_idx.0
  store %struct_template_circuit_sszlayer* %call, %struct_template_circuit_sszlayer** %ssz_layers14, align 8
  br label %loop.body15

loop.body15:                                      ; preds = %loop.latch, %loop.body
  %i.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %eq17 = icmp eq i128 %layer_idx.0, 0
  br i1 %eq17, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body15
  %in = load [4096 x i128]*, [4096 x i128]** %sszarray.in.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %in, i128 0, i128 %i.0
  %in19 = load i128, i128* %array_getter, align 4
  %ssz_layers20 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %array_getter22 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers20, i128 0, i128 %layer_idx.0
  %ssz_layers23 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers23, i32 0, i32 1
  %sszlayer.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter, i128 0, i128 %i.0
  %ssz_layers27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_layers27, i128 %in19, i1* @constraint.175)
  %ptr_getter28 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %array_getter30 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter28, i128 0, i128 %layer_idx.0
  %ssz_layers31 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter30, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers31, i32 0, i32 1
  %sszlayer.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %ssz_layers35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter33, i128 0, i128 %i.0
  store i128 %in19, i128* %ssz_layers35, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body15
  %ssz_layers36 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %sub = sub i128 %layer_idx.0, 1
  %array_getter38 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers36, i128 0, i128 %sub
  %ssz_layers39 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers39, i32 0, i32 2
  %sszlayer.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter40, align 8
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter, i128 0, i128 %i.0
  %ssz_layers43 = load i128, i128* %array_getter42, align 4
  %ssz_layers44 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %array_getter46 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers44, i128 0, i128 %layer_idx.0
  %ssz_layers47 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter46, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers47, i32 0, i32 1
  %sszlayer.in.read_input_outter49 = load [4096 x i128]*, [4096 x i128]** %struct_getter48, align 8
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter49, i128 0, i128 %i.0
  %ssz_layers52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_layers52, i128 %ssz_layers43, i1* @constraint.176)
  %ptr_getter53 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %array_getter55 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ptr_getter53, i128 0, i128 %layer_idx.0
  %ssz_layers56 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter55, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers56, i32 0, i32 1
  %sszlayer.in.read_input_outter58 = load [4096 x i128]*, [4096 x i128]** %struct_getter57, align 8
  %ssz_layers60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter58, i128 0, i128 %i.0
  store i128 %ssz_layers43, i128* %ssz_layers60, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sdiv
  br i1 %slt, label %loop.body15, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit
  %add66 = add i128 %layer_idx.0, 1
  %slt69 = icmp slt i128 %add66, %sszarray.log2b.read_arg_inner
  br i1 %slt69, label %loop.body, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch89, %loop.exit70
  %i.1 = phi i128 [ 0, %loop.exit70 ], [ %add91, %loop.latch89 ]
  %ssz_layers72 = load [4096 x %struct_template_circuit_sszlayer*]*, [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers, align 8
  %sub74 = sub i128 %sszarray.log2b.read_arg_inner, 1
  %array_getter75 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers72, i128 0, i128 %sub74
  %ssz_layers76 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter75, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers76, i32 0, i32 2
  %sszlayer.out.read_output_outter78 = load [4096 x i128]*, [4096 x i128]** %struct_getter77, align 8
  %array_getter80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter78, i128 0, i128 %i.1
  %ssz_layers81 = load i128, i128* %array_getter80, align 4
  %out82 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %array_getter84 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out82, i128 0, i128 %i.1
  %out85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out85, i128 %ssz_layers81, i1* @constraint.177)
  %ptr_getter86 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %out88 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter86, i128 0, i128 %i.1
  store i128 %ssz_layers81, i128* %out88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body71
  %add91 = add i128 %i.1, 1
  %slt93 = icmp slt i128 %add91, 32
  br i1 %slt93, label %loop.body71, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch89
  br label %arraydim

arraydim:                                         ; preds = %loop.exit94
  %ptr_cast = bitcast [4096 x %struct_template_circuit_sszlayer*]** %ssz_layers to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sszarray.log2b.read_arg_inner)
  %ptr_cast95 = bitcast [4096 x i128]** %sszarray.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast95, i128 %sszarray.num_bytes.read_arg_inner)
  %ptr_cast96 = bitcast [4096 x i128]** %sszarray.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast96, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out97 = load [4096 x i128]*, [4096 x i128]** %sszarray.out.declare_output, align 8
  %sszarray.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 3
  store [4096 x i128]* %out97, [4096 x i128]** %sszarray.out.write_output_inner, align 8
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
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 0
  %sszphase0synccommittee.pubkeys.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter, align 8
  %sszphase0synccommittee.pubkeys.declare_input = alloca [4096 x [4096 x i128]]*, align 8
  store [4096 x [4096 x i128]]* %sszphase0synccommittee.pubkeys.read_input_inner, [4096 x [4096 x i128]]** %sszphase0synccommittee.pubkeys.declare_input, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 1
  %sszphase0synccommittee.aggregate_pubkey.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sszphase0synccommittee.aggregate_pubkey.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sszphase0synccommittee.aggregate_pubkey.read_input_inner, [4096 x i128]** %sszphase0synccommittee.aggregate_pubkey.declare_input, align 8
  %j2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %sszphase0synccommittee.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 32768, i128 10)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch43, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add45, %loop.latch43 ]
  br label %loop.body4

loop.body4:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add40, %loop.latch ]
  %slt = icmp slt i128 %j.0, 48
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body4
  %pubkeys = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sszphase0synccommittee.pubkeys.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %pubkeys, i128 0, i128 %i.0, i128 %j.0
  %pubkeys8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %mul = mul i128 %i.0, 64
  %add = add i128 %mul, %j.0
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %add
  %ssz_pubkeys14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_pubkeys14, i128 %pubkeys8, i1* @constraint.178)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %mul18 = mul i128 %i.0, 64
  %add20 = add i128 %mul18, %j.0
  %ssz_pubkeys21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter16, i128 0, i128 %add20
  store i128 %pubkeys8, i128* %ssz_pubkeys21, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %mul26 = mul i128 %i.0, 64
  %add28 = add i128 %mul26, %j.0
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter24, i128 0, i128 %add28
  %ssz_pubkeys30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_pubkeys30, i128 0, i1* @constraint.179)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %mul35 = mul i128 %i.0, 64
  %add37 = add i128 %mul35, %j.0
  %ssz_pubkeys38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %add37
  store i128 0, i128* %ssz_pubkeys38, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add40 = add i128 %j.0, 1
  %slt42 = icmp slt i128 %add40, 64
  br i1 %slt42, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch43

loop.latch43:                                     ; preds = %loop.exit
  %add45 = add i128 %i.0, 1
  %slt47 = icmp slt i128 %add45, 512
  br i1 %slt47, label %loop.body, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch43
  %call49 = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 64, i128 1)
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch81, %loop.exit48
  %i.1 = phi i128 [ 0, %loop.exit48 ], [ %add83, %loop.latch81 ]
  %slt54 = icmp slt i128 %i.1, 48
  br i1 %slt54, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %aggregate_pubkey = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.aggregate_pubkey.declare_input, align 8
  %array_getter56 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aggregate_pubkey, i128 0, i128 %i.1
  %aggregate_pubkey57 = load i128, i128* %array_getter56, align 4
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter60 = load [4096 x i128]*, [4096 x i128]** %struct_getter59, align 8
  %array_getter62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter60, i128 0, i128 %i.1
  %ssz_aggregate_pubkey63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_aggregate_pubkey63, i128 %aggregate_pubkey57, i1* @constraint.180)
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %ssz_aggregate_pubkey68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter66, i128 0, i128 %i.1
  store i128 %aggregate_pubkey57, i128* %ssz_aggregate_pubkey68, align 4
  br label %if.exit80

if.false52:                                       ; preds = %loop.body50
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %array_getter73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i.1
  %ssz_aggregate_pubkey74 = load i128, i128* %array_getter73, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_aggregate_pubkey74, i128 0, i1* @constraint.181)
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter77 = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %ssz_aggregate_pubkey79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter77, i128 0, i128 %i.1
  store i128 0, i128* %ssz_aggregate_pubkey79, align 4
  br label %if.exit80

if.exit80:                                        ; preds = %if.false52, %if.true51
  br label %loop.latch81

loop.latch81:                                     ; preds = %if.exit80
  %add83 = add i128 %i.1, 1
  %slt85 = icmp slt i128 %add83, 64
  br i1 %slt85, label %loop.body50, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch81
  %call87 = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch126, %loop.exit86
  %i.2 = phi i128 [ 0, %loop.exit86 ], [ %add128, %loop.latch126 ]
  %slt92 = icmp slt i128 %i.2, 32
  br i1 %slt92, label %if.true89, label %if.false90

if.true89:                                        ; preds = %loop.body88
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %array_getter96 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i.2
  %ssz_pubkeys97 = load i128, i128* %array_getter96, align 4
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %i.2
  %hasher102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_utils_constraint(i128 %hasher102, i128 %ssz_pubkeys97, i1* @constraint.182)
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter105 = load [4096 x i128]*, [4096 x i128]** %struct_getter104, align 8
  %hasher107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter105, i128 0, i128 %i.2
  store i128 %ssz_pubkeys97, i128* %hasher107, align 4
  br label %if.exit125

if.false90:                                       ; preds = %loop.body88
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 3
  %sszarray.out.read_output_outter110 = load [4096 x i128]*, [4096 x i128]** %struct_getter109, align 8
  %sub = sub i128 %i.2, 32
  %array_getter112 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter110, i128 0, i128 %sub
  %ssz_aggregate_pubkey113 = load i128, i128* %array_getter112, align 4
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter116 = load [4096 x i128]*, [4096 x i128]** %struct_getter115, align 8
  %array_getter118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter116, i128 0, i128 %i.2
  %hasher119 = load i128, i128* %array_getter118, align 4
  call void @fn_intrinsic_utils_constraint(i128 %hasher119, i128 %ssz_aggregate_pubkey113, i1* @constraint.183)
  %struct_getter121 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter122 = load [4096 x i128]*, [4096 x i128]** %struct_getter121, align 8
  %hasher124 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter122, i128 0, i128 %i.2
  store i128 %ssz_aggregate_pubkey113, i128* %hasher124, align 4
  br label %if.exit125

if.exit125:                                       ; preds = %if.false90, %if.true89
  br label %loop.latch126

loop.latch126:                                    ; preds = %if.exit125
  %add128 = add i128 %i.2, 1
  %slt130 = icmp slt i128 %add128, 64
  br i1 %slt130, label %loop.body88, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch126
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch145, %loop.exit131
  %i.3 = phi i128 [ 0, %loop.exit131 ], [ %add147, %loop.latch145 ]
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter134, align 8
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %i.3
  %hasher137 = load i128, i128* %array_getter136, align 4
  %out138 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %array_getter140 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out138, i128 0, i128 %i.3
  %out141 = load i128, i128* %array_getter140, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out141, i128 %hasher137, i1* @constraint.184)
  %ptr_getter142 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %out144 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter142, i128 0, i128 %i.3
  store i128 %hasher137, i128* %out144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body132
  %add147 = add i128 %i.3, 1
  %slt149 = icmp slt i128 %add147, 32
  br i1 %slt149, label %loop.body132, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch145
  br label %arraydim

arraydim:                                         ; preds = %loop.exit150
  %ptr_cast = bitcast [4096 x i128]** %sszphase0synccommittee.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast151 = bitcast [4096 x [4096 x i128]]** %sszphase0synccommittee.pubkeys.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast151, i128 512, i128 48)
  %ptr_cast152 = bitcast [4096 x i128]** %sszphase0synccommittee.aggregate_pubkey.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast152, i128 48)
  br label %exit

exit:                                             ; preds = %arraydim
  %out153 = load [4096 x i128]*, [4096 x i128]** %sszphase0synccommittee.out.declare_output, align 8
  %sszphase0synccommittee.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 2
  store [4096 x i128]* %out153, [4096 x i128]** %sszphase0synccommittee.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0synccommittee* @fn_template_build_sszphase0synccommittee() {
entry:
  %struct_template_circuit_sszphase0synccommittee = alloca %struct_template_circuit_sszphase0synccommittee, align 8
  ret %struct_template_circuit_sszphase0synccommittee* %struct_template_circuit_sszphase0synccommittee
}

define void @fn_template_init_sszphase0beaconblockheader(%struct_template_circuit_sszphase0beaconblockheader* %0) {
entry:
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
  %i5 = call i128 @fn_intrinsic_utils_init()
  %sszphase0beaconblockheader.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 256, i128 3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %slt = icmp slt i128 %i.0, 32
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %slot = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.slot.declare_input, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %slot, i128 0, i128 %i.0
  %slot8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %i.0
  %ssz_beacon_block_header13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header13, i128 %slot8, i1* @constraint.185)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %ssz_beacon_block_header17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter15, i128 0, i128 %i.0
  store i128 %slot8, i128* %ssz_beacon_block_header17, align 4
  br label %if.exit107

if.false:                                         ; preds = %loop.body
  %slt21 = icmp slt i128 %i.0, 64
  br i1 %slt21, label %if.true18, label %if.false19

if.true18:                                        ; preds = %if.false
  %proposer_index = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.proposer_index.declare_input, align 8
  %sub = sub i128 %i.0, 32
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %proposer_index, i128 0, i128 %sub
  %proposer_index24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter27, i128 0, i128 %i.0
  %ssz_beacon_block_header30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header30, i128 %proposer_index24, i1* @constraint.186)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %ssz_beacon_block_header35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %i.0
  store i128 %proposer_index24, i128* %ssz_beacon_block_header35, align 4
  br label %if.exit106

if.false19:                                       ; preds = %if.false
  %slt39 = icmp slt i128 %i.0, 96
  br i1 %slt39, label %if.true36, label %if.false37

if.true36:                                        ; preds = %if.false19
  %parent_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.parent_root.declare_input, align 8
  %sub41 = sub i128 %i.0, 64
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parent_root, i128 0, i128 %sub41
  %parent_root43 = load i128, i128* %array_getter42, align 4
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter46 = load [4096 x i128]*, [4096 x i128]** %struct_getter45, align 8
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter46, i128 0, i128 %i.0
  %ssz_beacon_block_header49 = load i128, i128* %array_getter48, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header49, i128 %parent_root43, i1* @constraint.187)
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter52 = load [4096 x i128]*, [4096 x i128]** %struct_getter51, align 8
  %ssz_beacon_block_header54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter52, i128 0, i128 %i.0
  store i128 %parent_root43, i128* %ssz_beacon_block_header54, align 4
  br label %if.exit105

if.false37:                                       ; preds = %if.false19
  %slt58 = icmp slt i128 %i.0, 128
  br i1 %slt58, label %if.true55, label %if.false56

if.true55:                                        ; preds = %if.false37
  %state_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.state_root.declare_input, align 8
  %sub60 = sub i128 %i.0, 96
  %array_getter61 = getelementptr inbounds [4096 x i128], [4096 x i128]* %state_root, i128 0, i128 %sub60
  %state_root62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter65 = load [4096 x i128]*, [4096 x i128]** %struct_getter64, align 8
  %array_getter67 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter65, i128 0, i128 %i.0
  %ssz_beacon_block_header68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header68, i128 %state_root62, i1* @constraint.188)
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %ssz_beacon_block_header73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i.0
  store i128 %state_root62, i128* %ssz_beacon_block_header73, align 4
  br label %if.exit104

if.false56:                                       ; preds = %if.false37
  %slt77 = icmp slt i128 %i.0, 160
  br i1 %slt77, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.false56
  %body_root = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.body_root.declare_input, align 8
  %sub79 = sub i128 %i.0, 128
  %array_getter80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %body_root, i128 0, i128 %sub79
  %body_root81 = load i128, i128* %array_getter80, align 4
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter84 = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter84, i128 0, i128 %i.0
  %ssz_beacon_block_header87 = load i128, i128* %array_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header87, i128 %body_root81, i1* @constraint.189)
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %ssz_beacon_block_header92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter90, i128 0, i128 %i.0
  store i128 %body_root81, i128* %ssz_beacon_block_header92, align 4
  br label %if.exit

if.false75:                                       ; preds = %if.false56
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter95 = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %array_getter97 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter95, i128 0, i128 %i.0
  %ssz_beacon_block_header98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ssz_beacon_block_header98, i128 0, i1* @constraint.190)
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter101 = load [4096 x i128]*, [4096 x i128]** %struct_getter100, align 8
  %ssz_beacon_block_header103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter101, i128 0, i128 %i.0
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
  %add = add i128 %i.0, 1
  %slt110 = icmp slt i128 %add, 256
  br i1 %slt110, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch124, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add126, %loop.latch124 ]
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter113, align 8
  %array_getter115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i.1
  %ssz_beacon_block_header116 = load i128, i128* %array_getter115, align 4
  %out117 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %array_getter119 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out117, i128 0, i128 %i.1
  %out120 = load i128, i128* %array_getter119, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out120, i128 %ssz_beacon_block_header116, i1* @constraint.191)
  %ptr_getter121 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %out123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter121, i128 0, i128 %i.1
  store i128 %ssz_beacon_block_header116, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body111
  %add126 = add i128 %i.1, 1
  %slt128 = icmp slt i128 %add126, 32
  br i1 %slt128, label %loop.body111, label %loop.exit129

loop.exit129:                                     ; preds = %loop.latch124
  br label %arraydim

arraydim:                                         ; preds = %loop.exit129
  %ptr_cast = bitcast [4096 x i128]** %sszphase0beaconblockheader.proposer_index.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast130 = bitcast [4096 x i128]** %sszphase0beaconblockheader.parent_root.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast130, i128 32)
  %ptr_cast131 = bitcast [4096 x i128]** %sszphase0beaconblockheader.slot.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast131, i128 32)
  %ptr_cast132 = bitcast [4096 x i128]** %sszphase0beaconblockheader.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast132, i128 32)
  %ptr_cast133 = bitcast [4096 x i128]** %sszphase0beaconblockheader.state_root.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast133, i128 32)
  %ptr_cast134 = bitcast [4096 x i128]** %sszphase0beaconblockheader.body_root.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast134, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %out135 = load [4096 x i128]*, [4096 x i128]** %sszphase0beaconblockheader.out.declare_output, align 8
  %sszphase0beaconblockheader.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 5
  store [4096 x i128]* %out135, [4096 x i128]** %sszphase0beaconblockheader.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0beaconblockheader* @fn_template_build_sszphase0beaconblockheader() {
entry:
  %struct_template_circuit_sszphase0beaconblockheader = alloca %struct_template_circuit_sszphase0beaconblockheader, align 8
  ret %struct_template_circuit_sszphase0beaconblockheader* %struct_template_circuit_sszphase0beaconblockheader
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
