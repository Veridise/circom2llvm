; ModuleID = './auditing/zk-light-client/sha256_bytes.ll'
source_filename = "/Users/hongbo/code/zk-light-client/circuits/circuits/sha256_bytes.circom"

%struct_template_circuit_xor3 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_shr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_rotr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_h = type { i128, [4096 x i128]* }
%struct_template_circuit_maj_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_k = type { i128, [4096 x i128]* }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_ch_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_lessthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_binsum = type { i128, i128, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_isequal = type { [4096 x i128]*, i128 }
%struct_template_circuit_compconstant = type { i128, [4096 x i128]*, [4096 x i128]*, i128, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_forceequalifenabled = type { i128, [4096 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_smallsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_aliascheck = type { [4096 x i128]* }
%struct_template_circuit_bigsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_lesseqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_t1 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num_strict = type { [4096 x i128]*, i128 }
%struct_template_circuit_t2 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_greaterthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_sigmaplus = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits_strict = type { i128, [4096 x i128]* }
%struct_template_circuit_sha256compression = type { [4096 x i128]*, [4096 x i128]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_sha256 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256bytes = type { i128, [4096 x i128]*, [4096 x i128]* }

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
  %xor3.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %xor3.mid.declare_inter, align 8
  %xor3.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall4 to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %xor3.out.declare_output, align 8
  %k5 = call i128 @fn_intrinsic_utils_init()
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
  call void @fn_intrinsic_utils_constraint(i128 %mid18, i128 %mul, i1* @constraint)
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
  call void @fn_intrinsic_utils_constraint(i128 %out60, i128 %sub56, i1* @constraint.1)
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
  %ptr_cast68 = bitcast [4096 x i128]** %xor3.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %xor3.n.read_arg_inner)
  %ptr_cast69 = bitcast [4096 x i128]** %xor3.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast69, i128 %xor3.n.read_arg_inner)
  %ptr_cast70 = bitcast [4096 x i128]** %xor3.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast70, i128 %xor3.n.read_arg_inner)
  %ptr_cast71 = bitcast [4096 x i128]** %xor3.b.declare_input to i128*
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
  %i3 = call i128 @fn_intrinsic_utils_init()
  %shr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %shr.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 0, i1* @constraint.2)
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
  call void @fn_intrinsic_utils_constraint(i128 %out20, i128 %in16, i1* @constraint.3)
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

define i128 @nbits(i128 %0) {
entry:
  %n1 = call i128 @fn_intrinsic_utils_init()
  %r2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n.0 = phi i128 [ 1, %entry ], [ %mul, %loop.latch ]
  %r.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
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

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %num2bits.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits.out.declare_output, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  %e23 = call i128 @fn_intrinsic_utils_init()
  %lc14 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
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
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.4)
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
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.5)
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
  %i3 = call i128 @fn_intrinsic_utils_init()
  %rotr.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %rotr.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %out11, i128 %in7, i1* @constraint.6)
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
  %ptr_cast = bitcast [4096 x i128]** %rotr.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %rotr.n.read_arg_inner)
  %ptr_cast18 = bitcast [4096 x i128]** %rotr.out.declare_output to i128*
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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %bits2num.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %bits2num.in.read_input_inner, [4096 x i128]** %bits2num.in.declare_input, align 8
  %e22 = call i128 @fn_intrinsic_utils_init()
  %lc13 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
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
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.7)
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

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %h.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %h.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %h.out.declare_output, align 8
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 %and, i1* @constraint.8)
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
  %maj_t.mid.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %mid, [4096 x i128]** %maj_t.mid.declare_inter, align 8
  %maj_t.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall4 to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %maj_t.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %mid18, i128 %mul, i1* @constraint.9)
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
  call void @fn_intrinsic_utils_constraint(i128 %out46, i128 %add42, i1* @constraint.10)
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
  %ptr_cast = bitcast [4096 x i128]** %maj_t.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %maj_t.n.read_arg_inner)
  %ptr_cast54 = bitcast [4096 x i128]** %maj_t.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast54, i128 %maj_t.n.read_arg_inner)
  %ptr_cast55 = bitcast [4096 x i128]** %maj_t.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast55, i128 %maj_t.n.read_arg_inner)
  %ptr_cast56 = bitcast [4096 x i128]** %maj_t.mid.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast56, i128 %maj_t.n.read_arg_inner)
  %ptr_cast57 = bitcast [4096 x i128]** %maj_t.out.declare_output to i128*
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

define i128 @Maj(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %and2 = and i128 %0, %2
  %xor = xor i128 %and, %and2
  %and5 = and i128 %1, %2
  %xor6 = xor i128 %xor, %and5
  ret i128 %xor6
}

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %k.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %c = alloca [4096 x i128]*, align 8
  %c1 = alloca [4096 x i128], align 8
  store [4096 x i128]* %c1, [4096 x i128]** %c, align 8
  %k.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %k.out.declare_output, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
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
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 %and, i1* @constraint.11)
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
  %ptr_cast = bitcast [4096 x i128]** %c to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 64)
  %ptr_cast14 = bitcast [4096 x i128]** %k.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast14, i128 32)
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
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.12)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_utils_constraint(i128 %mul12, i128 0, i1* @constraint.13)
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
  %k4 = call i128 @fn_intrinsic_utils_init()
  %ch_t.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %ch_t.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %out23, i128 %add, i1* @constraint.14)
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
  %ptr_cast = bitcast [4096 x i128]** %ch_t.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %ch_t.n.read_arg_inner)
  %ptr_cast30 = bitcast [4096 x i128]** %ch_t.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast30, i128 %ch_t.n.read_arg_inner)
  %ptr_cast31 = bitcast [4096 x i128]** %ch_t.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast31, i128 %ch_t.n.read_arg_inner)
  %ptr_cast32 = bitcast [4096 x i128]** %ch_t.b.declare_input to i128*
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
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.15)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %array_getter14 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b15 = load i128, i128* %array_getter14, align 4
  %sub16 = sub i128 1, %n2b15
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub16, i1* @constraint.16)
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
  %lout3 = call i128 @fn_intrinsic_utils_init()
  %nout4 = call i128 @fn_intrinsic_utils_init()
  %k5 = call i128 @fn_intrinsic_utils_init()
  %j6 = call i128 @fn_intrinsic_utils_init()
  %binsum.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %binsum.out.declare_output, align 8
  %lin7 = call i128 @fn_intrinsic_utils_init()
  %e28 = call i128 @fn_intrinsic_utils_init()
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %binsum.n.read_arg_inner)
  %sub = sub i128 %pow, 1
  %mul = mul i128 %sub, %binsum.ops.read_arg_inner
  %call = call i128 @nbits(i128 %mul)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add28, %loop.latch26 ]
  %lin.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch26 ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add25, %loop.latch26 ]
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add20, %loop.latch ]
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
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
  %k.1 = phi i128 [ 0, %loop.exit32 ], [ %add61, %loop.latch59 ]
  %lout.0 = phi i128 [ 0, %loop.exit32 ], [ %add55, %loop.latch59 ]
  %e2.1 = phi i128 [ 1, %loop.exit32 ], [ %add58, %loop.latch59 ]
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
  call void @fn_intrinsic_utils_constraint(i128 %mul47, i128 0, i1* @constraint.17)
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
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %add55, i1* @constraint.18)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit65
  %ptr_cast = bitcast [4096 x i128]** %binsum.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %call)
  %ptr_cast68 = bitcast [4096 x [4096 x i128]]** %binsum.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %binsum.ops.read_arg_inner, i128 %binsum.n.read_arg_inner)
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

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %compconstant.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %compconstant.in.read_input_inner, [4096 x i128]** %compconstant.in.declare_input, align 8
  %smsb2 = call i128 @fn_intrinsic_utils_init()
  %clsb3 = call i128 @fn_intrinsic_utils_init()
  %b4 = call i128 @fn_intrinsic_utils_init()
  %a5 = call i128 @fn_intrinsic_utils_init()
  %compconstant.parts.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %parts, [4096 x i128]** %compconstant.parts.declare_inter, align 8
  %slsb6 = call i128 @fn_intrinsic_utils_init()
  %sum7 = call i128 @fn_intrinsic_utils_init()
  %cmsb8 = call i128 @fn_intrinsic_utils_init()
  %e9 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %i10 = call i128 @fn_intrinsic_utils_init()
  %sout = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %b.0 = phi i128 [ -1, %entry ], [ %sub131, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
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
  call void @fn_intrinsic_utils_constraint(i128 %parts46, i128 %add42, i1* @constraint.21)
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
  call void @fn_intrinsic_utils_constraint(i128 %parts77, i128 %add73, i1* @constraint.22)
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
  call void @fn_intrinsic_utils_constraint(i128 %parts102, i128 %add98, i1* @constraint.23)
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
  call void @fn_intrinsic_utils_constraint(i128 %parts117, i128 %add113, i1* @constraint.24)
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
  call void @fn_intrinsic_utils_constraint(i128 %sout, i128 %add128, i1* @constraint.25)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.26)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %num2bits152, i1* @constraint.27)
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
  %lc12 = call i128 @fn_intrinsic_utils_init()
  %neg3 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %num2bitsneg.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bitsneg.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.28)
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
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.29)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter37, align 4
  %pow39 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul40 = mul i128 %iszero.out.read_output_outter, %pow39
  %add41 = add i128 %add, %mul40
  %pow43 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub45 = sub i128 %pow43, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %add41, i128 %sub45, i1* @constraint.30)
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

define i128 @rrot(i128 %0, i128 %1) {
entry:
  %rshift = lshr i128 %0, %1
  %sub = sub i128 32, %1
  %lshift = shl i128 %0, %sub
  %or = or i128 %rshift, %lshift
  %and = and i128 %or, 4294967295
  ret i128 %and
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
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.31)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %mul = mul i128 %sub10, %forceequalifenabled.enabled.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.32)
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

define i128 @sha256K(i128 %0) {
entry:
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %0
  %k3 = load i128, i128* %array_getter, align 4
  ret i128 %k3
}

define i128 @Ch(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %xor = xor i128 4294967295, %0
  %and2 = and i128 %xor, %2
  %xor3 = xor i128 %and, %and2
  ret i128 %xor3
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
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.33)
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
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.34)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.35)
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
  %smallsigma.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %smallsigma.out.declare_output, align 8
  %k4 = call i128 @fn_intrinsic_utils_init()
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
  call void @fn_intrinsic_utils_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.43)
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
  call void @fn_intrinsic_utils_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.44)
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
  call void @fn_intrinsic_utils_constraint(i128 %rota13, i128 %in8, i1* @constraint.45)
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
  call void @fn_intrinsic_utils_constraint(i128 %rotb27, i128 %in21, i1* @constraint.46)
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
  call void @fn_intrinsic_utils_constraint(i128 %rotc42, i128 %in36, i1* @constraint.47)
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
  call void @fn_intrinsic_utils_constraint(i128 %xor361, i128 %rota56, i1* @constraint.48)
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
  call void @fn_intrinsic_utils_constraint(i128 %xor377, i128 %rotb72, i1* @constraint.49)
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
  call void @fn_intrinsic_utils_constraint(i128 %xor393, i128 %rotc88, i1* @constraint.50)
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
  call void @fn_intrinsic_utils_constraint(i128 %out114, i128 %xor3110, i1* @constraint.51)
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
  %ptr_cast = bitcast [4096 x i128]** %bigsigma.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast124 = bitcast [4096 x i128]** %bigsigma.out.declare_output to i128*
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
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.52)
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
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.53)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.54)
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

define i128 @bsigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 6)
  %call2 = call i128 @rrot(i128 %0, i128 11)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 25)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
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
  %ki6 = call i128 @fn_intrinsic_utils_init()
  %t1.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %t1.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %bigsigma114, i128 %e9, i1* @constraint.55)
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
  call void @fn_intrinsic_utils_constraint(i128 %ch27, i128 %e22, i1* @constraint.56)
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
  call void @fn_intrinsic_utils_constraint(i128 %ch40, i128 %f35, i1* @constraint.57)
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
  call void @fn_intrinsic_utils_constraint(i128 %ch53, i128 %g48, i1* @constraint.58)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum70, i128 %h65, i1* @constraint.59)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum86, i128 %bigsigma180, i1* @constraint.60)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum102, i128 %ch96, i1* @constraint.61)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum116, i128 %k110, i1* @constraint.62)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum130, i128 %w124, i1* @constraint.63)
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
  call void @fn_intrinsic_utils_constraint(i128 %out151, i128 %sum147, i1* @constraint.64)
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
  %ptr_cast = bitcast [4096 x i128]** %t1.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast161 = bitcast [4096 x i128]** %t1.k.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast161, i128 32)
  %ptr_cast162 = bitcast [4096 x i128]** %t1.g.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast162, i128 32)
  %ptr_cast163 = bitcast [4096 x i128]** %t1.w.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast163, i128 32)
  %ptr_cast164 = bitcast [4096 x i128]** %t1.h.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast164, i128 32)
  %ptr_cast165 = bitcast [4096 x i128]** %t1.f.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast165, i128 32)
  %ptr_cast166 = bitcast [4096 x i128]** %t1.e.declare_input to i128*
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
  call void @fn_intrinsic_utils_constraint(i128 %b2n9, i128 %in4, i1* @constraint.65)
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
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.66)
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
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.67)
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
  %k3 = call i128 @fn_intrinsic_utils_init()
  %t2.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %t2.out.declare_output, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %bigsigma011, i128 %a6, i1* @constraint.68)
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
  call void @fn_intrinsic_utils_constraint(i128 %maj24, i128 %a19, i1* @constraint.69)
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
  call void @fn_intrinsic_utils_constraint(i128 %maj37, i128 %b32, i1* @constraint.70)
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
  call void @fn_intrinsic_utils_constraint(i128 %maj50, i128 %c45, i1* @constraint.71)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum69, i128 %bigsigma064, i1* @constraint.72)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum85, i128 %maj79, i1* @constraint.73)
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
  call void @fn_intrinsic_utils_constraint(i128 %out106, i128 %sum102, i1* @constraint.74)
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
  %ptr_cast = bitcast [4096 x i128]** %t2.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast116 = bitcast [4096 x i128]** %t2.c.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast116, i128 32)
  %ptr_cast117 = bitcast [4096 x i128]** %t2.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast117, i128 32)
  %ptr_cast118 = bitcast [4096 x i128]** %t2.out.declare_output to i128*
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
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.75)
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
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %in12, i1* @constraint.76)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.77)
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
  call void @fn_intrinsic_utils_constraint(i128 %sigma112, i128 %in27, i1* @constraint.78)
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
  call void @fn_intrinsic_utils_constraint(i128 %sigma025, i128 %in1519, i1* @constraint.79)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum44, i128 %sigma139, i1* @constraint.80)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum58, i128 %in752, i1* @constraint.81)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum75, i128 %sigma069, i1* @constraint.82)
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
  call void @fn_intrinsic_utils_constraint(i128 %sum89, i128 %in1683, i1* @constraint.83)
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
  call void @fn_intrinsic_utils_constraint(i128 %out110, i128 %sum106, i1* @constraint.84)
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
  %ptr_cast = bitcast [4096 x i128]** %sigmaplus.in15.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 32)
  %ptr_cast120 = bitcast [4096 x i128]** %sigmaplus.in7.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast120, i128 32)
  %ptr_cast121 = bitcast [4096 x i128]** %sigmaplus.in2.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 32)
  %ptr_cast122 = bitcast [4096 x i128]** %sigmaplus.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 32)
  %ptr_cast123 = bitcast [4096 x i128]** %sigmaplus.in16.declare_input to i128*
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

define i128 @ssigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 7)
  %call2 = call i128 @rrot(i128 %0, i128 18)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 3
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %num2bits_strict.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %num2bits_strict.out.declare_output, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.85)
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
  call void @fn_intrinsic_utils_constraint(i128 %out12, i128 %n2b8, i1* @constraint.86)
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
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.87)
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

define i128 @bsigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 2)
  %call2 = call i128 @rrot(i128 %0, i128 13)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 22)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
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

define [4096 x i128]* @sha256compression([4096 x i128]* %0, [4096 x i128]* %1) {
entry:
  %e2 = call i128 @fn_intrinsic_utils_init()
  %d3 = call i128 @fn_intrinsic_utils_init()
  %f4 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  %T27 = call i128 @fn_intrinsic_utils_init()
  %a8 = call i128 @fn_intrinsic_utils_init()
  %T19 = call i128 @fn_intrinsic_utils_init()
  %b10 = call i128 @fn_intrinsic_utils_init()
  %h12 = call i128 @fn_intrinsic_utils_init()
  %j13 = call i128 @fn_intrinsic_utils_init()
  %g14 = call i128 @fn_intrinsic_utils_init()
  %c15 = call i128 @fn_intrinsic_utils_init()
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
  %h.0 = phi i128 [ %H64, %loop.exit40 ], [ %g.0, %loop.latch162 ]
  %b.0 = phi i128 [ %H46, %loop.exit40 ], [ %a.0, %loop.latch162 ]
  %a.0 = phi i128 [ %H43, %loop.exit40 ], [ %and161, %loop.latch162 ]
  %i.1 = phi i128 [ 0, %loop.exit40 ], [ %add164, %loop.latch162 ]
  %f.0 = phi i128 [ %H58, %loop.exit40 ], [ %e.0, %loop.latch162 ]
  %d.0 = phi i128 [ %H52, %loop.exit40 ], [ %c.0, %loop.latch162 ]
  %e.0 = phi i128 [ %H55, %loop.exit40 ], [ %and154, %loop.latch162 ]
  %g.0 = phi i128 [ %H61, %loop.exit40 ], [ %f.0, %loop.latch162 ]
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
  %t2 = alloca [4096 x %struct_template_circuit_t2*]*, align 8
  %t22 = alloca [4096 x %struct_template_circuit_t2*], align 8
  store [4096 x %struct_template_circuit_t2*]* %t22, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  %ct_k = alloca [4096 x %struct_template_circuit_k*]*, align 8
  %ct_k4 = alloca [4096 x %struct_template_circuit_k*], align 8
  store [4096 x %struct_template_circuit_k*]* %ct_k4, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %sha256compression.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sha256compression.g.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %g = bitcast i8* %malloccall5 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %g, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %sha256compression.e.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %e = bitcast i8* %malloccall6 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %e, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %sha256compression.h.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %h = bitcast i8* %malloccall7 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %h, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %sha256compression.d.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %d = bitcast i8* %malloccall8 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %d, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %sha256compression.w.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %w = bitcast i8* %malloccall9 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %w, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %fsum = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %fsum10 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %fsum10, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %sha256compression.a.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %a = bitcast i8* %malloccall11 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %a, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %sha256compression.b.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %b = bitcast i8* %malloccall12 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %b, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sume = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %sume13 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %sume13, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %sha256compression.c.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %c = bitcast i8* %malloccall14 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %c, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %t15 = call i128 @fn_intrinsic_utils_init()
  %k16 = call i128 @fn_intrinsic_utils_init()
  %outCalc = alloca [4096 x i128]*, align 8
  %outCalc17 = alloca [4096 x i128], align 8
  store [4096 x i128]* %outCalc17, [4096 x i128]** %outCalc, align 8
  %sha256compression.f.declare_inter = alloca [4096 x [4096 x i128]]*, align 8
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %f = bitcast i8* %malloccall18 to [4096 x [4096 x i128]]*
  store [4096 x [4096 x i128]]* %f, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %t1 = alloca [4096 x %struct_template_circuit_t1*]*, align 8
  %t119 = alloca [4096 x %struct_template_circuit_t1*], align 8
  store [4096 x %struct_template_circuit_t1*]* %t119, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %suma = alloca [4096 x %struct_template_circuit_binsum*]*, align 8
  %suma20 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  store [4096 x %struct_template_circuit_binsum*]* %suma20, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %sigmaPlus = alloca [4096 x %struct_template_circuit_sigmaplus*]*, align 8
  %sigmaPlus21 = alloca [4096 x %struct_template_circuit_sigmaplus*], align 8
  store [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus21, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %hin = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %inp = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %call = call [4096 x i128]* @sha256compression([4096 x i128]* %hin, [4096 x i128]* %inp)
  store [4096 x i128]* %call, [4096 x i128]** %outCalc, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %outCalc22 = load [4096 x i128]*, [4096 x i128]** %outCalc, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %outCalc22, i128 0, i128 %i.0
  %outCalc24 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %out26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %outCalc24, i128* %out26, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 256
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch34, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add36, %loop.latch34 ]
  %call30 = call %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus()
  %ptr_getter31 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sigmaPlus33 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter31, i128 0, i128 %i.1
  store %struct_template_circuit_sigmaplus* %call30, %struct_template_circuit_sigmaplus** %sigmaPlus33, align 8
  br label %loop.latch34

loop.latch34:                                     ; preds = %loop.body29
  %add36 = add i128 %i.1, 1
  %slt38 = icmp slt i128 %add36, 48
  br i1 %slt38, label %loop.body29, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch34
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch46, %loop.exit39
  %i.2 = phi i128 [ 0, %loop.exit39 ], [ %add48, %loop.latch46 ]
  %call42 = call %struct_template_circuit_k* @fn_template_build_k(i128 %i.2)
  %ptr_getter43 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %ct_k45 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ptr_getter43, i128 0, i128 %i.2
  store %struct_template_circuit_k* %call42, %struct_template_circuit_k** %ct_k45, align 8
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body40
  %add48 = add i128 %i.2, 1
  %slt50 = icmp slt i128 %add48, 64
  br i1 %slt50, label %loop.body40, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch46
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch57, %loop.exit51
  %i.3 = phi i128 [ 0, %loop.exit51 ], [ %add59, %loop.latch57 ]
  %call53 = call %struct_template_circuit_t1* @fn_template_build_t1()
  %ptr_getter54 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %t156 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter54, i128 0, i128 %i.3
  store %struct_template_circuit_t1* %call53, %struct_template_circuit_t1** %t156, align 8
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body52
  %add59 = add i128 %i.3, 1
  %slt61 = icmp slt i128 %add59, 64
  br i1 %slt61, label %loop.body52, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch57
  br label %loop.body63

loop.body63:                                      ; preds = %loop.latch68, %loop.exit62
  %i.4 = phi i128 [ 0, %loop.exit62 ], [ %add70, %loop.latch68 ]
  %call64 = call %struct_template_circuit_t2* @fn_template_build_t2()
  %ptr_getter65 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %t267 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter65, i128 0, i128 %i.4
  store %struct_template_circuit_t2* %call64, %struct_template_circuit_t2** %t267, align 8
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body63
  %add70 = add i128 %i.4, 1
  %slt72 = icmp slt i128 %add70, 64
  br i1 %slt72, label %loop.body63, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch68
  br label %loop.body74

loop.body74:                                      ; preds = %loop.latch79, %loop.exit73
  %i.5 = phi i128 [ 0, %loop.exit73 ], [ %add81, %loop.latch79 ]
  %call75 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter76 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %suma78 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter76, i128 0, i128 %i.5
  store %struct_template_circuit_binsum* %call75, %struct_template_circuit_binsum** %suma78, align 8
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body74
  %add81 = add i128 %i.5, 1
  %slt83 = icmp slt i128 %add81, 64
  br i1 %slt83, label %loop.body74, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch79
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch90, %loop.exit84
  %i.6 = phi i128 [ 0, %loop.exit84 ], [ %add92, %loop.latch90 ]
  %call86 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter87 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %sume89 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter87, i128 0, i128 %i.6
  store %struct_template_circuit_binsum* %call86, %struct_template_circuit_binsum** %sume89, align 8
  br label %loop.latch90

loop.latch90:                                     ; preds = %loop.body85
  %add92 = add i128 %i.6, 1
  %slt94 = icmp slt i128 %add92, 64
  br i1 %slt94, label %loop.body85, label %loop.exit95

loop.exit95:                                      ; preds = %loop.latch90
  br label %loop.body96

loop.body96:                                      ; preds = %loop.latch101, %loop.exit95
  %i.7 = phi i128 [ 0, %loop.exit95 ], [ %add103, %loop.latch101 ]
  %call97 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %ptr_getter98 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %fsum100 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter98, i128 0, i128 %i.7
  store %struct_template_circuit_binsum* %call97, %struct_template_circuit_binsum** %fsum100, align 8
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.body96
  %add103 = add i128 %i.7, 1
  %slt105 = icmp slt i128 %add103, 8
  br i1 %slt105, label %loop.body96, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch101
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch260, %loop.exit106
  %t.0 = phi i128 [ 0, %loop.exit106 ], [ %add262, %loop.latch260 ]
  %slt109 = icmp slt i128 %t.0, 16
  br i1 %slt109, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body107
  br label %loop.body110

if.false:                                         ; preds = %loop.body107
  br label %loop.body132

loop.body110:                                     ; preds = %loop.latch126, %if.true
  %k.0 = phi i128 [ 0, %if.true ], [ %add128, %loop.latch126 ]
  %inp111 = load [4096 x i128]*, [4096 x i128]** %sha256compression.inp.declare_input, align 8
  %mul = mul i128 %t.0, 32
  %add113 = add i128 %mul, 31
  %sub = sub i128 %add113, %k.0
  %array_getter115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %inp111, i128 0, i128 %sub
  %inp116 = load i128, i128* %array_getter115, align 4
  %w117 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter120 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w117, i128 0, i128 %t.0, i128 %k.0
  %w121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %w121, i128 %inp116, i1* @constraint.88)
  %ptr_getter122 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %w125 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter122, i128 0, i128 %t.0, i128 %k.0
  store i128 %inp116, i128* %w125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body110
  %add128 = add i128 %k.0, 1
  %slt130 = icmp slt i128 %add128, 32
  br i1 %slt130, label %loop.body110, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch126
  br label %if.exit

loop.body132:                                     ; preds = %loop.latch229, %if.false
  %k.1 = phi i128 [ 0, %if.false ], [ %add231, %loop.latch229 ]
  %w133 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub135 = sub i128 %t.0, 2
  %array_getter137 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w133, i128 0, i128 %sub135, i128 %k.1
  %w138 = load i128, i128* %array_getter137, align 4
  %sigmaPlus139 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub141 = sub i128 %t.0, 16
  %array_getter142 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus139, i128 0, i128 %sub141
  %sigmaPlus143 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter142, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus143, i32 0, i32 0
  %sigmaplus.in2.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter144, align 8
  %array_getter146 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus147 = load i128, i128* %array_getter146, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus147, i128 %w138, i1* @constraint.89)
  %ptr_getter148 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub150 = sub i128 %t.0, 16
  %array_getter151 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter148, i128 0, i128 %sub150
  %sigmaPlus152 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter151, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus152, i32 0, i32 0
  %sigmaplus.in2.read_input_outter154 = load [4096 x i128]*, [4096 x i128]** %struct_getter153, align 8
  %sigmaPlus156 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter154, i128 0, i128 %k.1
  store i128 %w138, i128* %sigmaPlus156, align 4
  %w157 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub159 = sub i128 %t.0, 7
  %array_getter161 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w157, i128 0, i128 %sub159, i128 %k.1
  %w162 = load i128, i128* %array_getter161, align 4
  %sigmaPlus163 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub165 = sub i128 %t.0, 16
  %array_getter166 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus163, i128 0, i128 %sub165
  %sigmaPlus167 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter166, align 8
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus167, i32 0, i32 1
  %sigmaplus.in7.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter168, align 8
  %array_getter170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus171 = load i128, i128* %array_getter170, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus171, i128 %w162, i1* @constraint.90)
  %ptr_getter172 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub174 = sub i128 %t.0, 16
  %array_getter175 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter172, i128 0, i128 %sub174
  %sigmaPlus176 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter175, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus176, i32 0, i32 1
  %sigmaplus.in7.read_input_outter178 = load [4096 x i128]*, [4096 x i128]** %struct_getter177, align 8
  %sigmaPlus180 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter178, i128 0, i128 %k.1
  store i128 %w162, i128* %sigmaPlus180, align 4
  %w181 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub183 = sub i128 %t.0, 15
  %array_getter185 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w181, i128 0, i128 %sub183, i128 %k.1
  %w186 = load i128, i128* %array_getter185, align 4
  %sigmaPlus187 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub189 = sub i128 %t.0, 16
  %array_getter190 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus187, i128 0, i128 %sub189
  %sigmaPlus191 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter190, align 8
  %struct_getter192 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus191, i32 0, i32 2
  %sigmaplus.in15.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter192, align 8
  %array_getter194 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus195, i128 %w186, i1* @constraint.91)
  %ptr_getter196 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub198 = sub i128 %t.0, 16
  %array_getter199 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter196, i128 0, i128 %sub198
  %sigmaPlus200 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus200, i32 0, i32 2
  %sigmaplus.in15.read_input_outter202 = load [4096 x i128]*, [4096 x i128]** %struct_getter201, align 8
  %sigmaPlus204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter202, i128 0, i128 %k.1
  store i128 %w186, i128* %sigmaPlus204, align 4
  %w205 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sub207 = sub i128 %t.0, 16
  %array_getter209 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w205, i128 0, i128 %sub207, i128 %k.1
  %w210 = load i128, i128* %array_getter209, align 4
  %sigmaPlus211 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub213 = sub i128 %t.0, 16
  %array_getter214 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus211, i128 0, i128 %sub213
  %sigmaPlus215 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter214, align 8
  %struct_getter216 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus215, i32 0, i32 3
  %sigmaplus.in16.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter216, align 8
  %array_getter218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus219 = load i128, i128* %array_getter218, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sigmaPlus219, i128 %w210, i1* @constraint.92)
  %ptr_getter220 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub222 = sub i128 %t.0, 16
  %array_getter223 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %ptr_getter220, i128 0, i128 %sub222
  %sigmaPlus224 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter223, align 8
  %struct_getter225 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus224, i32 0, i32 3
  %sigmaplus.in16.read_input_outter226 = load [4096 x i128]*, [4096 x i128]** %struct_getter225, align 8
  %sigmaPlus228 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter226, i128 0, i128 %k.1
  store i128 %w210, i128* %sigmaPlus228, align 4
  br label %loop.latch229

loop.latch229:                                    ; preds = %loop.body132
  %add231 = add i128 %k.1, 1
  %slt233 = icmp slt i128 %add231, 32
  br i1 %slt233, label %loop.body132, label %loop.exit234

loop.exit234:                                     ; preds = %loop.latch229
  br label %loop.body235

loop.body235:                                     ; preds = %loop.latch254, %loop.exit234
  %k.2 = phi i128 [ 0, %loop.exit234 ], [ %add256, %loop.latch254 ]
  %sigmaPlus236 = load [4096 x %struct_template_circuit_sigmaplus*]*, [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus, align 8
  %sub238 = sub i128 %t.0, 16
  %array_getter239 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus236, i128 0, i128 %sub238
  %sigmaPlus240 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus240, i32 0, i32 4
  %sigmaplus.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter241, align 8
  %array_getter243 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.out.read_output_outter, i128 0, i128 %k.2
  %sigmaPlus244 = load i128, i128* %array_getter243, align 4
  %w245 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter248 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w245, i128 0, i128 %t.0, i128 %k.2
  %w249 = load i128, i128* %array_getter248, align 4
  call void @fn_intrinsic_utils_constraint(i128 %w249, i128 %sigmaPlus244, i1* @constraint.93)
  %ptr_getter250 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %w253 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter250, i128 0, i128 %t.0, i128 %k.2
  store i128 %sigmaPlus244, i128* %w253, align 4
  br label %loop.latch254

loop.latch254:                                    ; preds = %loop.body235
  %add256 = add i128 %k.2, 1
  %slt258 = icmp slt i128 %add256, 32
  br i1 %slt258, label %loop.body235, label %loop.exit259

loop.exit259:                                     ; preds = %loop.latch254
  br label %if.exit

if.exit:                                          ; preds = %loop.exit259, %loop.exit131
  br label %loop.latch260

loop.latch260:                                    ; preds = %if.exit
  %add262 = add i128 %t.0, 1
  %slt264 = icmp slt i128 %add262, 64
  br i1 %slt264, label %loop.body107, label %loop.exit265

loop.exit265:                                     ; preds = %loop.latch260
  br label %loop.body266

loop.body266:                                     ; preds = %loop.latch362, %loop.exit265
  %k.3 = phi i128 [ 0, %loop.exit265 ], [ %add364, %loop.latch362 ]
  %hin267 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %array_getter269 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin267, i128 0, i128 %k.3
  %hin270 = load i128, i128* %array_getter269, align 4
  %a271 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter273 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a271, i128 0, i128 0, i128 %k.3
  %a274 = load i128, i128* %array_getter273, align 4
  call void @fn_intrinsic_utils_constraint(i128 %a274, i128 %hin270, i1* @constraint.94)
  %ptr_getter275 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %a277 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter275, i128 0, i128 0, i128 %k.3
  store i128 %hin270, i128* %a277, align 4
  %hin278 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add280 = add i128 32, %k.3
  %array_getter281 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin278, i128 0, i128 %add280
  %hin282 = load i128, i128* %array_getter281, align 4
  %b283 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter285 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b283, i128 0, i128 0, i128 %k.3
  %b286 = load i128, i128* %array_getter285, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b286, i128 %hin282, i1* @constraint.95)
  %ptr_getter287 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %b289 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter287, i128 0, i128 0, i128 %k.3
  store i128 %hin282, i128* %b289, align 4
  %hin290 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add292 = add i128 64, %k.3
  %array_getter293 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin290, i128 0, i128 %add292
  %hin294 = load i128, i128* %array_getter293, align 4
  %c295 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter297 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c295, i128 0, i128 0, i128 %k.3
  %c298 = load i128, i128* %array_getter297, align 4
  call void @fn_intrinsic_utils_constraint(i128 %c298, i128 %hin294, i1* @constraint.96)
  %ptr_getter299 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %c301 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter299, i128 0, i128 0, i128 %k.3
  store i128 %hin294, i128* %c301, align 4
  %hin302 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add304 = add i128 96, %k.3
  %array_getter305 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin302, i128 0, i128 %add304
  %hin306 = load i128, i128* %array_getter305, align 4
  %d307 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter309 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d307, i128 0, i128 0, i128 %k.3
  %d310 = load i128, i128* %array_getter309, align 4
  call void @fn_intrinsic_utils_constraint(i128 %d310, i128 %hin306, i1* @constraint.97)
  %ptr_getter311 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %d313 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter311, i128 0, i128 0, i128 %k.3
  store i128 %hin306, i128* %d313, align 4
  %hin314 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add316 = add i128 128, %k.3
  %array_getter317 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin314, i128 0, i128 %add316
  %hin318 = load i128, i128* %array_getter317, align 4
  %e319 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter321 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e319, i128 0, i128 0, i128 %k.3
  %e322 = load i128, i128* %array_getter321, align 4
  call void @fn_intrinsic_utils_constraint(i128 %e322, i128 %hin318, i1* @constraint.98)
  %ptr_getter323 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %e325 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter323, i128 0, i128 0, i128 %k.3
  store i128 %hin318, i128* %e325, align 4
  %hin326 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add328 = add i128 160, %k.3
  %array_getter329 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin326, i128 0, i128 %add328
  %hin330 = load i128, i128* %array_getter329, align 4
  %f331 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter333 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f331, i128 0, i128 0, i128 %k.3
  %f334 = load i128, i128* %array_getter333, align 4
  call void @fn_intrinsic_utils_constraint(i128 %f334, i128 %hin330, i1* @constraint.99)
  %ptr_getter335 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %f337 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter335, i128 0, i128 0, i128 %k.3
  store i128 %hin330, i128* %f337, align 4
  %hin338 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add340 = add i128 192, %k.3
  %array_getter341 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin338, i128 0, i128 %add340
  %hin342 = load i128, i128* %array_getter341, align 4
  %g343 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter345 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g343, i128 0, i128 0, i128 %k.3
  %g346 = load i128, i128* %array_getter345, align 4
  call void @fn_intrinsic_utils_constraint(i128 %g346, i128 %hin342, i1* @constraint.100)
  %ptr_getter347 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %g349 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter347, i128 0, i128 0, i128 %k.3
  store i128 %hin342, i128* %g349, align 4
  %hin350 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add352 = add i128 224, %k.3
  %array_getter353 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin350, i128 0, i128 %add352
  %hin354 = load i128, i128* %array_getter353, align 4
  %h355 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter357 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h355, i128 0, i128 0, i128 %k.3
  %h358 = load i128, i128* %array_getter357, align 4
  call void @fn_intrinsic_utils_constraint(i128 %h358, i128 %hin354, i1* @constraint.101)
  %ptr_getter359 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %h361 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter359, i128 0, i128 0, i128 %k.3
  store i128 %hin354, i128* %h361, align 4
  br label %loop.latch362

loop.latch362:                                    ; preds = %loop.body266
  %add364 = add i128 %k.3, 1
  %slt366 = icmp slt i128 %add364, 32
  br i1 %slt366, label %loop.body266, label %loop.exit367

loop.exit367:                                     ; preds = %loop.latch362
  br label %loop.body368

loop.body368:                                     ; preds = %loop.latch814, %loop.exit367
  %t.1 = phi i128 [ 0, %loop.exit367 ], [ %add816, %loop.latch814 ]
  br label %loop.body369

loop.body369:                                     ; preds = %loop.latch562, %loop.body368
  %k.4 = phi i128 [ 0, %loop.body368 ], [ %add564, %loop.latch562 ]
  %h370 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter373 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h370, i128 0, i128 %t.1, i128 %k.4
  %h374 = load i128, i128* %array_getter373, align 4
  %t1375 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter377 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1375, i128 0, i128 %t.1
  %t1378 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter377, align 8
  %struct_getter379 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1378, i32 0, i32 0
  %t1.h.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter379, align 8
  %array_getter381 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter, i128 0, i128 %k.4
  %t1382 = load i128, i128* %array_getter381, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1382, i128 %h374, i1* @constraint.102)
  %ptr_getter383 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter385 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter383, i128 0, i128 %t.1
  %t1386 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter385, align 8
  %struct_getter387 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1386, i32 0, i32 0
  %t1.h.read_input_outter388 = load [4096 x i128]*, [4096 x i128]** %struct_getter387, align 8
  %t1390 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter388, i128 0, i128 %k.4
  store i128 %h374, i128* %t1390, align 4
  %e391 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter394 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e391, i128 0, i128 %t.1, i128 %k.4
  %e395 = load i128, i128* %array_getter394, align 4
  %t1396 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter398 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1396, i128 0, i128 %t.1
  %t1399 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter398, align 8
  %struct_getter400 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1399, i32 0, i32 1
  %t1.e.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter400, align 8
  %array_getter402 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter, i128 0, i128 %k.4
  %t1403 = load i128, i128* %array_getter402, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1403, i128 %e395, i1* @constraint.103)
  %ptr_getter404 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter406 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter404, i128 0, i128 %t.1
  %t1407 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter406, align 8
  %struct_getter408 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1407, i32 0, i32 1
  %t1.e.read_input_outter409 = load [4096 x i128]*, [4096 x i128]** %struct_getter408, align 8
  %t1411 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter409, i128 0, i128 %k.4
  store i128 %e395, i128* %t1411, align 4
  %f412 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter415 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f412, i128 0, i128 %t.1, i128 %k.4
  %f416 = load i128, i128* %array_getter415, align 4
  %t1417 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter419 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1417, i128 0, i128 %t.1
  %t1420 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter419, align 8
  %struct_getter421 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1420, i32 0, i32 2
  %t1.f.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter421, align 8
  %array_getter423 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter, i128 0, i128 %k.4
  %t1424 = load i128, i128* %array_getter423, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1424, i128 %f416, i1* @constraint.104)
  %ptr_getter425 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter427 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter425, i128 0, i128 %t.1
  %t1428 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter427, align 8
  %struct_getter429 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1428, i32 0, i32 2
  %t1.f.read_input_outter430 = load [4096 x i128]*, [4096 x i128]** %struct_getter429, align 8
  %t1432 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter430, i128 0, i128 %k.4
  store i128 %f416, i128* %t1432, align 4
  %g433 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter436 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g433, i128 0, i128 %t.1, i128 %k.4
  %g437 = load i128, i128* %array_getter436, align 4
  %t1438 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter440 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1438, i128 0, i128 %t.1
  %t1441 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter440, align 8
  %struct_getter442 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1441, i32 0, i32 3
  %t1.g.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter442, align 8
  %array_getter444 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter, i128 0, i128 %k.4
  %t1445 = load i128, i128* %array_getter444, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1445, i128 %g437, i1* @constraint.105)
  %ptr_getter446 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter448 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter446, i128 0, i128 %t.1
  %t1449 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter448, align 8
  %struct_getter450 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1449, i32 0, i32 3
  %t1.g.read_input_outter451 = load [4096 x i128]*, [4096 x i128]** %struct_getter450, align 8
  %t1453 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter451, i128 0, i128 %k.4
  store i128 %g437, i128* %t1453, align 4
  %ct_k454 = load [4096 x %struct_template_circuit_k*]*, [4096 x %struct_template_circuit_k*]** %ct_k, align 8
  %array_getter456 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k454, i128 0, i128 %t.1
  %ct_k457 = load %struct_template_circuit_k*, %struct_template_circuit_k** %array_getter456, align 8
  %struct_getter458 = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %ct_k457, i32 0, i32 1
  %k.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter458, align 8
  %array_getter460 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k.out.read_output_outter, i128 0, i128 %k.4
  %ct_k461 = load i128, i128* %array_getter460, align 4
  %t1462 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter464 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1462, i128 0, i128 %t.1
  %t1465 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter464, align 8
  %struct_getter466 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1465, i32 0, i32 4
  %t1.k.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter466, align 8
  %array_getter468 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter, i128 0, i128 %k.4
  %t1469 = load i128, i128* %array_getter468, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1469, i128 %ct_k461, i1* @constraint.106)
  %ptr_getter470 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter472 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter470, i128 0, i128 %t.1
  %t1473 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter472, align 8
  %struct_getter474 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1473, i32 0, i32 4
  %t1.k.read_input_outter475 = load [4096 x i128]*, [4096 x i128]** %struct_getter474, align 8
  %t1477 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter475, i128 0, i128 %k.4
  store i128 %ct_k461, i128* %t1477, align 4
  %w478 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %array_getter481 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w478, i128 0, i128 %t.1, i128 %k.4
  %w482 = load i128, i128* %array_getter481, align 4
  %t1483 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter485 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1483, i128 0, i128 %t.1
  %t1486 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter485, align 8
  %struct_getter487 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1486, i32 0, i32 5
  %t1.w.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter487, align 8
  %array_getter489 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter, i128 0, i128 %k.4
  %t1490 = load i128, i128* %array_getter489, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t1490, i128 %w482, i1* @constraint.107)
  %ptr_getter491 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter493 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %ptr_getter491, i128 0, i128 %t.1
  %t1494 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter493, align 8
  %struct_getter495 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1494, i32 0, i32 5
  %t1.w.read_input_outter496 = load [4096 x i128]*, [4096 x i128]** %struct_getter495, align 8
  %t1498 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter496, i128 0, i128 %k.4
  store i128 %w482, i128* %t1498, align 4
  %a499 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter502 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a499, i128 0, i128 %t.1, i128 %k.4
  %a503 = load i128, i128* %array_getter502, align 4
  %t2504 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter506 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2504, i128 0, i128 %t.1
  %t2507 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter506, align 8
  %struct_getter508 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2507, i32 0, i32 0
  %t2.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter508, align 8
  %array_getter510 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter, i128 0, i128 %k.4
  %t2511 = load i128, i128* %array_getter510, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2511, i128 %a503, i1* @constraint.108)
  %ptr_getter512 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter514 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter512, i128 0, i128 %t.1
  %t2515 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter514, align 8
  %struct_getter516 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2515, i32 0, i32 0
  %t2.a.read_input_outter517 = load [4096 x i128]*, [4096 x i128]** %struct_getter516, align 8
  %t2519 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter517, i128 0, i128 %k.4
  store i128 %a503, i128* %t2519, align 4
  %b520 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter523 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b520, i128 0, i128 %t.1, i128 %k.4
  %b524 = load i128, i128* %array_getter523, align 4
  %t2525 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter527 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2525, i128 0, i128 %t.1
  %t2528 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter527, align 8
  %struct_getter529 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2528, i32 0, i32 1
  %t2.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter529, align 8
  %array_getter531 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter, i128 0, i128 %k.4
  %t2532 = load i128, i128* %array_getter531, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2532, i128 %b524, i1* @constraint.109)
  %ptr_getter533 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter535 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter533, i128 0, i128 %t.1
  %t2536 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter535, align 8
  %struct_getter537 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2536, i32 0, i32 1
  %t2.b.read_input_outter538 = load [4096 x i128]*, [4096 x i128]** %struct_getter537, align 8
  %t2540 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter538, i128 0, i128 %k.4
  store i128 %b524, i128* %t2540, align 4
  %c541 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter544 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c541, i128 0, i128 %t.1, i128 %k.4
  %c545 = load i128, i128* %array_getter544, align 4
  %t2546 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter548 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2546, i128 0, i128 %t.1
  %t2549 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter548, align 8
  %struct_getter550 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2549, i32 0, i32 2
  %t2.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter550, align 8
  %array_getter552 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter, i128 0, i128 %k.4
  %t2553 = load i128, i128* %array_getter552, align 4
  call void @fn_intrinsic_utils_constraint(i128 %t2553, i128 %c545, i1* @constraint.110)
  %ptr_getter554 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter556 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %ptr_getter554, i128 0, i128 %t.1
  %t2557 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter556, align 8
  %struct_getter558 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2557, i32 0, i32 2
  %t2.c.read_input_outter559 = load [4096 x i128]*, [4096 x i128]** %struct_getter558, align 8
  %t2561 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter559, i128 0, i128 %k.4
  store i128 %c545, i128* %t2561, align 4
  br label %loop.latch562

loop.latch562:                                    ; preds = %loop.body369
  %add564 = add i128 %k.4, 1
  %slt566 = icmp slt i128 %add564, 32
  br i1 %slt566, label %loop.body369, label %loop.exit567

loop.exit567:                                     ; preds = %loop.latch562
  br label %loop.body568

loop.body568:                                     ; preds = %loop.latch666, %loop.exit567
  %k.5 = phi i128 [ 0, %loop.exit567 ], [ %add668, %loop.latch666 ]
  %d569 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter572 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d569, i128 0, i128 %t.1, i128 %k.5
  %d573 = load i128, i128* %array_getter572, align 4
  %sume574 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter576 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume574, i128 0, i128 %t.1
  %sume577 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter576, align 8
  %struct_getter578 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume577, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter578, align 8
  %array_getter580 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.5
  %sume581 = load i128, i128* %array_getter580, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sume581, i128 %d573, i1* @constraint.111)
  %ptr_getter582 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter584 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter582, i128 0, i128 %t.1
  %sume585 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter584, align 8
  %struct_getter586 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume585, i32 0, i32 2
  %binsum.in.read_input_outter587 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter586, align 8
  %sume589 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter587, i128 0, i128 0, i128 %k.5
  store i128 %d573, i128* %sume589, align 4
  %t1590 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter592 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1590, i128 0, i128 %t.1
  %t1593 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter592, align 8
  %struct_getter594 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1593, i32 0, i32 6
  %t1.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter594, align 8
  %array_getter596 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter, i128 0, i128 %k.5
  %t1597 = load i128, i128* %array_getter596, align 4
  %sume598 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter600 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume598, i128 0, i128 %t.1
  %sume601 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter600, align 8
  %struct_getter602 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume601, i32 0, i32 2
  %binsum.in.read_input_outter603 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter602, align 8
  %array_getter605 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter603, i128 0, i128 1, i128 %k.5
  %sume606 = load i128, i128* %array_getter605, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sume606, i128 %t1597, i1* @constraint.112)
  %ptr_getter607 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter609 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter607, i128 0, i128 %t.1
  %sume610 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter609, align 8
  %struct_getter611 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume610, i32 0, i32 2
  %binsum.in.read_input_outter612 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter611, align 8
  %sume614 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter612, i128 0, i128 1, i128 %k.5
  store i128 %t1597, i128* %sume614, align 4
  %t1615 = load [4096 x %struct_template_circuit_t1*]*, [4096 x %struct_template_circuit_t1*]** %t1, align 8
  %array_getter617 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t1615, i128 0, i128 %t.1
  %t1618 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter617, align 8
  %struct_getter619 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1618, i32 0, i32 6
  %t1.out.read_output_outter620 = load [4096 x i128]*, [4096 x i128]** %struct_getter619, align 8
  %array_getter622 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter620, i128 0, i128 %k.5
  %t1623 = load i128, i128* %array_getter622, align 4
  %suma624 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter626 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma624, i128 0, i128 %t.1
  %suma627 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter626, align 8
  %struct_getter628 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma627, i32 0, i32 2
  %binsum.in.read_input_outter629 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter628, align 8
  %array_getter631 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter629, i128 0, i128 0, i128 %k.5
  %suma632 = load i128, i128* %array_getter631, align 4
  call void @fn_intrinsic_utils_constraint(i128 %suma632, i128 %t1623, i1* @constraint.113)
  %ptr_getter633 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter635 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter633, i128 0, i128 %t.1
  %suma636 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter635, align 8
  %struct_getter637 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma636, i32 0, i32 2
  %binsum.in.read_input_outter638 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter637, align 8
  %suma640 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter638, i128 0, i128 0, i128 %k.5
  store i128 %t1623, i128* %suma640, align 4
  %t2641 = load [4096 x %struct_template_circuit_t2*]*, [4096 x %struct_template_circuit_t2*]** %t2, align 8
  %array_getter643 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t2641, i128 0, i128 %t.1
  %t2644 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter643, align 8
  %struct_getter645 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2644, i32 0, i32 3
  %t2.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter645, align 8
  %array_getter647 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.out.read_output_outter, i128 0, i128 %k.5
  %t2648 = load i128, i128* %array_getter647, align 4
  %suma649 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter651 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma649, i128 0, i128 %t.1
  %suma652 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter651, align 8
  %struct_getter653 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma652, i32 0, i32 2
  %binsum.in.read_input_outter654 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter653, align 8
  %array_getter656 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter654, i128 0, i128 1, i128 %k.5
  %suma657 = load i128, i128* %array_getter656, align 4
  call void @fn_intrinsic_utils_constraint(i128 %suma657, i128 %t2648, i1* @constraint.114)
  %ptr_getter658 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter660 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter658, i128 0, i128 %t.1
  %suma661 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter660, align 8
  %struct_getter662 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma661, i32 0, i32 2
  %binsum.in.read_input_outter663 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter662, align 8
  %suma665 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter663, i128 0, i128 1, i128 %k.5
  store i128 %t2648, i128* %suma665, align 4
  br label %loop.latch666

loop.latch666:                                    ; preds = %loop.body568
  %add668 = add i128 %k.5, 1
  %slt670 = icmp slt i128 %add668, 32
  br i1 %slt670, label %loop.body568, label %loop.exit671

loop.exit671:                                     ; preds = %loop.latch666
  br label %loop.body672

loop.body672:                                     ; preds = %loop.latch808, %loop.exit671
  %k.6 = phi i128 [ 0, %loop.exit671 ], [ %add810, %loop.latch808 ]
  %g673 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter676 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g673, i128 0, i128 %t.1, i128 %k.6
  %g677 = load i128, i128* %array_getter676, align 4
  %h678 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %add680 = add i128 %t.1, 1
  %array_getter682 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h678, i128 0, i128 %add680, i128 %k.6
  %h683 = load i128, i128* %array_getter682, align 4
  call void @fn_intrinsic_utils_constraint(i128 %h683, i128 %g677, i1* @constraint.115)
  %ptr_getter684 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %add686 = add i128 %t.1, 1
  %h688 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter684, i128 0, i128 %add686, i128 %k.6
  store i128 %g677, i128* %h688, align 4
  %f689 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter692 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f689, i128 0, i128 %t.1, i128 %k.6
  %f693 = load i128, i128* %array_getter692, align 4
  %g694 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %add696 = add i128 %t.1, 1
  %array_getter698 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g694, i128 0, i128 %add696, i128 %k.6
  %g699 = load i128, i128* %array_getter698, align 4
  call void @fn_intrinsic_utils_constraint(i128 %g699, i128 %f693, i1* @constraint.116)
  %ptr_getter700 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %add702 = add i128 %t.1, 1
  %g704 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter700, i128 0, i128 %add702, i128 %k.6
  store i128 %f693, i128* %g704, align 4
  %e705 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter708 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e705, i128 0, i128 %t.1, i128 %k.6
  %e709 = load i128, i128* %array_getter708, align 4
  %f710 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %add712 = add i128 %t.1, 1
  %array_getter714 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f710, i128 0, i128 %add712, i128 %k.6
  %f715 = load i128, i128* %array_getter714, align 4
  call void @fn_intrinsic_utils_constraint(i128 %f715, i128 %e709, i1* @constraint.117)
  %ptr_getter716 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %add718 = add i128 %t.1, 1
  %f720 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter716, i128 0, i128 %add718, i128 %k.6
  store i128 %e709, i128* %f720, align 4
  %sume721 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %sume, align 8
  %array_getter723 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume721, i128 0, i128 %t.1
  %sume724 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter723, align 8
  %struct_getter725 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume724, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter725, align 8
  %array_getter727 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.6
  %sume728 = load i128, i128* %array_getter727, align 4
  %e729 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %add731 = add i128 %t.1, 1
  %array_getter733 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e729, i128 0, i128 %add731, i128 %k.6
  %e734 = load i128, i128* %array_getter733, align 4
  call void @fn_intrinsic_utils_constraint(i128 %e734, i128 %sume728, i1* @constraint.118)
  %ptr_getter735 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %add737 = add i128 %t.1, 1
  %e739 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter735, i128 0, i128 %add737, i128 %k.6
  store i128 %sume728, i128* %e739, align 4
  %c740 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter743 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c740, i128 0, i128 %t.1, i128 %k.6
  %c744 = load i128, i128* %array_getter743, align 4
  %d745 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %add747 = add i128 %t.1, 1
  %array_getter749 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d745, i128 0, i128 %add747, i128 %k.6
  %d750 = load i128, i128* %array_getter749, align 4
  call void @fn_intrinsic_utils_constraint(i128 %d750, i128 %c744, i1* @constraint.119)
  %ptr_getter751 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %add753 = add i128 %t.1, 1
  %d755 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter751, i128 0, i128 %add753, i128 %k.6
  store i128 %c744, i128* %d755, align 4
  %b756 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter759 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b756, i128 0, i128 %t.1, i128 %k.6
  %b760 = load i128, i128* %array_getter759, align 4
  %c761 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %add763 = add i128 %t.1, 1
  %array_getter765 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c761, i128 0, i128 %add763, i128 %k.6
  %c766 = load i128, i128* %array_getter765, align 4
  call void @fn_intrinsic_utils_constraint(i128 %c766, i128 %b760, i1* @constraint.120)
  %ptr_getter767 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %add769 = add i128 %t.1, 1
  %c771 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter767, i128 0, i128 %add769, i128 %k.6
  store i128 %b760, i128* %c771, align 4
  %a772 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter775 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a772, i128 0, i128 %t.1, i128 %k.6
  %a776 = load i128, i128* %array_getter775, align 4
  %b777 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %add779 = add i128 %t.1, 1
  %array_getter781 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b777, i128 0, i128 %add779, i128 %k.6
  %b782 = load i128, i128* %array_getter781, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b782, i128 %a776, i1* @constraint.121)
  %ptr_getter783 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %add785 = add i128 %t.1, 1
  %b787 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter783, i128 0, i128 %add785, i128 %k.6
  store i128 %a776, i128* %b787, align 4
  %suma788 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %suma, align 8
  %array_getter790 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma788, i128 0, i128 %t.1
  %suma791 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter790, align 8
  %struct_getter792 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma791, i32 0, i32 3
  %binsum.out.read_output_outter793 = load [4096 x i128]*, [4096 x i128]** %struct_getter792, align 8
  %array_getter795 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter793, i128 0, i128 %k.6
  %suma796 = load i128, i128* %array_getter795, align 4
  %a797 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %add799 = add i128 %t.1, 1
  %array_getter801 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a797, i128 0, i128 %add799, i128 %k.6
  %a802 = load i128, i128* %array_getter801, align 4
  call void @fn_intrinsic_utils_constraint(i128 %a802, i128 %suma796, i1* @constraint.122)
  %ptr_getter803 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %add805 = add i128 %t.1, 1
  %a807 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %ptr_getter803, i128 0, i128 %add805, i128 %k.6
  store i128 %suma796, i128* %a807, align 4
  br label %loop.latch808

loop.latch808:                                    ; preds = %loop.body672
  %add810 = add i128 %k.6, 1
  %slt812 = icmp slt i128 %add810, 32
  br i1 %slt812, label %loop.body672, label %loop.exit813

loop.exit813:                                     ; preds = %loop.latch808
  br label %loop.latch814

loop.latch814:                                    ; preds = %loop.exit813
  %add816 = add i128 %t.1, 1
  %slt818 = icmp slt i128 %add816, 64
  br i1 %slt818, label %loop.body368, label %loop.exit819

loop.exit819:                                     ; preds = %loop.latch814
  br label %loop.body820

loop.body820:                                     ; preds = %loop.latch1133, %loop.exit819
  %k.7 = phi i128 [ 0, %loop.exit819 ], [ %add1135, %loop.latch1133 ]
  %hin821 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add823 = add i128 0, %k.7
  %array_getter824 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin821, i128 0, i128 %add823
  %hin825 = load i128, i128* %array_getter824, align 4
  %fsum826 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter827 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum826, i128 0, i128 0
  %fsum828 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter827, align 8
  %struct_getter829 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum828, i32 0, i32 2
  %binsum.in.read_input_outter830 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter829, align 8
  %array_getter832 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter830, i128 0, i128 0, i128 %k.7
  %fsum833 = load i128, i128* %array_getter832, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum833, i128 %hin825, i1* @constraint.123)
  %ptr_getter834 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter835 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter834, i128 0, i128 0
  %fsum836 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter835, align 8
  %struct_getter837 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum836, i32 0, i32 2
  %binsum.in.read_input_outter838 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter837, align 8
  %fsum840 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter838, i128 0, i128 0, i128 %k.7
  store i128 %hin825, i128* %fsum840, align 4
  %a841 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %array_getter843 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a841, i128 0, i128 64, i128 %k.7
  %a844 = load i128, i128* %array_getter843, align 4
  %fsum845 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter846 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum845, i128 0, i128 0
  %fsum847 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter846, align 8
  %struct_getter848 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum847, i32 0, i32 2
  %binsum.in.read_input_outter849 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter848, align 8
  %array_getter851 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter849, i128 0, i128 1, i128 %k.7
  %fsum852 = load i128, i128* %array_getter851, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum852, i128 %a844, i1* @constraint.124)
  %ptr_getter853 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter854 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter853, i128 0, i128 0
  %fsum855 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter854, align 8
  %struct_getter856 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum855, i32 0, i32 2
  %binsum.in.read_input_outter857 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter856, align 8
  %fsum859 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter857, i128 0, i128 1, i128 %k.7
  store i128 %a844, i128* %fsum859, align 4
  %hin860 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add862 = add i128 32, %k.7
  %array_getter863 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin860, i128 0, i128 %add862
  %hin864 = load i128, i128* %array_getter863, align 4
  %fsum865 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter866 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum865, i128 0, i128 1
  %fsum867 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter866, align 8
  %struct_getter868 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum867, i32 0, i32 2
  %binsum.in.read_input_outter869 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter868, align 8
  %array_getter871 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter869, i128 0, i128 0, i128 %k.7
  %fsum872 = load i128, i128* %array_getter871, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum872, i128 %hin864, i1* @constraint.125)
  %ptr_getter873 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter874 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter873, i128 0, i128 1
  %fsum875 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter874, align 8
  %struct_getter876 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum875, i32 0, i32 2
  %binsum.in.read_input_outter877 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter876, align 8
  %fsum879 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter877, i128 0, i128 0, i128 %k.7
  store i128 %hin864, i128* %fsum879, align 4
  %b880 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %array_getter882 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b880, i128 0, i128 64, i128 %k.7
  %b883 = load i128, i128* %array_getter882, align 4
  %fsum884 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter885 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum884, i128 0, i128 1
  %fsum886 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter885, align 8
  %struct_getter887 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum886, i32 0, i32 2
  %binsum.in.read_input_outter888 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter887, align 8
  %array_getter890 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter888, i128 0, i128 1, i128 %k.7
  %fsum891 = load i128, i128* %array_getter890, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum891, i128 %b883, i1* @constraint.126)
  %ptr_getter892 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter893 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter892, i128 0, i128 1
  %fsum894 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter893, align 8
  %struct_getter895 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum894, i32 0, i32 2
  %binsum.in.read_input_outter896 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter895, align 8
  %fsum898 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter896, i128 0, i128 1, i128 %k.7
  store i128 %b883, i128* %fsum898, align 4
  %hin899 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add901 = add i128 64, %k.7
  %array_getter902 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin899, i128 0, i128 %add901
  %hin903 = load i128, i128* %array_getter902, align 4
  %fsum904 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter905 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum904, i128 0, i128 2
  %fsum906 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter905, align 8
  %struct_getter907 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum906, i32 0, i32 2
  %binsum.in.read_input_outter908 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter907, align 8
  %array_getter910 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter908, i128 0, i128 0, i128 %k.7
  %fsum911 = load i128, i128* %array_getter910, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum911, i128 %hin903, i1* @constraint.127)
  %ptr_getter912 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter913 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter912, i128 0, i128 2
  %fsum914 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter913, align 8
  %struct_getter915 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum914, i32 0, i32 2
  %binsum.in.read_input_outter916 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter915, align 8
  %fsum918 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter916, i128 0, i128 0, i128 %k.7
  store i128 %hin903, i128* %fsum918, align 4
  %c919 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %array_getter921 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c919, i128 0, i128 64, i128 %k.7
  %c922 = load i128, i128* %array_getter921, align 4
  %fsum923 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter924 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum923, i128 0, i128 2
  %fsum925 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter924, align 8
  %struct_getter926 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum925, i32 0, i32 2
  %binsum.in.read_input_outter927 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter926, align 8
  %array_getter929 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter927, i128 0, i128 1, i128 %k.7
  %fsum930 = load i128, i128* %array_getter929, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum930, i128 %c922, i1* @constraint.128)
  %ptr_getter931 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter932 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter931, i128 0, i128 2
  %fsum933 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter932, align 8
  %struct_getter934 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum933, i32 0, i32 2
  %binsum.in.read_input_outter935 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter934, align 8
  %fsum937 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter935, i128 0, i128 1, i128 %k.7
  store i128 %c922, i128* %fsum937, align 4
  %hin938 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add940 = add i128 96, %k.7
  %array_getter941 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin938, i128 0, i128 %add940
  %hin942 = load i128, i128* %array_getter941, align 4
  %fsum943 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter944 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum943, i128 0, i128 3
  %fsum945 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter944, align 8
  %struct_getter946 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum945, i32 0, i32 2
  %binsum.in.read_input_outter947 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter946, align 8
  %array_getter949 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter947, i128 0, i128 0, i128 %k.7
  %fsum950 = load i128, i128* %array_getter949, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum950, i128 %hin942, i1* @constraint.129)
  %ptr_getter951 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter952 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter951, i128 0, i128 3
  %fsum953 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter952, align 8
  %struct_getter954 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum953, i32 0, i32 2
  %binsum.in.read_input_outter955 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter954, align 8
  %fsum957 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter955, i128 0, i128 0, i128 %k.7
  store i128 %hin942, i128* %fsum957, align 4
  %d958 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %array_getter960 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d958, i128 0, i128 64, i128 %k.7
  %d961 = load i128, i128* %array_getter960, align 4
  %fsum962 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter963 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum962, i128 0, i128 3
  %fsum964 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter963, align 8
  %struct_getter965 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum964, i32 0, i32 2
  %binsum.in.read_input_outter966 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter965, align 8
  %array_getter968 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter966, i128 0, i128 1, i128 %k.7
  %fsum969 = load i128, i128* %array_getter968, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum969, i128 %d961, i1* @constraint.130)
  %ptr_getter970 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter971 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter970, i128 0, i128 3
  %fsum972 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter971, align 8
  %struct_getter973 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum972, i32 0, i32 2
  %binsum.in.read_input_outter974 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter973, align 8
  %fsum976 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter974, i128 0, i128 1, i128 %k.7
  store i128 %d961, i128* %fsum976, align 4
  %hin977 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add979 = add i128 128, %k.7
  %array_getter980 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin977, i128 0, i128 %add979
  %hin981 = load i128, i128* %array_getter980, align 4
  %fsum982 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter983 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum982, i128 0, i128 4
  %fsum984 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter983, align 8
  %struct_getter985 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum984, i32 0, i32 2
  %binsum.in.read_input_outter986 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter985, align 8
  %array_getter988 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter986, i128 0, i128 0, i128 %k.7
  %fsum989 = load i128, i128* %array_getter988, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum989, i128 %hin981, i1* @constraint.131)
  %ptr_getter990 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter991 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter990, i128 0, i128 4
  %fsum992 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter991, align 8
  %struct_getter993 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum992, i32 0, i32 2
  %binsum.in.read_input_outter994 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter993, align 8
  %fsum996 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter994, i128 0, i128 0, i128 %k.7
  store i128 %hin981, i128* %fsum996, align 4
  %e997 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %array_getter999 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e997, i128 0, i128 64, i128 %k.7
  %e1000 = load i128, i128* %array_getter999, align 4
  %fsum1001 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1002 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1001, i128 0, i128 4
  %fsum1003 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1002, align 8
  %struct_getter1004 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1003, i32 0, i32 2
  %binsum.in.read_input_outter1005 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1004, align 8
  %array_getter1007 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1005, i128 0, i128 1, i128 %k.7
  %fsum1008 = load i128, i128* %array_getter1007, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1008, i128 %e1000, i1* @constraint.132)
  %ptr_getter1009 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1010 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1009, i128 0, i128 4
  %fsum1011 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1010, align 8
  %struct_getter1012 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1011, i32 0, i32 2
  %binsum.in.read_input_outter1013 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1012, align 8
  %fsum1015 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1013, i128 0, i128 1, i128 %k.7
  store i128 %e1000, i128* %fsum1015, align 4
  %hin1016 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1018 = add i128 160, %k.7
  %array_getter1019 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1016, i128 0, i128 %add1018
  %hin1020 = load i128, i128* %array_getter1019, align 4
  %fsum1021 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1022 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1021, i128 0, i128 5
  %fsum1023 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1022, align 8
  %struct_getter1024 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1023, i32 0, i32 2
  %binsum.in.read_input_outter1025 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1024, align 8
  %array_getter1027 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1025, i128 0, i128 0, i128 %k.7
  %fsum1028 = load i128, i128* %array_getter1027, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1028, i128 %hin1020, i1* @constraint.133)
  %ptr_getter1029 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1030 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1029, i128 0, i128 5
  %fsum1031 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1030, align 8
  %struct_getter1032 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1031, i32 0, i32 2
  %binsum.in.read_input_outter1033 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1032, align 8
  %fsum1035 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1033, i128 0, i128 0, i128 %k.7
  store i128 %hin1020, i128* %fsum1035, align 4
  %f1036 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %array_getter1038 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f1036, i128 0, i128 64, i128 %k.7
  %f1039 = load i128, i128* %array_getter1038, align 4
  %fsum1040 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1041 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1040, i128 0, i128 5
  %fsum1042 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1041, align 8
  %struct_getter1043 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1042, i32 0, i32 2
  %binsum.in.read_input_outter1044 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1043, align 8
  %array_getter1046 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1044, i128 0, i128 1, i128 %k.7
  %fsum1047 = load i128, i128* %array_getter1046, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1047, i128 %f1039, i1* @constraint.134)
  %ptr_getter1048 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1049 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1048, i128 0, i128 5
  %fsum1050 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1049, align 8
  %struct_getter1051 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1050, i32 0, i32 2
  %binsum.in.read_input_outter1052 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1051, align 8
  %fsum1054 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1052, i128 0, i128 1, i128 %k.7
  store i128 %f1039, i128* %fsum1054, align 4
  %hin1055 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1057 = add i128 192, %k.7
  %array_getter1058 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1055, i128 0, i128 %add1057
  %hin1059 = load i128, i128* %array_getter1058, align 4
  %fsum1060 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1061 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1060, i128 0, i128 6
  %fsum1062 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1061, align 8
  %struct_getter1063 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1062, i32 0, i32 2
  %binsum.in.read_input_outter1064 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1063, align 8
  %array_getter1066 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1064, i128 0, i128 0, i128 %k.7
  %fsum1067 = load i128, i128* %array_getter1066, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1067, i128 %hin1059, i1* @constraint.135)
  %ptr_getter1068 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1069 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1068, i128 0, i128 6
  %fsum1070 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1069, align 8
  %struct_getter1071 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1070, i32 0, i32 2
  %binsum.in.read_input_outter1072 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1071, align 8
  %fsum1074 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1072, i128 0, i128 0, i128 %k.7
  store i128 %hin1059, i128* %fsum1074, align 4
  %g1075 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %array_getter1077 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g1075, i128 0, i128 64, i128 %k.7
  %g1078 = load i128, i128* %array_getter1077, align 4
  %fsum1079 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1080 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1079, i128 0, i128 6
  %fsum1081 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1080, align 8
  %struct_getter1082 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1081, i32 0, i32 2
  %binsum.in.read_input_outter1083 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1082, align 8
  %array_getter1085 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1083, i128 0, i128 1, i128 %k.7
  %fsum1086 = load i128, i128* %array_getter1085, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1086, i128 %g1078, i1* @constraint.136)
  %ptr_getter1087 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1088 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1087, i128 0, i128 6
  %fsum1089 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1088, align 8
  %struct_getter1090 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1089, i32 0, i32 2
  %binsum.in.read_input_outter1091 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1090, align 8
  %fsum1093 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1091, i128 0, i128 1, i128 %k.7
  store i128 %g1078, i128* %fsum1093, align 4
  %hin1094 = load [4096 x i128]*, [4096 x i128]** %sha256compression.hin.declare_input, align 8
  %add1096 = add i128 224, %k.7
  %array_getter1097 = getelementptr inbounds [4096 x i128], [4096 x i128]* %hin1094, i128 0, i128 %add1096
  %hin1098 = load i128, i128* %array_getter1097, align 4
  %fsum1099 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1100 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1099, i128 0, i128 7
  %fsum1101 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1100, align 8
  %struct_getter1102 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1101, i32 0, i32 2
  %binsum.in.read_input_outter1103 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1102, align 8
  %array_getter1105 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1103, i128 0, i128 0, i128 %k.7
  %fsum1106 = load i128, i128* %array_getter1105, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1106, i128 %hin1098, i1* @constraint.137)
  %ptr_getter1107 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1108 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1107, i128 0, i128 7
  %fsum1109 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1108, align 8
  %struct_getter1110 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1109, i32 0, i32 2
  %binsum.in.read_input_outter1111 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1110, align 8
  %fsum1113 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1111, i128 0, i128 0, i128 %k.7
  store i128 %hin1098, i128* %fsum1113, align 4
  %h1114 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %array_getter1116 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h1114, i128 0, i128 64, i128 %k.7
  %h1117 = load i128, i128* %array_getter1116, align 4
  %fsum1118 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1119 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1118, i128 0, i128 7
  %fsum1120 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1119, align 8
  %struct_getter1121 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1120, i32 0, i32 2
  %binsum.in.read_input_outter1122 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1121, align 8
  %array_getter1124 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1122, i128 0, i128 1, i128 %k.7
  %fsum1125 = load i128, i128* %array_getter1124, align 4
  call void @fn_intrinsic_utils_constraint(i128 %fsum1125, i128 %h1117, i1* @constraint.138)
  %ptr_getter1126 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1127 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %ptr_getter1126, i128 0, i128 7
  %fsum1128 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1127, align 8
  %struct_getter1129 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1128, i32 0, i32 2
  %binsum.in.read_input_outter1130 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1129, align 8
  %fsum1132 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1130, i128 0, i128 1, i128 %k.7
  store i128 %h1117, i128* %fsum1132, align 4
  br label %loop.latch1133

loop.latch1133:                                   ; preds = %loop.body820
  %add1135 = add i128 %k.7, 1
  %slt1137 = icmp slt i128 %add1135, 32
  br i1 %slt1137, label %loop.body820, label %loop.exit1138

loop.exit1138:                                    ; preds = %loop.latch1133
  br label %loop.body1139

loop.body1139:                                    ; preds = %loop.latch1244, %loop.exit1138
  %k.8 = phi i128 [ 0, %loop.exit1138 ], [ %add1246, %loop.latch1244 ]
  %out1140 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1142 = sub i128 31, %k.8
  %array_getter1143 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1140, i128 0, i128 %sub1142
  %out1144 = load i128, i128* %array_getter1143, align 4
  %fsum1145 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1146 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1145, i128 0, i128 0
  %fsum1147 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1146, align 8
  %struct_getter1148 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1147, i32 0, i32 3
  %binsum.out.read_output_outter1149 = load [4096 x i128]*, [4096 x i128]** %struct_getter1148, align 8
  %array_getter1151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1149, i128 0, i128 %k.8
  %fsum1152 = load i128, i128* %array_getter1151, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1144, i128 %fsum1152, i1* @constraint.139)
  %out1153 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1155 = sub i128 63, %k.8
  %array_getter1156 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1153, i128 0, i128 %sub1155
  %out1157 = load i128, i128* %array_getter1156, align 4
  %fsum1158 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1159 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1158, i128 0, i128 1
  %fsum1160 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1159, align 8
  %struct_getter1161 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1160, i32 0, i32 3
  %binsum.out.read_output_outter1162 = load [4096 x i128]*, [4096 x i128]** %struct_getter1161, align 8
  %array_getter1164 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1162, i128 0, i128 %k.8
  %fsum1165 = load i128, i128* %array_getter1164, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1157, i128 %fsum1165, i1* @constraint.140)
  %out1166 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1168 = sub i128 95, %k.8
  %array_getter1169 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1166, i128 0, i128 %sub1168
  %out1170 = load i128, i128* %array_getter1169, align 4
  %fsum1171 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1172 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1171, i128 0, i128 2
  %fsum1173 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1172, align 8
  %struct_getter1174 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1173, i32 0, i32 3
  %binsum.out.read_output_outter1175 = load [4096 x i128]*, [4096 x i128]** %struct_getter1174, align 8
  %array_getter1177 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1175, i128 0, i128 %k.8
  %fsum1178 = load i128, i128* %array_getter1177, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1170, i128 %fsum1178, i1* @constraint.141)
  %out1179 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1181 = sub i128 127, %k.8
  %array_getter1182 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1179, i128 0, i128 %sub1181
  %out1183 = load i128, i128* %array_getter1182, align 4
  %fsum1184 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1185 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1184, i128 0, i128 3
  %fsum1186 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1185, align 8
  %struct_getter1187 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1186, i32 0, i32 3
  %binsum.out.read_output_outter1188 = load [4096 x i128]*, [4096 x i128]** %struct_getter1187, align 8
  %array_getter1190 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1188, i128 0, i128 %k.8
  %fsum1191 = load i128, i128* %array_getter1190, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1183, i128 %fsum1191, i1* @constraint.142)
  %out1192 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1194 = sub i128 159, %k.8
  %array_getter1195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1192, i128 0, i128 %sub1194
  %out1196 = load i128, i128* %array_getter1195, align 4
  %fsum1197 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1198 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1197, i128 0, i128 4
  %fsum1199 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1198, align 8
  %struct_getter1200 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1199, i32 0, i32 3
  %binsum.out.read_output_outter1201 = load [4096 x i128]*, [4096 x i128]** %struct_getter1200, align 8
  %array_getter1203 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1201, i128 0, i128 %k.8
  %fsum1204 = load i128, i128* %array_getter1203, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1196, i128 %fsum1204, i1* @constraint.143)
  %out1205 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1207 = sub i128 191, %k.8
  %array_getter1208 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1205, i128 0, i128 %sub1207
  %out1209 = load i128, i128* %array_getter1208, align 4
  %fsum1210 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1211 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1210, i128 0, i128 5
  %fsum1212 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1211, align 8
  %struct_getter1213 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1212, i32 0, i32 3
  %binsum.out.read_output_outter1214 = load [4096 x i128]*, [4096 x i128]** %struct_getter1213, align 8
  %array_getter1216 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1214, i128 0, i128 %k.8
  %fsum1217 = load i128, i128* %array_getter1216, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1209, i128 %fsum1217, i1* @constraint.144)
  %out1218 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1220 = sub i128 223, %k.8
  %array_getter1221 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1218, i128 0, i128 %sub1220
  %out1222 = load i128, i128* %array_getter1221, align 4
  %fsum1223 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1224 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1223, i128 0, i128 6
  %fsum1225 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1224, align 8
  %struct_getter1226 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1225, i32 0, i32 3
  %binsum.out.read_output_outter1227 = load [4096 x i128]*, [4096 x i128]** %struct_getter1226, align 8
  %array_getter1229 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1227, i128 0, i128 %k.8
  %fsum1230 = load i128, i128* %array_getter1229, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1222, i128 %fsum1230, i1* @constraint.145)
  %out1231 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sub1233 = sub i128 255, %k.8
  %array_getter1234 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out1231, i128 0, i128 %sub1233
  %out1235 = load i128, i128* %array_getter1234, align 4
  %fsum1236 = load [4096 x %struct_template_circuit_binsum*]*, [4096 x %struct_template_circuit_binsum*]** %fsum, align 8
  %array_getter1237 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum1236, i128 0, i128 7
  %fsum1238 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1237, align 8
  %struct_getter1239 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1238, i32 0, i32 3
  %binsum.out.read_output_outter1240 = load [4096 x i128]*, [4096 x i128]** %struct_getter1239, align 8
  %array_getter1242 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1240, i128 0, i128 %k.8
  %fsum1243 = load i128, i128* %array_getter1242, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out1235, i128 %fsum1243, i1* @constraint.146)
  br label %loop.latch1244

loop.latch1244:                                   ; preds = %loop.body1139
  %add1246 = add i128 %k.8, 1
  %slt1248 = icmp slt i128 %add1246, 32
  br i1 %slt1248, label %loop.body1139, label %loop.exit1249

loop.exit1249:                                    ; preds = %loop.latch1244
  br label %arraydim

arraydim:                                         ; preds = %loop.exit1249
  %ptr_cast = bitcast [4096 x [4096 x i128]]** %sha256compression.b.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 65, i128 32)
  %ptr_cast1250 = bitcast [4096 x i128]** %sha256compression.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1250, i128 256)
  %ptr_cast1251 = bitcast [4096 x i128]** %sha256compression.inp.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1251, i128 512)
  %ptr_cast1252 = bitcast [4096 x [4096 x i128]]** %sha256compression.h.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1252, i128 65, i128 32)
  %ptr_cast1253 = bitcast [4096 x %struct_template_circuit_t1*]** %t1 to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1253, i128 64)
  %ptr_cast1254 = bitcast [4096 x %struct_template_circuit_binsum*]** %sume to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1254, i128 64)
  %ptr_cast1255 = bitcast [4096 x %struct_template_circuit_binsum*]** %suma to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1255, i128 64)
  %ptr_cast1256 = bitcast [4096 x i128]** %sha256compression.hin.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1256, i128 256)
  %ptr_cast1257 = bitcast [4096 x [4096 x i128]]** %sha256compression.c.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1257, i128 65, i128 32)
  %ptr_cast1258 = bitcast [4096 x %struct_template_circuit_t2*]** %t2 to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1258, i128 64)
  %ptr_cast1259 = bitcast [4096 x [4096 x i128]]** %sha256compression.w.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1259, i128 64, i128 32)
  %ptr_cast1260 = bitcast [4096 x [4096 x i128]]** %sha256compression.a.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1260, i128 65, i128 32)
  %ptr_cast1261 = bitcast [4096 x %struct_template_circuit_sigmaplus*]** %sigmaPlus to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1261, i128 48)
  %ptr_cast1262 = bitcast [4096 x i128]** %outCalc to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1262, i128 256)
  %ptr_cast1263 = bitcast [4096 x %struct_template_circuit_binsum*]** %fsum to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1263, i128 8)
  %ptr_cast1264 = bitcast [4096 x [4096 x i128]]** %sha256compression.g.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1264, i128 65, i128 32)
  %ptr_cast1265 = bitcast [4096 x [4096 x i128]]** %sha256compression.d.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1265, i128 65, i128 32)
  %ptr_cast1266 = bitcast [4096 x [4096 x i128]]** %sha256compression.f.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1266, i128 65, i128 32)
  %ptr_cast1267 = bitcast [4096 x %struct_template_circuit_k*]** %ct_k to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1267, i128 64)
  %ptr_cast1268 = bitcast [4096 x [4096 x i128]]** %sha256compression.e.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast1268, i128 65, i128 32)
  br label %exit

exit:                                             ; preds = %arraydim
  %a1269 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.a.declare_inter, align 8
  %sha256compression.a.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 2
  store [4096 x [4096 x i128]]* %a1269, [4096 x [4096 x i128]]** %sha256compression.a.write_inter_inner, align 8
  %b1270 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.b.declare_inter, align 8
  %sha256compression.b.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 3
  store [4096 x [4096 x i128]]* %b1270, [4096 x [4096 x i128]]** %sha256compression.b.write_inter_inner, align 8
  %c1271 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.c.declare_inter, align 8
  %sha256compression.c.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 4
  store [4096 x [4096 x i128]]* %c1271, [4096 x [4096 x i128]]** %sha256compression.c.write_inter_inner, align 8
  %d1272 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.d.declare_inter, align 8
  %sha256compression.d.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 5
  store [4096 x [4096 x i128]]* %d1272, [4096 x [4096 x i128]]** %sha256compression.d.write_inter_inner, align 8
  %e1273 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.e.declare_inter, align 8
  %sha256compression.e.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 6
  store [4096 x [4096 x i128]]* %e1273, [4096 x [4096 x i128]]** %sha256compression.e.write_inter_inner, align 8
  %f1274 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.f.declare_inter, align 8
  %sha256compression.f.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 7
  store [4096 x [4096 x i128]]* %f1274, [4096 x [4096 x i128]]** %sha256compression.f.write_inter_inner, align 8
  %g1275 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.g.declare_inter, align 8
  %sha256compression.g.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 8
  store [4096 x [4096 x i128]]* %g1275, [4096 x [4096 x i128]]** %sha256compression.g.write_inter_inner, align 8
  %h1276 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.h.declare_inter, align 8
  %sha256compression.h.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 9
  store [4096 x [4096 x i128]]* %h1276, [4096 x [4096 x i128]]** %sha256compression.h.write_inter_inner, align 8
  %w1277 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %sha256compression.w.declare_inter, align 8
  %sha256compression.w.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 10
  store [4096 x [4096 x i128]]* %w1277, [4096 x [4096 x i128]]** %sha256compression.w.write_inter_inner, align 8
  %out1278 = load [4096 x i128]*, [4096 x i128]** %sha256compression.out.declare_output, align 8
  %sha256compression.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 11
  store [4096 x i128]* %out1278, [4096 x i128]** %sha256compression.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256compression* @fn_template_build_sha256compression() {
entry:
  %struct_template_circuit_sha256compression = alloca %struct_template_circuit_sha256compression, align 8
  ret %struct_template_circuit_sha256compression* %struct_template_circuit_sha256compression
}

define void @fn_template_init_sha256(%struct_template_circuit_sha256* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 0
  %sha256.nbits.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 1
  %sha256.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %sha256.in.declare_input = alloca [4096 x i128]*, align 8
  store [4096 x i128]* %sha256.in.read_input_inner, [4096 x i128]** %sha256.in.declare_input, align 8
  %nBlocks2 = call i128 @fn_intrinsic_utils_init()
  %bitsLastBlock3 = call i128 @fn_intrinsic_utils_init()
  %k4 = call i128 @fn_intrinsic_utils_init()
  %sha256.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256.out.declare_output, align 8
  %sha256.paddedin.declare_inter = alloca [4096 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %paddedIn = bitcast i8* %malloccall5 to [4096 x i128]*
  store [4096 x i128]* %paddedIn, [4096 x i128]** %sha256.paddedin.declare_inter, align 8
  %sha256compression = alloca [4096 x %struct_template_circuit_sha256compression*]*, align 8
  %sha256compression6 = alloca [4096 x %struct_template_circuit_sha256compression*], align 8
  store [4096 x %struct_template_circuit_sha256compression*]* %sha256compression6, [4096 x %struct_template_circuit_sha256compression*]** %sha256compression, align 8
  %i7 = call i128 @fn_intrinsic_utils_init()
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
  %ptr_cast = bitcast [4096 x %struct_template_circuit_sha256compression*]** %sha256compression to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %add9)
  %ptr_cast598 = bitcast [4096 x i128]** %sha256.paddedin.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast598, i128 %mul)
  %ptr_cast599 = bitcast [4096 x i128]** %sha256.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast599, i128 %sha256.nbits.read_arg_inner)
  %ptr_cast600 = bitcast [4096 x i128]** %sha256.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast600, i128 256)
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
  %i2 = call i128 @fn_intrinsic_utils_init()
  %j3 = call i128 @fn_intrinsic_utils_init()
  %byte_to_bits = alloca [4096 x %struct_template_circuit_num2bits*]*, align 8
  %byte_to_bits4 = alloca [4096 x %struct_template_circuit_num2bits*], align 8
  store [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits4, [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits, align 8
  %bits_to_bytes = alloca [4096 x %struct_template_circuit_bits2num*]*, align 8
  %bits_to_bytes5 = alloca [4096 x %struct_template_circuit_bits2num*], align 8
  store [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes, align 8
  %sha256bytes.out.declare_output = alloca [4096 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  store [4096 x i128]* %out, [4096 x i128]** %sha256bytes.out.declare_output, align 8
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
  %ptr_cast = bitcast [4096 x i128]** %sha256bytes.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sha256bytes.n.read_arg_inner)
  %ptr_cast120 = bitcast [4096 x %struct_template_circuit_bits2num*]** %bits_to_bytes to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast120, i128 32)
  %ptr_cast121 = bitcast [4096 x %struct_template_circuit_num2bits*]** %byte_to_bits to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 %sha256bytes.n.read_arg_inner)
  %ptr_cast122 = bitcast [4096 x i128]** %sha256bytes.out.declare_output to i128*
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

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
