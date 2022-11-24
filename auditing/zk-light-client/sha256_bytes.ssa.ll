; ModuleID = './auditing/zk-light-client/sha256_bytes.ll'
source_filename = "/Users/hongbo/code/zk-light-client/circuits/circuits/sha256_bytes.circom"

%struct_template_circuit_h = type { i128, [4096 x i128]* }
%struct_template_circuit_k = type { i128, [4096 x i128]* }
%struct_template_circuit_rotr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_ch_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_xor3 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_maj_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_binsum = type { i128, i128, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_bits2num = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_num2bitsneg = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_shr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_lessthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [4096 x i128]* }
%struct_template_circuit_compconstant = type { i128, [4096 x i128]*, [4096 x i128]*, i128, i128 }
%struct_template_circuit_bigsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_isequal = type { [4096 x i128]*, i128 }
%struct_template_circuit_lesseqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_greaterthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_smallsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_t2 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sigmaplus = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_aliascheck = type { [4096 x i128]* }
%struct_template_circuit_t1 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256compression = type { [4096 x i128]*, [4096 x i128]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_sha256 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num_strict = type { [4096 x i128]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [4096 x i128]* }
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

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %h.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %i1 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %h.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %h.out.write_output_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %h.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_h* @fn_template_build_h(i128 %0) {
entry:
  %struct_template_circuit_h = alloca %struct_template_circuit_h, align 8
  %h.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %struct_template_circuit_h, i32 0, i32 0
  store i128 %0, i128* %h.x.write_arg_inner, align 4
  ret %struct_template_circuit_h* %struct_template_circuit_h
}

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %k.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %i2 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %k.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint.1)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %k.out.write_output_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %k.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_k* @fn_template_build_k(i128 %0) {
entry:
  %struct_template_circuit_k = alloca %struct_template_circuit_k, align 8
  %k.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %struct_template_circuit_k, i32 0, i32 0
  store i128 %0, i128* %k.x.write_arg_inner, align 4
  ret %struct_template_circuit_k* %struct_template_circuit_k
}

define void @fn_template_init_rotr(%struct_template_circuit_rotr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 0
  %rotr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 1
  %rotr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 2
  %rotr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i3 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %add = add i128 %i.0, %rotr.r.read_arg_inner
  %mod = srem i128 %add, %rotr.n.read_arg_inner
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_inner, i128 0, i128 %mod
  %in5 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %in5, i1* @constraint.2)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %in5, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add13 = add i128 %i.0, 1
  %slt = icmp slt i128 %add13, %rotr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %rotr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %rotr.out.write_output_inner, align 8
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

define void @fn_template_init_ch_t(%struct_template_circuit_ch_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 0
  %ch_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 1
  %ch_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 2
  %ch_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 3
  %ch_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k4 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add24, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_inner, i128 0, i128 %k.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_inner, i128 0, i128 %k.0
  %b9 = load i128, i128* %array_getter8, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_inner, i128 0, i128 %k.0
  %c12 = load i128, i128* %array_getter11, align 4
  %sub = sub i128 %b9, %c12
  %mul = mul i128 %a6, %sub
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_inner, i128 0, i128 %k.0
  %c16 = load i128, i128* %array_getter15, align 4
  %add = add i128 %mul, %c16
  %array_getter19 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %add, i1* @constraint.3)
  %out22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %add, i128* %out22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add24 = add i128 %k.0, 1
  %slt = icmp slt i128 %add24, %ch_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %ch_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %ch_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 %0) {
entry:
  %struct_template_circuit_ch_t = alloca %struct_template_circuit_ch_t, align 8
  %ch_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %struct_template_circuit_ch_t, i32 0, i32 0
  store i128 %0, i128* %ch_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_ch_t* %struct_template_circuit_ch_t
}

define i128 @sha256K(i128 %0) {
entry:
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %0
  %k3 = load i128, i128* %array_getter, align 4
  ret i128 %k3
}

define void @fn_template_init_xor3(%struct_template_circuit_xor3* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 0
  %xor3.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 1
  %xor3.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 2
  %xor3.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 3
  %xor3.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall4 to [4096 x i128]*
  %k5 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add61, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.4)
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  store i128 %mul, i128* %mid16, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b23 = load i128, i128* %array_getter22, align 4
  %mul24 = mul i128 2, %b23
  %sub = sub i128 1, %mul24
  %array_getter27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c28 = load i128, i128* %array_getter27, align 4
  %mul29 = mul i128 2, %c28
  %sub30 = sub i128 %sub, %mul29
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid34 = load i128, i128* %array_getter33, align 4
  %mul35 = mul i128 4, %mid34
  %add = add i128 %sub30, %mul35
  %mul36 = mul i128 %a19, %add
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b40 = load i128, i128* %array_getter39, align 4
  %add41 = add i128 %mul36, %b40
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c45 = load i128, i128* %array_getter44, align 4
  %add46 = add i128 %add41, %c45
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid50 = load i128, i128* %array_getter49, align 4
  %mul51 = mul i128 2, %mid50
  %sub52 = sub i128 %add46, %mul51
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out56 = load i128, i128* %array_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %out56, i128 %sub52, i1* @constraint.5)
  %out59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %sub52, i128* %out59, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add61 = add i128 %k.0, 1
  %slt = icmp slt i128 %add61, %xor3.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %xor3.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 4
  store [4096 x i128]* %mid, [4096 x i128]** %xor3.mid.write_inter_inner, align 8
  %xor3.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 5
  store [4096 x i128]* %out, [4096 x i128]** %xor3.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_xor3* @fn_template_build_xor3(i128 %0) {
entry:
  %struct_template_circuit_xor3 = alloca %struct_template_circuit_xor3, align 8
  %xor3.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %struct_template_circuit_xor3, i32 0, i32 0
  store i128 %0, i128* %xor3.n.write_arg_inner, align 4
  ret %struct_template_circuit_xor3* %struct_template_circuit_xor3
}

define void @fn_template_init_maj_t(%struct_template_circuit_maj_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 0
  %maj_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 1
  %maj_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 2
  %maj_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 3
  %maj_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall5 to [4096 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add47, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_inner, i128 0, i128 %k.0
  %b7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_inner, i128 0, i128 %k.0
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.6)
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  store i128 %mul, i128* %mid16, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_inner, i128 0, i128 %k.0
  %b23 = load i128, i128* %array_getter22, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_inner, i128 0, i128 %k.0
  %c27 = load i128, i128* %array_getter26, align 4
  %add = add i128 %b23, %c27
  %array_getter30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid31 = load i128, i128* %array_getter30, align 4
  %mul32 = mul i128 2, %mid31
  %sub = sub i128 %add, %mul32
  %mul33 = mul i128 %a19, %sub
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid37 = load i128, i128* %array_getter36, align 4
  %add38 = add i128 %mul33, %mid37
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %out42, i128 %add38, i1* @constraint.7)
  %out45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %add38, i128* %out45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add47 = add i128 %k.0, 1
  %slt = icmp slt i128 %add47, %maj_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %maj_t.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 4
  store [4096 x i128]* %mid, [4096 x i128]** %maj_t.mid.write_inter_inner, align 8
  %maj_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 5
  store [4096 x i128]* %out, [4096 x i128]** %maj_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 %0) {
entry:
  %struct_template_circuit_maj_t = alloca %struct_template_circuit_maj_t, align 8
  %maj_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %struct_template_circuit_maj_t, i32 0, i32 0
  store i128 %0, i128* %maj_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_maj_t* %struct_template_circuit_maj_t
}

define i128 @nbits(i128 %0) {
entry:
  %n1 = call i128 @fn_intrinsic_inline_init()
  %r2 = call i128 @fn_intrinsic_inline_init()
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

define i128 @rrot(i128 %0, i128 %1) {
entry:
  %rshift = lshr i128 %0, %1
  %sub = sub i128 32, %1
  %lshift = shl i128 %0, %sub
  %or = or i128 %rshift, %lshift
  %and = and i128 %or, 4294967295
  ret i128 %and
}

define i128 @Ch(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %xor = xor i128 4294967295, %0
  %and2 = and i128 %xor, %2
  %xor3 = xor i128 %and, %and2
  ret i128 %xor3
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter2, align 8
  %e23 = call i128 @fn_intrinsic_inline_init()
  %lout4 = call i128 @fn_intrinsic_inline_init()
  %nout5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k6 = call i128 @fn_intrinsic_inline_init()
  %j7 = call i128 @fn_intrinsic_inline_init()
  %lin8 = call i128 @fn_intrinsic_inline_init()
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %binsum.n.read_arg_inner)
  %sub = sub i128 %pow, 1
  %mul = mul i128 %sub, %binsum.ops.read_arg_inner
  %call = call i128 @nbits(i128 %mul)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch23, %entry
  %e2.0 = phi i128 [ 1, %entry ], [ %add22, %loop.latch23 ]
  %k.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch23 ]
  %lin.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch23 ]
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add17, %loop.latch ]
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_inner, i128 0, i128 %j.0, i128 %k.0
  %in13 = load i128, i128* %array_getter, align 4
  %mul15 = mul i128 %in13, %e2.0
  %add = add i128 %lin.1, %mul15
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body9
  %add17 = add i128 %j.0, 1
  %slt = icmp slt i128 %add17, %binsum.ops.read_arg_inner
  br i1 %slt, label %loop.body9, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add22 = add i128 %e2.0, %e2.0
  br label %loop.latch23

loop.latch23:                                     ; preds = %loop.exit
  %add25 = add i128 %k.0, 1
  %slt28 = icmp slt i128 %add25, %binsum.n.read_arg_inner
  br i1 %slt28, label %loop.body, label %loop.exit29

loop.exit29:                                      ; preds = %loop.latch23
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch56, %loop.exit29
  %lout.0 = phi i128 [ 0, %loop.exit29 ], [ %add52, %loop.latch56 ]
  %e2.1 = phi i128 [ 1, %loop.exit29 ], [ %add55, %loop.latch56 ]
  %k.1 = phi i128 [ 0, %loop.exit29 ], [ %add58, %loop.latch56 ]
  %rshift = lshr i128 %add, %k.1
  %and = and i128 %rshift, 1
  %out34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  store i128 %and, i128* %out34, align 4
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out38 = load i128, i128* %array_getter37, align 4
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out42 = load i128, i128* %array_getter41, align 4
  %sub43 = sub i128 %out42, 1
  %mul44 = mul i128 %out38, %sub43
  call void @fn_intrinsic_add_constraint(i128 %mul44, i128 0, i1* @constraint.8)
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out49 = load i128, i128* %array_getter48, align 4
  %mul51 = mul i128 %out49, %e2.1
  %add52 = add i128 %lout.0, %mul51
  %add55 = add i128 %e2.1, %e2.1
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body30
  %add58 = add i128 %k.1, 1
  %slt61 = icmp slt i128 %add58, %call
  br i1 %slt61, label %loop.body30, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add52, i1* @constraint.9)
  br label %exit

exit:                                             ; preds = %loop.exit62
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %binsum.out.write_output_inner, align 8
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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %i2 = call i128 @fn_intrinsic_inline_init()
  %lc13 = call i128 @fn_intrinsic_inline_init()
  %e24 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_inner, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint.10)
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %add, i128* %bits2num.out.write_output_inner, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter18, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bits2num.out.write_output_inner20 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %bits2num.out.read_output_inner, i128* %bits2num.out.write_output_inner20, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %bits2num.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %bits2num.n.write_arg_inner, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %iszero.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %inv = call i128 @fn_intrinsic_inline_init()
  %ne = icmp ne i128 %iszero.in.read_input_inner, 0
  %sdiv = sdiv i128 1, %iszero.in.read_input_inner
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  %iszero.inv.write_inter_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %inline_switch, i128* %iszero.inv.write_inter_inner, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  %iszero.inv.read_inter_inner = load i128, i128* %struct_getter3, align 4
  %neg = sub i128 0, %iszero.in.read_input_inner
  %mul = mul i128 %neg, %iszero.inv.read_inter_inner
  %add = add i128 %mul, 1
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint.11)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 0, i1* @constraint.12)
  br label %exit

exit:                                             ; preds = %entry
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

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %i2 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %e23 = call i128 @fn_intrinsic_inline_init()
  %lc14 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %rshift = lshr i128 %num2bits.in.read_input_inner, %i.0
  %and = and i128 %rshift, 1
  %out7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out7, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out10 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.13)
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.14)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %neg2 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %lc14 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %eq = icmp eq i128 %num2bitsneg.n.read_arg_inner, 0
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub = sub i128 %pow, %num2bitsneg.in.read_input_inner
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 0, i128 %sub)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add27, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %rshift = lshr i128 %inline_switch, %i.0
  %and = and i128 %rshift, 1
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out9, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter, align 4
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out16 = load i128, i128* %array_getter15, align 4
  %sub17 = sub i128 %out16, 1
  %mul = mul i128 %out12, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.15)
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out22 = load i128, i128* %array_getter21, align 4
  %pow24 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %i.0)
  %mul25 = mul i128 %out22, %pow24
  %add = add i128 %lc1.0, %mul25
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add27 = add i128 %i.0, 1
  %slt = icmp slt i128 %add27, %num2bitsneg.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.16)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter36, align 4
  %pow38 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul39 = mul i128 %iszero.out.read_output_outter, %pow38
  %add40 = add i128 %add, %mul39
  %pow42 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub44 = sub i128 %pow42, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %add40, i128 %sub44, i1* @constraint.17)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
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

define i128 @ssigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 7)
  %call2 = call i128 @rrot(i128 %0, i128 18)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 3
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
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

define void @fn_template_init_shr(%struct_template_circuit_shr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %shr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 1
  %shr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 2
  %shr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add23, %loop.latch ]
  %add = add i128 %i.0, %shr.r.read_arg_inner
  %sge = icmp sge i128 %add, %shr.n.read_arg_inner
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out7 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %out7, i128 0, i1* @constraint.18)
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 0, i128* %out9, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %add12 = add i128 %i.0, %shr.r.read_arg_inner
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_inner, i128 0, i128 %add12
  %in14 = load i128, i128* %array_getter13, align 4
  %array_getter17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %in14, i1* @constraint.19)
  %out21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %in14, i128* %out21, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add23 = add i128 %i.0, 1
  %slt = icmp slt i128 %add23, %shr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %shr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %shr.out.write_output_inner, align 8
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
  %call = call i128 @rrot(i128 %0, i128 6)
  %call2 = call i128 @rrot(i128 %0, i128 11)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 25)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %lessthan.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %lessthan.n.read_arg_inner
  %add4 = add i128 %in2, %lshift
  %array_getter6 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_inner, i128 0, i128 1
  %in7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %add4, %in7
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.20)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub15, i1* @constraint.21)
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %sub15, i128* %lessthan.out.write_output_inner, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  br label %exit

exit:                                             ; preds = %entry
  %lessthan.out.write_output_inner21 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_inner, i128* %lessthan.out.write_output_inner21, align 4
  ret void
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
  %struct_template_circuit_lessthan = alloca %struct_template_circuit_lessthan, align 8
  %lessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %struct_template_circuit_lessthan, i32 0, i32 0
  store i128 %0, i128* %lessthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lessthan* %struct_template_circuit_lessthan
}

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %array_getter4 = getelementptr inbounds [4096 x i128], [4096 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.22)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %mul = mul i128 %sub10, %forceequalifenabled.enabled.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.23)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %a2 = call i128 @fn_intrinsic_inline_init()
  %clsb3 = call i128 @fn_intrinsic_inline_init()
  %smsb4 = call i128 @fn_intrinsic_inline_init()
  %e5 = call i128 @fn_intrinsic_inline_init()
  %slsb6 = call i128 @fn_intrinsic_inline_init()
  %i7 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [4096 x i128]*
  %cmsb8 = call i128 @fn_intrinsic_inline_init()
  %sout = call i128 @fn_intrinsic_inline_init()
  %sum9 = call i128 @fn_intrinsic_inline_init()
  %b10 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %b.0 = phi i128 [ poison, %entry ], [ %sub131, %loop.latch ]
  %mul = mul i128 %i.0, 2
  %rshift = lshr i128 %compconstant.ct.read_arg_inner, %mul
  %and = and i128 %rshift, 1
  %mul14 = mul i128 %i.0, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %compconstant.ct.read_arg_inner, %add
  %and16 = and i128 %rshift15, 1
  %mul18 = mul i128 %i.0, 2
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  %mul22 = mul i128 %i.0, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %add23
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
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts46, i128 %add42, i1* @constraint.24)
  %parts48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
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
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts77, i128 %add73, i1* @constraint.25)
  %parts80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
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
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts102, i128 %add98, i1* @constraint.26)
  %parts105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %neg107 = sub i128 0, %a.0
  %mul109 = mul i128 %neg107, %in25
  %mul111 = mul i128 %mul109, %in19
  %add113 = add i128 %mul111, %a.0
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts117, i128 %add113, i1* @constraint.27)
  %parts120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %array_getter126 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %sout, i128 %add128, i1* @constraint.28)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.29)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %num2bits152, i1* @constraint.30)
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [4096 x i128]* %parts, [4096 x i128]** %compconstant.parts.write_inter_inner, align 8
  %compconstant.sout.write_inter_inner159 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %compconstant.sout.read_inter_inner, i128* %compconstant.sout.write_inter_inner159, align 4
  %compconstant.out.write_output_inner161 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %compconstant.out.read_output_inner, i128* %compconstant.out.write_output_inner161, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %compconstant.ct.write_arg_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %compconstant.ct.write_arg_inner, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k4 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.31)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.32)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 2
  %rotr.in.read_input_outter39 = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter39, i128 0, i128 %k.0
  %rotc42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotc42, i128 %in36, i1* @constraint.33)
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
  call void @fn_intrinsic_add_constraint(i128 %xor361, i128 %rota56, i1* @constraint.34)
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
  call void @fn_intrinsic_add_constraint(i128 %xor377, i128 %rotb72, i1* @constraint.35)
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
  call void @fn_intrinsic_add_constraint(i128 %xor393, i128 %rotc88, i1* @constraint.36)
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
  %array_getter113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %xor3110, i1* @constraint.37)
  %out117 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %xor3110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %add120 = add i128 %k.2, 1
  %slt122 = icmp slt i128 %add120, 32
  br i1 %slt122, label %loop.body105, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch118
  br label %exit

exit:                                             ; preds = %loop.exit123
  %bigsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %bigsigma.out.write_output_inner, align 8
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

define i128 @ssigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 17)
  %call2 = call i128 @rrot(i128 %0, i128 19)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 10
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %isequal.in.read_input_inner, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %array_getter3 = getelementptr inbounds [4096 x i128], [4096 x i128]* %isequal.in.read_input_inner, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.38)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.39)
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  br label %exit

exit:                                             ; preds = %entry
  %isequal.out.write_output_inner14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %isequal.out.read_output_inner, i128* %isequal.out.write_output_inner14, align 4
  ret void
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
  %struct_template_circuit_isequal = alloca %struct_template_circuit_isequal, align 8
  ret %struct_template_circuit_isequal* %struct_template_circuit_isequal
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %lesseqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.40)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.41)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.42)
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
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

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greaterthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.43)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %in12, i1* @constraint.44)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.45)
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k4 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_shr* @fn_template_build_shr(i128 32, i128 %smallsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.46)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.47)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 2
  %shr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter, i128 0, i128 %k.0
  %shrc41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %shrc41, i128 %in36, i1* @constraint.48)
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
  call void @fn_intrinsic_add_constraint(i128 %xor360, i128 %rota55, i1* @constraint.49)
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
  call void @fn_intrinsic_add_constraint(i128 %xor376, i128 %rotb71, i1* @constraint.50)
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
  call void @fn_intrinsic_add_constraint(i128 %xor391, i128 %shrc86, i1* @constraint.51)
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
  %array_getter111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_add_constraint(i128 %out112, i128 %xor3108, i1* @constraint.52)
  %out115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %xor3108, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body103
  %add118 = add i128 %k.2, 1
  %slt120 = icmp slt i128 %add118, 32
  br i1 %slt120, label %loop.body103, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch116
  br label %exit

exit:                                             ; preds = %loop.exit121
  %smallsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %smallsigma.out.write_output_inner, align 8
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

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greatereqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.53)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.54)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.55)
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
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

define void @fn_template_init_t2(%struct_template_circuit_t2* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 0
  %t2.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 1
  %t2.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 2
  %t2.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k3 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 2, i128 13, i128 22)
  %call4 = call %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 32)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_inner, i128 0, i128 %k.0
  %a6 = load i128, i128* %array_getter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter8, align 8
  %array_getter10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %k.0
  %bigsigma011 = load i128, i128* %array_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma011, i128 %a6, i1* @constraint.56)
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter13 = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %bigsigma015 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter13, i128 0, i128 %k.0
  store i128 %a6, i128* %bigsigma015, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter, i128 0, i128 %k.0
  %maj24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj24, i128 %a19, i1* @constraint.57)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %maj29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter27, i128 0, i128 %k.0
  store i128 %a19, i128* %maj29, align 4
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_inner, i128 0, i128 %k.0
  %b32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter, i128 0, i128 %k.0
  %maj37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj37, i128 %b32, i1* @constraint.58)
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter40 = load [4096 x i128]*, [4096 x i128]** %struct_getter39, align 8
  %maj42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter40, i128 0, i128 %k.0
  store i128 %b32, i128* %maj42, align 4
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_inner, i128 0, i128 %k.0
  %c45 = load i128, i128* %array_getter44, align 4
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 3
  %maj_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter47, align 8
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter, i128 0, i128 %k.0
  %maj50 = load i128, i128* %array_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj50, i128 %c45, i1* @constraint.59)
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
  call void @fn_intrinsic_add_constraint(i128 %sum69, i128 %bigsigma064, i1* @constraint.60)
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
  call void @fn_intrinsic_add_constraint(i128 %sum85, i128 %maj79, i1* @constraint.61)
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
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out106 = load i128, i128* %array_getter105, align 4
  call void @fn_intrinsic_add_constraint(i128 %out106, i128 %sum102, i1* @constraint.62)
  %out109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %sum102, i128* %out109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body97
  %add112 = add i128 %k.2, 1
  %slt114 = icmp slt i128 %add112, 32
  br i1 %slt114, label %loop.body97, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  br label %exit

exit:                                             ; preds = %loop.exit115
  %t2.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %t2.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t2* @fn_template_build_t2() {
entry:
  %struct_template_circuit_t2 = alloca %struct_template_circuit_t2, align 8
  ret %struct_template_circuit_t2* %struct_template_circuit_t2
}

define [4096 x i128]* @sha256compression([4096 x i128]* %0, [4096 x i128]* %1) {
entry:
  %e1 = call i128 @fn_intrinsic_inline_init()
  %T22 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %j5 = call i128 @fn_intrinsic_inline_init()
  %d6 = call i128 @fn_intrinsic_inline_init()
  %h7 = call i128 @fn_intrinsic_inline_init()
  %g9 = call i128 @fn_intrinsic_inline_init()
  %a11 = call i128 @fn_intrinsic_inline_init()
  %c12 = call i128 @fn_intrinsic_inline_init()
  %T113 = call i128 @fn_intrinsic_inline_init()
  %b14 = call i128 @fn_intrinsic_inline_init()
  %f15 = call i128 @fn_intrinsic_inline_init()
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
  %c.0 = phi i128 [ %H49, %loop.exit40 ], [ %b.0, %loop.latch162 ]
  %a.0 = phi i128 [ %H43, %loop.exit40 ], [ %and161, %loop.latch162 ]
  %g.0 = phi i128 [ %H61, %loop.exit40 ], [ %f.0, %loop.latch162 ]
  %h.0 = phi i128 [ %H64, %loop.exit40 ], [ %g.0, %loop.latch162 ]
  %d.0 = phi i128 [ %H52, %loop.exit40 ], [ %c.0, %loop.latch162 ]
  %i.1 = phi i128 [ 0, %loop.exit40 ], [ %add164, %loop.latch162 ]
  %e.0 = phi i128 [ %H55, %loop.exit40 ], [ %and154, %loop.latch162 ]
  %b.0 = phi i128 [ %H46, %loop.exit40 ], [ %a.0, %loop.latch162 ]
  %f.0 = phi i128 [ %H58, %loop.exit40 ], [ %e.0, %loop.latch162 ]
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

define void @fn_template_init_sigmaplus(%struct_template_circuit_sigmaplus* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 0
  %sigmaplus.in2.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 1
  %sigmaplus.in7.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 2
  %sigmaplus.in15.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 3
  %sigmaplus.in16.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 17, i128 19, i128 10)
  %call5 = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 7, i128 18, i128 3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_inner, i128 0, i128 %k.0
  %in27 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter, i128 0, i128 %k.0
  %sigma112 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma112, i128 %in27, i1* @constraint.63)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter14 = load [4096 x i128]*, [4096 x i128]** %struct_getter13, align 8
  %sigma116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter14, i128 0, i128 %k.0
  store i128 %in27, i128* %sigma116, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_inner, i128 0, i128 %k.0
  %in1519 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 3
  %smallsigma.in.read_input_outter22 = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter22, i128 0, i128 %k.0
  %sigma025 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma025, i128 %in1519, i1* @constraint.64)
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
  call void @fn_intrinsic_add_constraint(i128 %sum44, i128 %sigma139, i1* @constraint.65)
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter47 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter46, align 8
  %sum49 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter47, i128 0, i128 0, i128 %k.1
  store i128 %sigma139, i128* %sum49, align 4
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_inner, i128 0, i128 %k.1
  %in752 = load i128, i128* %array_getter51, align 4
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter55 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter54, align 8
  %array_getter57 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter55, i128 0, i128 1, i128 %k.1
  %sum58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum58, i128 %in752, i1* @constraint.66)
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
  call void @fn_intrinsic_add_constraint(i128 %sum75, i128 %sigma069, i1* @constraint.67)
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter78 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter77, align 8
  %sum80 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter78, i128 0, i128 2, i128 %k.1
  store i128 %sigma069, i128* %sum80, align 4
  %array_getter82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_inner, i128 0, i128 %k.1
  %in1683 = load i128, i128* %array_getter82, align 4
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter86 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter85, align 8
  %array_getter88 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter86, i128 0, i128 3, i128 %k.1
  %sum89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum89, i128 %in1683, i1* @constraint.68)
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
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %out110, i128 %sum106, i1* @constraint.69)
  %out113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %sum106, i128* %out113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body101
  %add116 = add i128 %k.2, 1
  %slt118 = icmp slt i128 %add116, 32
  br i1 %slt118, label %loop.body101, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch114
  br label %exit

exit:                                             ; preds = %loop.exit119
  %sigmaplus.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %sigmaplus.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus() {
entry:
  %struct_template_circuit_sigmaplus = alloca %struct_template_circuit_sigmaplus, align 8
  ret %struct_template_circuit_sigmaplus* %struct_template_circuit_sigmaplus
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_inner, i128 0, i128 %i.0
  %in3 = load i128, i128* %array_getter, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %array_getter7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i.0
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.70)
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
  call void @fn_intrinsic_add_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.71)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_t1(%struct_template_circuit_t1* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 0
  %t1.h.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 1
  %t1.e.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 2
  %t1.f.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 3
  %t1.g.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 4
  %t1.k.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 5
  %t1.w.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %ki6 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 32)
  %call7 = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 6, i128 11, i128 25)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ki.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_inner, i128 0, i128 %ki.0
  %e9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %ki.0
  %bigsigma114 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma114, i128 %e9, i1* @constraint.72)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %bigsigma118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter16, i128 0, i128 %ki.0
  store i128 %e9, i128* %bigsigma118, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_inner, i128 0, i128 %ki.0
  %e22 = load i128, i128* %array_getter21, align 4
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter, i128 0, i128 %ki.0
  %ch27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch27, i128 %e22, i1* @constraint.73)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %ch32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter30, i128 0, i128 %ki.0
  store i128 %e22, i128* %ch32, align 4
  %array_getter34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_inner, i128 0, i128 %ki.0
  %f35 = load i128, i128* %array_getter34, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter37, align 8
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter, i128 0, i128 %ki.0
  %ch40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch40, i128 %f35, i1* @constraint.74)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %ch45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter43, i128 0, i128 %ki.0
  store i128 %f35, i128* %ch45, align 4
  %array_getter47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_inner, i128 0, i128 %ki.0
  %g48 = load i128, i128* %array_getter47, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 3
  %ch_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter, i128 0, i128 %ki.0
  %ch53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch53, i128 %g48, i1* @constraint.75)
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
  %array_getter64 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_inner, i128 0, i128 %ki.1
  %h65 = load i128, i128* %array_getter64, align 4
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter67, align 8
  %array_getter69 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %ki.1
  %sum70 = load i128, i128* %array_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum70, i128 %h65, i1* @constraint.76)
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
  call void @fn_intrinsic_add_constraint(i128 %sum86, i128 %bigsigma180, i1* @constraint.77)
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
  call void @fn_intrinsic_add_constraint(i128 %sum102, i128 %ch96, i1* @constraint.78)
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter105 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter104, align 8
  %sum107 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter105, i128 0, i128 2, i128 %ki.1
  store i128 %ch96, i128* %sum107, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_inner, i128 0, i128 %ki.1
  %k110 = load i128, i128* %array_getter109, align 4
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter113 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter112, align 8
  %array_getter115 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter113, i128 0, i128 3, i128 %ki.1
  %sum116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum116, i128 %k110, i1* @constraint.79)
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter119 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter118, align 8
  %sum121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter119, i128 0, i128 3, i128 %ki.1
  store i128 %k110, i128* %sum121, align 4
  %array_getter123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_inner, i128 0, i128 %ki.1
  %w124 = load i128, i128* %array_getter123, align 4
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter127 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter126, align 8
  %array_getter129 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter127, i128 0, i128 4, i128 %ki.1
  %sum130 = load i128, i128* %array_getter129, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum130, i128 %w124, i1* @constraint.80)
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
  %array_getter150 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %ki.2
  %out151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_add_constraint(i128 %out151, i128 %sum147, i1* @constraint.81)
  %out154 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %ki.2
  store i128 %sum147, i128* %out154, align 4
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.body142
  %add157 = add i128 %ki.2, 1
  %slt159 = icmp slt i128 %add157, 32
  br i1 %slt159, label %loop.body142, label %loop.exit160

loop.exit160:                                     ; preds = %loop.latch155
  br label %exit

exit:                                             ; preds = %loop.exit160
  %t1.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 6
  store [4096 x i128]* %out, [4096 x i128]** %t1.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t1* @fn_template_build_t1() {
entry:
  %struct_template_circuit_t1 = alloca %struct_template_circuit_t1, align 8
  ret %struct_template_circuit_t1* %struct_template_circuit_t1
}

define void @fn_template_init_sha256compression(%struct_template_circuit_sha256compression* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 0
  %sha256compression.hin.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 1
  %sha256compression.inp.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %c = bitcast i8* %malloccall to [4096 x [4096 x i128]]*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall2 to [4096 x i128]*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %g = bitcast i8* %malloccall3 to [4096 x [4096 x i128]]*
  %i4 = call i128 @fn_intrinsic_inline_init()
  %ct_k5 = alloca [4096 x %struct_template_circuit_k*], align 8
  %t16 = alloca [4096 x %struct_template_circuit_t1*], align 8
  %t7 = call i128 @fn_intrinsic_inline_init()
  %sigmaPlus8 = alloca [4096 x %struct_template_circuit_sigmaplus*], align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %h = bitcast i8* %malloccall9 to [4096 x [4096 x i128]]*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %w = bitcast i8* %malloccall10 to [4096 x [4096 x i128]]*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %a = bitcast i8* %malloccall11 to [4096 x [4096 x i128]]*
  %suma12 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %sume13 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %e = bitcast i8* %malloccall14 to [4096 x [4096 x i128]]*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %d = bitcast i8* %malloccall16 to [4096 x [4096 x i128]]*
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %b = bitcast i8* %malloccall17 to [4096 x [4096 x i128]]*
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %f = bitcast i8* %malloccall18 to [4096 x [4096 x i128]]*
  %t219 = alloca [4096 x %struct_template_circuit_t2*], align 8
  %k20 = call i128 @fn_intrinsic_inline_init()
  %fsum21 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %call = call [4096 x i128]* @sha256compression([4096 x i128]* %sha256compression.hin.read_input_inner, [4096 x i128]* %sha256compression.inp.read_input_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %call, i128 0, i128 %i.0
  %outCalc24 = load i128, i128* %array_getter, align 4
  %out26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
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
  %sigmaPlus33 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %i.1
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
  %ct_k45 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k5, i128 0, i128 %i.2
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
  %t156 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %i.3
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
  %t267 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %i.4
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
  %suma78 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %i.5
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
  %sume89 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %i.6
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
  %fsum100 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 %i.7
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
  %mul = mul i128 %t.0, 32
  %add113 = add i128 %mul, 31
  %sub = sub i128 %add113, %k.0
  %array_getter115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_inner, i128 0, i128 %sub
  %inp116 = load i128, i128* %array_getter115, align 4
  %array_getter120 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.0
  %w121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %w121, i128 %inp116, i1* @constraint.82)
  %w125 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.0
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
  %sub135 = sub i128 %t.0, 2
  %array_getter137 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub135, i128 %k.1
  %w138 = load i128, i128* %array_getter137, align 4
  %sub141 = sub i128 %t.0, 16
  %array_getter142 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub141
  %sigmaPlus143 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter142, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus143, i32 0, i32 0
  %sigmaplus.in2.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter144, align 8
  %array_getter146 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus147 = load i128, i128* %array_getter146, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus147, i128 %w138, i1* @constraint.83)
  %sub150 = sub i128 %t.0, 16
  %array_getter151 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub150
  %sigmaPlus152 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter151, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus152, i32 0, i32 0
  %sigmaplus.in2.read_input_outter154 = load [4096 x i128]*, [4096 x i128]** %struct_getter153, align 8
  %sigmaPlus156 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter154, i128 0, i128 %k.1
  store i128 %w138, i128* %sigmaPlus156, align 4
  %sub159 = sub i128 %t.0, 7
  %array_getter161 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub159, i128 %k.1
  %w162 = load i128, i128* %array_getter161, align 4
  %sub165 = sub i128 %t.0, 16
  %array_getter166 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub165
  %sigmaPlus167 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter166, align 8
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus167, i32 0, i32 1
  %sigmaplus.in7.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter168, align 8
  %array_getter170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus171 = load i128, i128* %array_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus171, i128 %w162, i1* @constraint.84)
  %sub174 = sub i128 %t.0, 16
  %array_getter175 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub174
  %sigmaPlus176 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter175, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus176, i32 0, i32 1
  %sigmaplus.in7.read_input_outter178 = load [4096 x i128]*, [4096 x i128]** %struct_getter177, align 8
  %sigmaPlus180 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter178, i128 0, i128 %k.1
  store i128 %w162, i128* %sigmaPlus180, align 4
  %sub183 = sub i128 %t.0, 15
  %array_getter185 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub183, i128 %k.1
  %w186 = load i128, i128* %array_getter185, align 4
  %sub189 = sub i128 %t.0, 16
  %array_getter190 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub189
  %sigmaPlus191 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter190, align 8
  %struct_getter192 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus191, i32 0, i32 2
  %sigmaplus.in15.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter192, align 8
  %array_getter194 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus195, i128 %w186, i1* @constraint.85)
  %sub198 = sub i128 %t.0, 16
  %array_getter199 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub198
  %sigmaPlus200 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus200, i32 0, i32 2
  %sigmaplus.in15.read_input_outter202 = load [4096 x i128]*, [4096 x i128]** %struct_getter201, align 8
  %sigmaPlus204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter202, i128 0, i128 %k.1
  store i128 %w186, i128* %sigmaPlus204, align 4
  %sub207 = sub i128 %t.0, 16
  %array_getter209 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub207, i128 %k.1
  %w210 = load i128, i128* %array_getter209, align 4
  %sub213 = sub i128 %t.0, 16
  %array_getter214 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub213
  %sigmaPlus215 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter214, align 8
  %struct_getter216 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus215, i32 0, i32 3
  %sigmaplus.in16.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter216, align 8
  %array_getter218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus219 = load i128, i128* %array_getter218, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus219, i128 %w210, i1* @constraint.86)
  %sub222 = sub i128 %t.0, 16
  %array_getter223 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub222
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
  %sub238 = sub i128 %t.0, 16
  %array_getter239 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus8, i128 0, i128 %sub238
  %sigmaPlus240 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus240, i32 0, i32 4
  %sigmaplus.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter241, align 8
  %array_getter243 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.out.read_output_outter, i128 0, i128 %k.2
  %sigmaPlus244 = load i128, i128* %array_getter243, align 4
  %array_getter248 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.2
  %w249 = load i128, i128* %array_getter248, align 4
  call void @fn_intrinsic_add_constraint(i128 %w249, i128 %sigmaPlus244, i1* @constraint.87)
  %w253 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.2
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
  %array_getter269 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %k.3
  %hin270 = load i128, i128* %array_getter269, align 4
  %array_getter273 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 0, i128 %k.3
  %a274 = load i128, i128* %array_getter273, align 4
  call void @fn_intrinsic_add_constraint(i128 %a274, i128 %hin270, i1* @constraint.88)
  %a277 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 0, i128 %k.3
  store i128 %hin270, i128* %a277, align 4
  %add280 = add i128 32, %k.3
  %array_getter281 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add280
  %hin282 = load i128, i128* %array_getter281, align 4
  %array_getter285 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 0, i128 %k.3
  %b286 = load i128, i128* %array_getter285, align 4
  call void @fn_intrinsic_add_constraint(i128 %b286, i128 %hin282, i1* @constraint.89)
  %b289 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 0, i128 %k.3
  store i128 %hin282, i128* %b289, align 4
  %add292 = add i128 64, %k.3
  %array_getter293 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add292
  %hin294 = load i128, i128* %array_getter293, align 4
  %array_getter297 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 0, i128 %k.3
  %c298 = load i128, i128* %array_getter297, align 4
  call void @fn_intrinsic_add_constraint(i128 %c298, i128 %hin294, i1* @constraint.90)
  %c301 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 0, i128 %k.3
  store i128 %hin294, i128* %c301, align 4
  %add304 = add i128 96, %k.3
  %array_getter305 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add304
  %hin306 = load i128, i128* %array_getter305, align 4
  %array_getter309 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 0, i128 %k.3
  %d310 = load i128, i128* %array_getter309, align 4
  call void @fn_intrinsic_add_constraint(i128 %d310, i128 %hin306, i1* @constraint.91)
  %d313 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 0, i128 %k.3
  store i128 %hin306, i128* %d313, align 4
  %add316 = add i128 128, %k.3
  %array_getter317 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add316
  %hin318 = load i128, i128* %array_getter317, align 4
  %array_getter321 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 0, i128 %k.3
  %e322 = load i128, i128* %array_getter321, align 4
  call void @fn_intrinsic_add_constraint(i128 %e322, i128 %hin318, i1* @constraint.92)
  %e325 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 0, i128 %k.3
  store i128 %hin318, i128* %e325, align 4
  %add328 = add i128 160, %k.3
  %array_getter329 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add328
  %hin330 = load i128, i128* %array_getter329, align 4
  %array_getter333 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 0, i128 %k.3
  %f334 = load i128, i128* %array_getter333, align 4
  call void @fn_intrinsic_add_constraint(i128 %f334, i128 %hin330, i1* @constraint.93)
  %f337 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 0, i128 %k.3
  store i128 %hin330, i128* %f337, align 4
  %add340 = add i128 192, %k.3
  %array_getter341 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add340
  %hin342 = load i128, i128* %array_getter341, align 4
  %array_getter345 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 0, i128 %k.3
  %g346 = load i128, i128* %array_getter345, align 4
  call void @fn_intrinsic_add_constraint(i128 %g346, i128 %hin342, i1* @constraint.94)
  %g349 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 0, i128 %k.3
  store i128 %hin342, i128* %g349, align 4
  %add352 = add i128 224, %k.3
  %array_getter353 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add352
  %hin354 = load i128, i128* %array_getter353, align 4
  %array_getter357 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 0, i128 %k.3
  %h358 = load i128, i128* %array_getter357, align 4
  call void @fn_intrinsic_add_constraint(i128 %h358, i128 %hin354, i1* @constraint.95)
  %h361 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 0, i128 %k.3
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
  %array_getter373 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %t.1, i128 %k.4
  %h374 = load i128, i128* %array_getter373, align 4
  %array_getter377 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1378 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter377, align 8
  %struct_getter379 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1378, i32 0, i32 0
  %t1.h.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter379, align 8
  %array_getter381 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter, i128 0, i128 %k.4
  %t1382 = load i128, i128* %array_getter381, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1382, i128 %h374, i1* @constraint.96)
  %array_getter385 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1386 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter385, align 8
  %struct_getter387 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1386, i32 0, i32 0
  %t1.h.read_input_outter388 = load [4096 x i128]*, [4096 x i128]** %struct_getter387, align 8
  %t1390 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter388, i128 0, i128 %k.4
  store i128 %h374, i128* %t1390, align 4
  %array_getter394 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %t.1, i128 %k.4
  %e395 = load i128, i128* %array_getter394, align 4
  %array_getter398 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1399 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter398, align 8
  %struct_getter400 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1399, i32 0, i32 1
  %t1.e.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter400, align 8
  %array_getter402 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter, i128 0, i128 %k.4
  %t1403 = load i128, i128* %array_getter402, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1403, i128 %e395, i1* @constraint.97)
  %array_getter406 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1407 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter406, align 8
  %struct_getter408 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1407, i32 0, i32 1
  %t1.e.read_input_outter409 = load [4096 x i128]*, [4096 x i128]** %struct_getter408, align 8
  %t1411 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter409, i128 0, i128 %k.4
  store i128 %e395, i128* %t1411, align 4
  %array_getter415 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %t.1, i128 %k.4
  %f416 = load i128, i128* %array_getter415, align 4
  %array_getter419 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1420 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter419, align 8
  %struct_getter421 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1420, i32 0, i32 2
  %t1.f.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter421, align 8
  %array_getter423 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter, i128 0, i128 %k.4
  %t1424 = load i128, i128* %array_getter423, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1424, i128 %f416, i1* @constraint.98)
  %array_getter427 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1428 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter427, align 8
  %struct_getter429 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1428, i32 0, i32 2
  %t1.f.read_input_outter430 = load [4096 x i128]*, [4096 x i128]** %struct_getter429, align 8
  %t1432 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter430, i128 0, i128 %k.4
  store i128 %f416, i128* %t1432, align 4
  %array_getter436 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %t.1, i128 %k.4
  %g437 = load i128, i128* %array_getter436, align 4
  %array_getter440 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1441 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter440, align 8
  %struct_getter442 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1441, i32 0, i32 3
  %t1.g.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter442, align 8
  %array_getter444 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter, i128 0, i128 %k.4
  %t1445 = load i128, i128* %array_getter444, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1445, i128 %g437, i1* @constraint.99)
  %array_getter448 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1449 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter448, align 8
  %struct_getter450 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1449, i32 0, i32 3
  %t1.g.read_input_outter451 = load [4096 x i128]*, [4096 x i128]** %struct_getter450, align 8
  %t1453 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter451, i128 0, i128 %k.4
  store i128 %g437, i128* %t1453, align 4
  %array_getter456 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k5, i128 0, i128 %t.1
  %ct_k457 = load %struct_template_circuit_k*, %struct_template_circuit_k** %array_getter456, align 8
  %struct_getter458 = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %ct_k457, i32 0, i32 1
  %k.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter458, align 8
  %array_getter460 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k.out.read_output_outter, i128 0, i128 %k.4
  %ct_k461 = load i128, i128* %array_getter460, align 4
  %array_getter464 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1465 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter464, align 8
  %struct_getter466 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1465, i32 0, i32 4
  %t1.k.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter466, align 8
  %array_getter468 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter, i128 0, i128 %k.4
  %t1469 = load i128, i128* %array_getter468, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1469, i128 %ct_k461, i1* @constraint.100)
  %array_getter472 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1473 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter472, align 8
  %struct_getter474 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1473, i32 0, i32 4
  %t1.k.read_input_outter475 = load [4096 x i128]*, [4096 x i128]** %struct_getter474, align 8
  %t1477 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter475, i128 0, i128 %k.4
  store i128 %ct_k461, i128* %t1477, align 4
  %array_getter481 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.1, i128 %k.4
  %w482 = load i128, i128* %array_getter481, align 4
  %array_getter485 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1486 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter485, align 8
  %struct_getter487 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1486, i32 0, i32 5
  %t1.w.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter487, align 8
  %array_getter489 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter, i128 0, i128 %k.4
  %t1490 = load i128, i128* %array_getter489, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1490, i128 %w482, i1* @constraint.101)
  %array_getter493 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1494 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter493, align 8
  %struct_getter495 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1494, i32 0, i32 5
  %t1.w.read_input_outter496 = load [4096 x i128]*, [4096 x i128]** %struct_getter495, align 8
  %t1498 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter496, i128 0, i128 %k.4
  store i128 %w482, i128* %t1498, align 4
  %array_getter502 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %t.1, i128 %k.4
  %a503 = load i128, i128* %array_getter502, align 4
  %array_getter506 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2507 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter506, align 8
  %struct_getter508 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2507, i32 0, i32 0
  %t2.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter508, align 8
  %array_getter510 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter, i128 0, i128 %k.4
  %t2511 = load i128, i128* %array_getter510, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2511, i128 %a503, i1* @constraint.102)
  %array_getter514 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2515 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter514, align 8
  %struct_getter516 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2515, i32 0, i32 0
  %t2.a.read_input_outter517 = load [4096 x i128]*, [4096 x i128]** %struct_getter516, align 8
  %t2519 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter517, i128 0, i128 %k.4
  store i128 %a503, i128* %t2519, align 4
  %array_getter523 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %t.1, i128 %k.4
  %b524 = load i128, i128* %array_getter523, align 4
  %array_getter527 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2528 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter527, align 8
  %struct_getter529 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2528, i32 0, i32 1
  %t2.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter529, align 8
  %array_getter531 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter, i128 0, i128 %k.4
  %t2532 = load i128, i128* %array_getter531, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2532, i128 %b524, i1* @constraint.103)
  %array_getter535 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2536 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter535, align 8
  %struct_getter537 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2536, i32 0, i32 1
  %t2.b.read_input_outter538 = load [4096 x i128]*, [4096 x i128]** %struct_getter537, align 8
  %t2540 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter538, i128 0, i128 %k.4
  store i128 %b524, i128* %t2540, align 4
  %array_getter544 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %t.1, i128 %k.4
  %c545 = load i128, i128* %array_getter544, align 4
  %array_getter548 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2549 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter548, align 8
  %struct_getter550 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2549, i32 0, i32 2
  %t2.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter550, align 8
  %array_getter552 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter, i128 0, i128 %k.4
  %t2553 = load i128, i128* %array_getter552, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2553, i128 %c545, i1* @constraint.104)
  %array_getter556 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
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
  %array_getter572 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %t.1, i128 %k.5
  %d573 = load i128, i128* %array_getter572, align 4
  %array_getter576 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %t.1
  %sume577 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter576, align 8
  %struct_getter578 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume577, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter578, align 8
  %array_getter580 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.5
  %sume581 = load i128, i128* %array_getter580, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume581, i128 %d573, i1* @constraint.105)
  %array_getter584 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %t.1
  %sume585 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter584, align 8
  %struct_getter586 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume585, i32 0, i32 2
  %binsum.in.read_input_outter587 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter586, align 8
  %sume589 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter587, i128 0, i128 0, i128 %k.5
  store i128 %d573, i128* %sume589, align 4
  %array_getter592 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1593 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter592, align 8
  %struct_getter594 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1593, i32 0, i32 6
  %t1.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter594, align 8
  %array_getter596 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter, i128 0, i128 %k.5
  %t1597 = load i128, i128* %array_getter596, align 4
  %array_getter600 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %t.1
  %sume601 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter600, align 8
  %struct_getter602 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume601, i32 0, i32 2
  %binsum.in.read_input_outter603 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter602, align 8
  %array_getter605 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter603, i128 0, i128 1, i128 %k.5
  %sume606 = load i128, i128* %array_getter605, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume606, i128 %t1597, i1* @constraint.106)
  %array_getter609 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %t.1
  %sume610 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter609, align 8
  %struct_getter611 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume610, i32 0, i32 2
  %binsum.in.read_input_outter612 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter611, align 8
  %sume614 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter612, i128 0, i128 1, i128 %k.5
  store i128 %t1597, i128* %sume614, align 4
  %array_getter617 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t16, i128 0, i128 %t.1
  %t1618 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter617, align 8
  %struct_getter619 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1618, i32 0, i32 6
  %t1.out.read_output_outter620 = load [4096 x i128]*, [4096 x i128]** %struct_getter619, align 8
  %array_getter622 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter620, i128 0, i128 %k.5
  %t1623 = load i128, i128* %array_getter622, align 4
  %array_getter626 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %t.1
  %suma627 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter626, align 8
  %struct_getter628 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma627, i32 0, i32 2
  %binsum.in.read_input_outter629 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter628, align 8
  %array_getter631 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter629, i128 0, i128 0, i128 %k.5
  %suma632 = load i128, i128* %array_getter631, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma632, i128 %t1623, i1* @constraint.107)
  %array_getter635 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %t.1
  %suma636 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter635, align 8
  %struct_getter637 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma636, i32 0, i32 2
  %binsum.in.read_input_outter638 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter637, align 8
  %suma640 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter638, i128 0, i128 0, i128 %k.5
  store i128 %t1623, i128* %suma640, align 4
  %array_getter643 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t219, i128 0, i128 %t.1
  %t2644 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter643, align 8
  %struct_getter645 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2644, i32 0, i32 3
  %t2.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter645, align 8
  %array_getter647 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.out.read_output_outter, i128 0, i128 %k.5
  %t2648 = load i128, i128* %array_getter647, align 4
  %array_getter651 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %t.1
  %suma652 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter651, align 8
  %struct_getter653 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma652, i32 0, i32 2
  %binsum.in.read_input_outter654 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter653, align 8
  %array_getter656 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter654, i128 0, i128 1, i128 %k.5
  %suma657 = load i128, i128* %array_getter656, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma657, i128 %t2648, i1* @constraint.108)
  %array_getter660 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %t.1
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
  %array_getter676 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %t.1, i128 %k.6
  %g677 = load i128, i128* %array_getter676, align 4
  %add680 = add i128 %t.1, 1
  %array_getter682 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %add680, i128 %k.6
  %h683 = load i128, i128* %array_getter682, align 4
  call void @fn_intrinsic_add_constraint(i128 %h683, i128 %g677, i1* @constraint.109)
  %add686 = add i128 %t.1, 1
  %h688 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %add686, i128 %k.6
  store i128 %g677, i128* %h688, align 4
  %array_getter692 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %t.1, i128 %k.6
  %f693 = load i128, i128* %array_getter692, align 4
  %add696 = add i128 %t.1, 1
  %array_getter698 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %add696, i128 %k.6
  %g699 = load i128, i128* %array_getter698, align 4
  call void @fn_intrinsic_add_constraint(i128 %g699, i128 %f693, i1* @constraint.110)
  %add702 = add i128 %t.1, 1
  %g704 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %add702, i128 %k.6
  store i128 %f693, i128* %g704, align 4
  %array_getter708 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %t.1, i128 %k.6
  %e709 = load i128, i128* %array_getter708, align 4
  %add712 = add i128 %t.1, 1
  %array_getter714 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %add712, i128 %k.6
  %f715 = load i128, i128* %array_getter714, align 4
  call void @fn_intrinsic_add_constraint(i128 %f715, i128 %e709, i1* @constraint.111)
  %add718 = add i128 %t.1, 1
  %f720 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %add718, i128 %k.6
  store i128 %e709, i128* %f720, align 4
  %array_getter723 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume13, i128 0, i128 %t.1
  %sume724 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter723, align 8
  %struct_getter725 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume724, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter725, align 8
  %array_getter727 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.6
  %sume728 = load i128, i128* %array_getter727, align 4
  %add731 = add i128 %t.1, 1
  %array_getter733 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %add731, i128 %k.6
  %e734 = load i128, i128* %array_getter733, align 4
  call void @fn_intrinsic_add_constraint(i128 %e734, i128 %sume728, i1* @constraint.112)
  %add737 = add i128 %t.1, 1
  %e739 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %add737, i128 %k.6
  store i128 %sume728, i128* %e739, align 4
  %array_getter743 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %t.1, i128 %k.6
  %c744 = load i128, i128* %array_getter743, align 4
  %add747 = add i128 %t.1, 1
  %array_getter749 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %add747, i128 %k.6
  %d750 = load i128, i128* %array_getter749, align 4
  call void @fn_intrinsic_add_constraint(i128 %d750, i128 %c744, i1* @constraint.113)
  %add753 = add i128 %t.1, 1
  %d755 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %add753, i128 %k.6
  store i128 %c744, i128* %d755, align 4
  %array_getter759 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %t.1, i128 %k.6
  %b760 = load i128, i128* %array_getter759, align 4
  %add763 = add i128 %t.1, 1
  %array_getter765 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %add763, i128 %k.6
  %c766 = load i128, i128* %array_getter765, align 4
  call void @fn_intrinsic_add_constraint(i128 %c766, i128 %b760, i1* @constraint.114)
  %add769 = add i128 %t.1, 1
  %c771 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %add769, i128 %k.6
  store i128 %b760, i128* %c771, align 4
  %array_getter775 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %t.1, i128 %k.6
  %a776 = load i128, i128* %array_getter775, align 4
  %add779 = add i128 %t.1, 1
  %array_getter781 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %add779, i128 %k.6
  %b782 = load i128, i128* %array_getter781, align 4
  call void @fn_intrinsic_add_constraint(i128 %b782, i128 %a776, i1* @constraint.115)
  %add785 = add i128 %t.1, 1
  %b787 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %add785, i128 %k.6
  store i128 %a776, i128* %b787, align 4
  %array_getter790 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma12, i128 0, i128 %t.1
  %suma791 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter790, align 8
  %struct_getter792 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma791, i32 0, i32 3
  %binsum.out.read_output_outter793 = load [4096 x i128]*, [4096 x i128]** %struct_getter792, align 8
  %array_getter795 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter793, i128 0, i128 %k.6
  %suma796 = load i128, i128* %array_getter795, align 4
  %add799 = add i128 %t.1, 1
  %array_getter801 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %add799, i128 %k.6
  %a802 = load i128, i128* %array_getter801, align 4
  call void @fn_intrinsic_add_constraint(i128 %a802, i128 %suma796, i1* @constraint.116)
  %add805 = add i128 %t.1, 1
  %a807 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %add805, i128 %k.6
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
  %add823 = add i128 0, %k.7
  %array_getter824 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add823
  %hin825 = load i128, i128* %array_getter824, align 4
  %array_getter827 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 0
  %fsum828 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter827, align 8
  %struct_getter829 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum828, i32 0, i32 2
  %binsum.in.read_input_outter830 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter829, align 8
  %array_getter832 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter830, i128 0, i128 0, i128 %k.7
  %fsum833 = load i128, i128* %array_getter832, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum833, i128 %hin825, i1* @constraint.117)
  %array_getter835 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 0
  %fsum836 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter835, align 8
  %struct_getter837 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum836, i32 0, i32 2
  %binsum.in.read_input_outter838 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter837, align 8
  %fsum840 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter838, i128 0, i128 0, i128 %k.7
  store i128 %hin825, i128* %fsum840, align 4
  %array_getter843 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 64, i128 %k.7
  %a844 = load i128, i128* %array_getter843, align 4
  %array_getter846 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 0
  %fsum847 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter846, align 8
  %struct_getter848 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum847, i32 0, i32 2
  %binsum.in.read_input_outter849 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter848, align 8
  %array_getter851 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter849, i128 0, i128 1, i128 %k.7
  %fsum852 = load i128, i128* %array_getter851, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum852, i128 %a844, i1* @constraint.118)
  %array_getter854 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 0
  %fsum855 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter854, align 8
  %struct_getter856 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum855, i32 0, i32 2
  %binsum.in.read_input_outter857 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter856, align 8
  %fsum859 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter857, i128 0, i128 1, i128 %k.7
  store i128 %a844, i128* %fsum859, align 4
  %add862 = add i128 32, %k.7
  %array_getter863 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add862
  %hin864 = load i128, i128* %array_getter863, align 4
  %array_getter866 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 1
  %fsum867 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter866, align 8
  %struct_getter868 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum867, i32 0, i32 2
  %binsum.in.read_input_outter869 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter868, align 8
  %array_getter871 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter869, i128 0, i128 0, i128 %k.7
  %fsum872 = load i128, i128* %array_getter871, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum872, i128 %hin864, i1* @constraint.119)
  %array_getter874 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 1
  %fsum875 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter874, align 8
  %struct_getter876 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum875, i32 0, i32 2
  %binsum.in.read_input_outter877 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter876, align 8
  %fsum879 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter877, i128 0, i128 0, i128 %k.7
  store i128 %hin864, i128* %fsum879, align 4
  %array_getter882 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 64, i128 %k.7
  %b883 = load i128, i128* %array_getter882, align 4
  %array_getter885 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 1
  %fsum886 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter885, align 8
  %struct_getter887 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum886, i32 0, i32 2
  %binsum.in.read_input_outter888 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter887, align 8
  %array_getter890 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter888, i128 0, i128 1, i128 %k.7
  %fsum891 = load i128, i128* %array_getter890, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum891, i128 %b883, i1* @constraint.120)
  %array_getter893 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 1
  %fsum894 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter893, align 8
  %struct_getter895 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum894, i32 0, i32 2
  %binsum.in.read_input_outter896 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter895, align 8
  %fsum898 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter896, i128 0, i128 1, i128 %k.7
  store i128 %b883, i128* %fsum898, align 4
  %add901 = add i128 64, %k.7
  %array_getter902 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add901
  %hin903 = load i128, i128* %array_getter902, align 4
  %array_getter905 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 2
  %fsum906 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter905, align 8
  %struct_getter907 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum906, i32 0, i32 2
  %binsum.in.read_input_outter908 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter907, align 8
  %array_getter910 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter908, i128 0, i128 0, i128 %k.7
  %fsum911 = load i128, i128* %array_getter910, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum911, i128 %hin903, i1* @constraint.121)
  %array_getter913 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 2
  %fsum914 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter913, align 8
  %struct_getter915 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum914, i32 0, i32 2
  %binsum.in.read_input_outter916 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter915, align 8
  %fsum918 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter916, i128 0, i128 0, i128 %k.7
  store i128 %hin903, i128* %fsum918, align 4
  %array_getter921 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 64, i128 %k.7
  %c922 = load i128, i128* %array_getter921, align 4
  %array_getter924 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 2
  %fsum925 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter924, align 8
  %struct_getter926 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum925, i32 0, i32 2
  %binsum.in.read_input_outter927 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter926, align 8
  %array_getter929 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter927, i128 0, i128 1, i128 %k.7
  %fsum930 = load i128, i128* %array_getter929, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum930, i128 %c922, i1* @constraint.122)
  %array_getter932 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 2
  %fsum933 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter932, align 8
  %struct_getter934 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum933, i32 0, i32 2
  %binsum.in.read_input_outter935 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter934, align 8
  %fsum937 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter935, i128 0, i128 1, i128 %k.7
  store i128 %c922, i128* %fsum937, align 4
  %add940 = add i128 96, %k.7
  %array_getter941 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add940
  %hin942 = load i128, i128* %array_getter941, align 4
  %array_getter944 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 3
  %fsum945 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter944, align 8
  %struct_getter946 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum945, i32 0, i32 2
  %binsum.in.read_input_outter947 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter946, align 8
  %array_getter949 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter947, i128 0, i128 0, i128 %k.7
  %fsum950 = load i128, i128* %array_getter949, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum950, i128 %hin942, i1* @constraint.123)
  %array_getter952 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 3
  %fsum953 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter952, align 8
  %struct_getter954 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum953, i32 0, i32 2
  %binsum.in.read_input_outter955 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter954, align 8
  %fsum957 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter955, i128 0, i128 0, i128 %k.7
  store i128 %hin942, i128* %fsum957, align 4
  %array_getter960 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 64, i128 %k.7
  %d961 = load i128, i128* %array_getter960, align 4
  %array_getter963 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 3
  %fsum964 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter963, align 8
  %struct_getter965 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum964, i32 0, i32 2
  %binsum.in.read_input_outter966 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter965, align 8
  %array_getter968 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter966, i128 0, i128 1, i128 %k.7
  %fsum969 = load i128, i128* %array_getter968, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum969, i128 %d961, i1* @constraint.124)
  %array_getter971 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 3
  %fsum972 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter971, align 8
  %struct_getter973 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum972, i32 0, i32 2
  %binsum.in.read_input_outter974 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter973, align 8
  %fsum976 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter974, i128 0, i128 1, i128 %k.7
  store i128 %d961, i128* %fsum976, align 4
  %add979 = add i128 128, %k.7
  %array_getter980 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add979
  %hin981 = load i128, i128* %array_getter980, align 4
  %array_getter983 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 4
  %fsum984 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter983, align 8
  %struct_getter985 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum984, i32 0, i32 2
  %binsum.in.read_input_outter986 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter985, align 8
  %array_getter988 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter986, i128 0, i128 0, i128 %k.7
  %fsum989 = load i128, i128* %array_getter988, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum989, i128 %hin981, i1* @constraint.125)
  %array_getter991 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 4
  %fsum992 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter991, align 8
  %struct_getter993 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum992, i32 0, i32 2
  %binsum.in.read_input_outter994 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter993, align 8
  %fsum996 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter994, i128 0, i128 0, i128 %k.7
  store i128 %hin981, i128* %fsum996, align 4
  %array_getter999 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 64, i128 %k.7
  %e1000 = load i128, i128* %array_getter999, align 4
  %array_getter1002 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 4
  %fsum1003 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1002, align 8
  %struct_getter1004 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1003, i32 0, i32 2
  %binsum.in.read_input_outter1005 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1004, align 8
  %array_getter1007 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1005, i128 0, i128 1, i128 %k.7
  %fsum1008 = load i128, i128* %array_getter1007, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1008, i128 %e1000, i1* @constraint.126)
  %array_getter1010 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 4
  %fsum1011 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1010, align 8
  %struct_getter1012 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1011, i32 0, i32 2
  %binsum.in.read_input_outter1013 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1012, align 8
  %fsum1015 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1013, i128 0, i128 1, i128 %k.7
  store i128 %e1000, i128* %fsum1015, align 4
  %add1018 = add i128 160, %k.7
  %array_getter1019 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1018
  %hin1020 = load i128, i128* %array_getter1019, align 4
  %array_getter1022 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 5
  %fsum1023 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1022, align 8
  %struct_getter1024 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1023, i32 0, i32 2
  %binsum.in.read_input_outter1025 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1024, align 8
  %array_getter1027 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1025, i128 0, i128 0, i128 %k.7
  %fsum1028 = load i128, i128* %array_getter1027, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1028, i128 %hin1020, i1* @constraint.127)
  %array_getter1030 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 5
  %fsum1031 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1030, align 8
  %struct_getter1032 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1031, i32 0, i32 2
  %binsum.in.read_input_outter1033 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1032, align 8
  %fsum1035 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1033, i128 0, i128 0, i128 %k.7
  store i128 %hin1020, i128* %fsum1035, align 4
  %array_getter1038 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 64, i128 %k.7
  %f1039 = load i128, i128* %array_getter1038, align 4
  %array_getter1041 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 5
  %fsum1042 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1041, align 8
  %struct_getter1043 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1042, i32 0, i32 2
  %binsum.in.read_input_outter1044 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1043, align 8
  %array_getter1046 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1044, i128 0, i128 1, i128 %k.7
  %fsum1047 = load i128, i128* %array_getter1046, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1047, i128 %f1039, i1* @constraint.128)
  %array_getter1049 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 5
  %fsum1050 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1049, align 8
  %struct_getter1051 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1050, i32 0, i32 2
  %binsum.in.read_input_outter1052 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1051, align 8
  %fsum1054 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1052, i128 0, i128 1, i128 %k.7
  store i128 %f1039, i128* %fsum1054, align 4
  %add1057 = add i128 192, %k.7
  %array_getter1058 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1057
  %hin1059 = load i128, i128* %array_getter1058, align 4
  %array_getter1061 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 6
  %fsum1062 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1061, align 8
  %struct_getter1063 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1062, i32 0, i32 2
  %binsum.in.read_input_outter1064 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1063, align 8
  %array_getter1066 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1064, i128 0, i128 0, i128 %k.7
  %fsum1067 = load i128, i128* %array_getter1066, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1067, i128 %hin1059, i1* @constraint.129)
  %array_getter1069 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 6
  %fsum1070 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1069, align 8
  %struct_getter1071 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1070, i32 0, i32 2
  %binsum.in.read_input_outter1072 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1071, align 8
  %fsum1074 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1072, i128 0, i128 0, i128 %k.7
  store i128 %hin1059, i128* %fsum1074, align 4
  %array_getter1077 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 64, i128 %k.7
  %g1078 = load i128, i128* %array_getter1077, align 4
  %array_getter1080 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 6
  %fsum1081 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1080, align 8
  %struct_getter1082 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1081, i32 0, i32 2
  %binsum.in.read_input_outter1083 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1082, align 8
  %array_getter1085 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1083, i128 0, i128 1, i128 %k.7
  %fsum1086 = load i128, i128* %array_getter1085, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1086, i128 %g1078, i1* @constraint.130)
  %array_getter1088 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 6
  %fsum1089 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1088, align 8
  %struct_getter1090 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1089, i32 0, i32 2
  %binsum.in.read_input_outter1091 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1090, align 8
  %fsum1093 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1091, i128 0, i128 1, i128 %k.7
  store i128 %g1078, i128* %fsum1093, align 4
  %add1096 = add i128 224, %k.7
  %array_getter1097 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1096
  %hin1098 = load i128, i128* %array_getter1097, align 4
  %array_getter1100 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 7
  %fsum1101 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1100, align 8
  %struct_getter1102 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1101, i32 0, i32 2
  %binsum.in.read_input_outter1103 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1102, align 8
  %array_getter1105 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1103, i128 0, i128 0, i128 %k.7
  %fsum1106 = load i128, i128* %array_getter1105, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1106, i128 %hin1098, i1* @constraint.131)
  %array_getter1108 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 7
  %fsum1109 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1108, align 8
  %struct_getter1110 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1109, i32 0, i32 2
  %binsum.in.read_input_outter1111 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1110, align 8
  %fsum1113 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1111, i128 0, i128 0, i128 %k.7
  store i128 %hin1098, i128* %fsum1113, align 4
  %array_getter1116 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 64, i128 %k.7
  %h1117 = load i128, i128* %array_getter1116, align 4
  %array_getter1119 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 7
  %fsum1120 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1119, align 8
  %struct_getter1121 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1120, i32 0, i32 2
  %binsum.in.read_input_outter1122 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1121, align 8
  %array_getter1124 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1122, i128 0, i128 1, i128 %k.7
  %fsum1125 = load i128, i128* %array_getter1124, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1125, i128 %h1117, i1* @constraint.132)
  %array_getter1127 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 7
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
  %sub1142 = sub i128 31, %k.8
  %array_getter1143 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1142
  %out1144 = load i128, i128* %array_getter1143, align 4
  %array_getter1146 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 0
  %fsum1147 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1146, align 8
  %struct_getter1148 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1147, i32 0, i32 3
  %binsum.out.read_output_outter1149 = load [4096 x i128]*, [4096 x i128]** %struct_getter1148, align 8
  %array_getter1151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1149, i128 0, i128 %k.8
  %fsum1152 = load i128, i128* %array_getter1151, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1144, i128 %fsum1152, i1* @constraint.133)
  %sub1155 = sub i128 63, %k.8
  %array_getter1156 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1155
  %out1157 = load i128, i128* %array_getter1156, align 4
  %array_getter1159 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 1
  %fsum1160 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1159, align 8
  %struct_getter1161 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1160, i32 0, i32 3
  %binsum.out.read_output_outter1162 = load [4096 x i128]*, [4096 x i128]** %struct_getter1161, align 8
  %array_getter1164 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1162, i128 0, i128 %k.8
  %fsum1165 = load i128, i128* %array_getter1164, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1157, i128 %fsum1165, i1* @constraint.134)
  %sub1168 = sub i128 95, %k.8
  %array_getter1169 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1168
  %out1170 = load i128, i128* %array_getter1169, align 4
  %array_getter1172 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 2
  %fsum1173 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1172, align 8
  %struct_getter1174 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1173, i32 0, i32 3
  %binsum.out.read_output_outter1175 = load [4096 x i128]*, [4096 x i128]** %struct_getter1174, align 8
  %array_getter1177 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1175, i128 0, i128 %k.8
  %fsum1178 = load i128, i128* %array_getter1177, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1170, i128 %fsum1178, i1* @constraint.135)
  %sub1181 = sub i128 127, %k.8
  %array_getter1182 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1181
  %out1183 = load i128, i128* %array_getter1182, align 4
  %array_getter1185 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 3
  %fsum1186 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1185, align 8
  %struct_getter1187 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1186, i32 0, i32 3
  %binsum.out.read_output_outter1188 = load [4096 x i128]*, [4096 x i128]** %struct_getter1187, align 8
  %array_getter1190 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1188, i128 0, i128 %k.8
  %fsum1191 = load i128, i128* %array_getter1190, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1183, i128 %fsum1191, i1* @constraint.136)
  %sub1194 = sub i128 159, %k.8
  %array_getter1195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1194
  %out1196 = load i128, i128* %array_getter1195, align 4
  %array_getter1198 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 4
  %fsum1199 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1198, align 8
  %struct_getter1200 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1199, i32 0, i32 3
  %binsum.out.read_output_outter1201 = load [4096 x i128]*, [4096 x i128]** %struct_getter1200, align 8
  %array_getter1203 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1201, i128 0, i128 %k.8
  %fsum1204 = load i128, i128* %array_getter1203, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1196, i128 %fsum1204, i1* @constraint.137)
  %sub1207 = sub i128 191, %k.8
  %array_getter1208 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1207
  %out1209 = load i128, i128* %array_getter1208, align 4
  %array_getter1211 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 5
  %fsum1212 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1211, align 8
  %struct_getter1213 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1212, i32 0, i32 3
  %binsum.out.read_output_outter1214 = load [4096 x i128]*, [4096 x i128]** %struct_getter1213, align 8
  %array_getter1216 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1214, i128 0, i128 %k.8
  %fsum1217 = load i128, i128* %array_getter1216, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1209, i128 %fsum1217, i1* @constraint.138)
  %sub1220 = sub i128 223, %k.8
  %array_getter1221 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1220
  %out1222 = load i128, i128* %array_getter1221, align 4
  %array_getter1224 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 6
  %fsum1225 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1224, align 8
  %struct_getter1226 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1225, i32 0, i32 3
  %binsum.out.read_output_outter1227 = load [4096 x i128]*, [4096 x i128]** %struct_getter1226, align 8
  %array_getter1229 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1227, i128 0, i128 %k.8
  %fsum1230 = load i128, i128* %array_getter1229, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1222, i128 %fsum1230, i1* @constraint.139)
  %sub1233 = sub i128 255, %k.8
  %array_getter1234 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1233
  %out1235 = load i128, i128* %array_getter1234, align 4
  %array_getter1237 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum21, i128 0, i128 7
  %fsum1238 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1237, align 8
  %struct_getter1239 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1238, i32 0, i32 3
  %binsum.out.read_output_outter1240 = load [4096 x i128]*, [4096 x i128]** %struct_getter1239, align 8
  %array_getter1242 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1240, i128 0, i128 %k.8
  %fsum1243 = load i128, i128* %array_getter1242, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1235, i128 %fsum1243, i1* @constraint.140)
  br label %loop.latch1244

loop.latch1244:                                   ; preds = %loop.body1139
  %add1246 = add i128 %k.8, 1
  %slt1248 = icmp slt i128 %add1246, 32
  br i1 %slt1248, label %loop.body1139, label %loop.exit1249

loop.exit1249:                                    ; preds = %loop.latch1244
  br label %exit

exit:                                             ; preds = %loop.exit1249
  %sha256compression.a.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 2
  store [4096 x [4096 x i128]]* %a, [4096 x [4096 x i128]]** %sha256compression.a.write_inter_inner, align 8
  %sha256compression.b.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 3
  store [4096 x [4096 x i128]]* %b, [4096 x [4096 x i128]]** %sha256compression.b.write_inter_inner, align 8
  %sha256compression.c.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 4
  store [4096 x [4096 x i128]]* %c, [4096 x [4096 x i128]]** %sha256compression.c.write_inter_inner, align 8
  %sha256compression.d.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 5
  store [4096 x [4096 x i128]]* %d, [4096 x [4096 x i128]]** %sha256compression.d.write_inter_inner, align 8
  %sha256compression.e.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 6
  store [4096 x [4096 x i128]]* %e, [4096 x [4096 x i128]]** %sha256compression.e.write_inter_inner, align 8
  %sha256compression.f.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 7
  store [4096 x [4096 x i128]]* %f, [4096 x [4096 x i128]]** %sha256compression.f.write_inter_inner, align 8
  %sha256compression.g.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 8
  store [4096 x [4096 x i128]]* %g, [4096 x [4096 x i128]]** %sha256compression.g.write_inter_inner, align 8
  %sha256compression.h.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 9
  store [4096 x [4096 x i128]]* %h, [4096 x [4096 x i128]]** %sha256compression.h.write_inter_inner, align 8
  %sha256compression.w.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 10
  store [4096 x [4096 x i128]]* %w, [4096 x [4096 x i128]]** %sha256compression.w.write_inter_inner, align 8
  %sha256compression.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 11
  store [4096 x i128]* %out, [4096 x i128]** %sha256compression.out.write_output_inner, align 8
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
  %bitsLastBlock2 = call i128 @fn_intrinsic_inline_init()
  %k3 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %paddedIn = bitcast i8* %malloccall to [4096 x i128]*
  %nBlocks4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall6 to [4096 x i128]*
  %sha256compression7 = alloca [4096 x %struct_template_circuit_sha256compression*], align 8
  %add = add i128 %sha256.nbits.read_arg_inner, 64
  %sdiv = sdiv i128 %add, 512
  %add8 = add i128 %sdiv, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add18, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_inner, i128 0, i128 %k.0
  %in10 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.0
  %paddedIn14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn14, i128 %in10, i1* @constraint.141)
  %paddedIn16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.0
  store i128 %in10, i128* %paddedIn16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add18 = add i128 %k.0, 1
  %slt = icmp slt i128 %add18, %sha256.nbits.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sha256.nbits.read_arg_inner
  %paddedIn24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn24, i128 1, i1* @constraint.142)
  %paddedIn27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sha256.nbits.read_arg_inner
  store i128 1, i128* %paddedIn27, align 4
  %add29 = add i128 %sha256.nbits.read_arg_inner, 1
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch38, %loop.exit
  %k.1 = phi i128 [ %add29, %loop.exit ], [ %add40, %loop.latch38 ]
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.1
  %paddedIn34 = load i128, i128* %array_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn34, i128 0, i1* @constraint.143)
  %paddedIn37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.1
  store i128 0, i128* %paddedIn37, align 4
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body30
  %add40 = add i128 %k.1, 1
  %mul = mul i128 %add8, 512
  %sub = sub i128 %mul, 64
  %slt43 = icmp slt i128 %add40, %sub
  br i1 %slt43, label %loop.body30, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch38
  br label %loop.body45

loop.body45:                                      ; preds = %loop.latch63, %loop.exit44
  %k.2 = phi i128 [ 0, %loop.exit44 ], [ %add65, %loop.latch63 ]
  %rshift = lshr i128 %sha256.nbits.read_arg_inner, %k.2
  %and = and i128 %rshift, 1
  %mul50 = mul i128 %add8, 512
  %sub52 = sub i128 %mul50, %k.2
  %sub53 = sub i128 %sub52, 1
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sub53
  %paddedIn55 = load i128, i128* %array_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn55, i128 %and, i1* @constraint.144)
  %mul58 = mul i128 %add8, 512
  %sub60 = sub i128 %mul58, %k.2
  %sub61 = sub i128 %sub60, 1
  %paddedIn62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sub61
  store i128 %and, i128* %paddedIn62, align 4
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.body45
  %add65 = add i128 %k.2, 1
  %slt67 = icmp slt i128 %add65, 64
  br i1 %slt67, label %loop.body45, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch63
  %call = call %struct_template_circuit_h* @fn_template_build_h(i128 0)
  %call69 = call %struct_template_circuit_h* @fn_template_build_h(i128 1)
  %call70 = call %struct_template_circuit_h* @fn_template_build_h(i128 2)
  %call71 = call %struct_template_circuit_h* @fn_template_build_h(i128 3)
  %call72 = call %struct_template_circuit_h* @fn_template_build_h(i128 4)
  %call73 = call %struct_template_circuit_h* @fn_template_build_h(i128 5)
  %call74 = call %struct_template_circuit_h* @fn_template_build_h(i128 6)
  %call75 = call %struct_template_circuit_h* @fn_template_build_h(i128 7)
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch563, %loop.exit68
  %i.0 = phi i128 [ 0, %loop.exit68 ], [ %add565, %loop.latch563 ]
  %call77 = call %struct_template_circuit_sha256compression* @fn_template_build_sha256compression()
  %sha256compression80 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  store %struct_template_circuit_sha256compression* %call77, %struct_template_circuit_sha256compression** %sha256compression80, align 8
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body76
  br label %loop.body82

if.false:                                         ; preds = %loop.body76
  br label %loop.body287

loop.body82:                                      ; preds = %loop.latch281, %if.true
  %k.3 = phi i128 [ 0, %if.true ], [ %add283, %loop.latch281 ]
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call, i32 0, i32 1
  %h.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter, i128 0, i128 %k.3
  %ha087 = load i128, i128* %array_getter86, align 4
  %array_getter90 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression91 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression91, i32 0, i32 0
  %sha256compression.hin.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter92, align 8
  %add94 = add i128 0, %k.3
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter, i128 0, i128 %add94
  %sha256compression96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression96, i128 %ha087, i1* @constraint.145)
  %array_getter99 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression100 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter99, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression100, i32 0, i32 0
  %sha256compression.hin.read_input_outter102 = load [4096 x i128]*, [4096 x i128]** %struct_getter101, align 8
  %add104 = add i128 0, %k.3
  %sha256compression105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter102, i128 0, i128 %add104
  store i128 %ha087, i128* %sha256compression105, align 4
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call69, i32 0, i32 1
  %h.out.read_output_outter108 = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %array_getter110 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter108, i128 0, i128 %k.3
  %hb0111 = load i128, i128* %array_getter110, align 4
  %array_getter114 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression115 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression115, i32 0, i32 0
  %sha256compression.hin.read_input_outter117 = load [4096 x i128]*, [4096 x i128]** %struct_getter116, align 8
  %add119 = add i128 32, %k.3
  %array_getter120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter117, i128 0, i128 %add119
  %sha256compression121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression121, i128 %hb0111, i1* @constraint.146)
  %array_getter124 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression125 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression125, i32 0, i32 0
  %sha256compression.hin.read_input_outter127 = load [4096 x i128]*, [4096 x i128]** %struct_getter126, align 8
  %add129 = add i128 32, %k.3
  %sha256compression130 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter127, i128 0, i128 %add129
  store i128 %hb0111, i128* %sha256compression130, align 4
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call70, i32 0, i32 1
  %h.out.read_output_outter133 = load [4096 x i128]*, [4096 x i128]** %struct_getter132, align 8
  %array_getter135 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter133, i128 0, i128 %k.3
  %hc0136 = load i128, i128* %array_getter135, align 4
  %array_getter139 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression140 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter139, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression140, i32 0, i32 0
  %sha256compression.hin.read_input_outter142 = load [4096 x i128]*, [4096 x i128]** %struct_getter141, align 8
  %add144 = add i128 64, %k.3
  %array_getter145 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter142, i128 0, i128 %add144
  %sha256compression146 = load i128, i128* %array_getter145, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression146, i128 %hc0136, i1* @constraint.147)
  %array_getter149 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression150 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter149, align 8
  %struct_getter151 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression150, i32 0, i32 0
  %sha256compression.hin.read_input_outter152 = load [4096 x i128]*, [4096 x i128]** %struct_getter151, align 8
  %add154 = add i128 64, %k.3
  %sha256compression155 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter152, i128 0, i128 %add154
  store i128 %hc0136, i128* %sha256compression155, align 4
  %struct_getter157 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call71, i32 0, i32 1
  %h.out.read_output_outter158 = load [4096 x i128]*, [4096 x i128]** %struct_getter157, align 8
  %array_getter160 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter158, i128 0, i128 %k.3
  %hd0161 = load i128, i128* %array_getter160, align 4
  %array_getter164 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression165 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter164, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression165, i32 0, i32 0
  %sha256compression.hin.read_input_outter167 = load [4096 x i128]*, [4096 x i128]** %struct_getter166, align 8
  %add169 = add i128 96, %k.3
  %array_getter170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter167, i128 0, i128 %add169
  %sha256compression171 = load i128, i128* %array_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression171, i128 %hd0161, i1* @constraint.148)
  %array_getter174 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression175 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression175, i32 0, i32 0
  %sha256compression.hin.read_input_outter177 = load [4096 x i128]*, [4096 x i128]** %struct_getter176, align 8
  %add179 = add i128 96, %k.3
  %sha256compression180 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter177, i128 0, i128 %add179
  store i128 %hd0161, i128* %sha256compression180, align 4
  %struct_getter182 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call72, i32 0, i32 1
  %h.out.read_output_outter183 = load [4096 x i128]*, [4096 x i128]** %struct_getter182, align 8
  %array_getter185 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter183, i128 0, i128 %k.3
  %he0186 = load i128, i128* %array_getter185, align 4
  %array_getter189 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression190 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter189, align 8
  %struct_getter191 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression190, i32 0, i32 0
  %sha256compression.hin.read_input_outter192 = load [4096 x i128]*, [4096 x i128]** %struct_getter191, align 8
  %add194 = add i128 128, %k.3
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter192, i128 0, i128 %add194
  %sha256compression196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression196, i128 %he0186, i1* @constraint.149)
  %array_getter199 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression200 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression200, i32 0, i32 0
  %sha256compression.hin.read_input_outter202 = load [4096 x i128]*, [4096 x i128]** %struct_getter201, align 8
  %add204 = add i128 128, %k.3
  %sha256compression205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter202, i128 0, i128 %add204
  store i128 %he0186, i128* %sha256compression205, align 4
  %struct_getter207 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call73, i32 0, i32 1
  %h.out.read_output_outter208 = load [4096 x i128]*, [4096 x i128]** %struct_getter207, align 8
  %array_getter210 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter208, i128 0, i128 %k.3
  %hf0211 = load i128, i128* %array_getter210, align 4
  %array_getter214 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression215 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter214, align 8
  %struct_getter216 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression215, i32 0, i32 0
  %sha256compression.hin.read_input_outter217 = load [4096 x i128]*, [4096 x i128]** %struct_getter216, align 8
  %add219 = add i128 160, %k.3
  %array_getter220 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter217, i128 0, i128 %add219
  %sha256compression221 = load i128, i128* %array_getter220, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression221, i128 %hf0211, i1* @constraint.150)
  %array_getter224 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression225 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter224, align 8
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression225, i32 0, i32 0
  %sha256compression.hin.read_input_outter227 = load [4096 x i128]*, [4096 x i128]** %struct_getter226, align 8
  %add229 = add i128 160, %k.3
  %sha256compression230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter227, i128 0, i128 %add229
  store i128 %hf0211, i128* %sha256compression230, align 4
  %struct_getter232 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call74, i32 0, i32 1
  %h.out.read_output_outter233 = load [4096 x i128]*, [4096 x i128]** %struct_getter232, align 8
  %array_getter235 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter233, i128 0, i128 %k.3
  %hg0236 = load i128, i128* %array_getter235, align 4
  %array_getter239 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression240 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression240, i32 0, i32 0
  %sha256compression.hin.read_input_outter242 = load [4096 x i128]*, [4096 x i128]** %struct_getter241, align 8
  %add244 = add i128 192, %k.3
  %array_getter245 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter242, i128 0, i128 %add244
  %sha256compression246 = load i128, i128* %array_getter245, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression246, i128 %hg0236, i1* @constraint.151)
  %array_getter249 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression250 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter249, align 8
  %struct_getter251 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression250, i32 0, i32 0
  %sha256compression.hin.read_input_outter252 = load [4096 x i128]*, [4096 x i128]** %struct_getter251, align 8
  %add254 = add i128 192, %k.3
  %sha256compression255 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter252, i128 0, i128 %add254
  store i128 %hg0236, i128* %sha256compression255, align 4
  %struct_getter257 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call75, i32 0, i32 1
  %h.out.read_output_outter258 = load [4096 x i128]*, [4096 x i128]** %struct_getter257, align 8
  %array_getter260 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter258, i128 0, i128 %k.3
  %hh0261 = load i128, i128* %array_getter260, align 4
  %array_getter264 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression265 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter264, align 8
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression265, i32 0, i32 0
  %sha256compression.hin.read_input_outter267 = load [4096 x i128]*, [4096 x i128]** %struct_getter266, align 8
  %add269 = add i128 224, %k.3
  %array_getter270 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter267, i128 0, i128 %add269
  %sha256compression271 = load i128, i128* %array_getter270, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression271, i128 %hh0261, i1* @constraint.152)
  %array_getter274 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression275 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter274, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression275, i32 0, i32 0
  %sha256compression.hin.read_input_outter277 = load [4096 x i128]*, [4096 x i128]** %struct_getter276, align 8
  %add279 = add i128 224, %k.3
  %sha256compression280 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter277, i128 0, i128 %add279
  store i128 %hh0261, i128* %sha256compression280, align 4
  br label %loop.latch281

loop.latch281:                                    ; preds = %loop.body82
  %add283 = add i128 %k.3, 1
  %slt285 = icmp slt i128 %add283, 32
  br i1 %slt285, label %loop.body82, label %loop.exit286

loop.exit286:                                     ; preds = %loop.latch281
  br label %if.exit

loop.body287:                                     ; preds = %loop.latch527, %if.false
  %k.4 = phi i128 [ 0, %if.false ], [ %add529, %loop.latch527 ]
  %sub290 = sub i128 %i.0, 1
  %array_getter291 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub290
  %sha256compression292 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression292, i32 0, i32 11
  %sha256compression.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter293, align 8
  %sub295 = sub i128 31, %k.4
  %array_getter296 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter, i128 0, i128 %sub295
  %sha256compression297 = load i128, i128* %array_getter296, align 4
  %array_getter300 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression301 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter300, align 8
  %struct_getter302 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression301, i32 0, i32 0
  %sha256compression.hin.read_input_outter303 = load [4096 x i128]*, [4096 x i128]** %struct_getter302, align 8
  %add305 = add i128 0, %k.4
  %array_getter306 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter303, i128 0, i128 %add305
  %sha256compression307 = load i128, i128* %array_getter306, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression307, i128 %sha256compression297, i1* @constraint.153)
  %array_getter310 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression311 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter310, align 8
  %struct_getter312 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression311, i32 0, i32 0
  %sha256compression.hin.read_input_outter313 = load [4096 x i128]*, [4096 x i128]** %struct_getter312, align 8
  %add315 = add i128 0, %k.4
  %sha256compression316 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter313, i128 0, i128 %add315
  store i128 %sha256compression297, i128* %sha256compression316, align 4
  %sub319 = sub i128 %i.0, 1
  %array_getter320 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub319
  %sha256compression321 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter320, align 8
  %struct_getter322 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression321, i32 0, i32 11
  %sha256compression.out.read_output_outter323 = load [4096 x i128]*, [4096 x i128]** %struct_getter322, align 8
  %sub325 = sub i128 63, %k.4
  %array_getter326 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter323, i128 0, i128 %sub325
  %sha256compression327 = load i128, i128* %array_getter326, align 4
  %array_getter330 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression331 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter330, align 8
  %struct_getter332 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression331, i32 0, i32 0
  %sha256compression.hin.read_input_outter333 = load [4096 x i128]*, [4096 x i128]** %struct_getter332, align 8
  %add335 = add i128 32, %k.4
  %array_getter336 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter333, i128 0, i128 %add335
  %sha256compression337 = load i128, i128* %array_getter336, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression337, i128 %sha256compression327, i1* @constraint.154)
  %array_getter340 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression341 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter340, align 8
  %struct_getter342 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression341, i32 0, i32 0
  %sha256compression.hin.read_input_outter343 = load [4096 x i128]*, [4096 x i128]** %struct_getter342, align 8
  %add345 = add i128 32, %k.4
  %sha256compression346 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter343, i128 0, i128 %add345
  store i128 %sha256compression327, i128* %sha256compression346, align 4
  %sub349 = sub i128 %i.0, 1
  %array_getter350 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub349
  %sha256compression351 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter350, align 8
  %struct_getter352 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression351, i32 0, i32 11
  %sha256compression.out.read_output_outter353 = load [4096 x i128]*, [4096 x i128]** %struct_getter352, align 8
  %sub355 = sub i128 95, %k.4
  %array_getter356 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter353, i128 0, i128 %sub355
  %sha256compression357 = load i128, i128* %array_getter356, align 4
  %array_getter360 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression361 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter360, align 8
  %struct_getter362 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression361, i32 0, i32 0
  %sha256compression.hin.read_input_outter363 = load [4096 x i128]*, [4096 x i128]** %struct_getter362, align 8
  %add365 = add i128 64, %k.4
  %array_getter366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter363, i128 0, i128 %add365
  %sha256compression367 = load i128, i128* %array_getter366, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression367, i128 %sha256compression357, i1* @constraint.155)
  %array_getter370 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression371 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter370, align 8
  %struct_getter372 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression371, i32 0, i32 0
  %sha256compression.hin.read_input_outter373 = load [4096 x i128]*, [4096 x i128]** %struct_getter372, align 8
  %add375 = add i128 64, %k.4
  %sha256compression376 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter373, i128 0, i128 %add375
  store i128 %sha256compression357, i128* %sha256compression376, align 4
  %sub379 = sub i128 %i.0, 1
  %array_getter380 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub379
  %sha256compression381 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter380, align 8
  %struct_getter382 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression381, i32 0, i32 11
  %sha256compression.out.read_output_outter383 = load [4096 x i128]*, [4096 x i128]** %struct_getter382, align 8
  %sub385 = sub i128 127, %k.4
  %array_getter386 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter383, i128 0, i128 %sub385
  %sha256compression387 = load i128, i128* %array_getter386, align 4
  %array_getter390 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression391 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter390, align 8
  %struct_getter392 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression391, i32 0, i32 0
  %sha256compression.hin.read_input_outter393 = load [4096 x i128]*, [4096 x i128]** %struct_getter392, align 8
  %add395 = add i128 96, %k.4
  %array_getter396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter393, i128 0, i128 %add395
  %sha256compression397 = load i128, i128* %array_getter396, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression397, i128 %sha256compression387, i1* @constraint.156)
  %array_getter400 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression401 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter400, align 8
  %struct_getter402 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression401, i32 0, i32 0
  %sha256compression.hin.read_input_outter403 = load [4096 x i128]*, [4096 x i128]** %struct_getter402, align 8
  %add405 = add i128 96, %k.4
  %sha256compression406 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter403, i128 0, i128 %add405
  store i128 %sha256compression387, i128* %sha256compression406, align 4
  %sub409 = sub i128 %i.0, 1
  %array_getter410 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub409
  %sha256compression411 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter410, align 8
  %struct_getter412 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression411, i32 0, i32 11
  %sha256compression.out.read_output_outter413 = load [4096 x i128]*, [4096 x i128]** %struct_getter412, align 8
  %sub415 = sub i128 159, %k.4
  %array_getter416 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter413, i128 0, i128 %sub415
  %sha256compression417 = load i128, i128* %array_getter416, align 4
  %array_getter420 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression421 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter420, align 8
  %struct_getter422 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression421, i32 0, i32 0
  %sha256compression.hin.read_input_outter423 = load [4096 x i128]*, [4096 x i128]** %struct_getter422, align 8
  %add425 = add i128 128, %k.4
  %array_getter426 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter423, i128 0, i128 %add425
  %sha256compression427 = load i128, i128* %array_getter426, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression427, i128 %sha256compression417, i1* @constraint.157)
  %array_getter430 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression431 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter430, align 8
  %struct_getter432 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression431, i32 0, i32 0
  %sha256compression.hin.read_input_outter433 = load [4096 x i128]*, [4096 x i128]** %struct_getter432, align 8
  %add435 = add i128 128, %k.4
  %sha256compression436 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter433, i128 0, i128 %add435
  store i128 %sha256compression417, i128* %sha256compression436, align 4
  %sub439 = sub i128 %i.0, 1
  %array_getter440 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub439
  %sha256compression441 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter440, align 8
  %struct_getter442 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression441, i32 0, i32 11
  %sha256compression.out.read_output_outter443 = load [4096 x i128]*, [4096 x i128]** %struct_getter442, align 8
  %sub445 = sub i128 191, %k.4
  %array_getter446 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter443, i128 0, i128 %sub445
  %sha256compression447 = load i128, i128* %array_getter446, align 4
  %array_getter450 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression451 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter450, align 8
  %struct_getter452 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression451, i32 0, i32 0
  %sha256compression.hin.read_input_outter453 = load [4096 x i128]*, [4096 x i128]** %struct_getter452, align 8
  %add455 = add i128 160, %k.4
  %array_getter456 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter453, i128 0, i128 %add455
  %sha256compression457 = load i128, i128* %array_getter456, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression457, i128 %sha256compression447, i1* @constraint.158)
  %array_getter460 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression461 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter460, align 8
  %struct_getter462 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression461, i32 0, i32 0
  %sha256compression.hin.read_input_outter463 = load [4096 x i128]*, [4096 x i128]** %struct_getter462, align 8
  %add465 = add i128 160, %k.4
  %sha256compression466 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter463, i128 0, i128 %add465
  store i128 %sha256compression447, i128* %sha256compression466, align 4
  %sub469 = sub i128 %i.0, 1
  %array_getter470 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub469
  %sha256compression471 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter470, align 8
  %struct_getter472 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression471, i32 0, i32 11
  %sha256compression.out.read_output_outter473 = load [4096 x i128]*, [4096 x i128]** %struct_getter472, align 8
  %sub475 = sub i128 223, %k.4
  %array_getter476 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter473, i128 0, i128 %sub475
  %sha256compression477 = load i128, i128* %array_getter476, align 4
  %array_getter480 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression481 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter480, align 8
  %struct_getter482 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression481, i32 0, i32 0
  %sha256compression.hin.read_input_outter483 = load [4096 x i128]*, [4096 x i128]** %struct_getter482, align 8
  %add485 = add i128 192, %k.4
  %array_getter486 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter483, i128 0, i128 %add485
  %sha256compression487 = load i128, i128* %array_getter486, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression487, i128 %sha256compression477, i1* @constraint.159)
  %array_getter490 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression491 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter490, align 8
  %struct_getter492 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression491, i32 0, i32 0
  %sha256compression.hin.read_input_outter493 = load [4096 x i128]*, [4096 x i128]** %struct_getter492, align 8
  %add495 = add i128 192, %k.4
  %sha256compression496 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter493, i128 0, i128 %add495
  store i128 %sha256compression477, i128* %sha256compression496, align 4
  %sub499 = sub i128 %i.0, 1
  %array_getter500 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub499
  %sha256compression501 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter500, align 8
  %struct_getter502 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression501, i32 0, i32 11
  %sha256compression.out.read_output_outter503 = load [4096 x i128]*, [4096 x i128]** %struct_getter502, align 8
  %sub505 = sub i128 255, %k.4
  %array_getter506 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter503, i128 0, i128 %sub505
  %sha256compression507 = load i128, i128* %array_getter506, align 4
  %array_getter510 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression511 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter510, align 8
  %struct_getter512 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression511, i32 0, i32 0
  %sha256compression.hin.read_input_outter513 = load [4096 x i128]*, [4096 x i128]** %struct_getter512, align 8
  %add515 = add i128 224, %k.4
  %array_getter516 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter513, i128 0, i128 %add515
  %sha256compression517 = load i128, i128* %array_getter516, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression517, i128 %sha256compression507, i1* @constraint.160)
  %array_getter520 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression521 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter520, align 8
  %struct_getter522 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression521, i32 0, i32 0
  %sha256compression.hin.read_input_outter523 = load [4096 x i128]*, [4096 x i128]** %struct_getter522, align 8
  %add525 = add i128 224, %k.4
  %sha256compression526 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter523, i128 0, i128 %add525
  store i128 %sha256compression507, i128* %sha256compression526, align 4
  br label %loop.latch527

loop.latch527:                                    ; preds = %loop.body287
  %add529 = add i128 %k.4, 1
  %slt531 = icmp slt i128 %add529, 32
  br i1 %slt531, label %loop.body287, label %loop.exit532

loop.exit532:                                     ; preds = %loop.latch527
  br label %if.exit

if.exit:                                          ; preds = %loop.exit532, %loop.exit286
  br label %loop.body533

loop.body533:                                     ; preds = %loop.latch557, %if.exit
  %k.5 = phi i128 [ 0, %if.exit ], [ %add559, %loop.latch557 ]
  %mul536 = mul i128 %i.0, 512
  %add538 = add i128 %mul536, %k.5
  %array_getter539 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %add538
  %paddedIn540 = load i128, i128* %array_getter539, align 4
  %array_getter543 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression544 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter543, align 8
  %struct_getter545 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression544, i32 0, i32 1
  %sha256compression.inp.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter545, align 8
  %array_getter547 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter, i128 0, i128 %k.5
  %sha256compression548 = load i128, i128* %array_getter547, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression548, i128 %paddedIn540, i1* @constraint.161)
  %array_getter551 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %i.0
  %sha256compression552 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter551, align 8
  %struct_getter553 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression552, i32 0, i32 1
  %sha256compression.inp.read_input_outter554 = load [4096 x i128]*, [4096 x i128]** %struct_getter553, align 8
  %sha256compression556 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter554, i128 0, i128 %k.5
  store i128 %paddedIn540, i128* %sha256compression556, align 4
  br label %loop.latch557

loop.latch557:                                    ; preds = %loop.body533
  %add559 = add i128 %k.5, 1
  %slt561 = icmp slt i128 %add559, 512
  br i1 %slt561, label %loop.body533, label %loop.exit562

loop.exit562:                                     ; preds = %loop.latch557
  br label %loop.latch563

loop.latch563:                                    ; preds = %loop.exit562
  %add565 = add i128 %i.0, 1
  %slt568 = icmp slt i128 %add565, %add8
  br i1 %slt568, label %loop.body76, label %loop.exit569

loop.exit569:                                     ; preds = %loop.latch563
  br label %loop.body570

loop.body570:                                     ; preds = %loop.latch588, %loop.exit569
  %k.6 = phi i128 [ 0, %loop.exit569 ], [ %add590, %loop.latch588 ]
  %sub573 = sub i128 %add8, 1
  %array_getter574 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression7, i128 0, i128 %sub573
  %sha256compression575 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter574, align 8
  %struct_getter576 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression575, i32 0, i32 11
  %sha256compression.out.read_output_outter577 = load [4096 x i128]*, [4096 x i128]** %struct_getter576, align 8
  %array_getter579 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter577, i128 0, i128 %k.6
  %sha256compression580 = load i128, i128* %array_getter579, align 4
  %array_getter583 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.6
  %out584 = load i128, i128* %array_getter583, align 4
  call void @fn_intrinsic_add_constraint(i128 %out584, i128 %sha256compression580, i1* @constraint.162)
  %out587 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.6
  store i128 %sha256compression580, i128* %out587, align 4
  br label %loop.latch588

loop.latch588:                                    ; preds = %loop.body570
  %add590 = add i128 %k.6, 1
  %slt592 = icmp slt i128 %add590, 256
  br i1 %slt592, label %loop.body570, label %loop.exit593

loop.exit593:                                     ; preds = %loop.latch588
  br label %exit

exit:                                             ; preds = %loop.exit593
  %sha256.paddedin.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 2
  store [4096 x i128]* %paddedIn, [4096 x i128]** %sha256.paddedin.write_inter_inner, align 8
  %sha256.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %sha256.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %0) {
entry:
  %struct_template_circuit_sha256 = alloca %struct_template_circuit_sha256, align 8
  %sha256.nbits.write_arg_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %struct_template_circuit_sha256, i32 0, i32 0
  store i128 %0, i128* %sha256.nbits.write_arg_inner, align 4
  ret %struct_template_circuit_sha256* %struct_template_circuit_sha256
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in4 = load i128, i128* %array_getter, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n9, i128 %in4, i1* @constraint.163)
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %b2n13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i.0
  store i128 %in4, i128* %b2n13, align 4
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.164)
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
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.165)
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bits2num_strict.out.write_output_inner37 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num_strict.out.read_output_inner, i128* %bits2num_strict.out.write_output_inner37, align 4
  ret void
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
  %struct_template_circuit_bits2num_strict = alloca %struct_template_circuit_bits2num_strict, align 8
  ret %struct_template_circuit_bits2num_strict* %struct_template_circuit_bits2num_strict
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %i1 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.166)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b8 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %out12, i128 %n2b8, i1* @constraint.167)
  %out15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %n2b8, i128* %out15, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [4096 x i128]*, [4096 x i128]** %struct_getter17, align 8
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i.0
  %n2b21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.168)
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
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bits_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %num2bits_strict.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define void @fn_template_init_sha256bytes(%struct_template_circuit_sha256bytes* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 0
  %sha256bytes.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 1
  %sha256bytes.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  %byte_to_bits3 = alloca [4096 x %struct_template_circuit_num2bits*], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %j4 = call i128 @fn_intrinsic_inline_init()
  %bits_to_bytes5 = alloca [4096 x %struct_template_circuit_bits2num*], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 8)
  %byte_to_bits7 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits3, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %byte_to_bits7, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_inner, i128 0, i128 %i.0
  %in9 = load i128, i128* %array_getter, align 4
  %array_getter12 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits3, i128 0, i128 %i.0
  %byte_to_bits13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter12, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits13, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %in9, i1* @constraint.169)
  %array_getter17 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits3, i128 0, i128 %i.0
  %byte_to_bits18 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter17, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits18, i32 0, i32 1
  store i128 %in9, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sha256bytes.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %mul = mul i128 %sha256bytes.n.read_arg_inner, 8
  %call22 = call %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %mul)
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch55, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add57, %loop.latch55 ]
  br label %loop.body24

loop.body24:                                      ; preds = %loop.latch49, %loop.body23
  %j.0 = phi i128 [ 0, %loop.body23 ], [ %add51, %loop.latch49 ]
  %array_getter27 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits3, i128 0, i128 %i.1
  %byte_to_bits28 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits28, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %sub = sub i128 7, %j.0
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %sub
  %byte_to_bits32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 1
  %sha256.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %mul36 = mul i128 %i.1, 8
  %add38 = add i128 %mul36, %j.0
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter, i128 0, i128 %add38
  %sha25640 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha25640, i128 %byte_to_bits32, i1* @constraint.170)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 1
  %sha256.in.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %mul45 = mul i128 %i.1, 8
  %add47 = add i128 %mul45, %j.0
  %sha25648 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter43, i128 0, i128 %add47
  store i128 %byte_to_bits32, i128* %sha25648, align 4
  br label %loop.latch49

loop.latch49:                                     ; preds = %loop.body24
  %add51 = add i128 %j.0, 1
  %slt53 = icmp slt i128 %add51, 8
  br i1 %slt53, label %loop.body24, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch49
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit54
  %add57 = add i128 %i.1, 1
  %slt60 = icmp slt i128 %add57, %sha256bytes.n.read_arg_inner
  br i1 %slt60, label %loop.body23, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch112, %loop.exit61
  %i.2 = phi i128 [ 0, %loop.exit61 ], [ %add114, %loop.latch112 ]
  %call63 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 8)
  %bits_to_bytes66 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, i128 0, i128 %i.2
  store %struct_template_circuit_bits2num* %call63, %struct_template_circuit_bits2num** %bits_to_bytes66, align 8
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch94, %loop.body62
  %j.1 = phi i128 [ 0, %loop.body62 ], [ %add96, %loop.latch94 ]
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 3
  %sha256.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter69, align 8
  %mul71 = mul i128 %i.2, 8
  %add73 = add i128 %mul71, %j.1
  %array_getter74 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.out.read_output_outter, i128 0, i128 %add73
  %sha25675 = load i128, i128* %array_getter74, align 4
  %array_getter78 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, i128 0, i128 %i.2
  %bits_to_bytes79 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes79, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter80, align 8
  %sub82 = sub i128 7, %j.1
  %array_getter83 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %sub82
  %bits_to_bytes84 = load i128, i128* %array_getter83, align 4
  call void @fn_intrinsic_add_constraint(i128 %bits_to_bytes84, i128 %sha25675, i1* @constraint.171)
  %array_getter87 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, i128 0, i128 %i.2
  %bits_to_bytes88 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter87, align 8
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes88, i32 0, i32 1
  %bits2num.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %sub92 = sub i128 7, %j.1
  %bits_to_bytes93 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter90, i128 0, i128 %sub92
  store i128 %sha25675, i128* %bits_to_bytes93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body67
  %add96 = add i128 %j.1, 1
  %slt98 = icmp slt i128 %add96, 8
  br i1 %slt98, label %loop.body67, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch94
  %array_getter102 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes5, i128 0, i128 %i.2
  %bits_to_bytes103 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter102, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes103, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter104, align 4
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.2
  %out108 = load i128, i128* %array_getter107, align 4
  call void @fn_intrinsic_add_constraint(i128 %out108, i128 %bits2num.out.read_output_outter, i1* @constraint.172)
  %out111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.2
  store i128 %bits2num.out.read_output_outter, i128* %out111, align 4
  br label %loop.latch112

loop.latch112:                                    ; preds = %loop.exit99
  %add114 = add i128 %i.2, 1
  %slt116 = icmp slt i128 %add114, 32
  br i1 %slt116, label %loop.body62, label %loop.exit117

loop.exit117:                                     ; preds = %loop.latch112
  br label %exit

exit:                                             ; preds = %loop.exit117
  %sha256bytes.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %sha256bytes.out.write_output_inner, align 8
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
