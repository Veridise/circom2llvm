; ModuleID = 'bigint.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/bigint.circom"

%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_lessthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [256 x i128]* }
%struct_template_circuit_greaterthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_lesseqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_isequal = type { [256 x i128]*, i128 }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_greatereqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_compconstant = type { i128, [256 x i128]*, [256 x i128]*, i128, i128 }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_aliascheck = type { [256 x i128]* }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bits2num_strict = type { [256 x i128]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_primereduce = type { i128, i128, i128, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }

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
@constraint.192 = external global i1
@constraint.193 = external global i1
@constraint.194 = external global i1
@constraint.195 = external global i1
@constraint.196 = external global i1
@constraint.197 = external global i1
@constraint.198 = external global i1
@constraint.199 = external global i1
@constraint.200 = external global i1
@constraint.201 = external global i1
@constraint.202 = external global i1
@constraint.203 = external global i1
@constraint.204 = external global i1
@constraint.205 = external global i1
@constraint.206 = external global i1
@constraint.207 = external global i1
@constraint.208 = external global i1
@constraint.209 = external global i1
@constraint.210 = external global i1

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

define void @fn_template_init_bigmultshortlong2dunequal(%struct_template_circuit_bigmultshortlong2dunequal* %0) {
entry:
  %BigMultShortLong2DUnequal = alloca %struct_template_circuit_bigmultshortlong2dunequal*, align 8
  store %struct_template_circuit_bigmultshortlong2dunequal* %0, %struct_template_circuit_bigmultshortlong2dunequal** %BigMultShortLong2DUnequal, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 0
  %bigmultshortlong2dunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmultshortlong2dunequal.n.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2dunequal.n.read_arg_inner, i128* %bigmultshortlong2dunequal.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 1
  %bigmultshortlong2dunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmultshortlong2dunequal.ka.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2dunequal.ka.read_arg_inner, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 2
  %bigmultshortlong2dunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigmultshortlong2dunequal.kb.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2dunequal.kb.read_arg_inner, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 3
  %bigmultshortlong2dunequal.la.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %bigmultshortlong2dunequal.la.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2dunequal.la.read_arg_inner, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 4
  %bigmultshortlong2dunequal.lb.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %bigmultshortlong2dunequal.lb.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2dunequal.lb.read_arg_inner, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 5
  %bigmultshortlong2dunequal.a.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter5, align 8
  %bigmultshortlong2dunequal.a.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2dunequal.a.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 6
  %bigmultshortlong2dunequal.b.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter6, align 8
  %bigmultshortlong2dunequal.b.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2dunequal.b.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %deg1 = alloca i128, align 8
  %deg17 = call i128 @fn_intrinsic_utils_init()
  store i128 %deg17, i128* %deg1, align 4
  %i = alloca i128, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  store i128 %i8, i128* %i, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val9, [256 x [256 x i128]]** %prod_val, align 8
  %i2 = alloca i128, align 8
  %i210 = call i128 @fn_intrinsic_utils_init()
  store i128 %i210, i128* %i2, align 4
  %i1 = alloca i128, align 8
  %i111 = call i128 @fn_intrinsic_utils_init()
  store i128 %i111, i128* %i1, align 4
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly12, [256 x [256 x i128]]** %out_poly, align 8
  %j2 = alloca i128, align 8
  %j213 = call i128 @fn_intrinsic_utils_init()
  store i128 %j213, i128* %j2, align 4
  %j1 = alloca i128, align 8
  %j114 = call i128 @fn_intrinsic_utils_init()
  store i128 %j114, i128* %j1, align 4
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow15 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow15, [256 x [256 x i128]]** %pow, align 8
  %k2 = alloca i128, align 8
  %k216 = call i128 @fn_intrinsic_utils_init()
  store i128 %k216, i128* %k2, align 4
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly17, [256 x [256 x i128]]** %b_poly, align 8
  %bigmultshortlong2dunequal.out.declare_output = alloca [256 x [256 x i128]]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]*
  store [256 x [256 x i128]]* %out, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %j = alloca i128, align 8
  %j18 = call i128 @fn_intrinsic_utils_init()
  store i128 %j18, i128* %j, align 4
  %deg2 = alloca i128, align 8
  %deg219 = call i128 @fn_intrinsic_utils_init()
  store i128 %deg219, i128* %deg2, align 4
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly20 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly20, [256 x [256 x i128]]** %a_poly, align 8
  %la = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %ka = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %lb = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %kb = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %la21 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb22 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add = add i128 %la21, %lb22
  %sub = sub i128 %add, 1
  %ka23 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb24 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add25 = add i128 %ka23, %kb24
  %sub26 = sub i128 %add25, 1
  %la27 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb28 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add29 = add i128 %la27, %lb28
  %sub30 = sub i128 %add29, 1
  %ka31 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb32 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add33 = add i128 %ka31, %kb32
  %sub34 = sub i128 %add33, 1
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch46, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i36 = load i128, i128* %i, align 4
  %j37 = load i128, i128* %j, align 4
  %prod_val38 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i36, i128 %j37
  store i128 0, i128* %prod_val38, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body35
  %j39 = load i128, i128* %j, align 4
  %add40 = add i128 %j39, 1
  store i128 %add40, i128* %j, align 4
  %j41 = load i128, i128* %j, align 4
  %ka42 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb43 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add44 = add i128 %ka42, %kb43
  %sub45 = sub i128 %add44, 1
  %slt = icmp slt i128 %j41, %sub45
  br i1 %slt, label %loop.body35, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.exit
  %i47 = load i128, i128* %i, align 4
  %add48 = add i128 %i47, 1
  store i128 %add48, i128* %i, align 4
  %i49 = load i128, i128* %i, align 4
  %la50 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb51 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add52 = add i128 %la50, %lb51
  %sub53 = sub i128 %add52, 1
  %slt54 = icmp slt i128 %i49, %sub53
  br i1 %slt54, label %loop.body, label %loop.exit55

loop.exit55:                                      ; preds = %loop.latch46
  store i128 0, i128* %i1, align 4
  br label %loop.body56

loop.body56:                                      ; preds = %loop.latch104, %loop.exit55
  store i128 0, i128* %i2, align 4
  br label %loop.body57

loop.body57:                                      ; preds = %loop.latch97, %loop.body56
  store i128 0, i128* %j1, align 4
  br label %loop.body58

loop.body58:                                      ; preds = %loop.latch90, %loop.body57
  store i128 0, i128* %j2, align 4
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch83, %loop.body58
  %i160 = load i128, i128* %i1, align 4
  %i261 = load i128, i128* %i2, align 4
  %add62 = add i128 %i160, %i261
  store i128 %add62, i128* %i, align 4
  %j163 = load i128, i128* %j1, align 4
  %j264 = load i128, i128* %j2, align 4
  %add65 = add i128 %j163, %j264
  store i128 %add65, i128* %j, align 4
  %prod_val66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i67 = load i128, i128* %i, align 4
  %j68 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val66, i128 0, i128 %i67, i128 %j68
  %prod_val69 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %i170 = load i128, i128* %i1, align 4
  %j171 = load i128, i128* %j1, align 4
  %array_getter72 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i170, i128 %j171
  %a73 = load i128, i128* %array_getter72, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %i274 = load i128, i128* %i2, align 4
  %j275 = load i128, i128* %j2, align 4
  %array_getter76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i274, i128 %j275
  %b77 = load i128, i128* %array_getter76, align 4
  %mul = mul i128 %a73, %b77
  %add78 = add i128 %prod_val69, %mul
  %ptr_getter79 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i80 = load i128, i128* %i, align 4
  %j81 = load i128, i128* %j, align 4
  %prod_val82 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter79, i128 0, i128 %i80, i128 %j81
  store i128 %add78, i128* %prod_val82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body59
  %j284 = load i128, i128* %j2, align 4
  %add85 = add i128 %j284, 1
  store i128 %add85, i128* %j2, align 4
  %j286 = load i128, i128* %j2, align 4
  %kb87 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %slt88 = icmp slt i128 %j286, %kb87
  br i1 %slt88, label %loop.body59, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  br label %loop.latch90

loop.latch90:                                     ; preds = %loop.exit89
  %j191 = load i128, i128* %j1, align 4
  %add92 = add i128 %j191, 1
  store i128 %add92, i128* %j1, align 4
  %j193 = load i128, i128* %j1, align 4
  %ka94 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %slt95 = icmp slt i128 %j193, %ka94
  br i1 %slt95, label %loop.body58, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch90
  br label %loop.latch97

loop.latch97:                                     ; preds = %loop.exit96
  %i298 = load i128, i128* %i2, align 4
  %add99 = add i128 %i298, 1
  store i128 %add99, i128* %i2, align 4
  %i2100 = load i128, i128* %i2, align 4
  %lb101 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %slt102 = icmp slt i128 %i2100, %lb101
  br i1 %slt102, label %loop.body57, label %loop.exit103

loop.exit103:                                     ; preds = %loop.latch97
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.exit103
  %i1105 = load i128, i128* %i1, align 4
  %add106 = add i128 %i1105, 1
  store i128 %add106, i128* %i1, align 4
  %i1107 = load i128, i128* %i1, align 4
  %la108 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %slt109 = icmp slt i128 %i1107, %la108
  br i1 %slt109, label %loop.body56, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch104
  store i128 0, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch132, %loop.exit110
  store i128 0, i128* %j, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch122, %loop.body111
  %prod_val113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i114 = load i128, i128* %i, align 4
  %j115 = load i128, i128* %j, align 4
  %array_getter116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val113, i128 0, i128 %i114, i128 %j115
  %prod_val117 = load i128, i128* %array_getter116, align 4
  %ptr_getter118 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %i119 = load i128, i128* %i, align 4
  %j120 = load i128, i128* %j, align 4
  %out121 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter118, i128 0, i128 %i119, i128 %j120
  store i128 %prod_val117, i128* %out121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body112
  %j123 = load i128, i128* %j, align 4
  %add124 = add i128 %j123, 1
  store i128 %add124, i128* %j, align 4
  %j125 = load i128, i128* %j, align 4
  %ka126 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb127 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add128 = add i128 %ka126, %kb127
  %sub129 = sub i128 %add128, 1
  %slt130 = icmp slt i128 %j125, %sub129
  br i1 %slt130, label %loop.body112, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch122
  br label %loop.latch132

loop.latch132:                                    ; preds = %loop.exit131
  %i133 = load i128, i128* %i, align 4
  %add134 = add i128 %i133, 1
  store i128 %add134, i128* %i, align 4
  %i135 = load i128, i128* %i, align 4
  %la136 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb137 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add138 = add i128 %la136, %lb137
  %sub139 = sub i128 %add138, 1
  %slt140 = icmp slt i128 %i135, %sub139
  br i1 %slt140, label %loop.body111, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch132
  %ka142 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb143 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add144 = add i128 %ka142, %kb143
  %sub145 = sub i128 %add144, 1
  %la146 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb147 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add148 = add i128 %la146, %lb147
  %sub149 = sub i128 %add148, 1
  %sgt = icmp sgt i128 %sub145, %sub149
  %ka150 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb151 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add152 = add i128 %ka150, %kb151
  %sub153 = sub i128 %add152, 1
  %la154 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb155 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add156 = add i128 %la154, %lb155
  %sub157 = sub i128 %add156, 1
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %sgt, i128 %sub153, i128 %sub157)
  store i128 %utils_switch, i128* %k2, align 4
  %k2158 = load i128, i128* %k2, align 4
  %k2159 = load i128, i128* %k2, align 4
  %uniform_array160 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array160, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body161

loop.body161:                                     ; preds = %loop.latch178, %loop.exit141
  store i128 0, i128* %j, align 4
  br label %loop.body162

loop.body162:                                     ; preds = %loop.latch170, %loop.body161
  %i163 = load i128, i128* %i, align 4
  %j164 = load i128, i128* %j, align 4
  %pow165 = call i128 @fn_intrinsic_utils_powi(i128 %i163, i128 %j164)
  %ptr_getter166 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i167 = load i128, i128* %i, align 4
  %j168 = load i128, i128* %j, align 4
  %pow169 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter166, i128 0, i128 %i167, i128 %j168
  store i128 %pow165, i128* %pow169, align 4
  br label %loop.latch170

loop.latch170:                                    ; preds = %loop.body162
  %j172 = load i128, i128* %j, align 4
  %add173 = add i128 %j172, 1
  store i128 %add173, i128* %j, align 4
  %j174 = load i128, i128* %j, align 4
  %k2175 = load i128, i128* %k2, align 4
  %slt176 = icmp slt i128 %j174, %k2175
  br i1 %slt176, label %loop.body162, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch170
  br label %loop.latch178

loop.latch178:                                    ; preds = %loop.exit177
  %i179 = load i128, i128* %i, align 4
  %add180 = add i128 %i179, 1
  store i128 %add180, i128* %i, align 4
  %i181 = load i128, i128* %i, align 4
  %k2182 = load i128, i128* %k2, align 4
  %slt183 = icmp slt i128 %i181, %k2182
  br i1 %slt183, label %loop.body161, label %loop.exit184

loop.exit184:                                     ; preds = %loop.latch178
  %la185 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb186 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add187 = add i128 %la185, %lb186
  %sub188 = sub i128 %add187, 1
  %ka189 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb190 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add191 = add i128 %ka189, %kb190
  %sub192 = sub i128 %add191, 1
  %uniform_array193 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array193, [256 x [256 x i128]]** %a_poly, align 8
  %la194 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb195 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add196 = add i128 %la194, %lb195
  %sub197 = sub i128 %add196, 1
  %ka198 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb199 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add200 = add i128 %ka198, %kb199
  %sub201 = sub i128 %add200, 1
  %uniform_array202 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array202, [256 x [256 x i128]]** %b_poly, align 8
  %la203 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb204 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add205 = add i128 %la203, %lb204
  %sub206 = sub i128 %add205, 1
  %ka207 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb208 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add209 = add i128 %ka207, %kb208
  %sub210 = sub i128 %add209, 1
  %uniform_array211 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array211, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body212

loop.body212:                                     ; preds = %loop.latch364, %loop.exit184
  store i128 0, i128* %j, align 4
  br label %loop.body213

loop.body213:                                     ; preds = %loop.latch354, %loop.body212
  %ptr_getter214 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i215 = load i128, i128* %i, align 4
  %j216 = load i128, i128* %j, align 4
  %a_poly217 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter214, i128 0, i128 %i215, i128 %j216
  store i128 0, i128* %a_poly217, align 4
  %ptr_getter218 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i219 = load i128, i128* %i, align 4
  %j220 = load i128, i128* %j, align 4
  %b_poly221 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter218, i128 0, i128 %i219, i128 %j220
  store i128 0, i128* %b_poly221, align 4
  %ptr_getter222 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i223 = load i128, i128* %i, align 4
  %j224 = load i128, i128* %j, align 4
  %out_poly225 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter222, i128 0, i128 %i223, i128 %j224
  store i128 0, i128* %out_poly225, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body226

loop.body226:                                     ; preds = %loop.latch344, %loop.body213
  %deg1227 = load i128, i128* %deg1, align 4
  %la228 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %slt229 = icmp slt i128 %deg1227, %la228
  br i1 %slt229, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body226
  store i128 0, i128* %deg2, align 4
  br label %loop.body230

if.false:                                         ; preds = %loop.body226
  br label %if.exit

loop.body230:                                     ; preds = %loop.latch258, %if.true
  %a_poly231 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i232 = load i128, i128* %i, align 4
  %j233 = load i128, i128* %j, align 4
  %array_getter234 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly231, i128 0, i128 %i232, i128 %j233
  %a_poly235 = load i128, i128* %array_getter234, align 4
  %a236 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %deg1237 = load i128, i128* %deg1, align 4
  %deg2238 = load i128, i128* %deg2, align 4
  %array_getter239 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a236, i128 0, i128 %deg1237, i128 %deg2238
  %a240 = load i128, i128* %array_getter239, align 4
  %pow241 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i242 = load i128, i128* %i, align 4
  %deg1243 = load i128, i128* %deg1, align 4
  %array_getter244 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow241, i128 0, i128 %i242, i128 %deg1243
  %pow245 = load i128, i128* %array_getter244, align 4
  %mul246 = mul i128 %a240, %pow245
  %pow247 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j248 = load i128, i128* %j, align 4
  %deg2249 = load i128, i128* %deg2, align 4
  %array_getter250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow247, i128 0, i128 %j248, i128 %deg2249
  %pow251 = load i128, i128* %array_getter250, align 4
  %mul252 = mul i128 %mul246, %pow251
  %add253 = add i128 %a_poly235, %mul252
  %ptr_getter254 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i255 = load i128, i128* %i, align 4
  %j256 = load i128, i128* %j, align 4
  %a_poly257 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter254, i128 0, i128 %i255, i128 %j256
  store i128 %add253, i128* %a_poly257, align 4
  br label %loop.latch258

loop.latch258:                                    ; preds = %loop.body230
  %deg2259 = load i128, i128* %deg2, align 4
  %add260 = add i128 %deg2259, 1
  store i128 %add260, i128* %deg2, align 4
  %deg2261 = load i128, i128* %deg2, align 4
  %ka262 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %slt263 = icmp slt i128 %deg2261, %ka262
  br i1 %slt263, label %loop.body230, label %loop.exit264

loop.exit264:                                     ; preds = %loop.latch258
  br label %if.exit

if.exit:                                          ; preds = %if.false, %loop.exit264
  %deg1267 = load i128, i128* %deg1, align 4
  %lb268 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %slt269 = icmp slt i128 %deg1267, %lb268
  br i1 %slt269, label %if.true265, label %if.false266

if.true265:                                       ; preds = %if.exit
  store i128 0, i128* %deg2, align 4
  br label %loop.body270

if.false266:                                      ; preds = %if.exit
  br label %if.exit305

loop.body270:                                     ; preds = %loop.latch298, %if.true265
  %b_poly271 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i272 = load i128, i128* %i, align 4
  %j273 = load i128, i128* %j, align 4
  %array_getter274 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly271, i128 0, i128 %i272, i128 %j273
  %b_poly275 = load i128, i128* %array_getter274, align 4
  %b276 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %deg1277 = load i128, i128* %deg1, align 4
  %deg2278 = load i128, i128* %deg2, align 4
  %array_getter279 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b276, i128 0, i128 %deg1277, i128 %deg2278
  %b280 = load i128, i128* %array_getter279, align 4
  %pow281 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i282 = load i128, i128* %i, align 4
  %deg1283 = load i128, i128* %deg1, align 4
  %array_getter284 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow281, i128 0, i128 %i282, i128 %deg1283
  %pow285 = load i128, i128* %array_getter284, align 4
  %mul286 = mul i128 %b280, %pow285
  %pow287 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j288 = load i128, i128* %j, align 4
  %deg2289 = load i128, i128* %deg2, align 4
  %array_getter290 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow287, i128 0, i128 %j288, i128 %deg2289
  %pow291 = load i128, i128* %array_getter290, align 4
  %mul292 = mul i128 %mul286, %pow291
  %add293 = add i128 %b_poly275, %mul292
  %ptr_getter294 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i295 = load i128, i128* %i, align 4
  %j296 = load i128, i128* %j, align 4
  %b_poly297 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter294, i128 0, i128 %i295, i128 %j296
  store i128 %add293, i128* %b_poly297, align 4
  br label %loop.latch298

loop.latch298:                                    ; preds = %loop.body270
  %deg2299 = load i128, i128* %deg2, align 4
  %add300 = add i128 %deg2299, 1
  store i128 %add300, i128* %deg2, align 4
  %deg2301 = load i128, i128* %deg2, align 4
  %kb302 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %slt303 = icmp slt i128 %deg2301, %kb302
  br i1 %slt303, label %loop.body270, label %loop.exit304

loop.exit304:                                     ; preds = %loop.latch298
  br label %if.exit305

if.exit305:                                       ; preds = %if.false266, %loop.exit304
  store i128 0, i128* %deg2, align 4
  br label %loop.body306

loop.body306:                                     ; preds = %loop.latch334, %if.exit305
  %out_poly307 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i308 = load i128, i128* %i, align 4
  %j309 = load i128, i128* %j, align 4
  %array_getter310 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly307, i128 0, i128 %i308, i128 %j309
  %out_poly311 = load i128, i128* %array_getter310, align 4
  %out312 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %deg1313 = load i128, i128* %deg1, align 4
  %deg2314 = load i128, i128* %deg2, align 4
  %array_getter315 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out312, i128 0, i128 %deg1313, i128 %deg2314
  %out316 = load i128, i128* %array_getter315, align 4
  %pow317 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i318 = load i128, i128* %i, align 4
  %deg1319 = load i128, i128* %deg1, align 4
  %array_getter320 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow317, i128 0, i128 %i318, i128 %deg1319
  %pow321 = load i128, i128* %array_getter320, align 4
  %mul322 = mul i128 %out316, %pow321
  %pow323 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j324 = load i128, i128* %j, align 4
  %deg2325 = load i128, i128* %deg2, align 4
  %array_getter326 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow323, i128 0, i128 %j324, i128 %deg2325
  %pow327 = load i128, i128* %array_getter326, align 4
  %mul328 = mul i128 %mul322, %pow327
  %add329 = add i128 %out_poly311, %mul328
  %ptr_getter330 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i331 = load i128, i128* %i, align 4
  %j332 = load i128, i128* %j, align 4
  %out_poly333 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter330, i128 0, i128 %i331, i128 %j332
  store i128 %add329, i128* %out_poly333, align 4
  br label %loop.latch334

loop.latch334:                                    ; preds = %loop.body306
  %deg2335 = load i128, i128* %deg2, align 4
  %add336 = add i128 %deg2335, 1
  store i128 %add336, i128* %deg2, align 4
  %deg2337 = load i128, i128* %deg2, align 4
  %ka338 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb339 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add340 = add i128 %ka338, %kb339
  %sub341 = sub i128 %add340, 1
  %slt342 = icmp slt i128 %deg2337, %sub341
  br i1 %slt342, label %loop.body306, label %loop.exit343

loop.exit343:                                     ; preds = %loop.latch334
  br label %loop.latch344

loop.latch344:                                    ; preds = %loop.exit343
  %deg1345 = load i128, i128* %deg1, align 4
  %add346 = add i128 %deg1345, 1
  store i128 %add346, i128* %deg1, align 4
  %deg1347 = load i128, i128* %deg1, align 4
  %la348 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb349 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add350 = add i128 %la348, %lb349
  %sub351 = sub i128 %add350, 1
  %slt352 = icmp slt i128 %deg1347, %sub351
  br i1 %slt352, label %loop.body226, label %loop.exit353

loop.exit353:                                     ; preds = %loop.latch344
  br label %loop.latch354

loop.latch354:                                    ; preds = %loop.exit353
  %j355 = load i128, i128* %j, align 4
  %add356 = add i128 %j355, 1
  store i128 %add356, i128* %j, align 4
  %j357 = load i128, i128* %j, align 4
  %ka358 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb359 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add360 = add i128 %ka358, %kb359
  %sub361 = sub i128 %add360, 1
  %slt362 = icmp slt i128 %j357, %sub361
  br i1 %slt362, label %loop.body213, label %loop.exit363

loop.exit363:                                     ; preds = %loop.latch354
  br label %loop.latch364

loop.latch364:                                    ; preds = %loop.exit363
  %i365 = load i128, i128* %i, align 4
  %add366 = add i128 %i365, 1
  store i128 %add366, i128* %i, align 4
  %i367 = load i128, i128* %i, align 4
  %la368 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb369 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add370 = add i128 %la368, %lb369
  %sub371 = sub i128 %add370, 1
  %slt372 = icmp slt i128 %i367, %sub371
  br i1 %slt372, label %loop.body212, label %loop.exit373

loop.exit373:                                     ; preds = %loop.latch364
  store i128 0, i128* %i, align 4
  br label %loop.body374

loop.body374:                                     ; preds = %loop.latch402, %loop.exit373
  store i128 0, i128* %j, align 4
  br label %loop.body375

loop.body375:                                     ; preds = %loop.latch392, %loop.body374
  %out_poly376 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i377 = load i128, i128* %i, align 4
  %j378 = load i128, i128* %j, align 4
  %array_getter379 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly376, i128 0, i128 %i377, i128 %j378
  %out_poly380 = load i128, i128* %array_getter379, align 4
  %a_poly381 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i382 = load i128, i128* %i, align 4
  %j383 = load i128, i128* %j, align 4
  %array_getter384 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly381, i128 0, i128 %i382, i128 %j383
  %a_poly385 = load i128, i128* %array_getter384, align 4
  %b_poly386 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i387 = load i128, i128* %i, align 4
  %j388 = load i128, i128* %j, align 4
  %array_getter389 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly386, i128 0, i128 %i387, i128 %j388
  %b_poly390 = load i128, i128* %array_getter389, align 4
  %mul391 = mul i128 %a_poly385, %b_poly390
  call void @fn_intrinsic_utils_constraint(i128 %out_poly380, i128 %mul391, i1* @constraint)
  br label %loop.latch392

loop.latch392:                                    ; preds = %loop.body375
  %j393 = load i128, i128* %j, align 4
  %add394 = add i128 %j393, 1
  store i128 %add394, i128* %j, align 4
  %j395 = load i128, i128* %j, align 4
  %ka396 = load i128, i128* %bigmultshortlong2dunequal.ka.declare_arg, align 4
  %kb397 = load i128, i128* %bigmultshortlong2dunequal.kb.declare_arg, align 4
  %add398 = add i128 %ka396, %kb397
  %sub399 = sub i128 %add398, 1
  %slt400 = icmp slt i128 %j395, %sub399
  br i1 %slt400, label %loop.body375, label %loop.exit401

loop.exit401:                                     ; preds = %loop.latch392
  br label %loop.latch402

loop.latch402:                                    ; preds = %loop.exit401
  %i403 = load i128, i128* %i, align 4
  %add404 = add i128 %i403, 1
  store i128 %add404, i128* %i, align 4
  %i405 = load i128, i128* %i, align 4
  %la406 = load i128, i128* %bigmultshortlong2dunequal.la.declare_arg, align 4
  %lb407 = load i128, i128* %bigmultshortlong2dunequal.lb.declare_arg, align 4
  %add408 = add i128 %la406, %lb407
  %sub409 = sub i128 %add408, 1
  %slt410 = icmp slt i128 %i405, %sub409
  br i1 %slt410, label %loop.body374, label %loop.exit411

loop.exit411:                                     ; preds = %loop.latch402
  br label %arraydim

arraydim:                                         ; preds = %loop.exit411
  %ptr_cast = bitcast [256 x [256 x i128]]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub206, i128 %sub210)
  %ptr_cast412 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast412, i128 %lb, i128 %kb)
  %ptr_cast413 = bitcast [256 x [256 x i128]]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast413, i128 %sub188, i128 %sub192)
  %ptr_cast414 = bitcast [256 x [256 x i128]]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast414, i128 %sub30, i128 %sub34)
  %ptr_cast415 = bitcast [256 x [256 x i128]]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast415, i128 %sub197, i128 %sub201)
  %ptr_cast416 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast416, i128 %la, i128 %ka)
  %ptr_cast417 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast417, i128 %k2158, i128 %k2159)
  %ptr_cast418 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast418, i128 %sub, i128 %sub26)
  br label %exit

exit:                                             ; preds = %arraydim
  %out419 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %bigmultshortlong2dunequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 7
  store [256 x [256 x i128]]* %out419, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2dunequal* @fn_template_build_bigmultshortlong2dunequal(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %struct_template_circuit_bigmultshortlong2dunequal = alloca %struct_template_circuit_bigmultshortlong2dunequal, align 8
  %bigmultshortlong2dunequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong2dunequal.n.write_arg_inner, align 4
  %bigmultshortlong2dunequal.ka.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong2dunequal.ka.write_arg_inner, align 4
  %bigmultshortlong2dunequal.kb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong2dunequal.kb.write_arg_inner, align 4
  %bigmultshortlong2dunequal.la.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 3
  store i128 %3, i128* %bigmultshortlong2dunequal.la.write_arg_inner, align 4
  %bigmultshortlong2dunequal.lb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 4
  store i128 %4, i128* %bigmultshortlong2dunequal.lb.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal
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
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %temp = alloca i128, align 8
  %temp3 = call i128 @fn_intrinsic_utils_init()
  store i128 %temp3, i128* %temp, align 4
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

define void @fn_template_init_bigmultshortlongunequal(%struct_template_circuit_bigmultshortlongunequal* %0) {
entry:
  %BigMultShortLongUnequal = alloca %struct_template_circuit_bigmultshortlongunequal*, align 8
  store %struct_template_circuit_bigmultshortlongunequal* %0, %struct_template_circuit_bigmultshortlongunequal** %BigMultShortLongUnequal, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 0
  %bigmultshortlongunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmultshortlongunequal.n.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlongunequal.n.read_arg_inner, i128* %bigmultshortlongunequal.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 1
  %bigmultshortlongunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmultshortlongunequal.ka.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlongunequal.ka.read_arg_inner, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 2
  %bigmultshortlongunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigmultshortlongunequal.kb.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlongunequal.kb.read_arg_inner, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 3
  %bigmultshortlongunequal.m_out.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %bigmultshortlongunequal.m_out.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlongunequal.m_out.read_arg_inner, i128* %bigmultshortlongunequal.m_out.declare_arg, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmultshortlongunequal.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlongunequal.a.read_input_inner, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %bigmultshortlongunequal.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlongunequal.b.read_input_inner, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %j = alloca i128, align 8
  %j6 = call i128 @fn_intrinsic_utils_init()
  store i128 %j6, i128* %j, align 4
  %k2 = alloca i128, align 8
  %k27 = call i128 @fn_intrinsic_utils_init()
  store i128 %k27, i128* %k2, align 4
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow8, [256 x [256 x i128]]** %pow, align 8
  %i = alloca i128, align 8
  %i9 = call i128 @fn_intrinsic_utils_init()
  store i128 %i9, i128* %i, align 4
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly10 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly10, [256 x i128]** %b_poly, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly11 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly11, [256 x i128]** %out_poly, align 8
  %bigmultshortlongunequal.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val12 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val12, [256 x i128]** %prod_val, align 8
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly13 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly13, [256 x i128]** %a_poly, align 8
  %n = load i128, i128* %bigmultshortlongunequal.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %ka = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %ka14 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb15 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add = add i128 %ka14, %kb15
  %sub = sub i128 %add, 1
  %ka16 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb17 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add18 = add i128 %ka16, %kb17
  %sub19 = sub i128 %add18, 1
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i20 = load i128, i128* %i, align 4
  %prod_val21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i20
  store i128 0, i128* %prod_val21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %ka25 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb26 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add27 = add i128 %ka25, %kb26
  %sub28 = sub i128 %add27, 1
  %slt = icmp slt i128 %i24, %sub28
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch55, %loop.exit
  store i128 0, i128* %j, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch48, %loop.body29
  %prod_val31 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i32 = load i128, i128* %i, align 4
  %j33 = load i128, i128* %j, align 4
  %add34 = add i128 %i32, %j33
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val31, i128 0, i128 %add34
  %prod_val35 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i36
  %a38 = load i128, i128* %array_getter37, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %j39 = load i128, i128* %j, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %j39
  %b41 = load i128, i128* %array_getter40, align 4
  %mul = mul i128 %a38, %b41
  %add42 = add i128 %prod_val35, %mul
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i44 = load i128, i128* %i, align 4
  %j45 = load i128, i128* %j, align 4
  %add46 = add i128 %i44, %j45
  %prod_val47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %add46
  store i128 %add42, i128* %prod_val47, align 4
  br label %loop.latch48

loop.latch48:                                     ; preds = %loop.body30
  %j49 = load i128, i128* %j, align 4
  %add50 = add i128 %j49, 1
  store i128 %add50, i128* %j, align 4
  %j51 = load i128, i128* %j, align 4
  %kb52 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %slt53 = icmp slt i128 %j51, %kb52
  br i1 %slt53, label %loop.body30, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch48
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit54
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %i, align 4
  %i58 = load i128, i128* %i, align 4
  %ka59 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %slt60 = icmp slt i128 %i58, %ka59
  br i1 %slt60, label %loop.body29, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  store i128 0, i128* %i, align 4
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch70, %loop.exit61
  %prod_val63 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i64 = load i128, i128* %i, align 4
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val63, i128 0, i128 %i64
  %prod_val66 = load i128, i128* %array_getter65, align 4
  %ptr_getter67 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %i68 = load i128, i128* %i, align 4
  %out69 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter67, i128 0, i128 %i68
  store i128 %prod_val66, i128* %out69, align 4
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.body62
  %i71 = load i128, i128* %i, align 4
  %add72 = add i128 %i71, 1
  store i128 %add72, i128* %i, align 4
  %i73 = load i128, i128* %i, align 4
  %ka74 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb75 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add76 = add i128 %ka74, %kb75
  %sub77 = sub i128 %add76, 1
  %slt78 = icmp slt i128 %i73, %sub77
  br i1 %slt78, label %loop.body62, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch70
  %ka80 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb81 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add82 = add i128 %ka80, %kb81
  %sub83 = sub i128 %add82, 1
  store i128 %sub83, i128* %k2, align 4
  %k284 = load i128, i128* %k2, align 4
  %k285 = load i128, i128* %k2, align 4
  %uniform_array86 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array86, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch103, %loop.exit79
  store i128 0, i128* %j, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch96, %loop.body87
  %i89 = load i128, i128* %i, align 4
  %j90 = load i128, i128* %j, align 4
  %pow91 = call i128 @fn_intrinsic_utils_powi(i128 %i89, i128 %j90)
  %ptr_getter92 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i93 = load i128, i128* %i, align 4
  %j94 = load i128, i128* %j, align 4
  %pow95 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter92, i128 0, i128 %i93, i128 %j94
  store i128 %pow91, i128* %pow95, align 4
  br label %loop.latch96

loop.latch96:                                     ; preds = %loop.body88
  %j97 = load i128, i128* %j, align 4
  %add98 = add i128 %j97, 1
  store i128 %add98, i128* %j, align 4
  %j99 = load i128, i128* %j, align 4
  %k2100 = load i128, i128* %k2, align 4
  %slt101 = icmp slt i128 %j99, %k2100
  br i1 %slt101, label %loop.body88, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch96
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.exit102
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %k2107 = load i128, i128* %k2, align 4
  %slt108 = icmp slt i128 %i106, %k2107
  br i1 %slt108, label %loop.body87, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %ka110 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb111 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add112 = add i128 %ka110, %kb111
  %sub113 = sub i128 %add112, 1
  %uniform_array114 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array114, [256 x i128]** %a_poly, align 8
  %ka115 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb116 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add117 = add i128 %ka115, %kb116
  %sub118 = sub i128 %add117, 1
  %uniform_array119 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array119, [256 x i128]** %b_poly, align 8
  %ka120 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb121 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add122 = add i128 %ka120, %kb121
  %sub123 = sub i128 %add122, 1
  %uniform_array124 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array124, [256 x i128]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body125

loop.body125:                                     ; preds = %loop.latch216, %loop.exit109
  %ptr_getter126 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i127 = load i128, i128* %i, align 4
  %out_poly128 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter126, i128 0, i128 %i127
  store i128 0, i128* %out_poly128, align 4
  %ptr_getter129 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i130 = load i128, i128* %i, align 4
  %a_poly131 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter129, i128 0, i128 %i130
  store i128 0, i128* %a_poly131, align 4
  %ptr_getter132 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i133 = load i128, i128* %i, align 4
  %b_poly134 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter132, i128 0, i128 %i133
  store i128 0, i128* %b_poly134, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body135

loop.body135:                                     ; preds = %loop.latch154, %loop.body125
  %out_poly136 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly136, i128 0, i128 %i137
  %out_poly139 = load i128, i128* %array_getter138, align 4
  %out140 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %j141 = load i128, i128* %j, align 4
  %array_getter142 = getelementptr inbounds [256 x i128], [256 x i128]* %out140, i128 0, i128 %j141
  %out143 = load i128, i128* %array_getter142, align 4
  %pow144 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i145 = load i128, i128* %i, align 4
  %j146 = load i128, i128* %j, align 4
  %array_getter147 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow144, i128 0, i128 %i145, i128 %j146
  %pow148 = load i128, i128* %array_getter147, align 4
  %mul149 = mul i128 %out143, %pow148
  %add150 = add i128 %out_poly139, %mul149
  %ptr_getter151 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i152 = load i128, i128* %i, align 4
  %out_poly153 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter151, i128 0, i128 %i152
  store i128 %add150, i128* %out_poly153, align 4
  br label %loop.latch154

loop.latch154:                                    ; preds = %loop.body135
  %j155 = load i128, i128* %j, align 4
  %add156 = add i128 %j155, 1
  store i128 %add156, i128* %j, align 4
  %j157 = load i128, i128* %j, align 4
  %ka158 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb159 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add160 = add i128 %ka158, %kb159
  %sub161 = sub i128 %add160, 1
  %slt162 = icmp slt i128 %j157, %sub161
  br i1 %slt162, label %loop.body135, label %loop.exit163

loop.exit163:                                     ; preds = %loop.latch154
  store i128 0, i128* %j, align 4
  br label %loop.body164

loop.body164:                                     ; preds = %loop.latch183, %loop.exit163
  %a_poly165 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i166 = load i128, i128* %i, align 4
  %array_getter167 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly165, i128 0, i128 %i166
  %a_poly168 = load i128, i128* %array_getter167, align 4
  %a169 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %j170 = load i128, i128* %j, align 4
  %array_getter171 = getelementptr inbounds [256 x i128], [256 x i128]* %a169, i128 0, i128 %j170
  %a172 = load i128, i128* %array_getter171, align 4
  %pow173 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i174 = load i128, i128* %i, align 4
  %j175 = load i128, i128* %j, align 4
  %array_getter176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow173, i128 0, i128 %i174, i128 %j175
  %pow177 = load i128, i128* %array_getter176, align 4
  %mul178 = mul i128 %a172, %pow177
  %add179 = add i128 %a_poly168, %mul178
  %ptr_getter180 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i181 = load i128, i128* %i, align 4
  %a_poly182 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter180, i128 0, i128 %i181
  store i128 %add179, i128* %a_poly182, align 4
  br label %loop.latch183

loop.latch183:                                    ; preds = %loop.body164
  %j184 = load i128, i128* %j, align 4
  %add185 = add i128 %j184, 1
  store i128 %add185, i128* %j, align 4
  %j186 = load i128, i128* %j, align 4
  %ka187 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %slt188 = icmp slt i128 %j186, %ka187
  br i1 %slt188, label %loop.body164, label %loop.exit189

loop.exit189:                                     ; preds = %loop.latch183
  store i128 0, i128* %j, align 4
  br label %loop.body190

loop.body190:                                     ; preds = %loop.latch209, %loop.exit189
  %b_poly191 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i192 = load i128, i128* %i, align 4
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly191, i128 0, i128 %i192
  %b_poly194 = load i128, i128* %array_getter193, align 4
  %b195 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %j196 = load i128, i128* %j, align 4
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %b195, i128 0, i128 %j196
  %b198 = load i128, i128* %array_getter197, align 4
  %pow199 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i200 = load i128, i128* %i, align 4
  %j201 = load i128, i128* %j, align 4
  %array_getter202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow199, i128 0, i128 %i200, i128 %j201
  %pow203 = load i128, i128* %array_getter202, align 4
  %mul204 = mul i128 %b198, %pow203
  %add205 = add i128 %b_poly194, %mul204
  %ptr_getter206 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i207 = load i128, i128* %i, align 4
  %b_poly208 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter206, i128 0, i128 %i207
  store i128 %add205, i128* %b_poly208, align 4
  br label %loop.latch209

loop.latch209:                                    ; preds = %loop.body190
  %j210 = load i128, i128* %j, align 4
  %add211 = add i128 %j210, 1
  store i128 %add211, i128* %j, align 4
  %j212 = load i128, i128* %j, align 4
  %kb213 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %slt214 = icmp slt i128 %j212, %kb213
  br i1 %slt214, label %loop.body190, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch209
  br label %loop.latch216

loop.latch216:                                    ; preds = %loop.exit215
  %i217 = load i128, i128* %i, align 4
  %add218 = add i128 %i217, 1
  store i128 %add218, i128* %i, align 4
  %i219 = load i128, i128* %i, align 4
  %ka220 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb221 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add222 = add i128 %ka220, %kb221
  %sub223 = sub i128 %add222, 1
  %slt224 = icmp slt i128 %i219, %sub223
  br i1 %slt224, label %loop.body125, label %loop.exit225

loop.exit225:                                     ; preds = %loop.latch216
  store i128 0, i128* %i, align 4
  br label %loop.body226

loop.body226:                                     ; preds = %loop.latch240, %loop.exit225
  %out_poly227 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i228 = load i128, i128* %i, align 4
  %array_getter229 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly227, i128 0, i128 %i228
  %out_poly230 = load i128, i128* %array_getter229, align 4
  %a_poly231 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly231, i128 0, i128 %i232
  %a_poly234 = load i128, i128* %array_getter233, align 4
  %b_poly235 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i236 = load i128, i128* %i, align 4
  %array_getter237 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly235, i128 0, i128 %i236
  %b_poly238 = load i128, i128* %array_getter237, align 4
  %mul239 = mul i128 %a_poly234, %b_poly238
  call void @fn_intrinsic_utils_constraint(i128 %out_poly230, i128 %mul239, i1* @constraint.1)
  br label %loop.latch240

loop.latch240:                                    ; preds = %loop.body226
  %i241 = load i128, i128* %i, align 4
  %add242 = add i128 %i241, 1
  store i128 %add242, i128* %i, align 4
  %i243 = load i128, i128* %i, align 4
  %ka244 = load i128, i128* %bigmultshortlongunequal.ka.declare_arg, align 4
  %kb245 = load i128, i128* %bigmultshortlongunequal.kb.declare_arg, align 4
  %add246 = add i128 %ka244, %kb245
  %sub247 = sub i128 %add246, 1
  %slt248 = icmp slt i128 %i243, %sub247
  br i1 %slt248, label %loop.body226, label %loop.exit249

loop.exit249:                                     ; preds = %loop.latch240
  br label %arraydim

arraydim:                                         ; preds = %loop.exit249
  %ptr_cast = bitcast [256 x i128]** %bigmultshortlongunequal.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub)
  %ptr_cast250 = bitcast [256 x i128]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast250, i128 %sub118)
  %ptr_cast251 = bitcast [256 x i128]** %bigmultshortlongunequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast251, i128 %kb)
  %ptr_cast252 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast252, i128 %k284, i128 %k285)
  %ptr_cast253 = bitcast [256 x i128]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast253, i128 %sub123)
  %ptr_cast254 = bitcast [256 x i128]** %bigmultshortlongunequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast254, i128 %ka)
  %ptr_cast255 = bitcast [256 x i128]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast255, i128 %sub113)
  %ptr_cast256 = bitcast [256 x i128]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast256, i128 %sub19)
  br label %exit

exit:                                             ; preds = %arraydim
  %out257 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %bigmultshortlongunequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 6
  store [256 x i128]* %out257, [256 x i128]** %bigmultshortlongunequal.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %struct_template_circuit_bigmultshortlongunequal = alloca %struct_template_circuit_bigmultshortlongunequal, align 8
  %bigmultshortlongunequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlongunequal.n.write_arg_inner, align 4
  %bigmultshortlongunequal.ka.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlongunequal.ka.write_arg_inner, align 4
  %bigmultshortlongunequal.kb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlongunequal.kb.write_arg_inner, align 4
  %bigmultshortlongunequal.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 3
  store i128 %3, i128* %bigmultshortlongunequal.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal
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
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %e2 = alloca i128, align 8
  %e23 = call i128 @fn_intrinsic_utils_init()
  store i128 %e23, i128* %e2, align 4
  %lc1 = alloca i128, align 8
  %lc14 = call i128 @fn_intrinsic_utils_init()
  store i128 %lc14, i128* %lc1, align 4
  %num2bits.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bits.out.declare_output, align 8
  %n = load i128, i128* %num2bits.n.declare_arg, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load i128, i128* %num2bits.in.declare_input, align 4
  %i5 = load i128, i128* %i, align 4
  %rshift = lshr i128 %in, %i5
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %i6 = load i128, i128* %i, align 4
  %out7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 %and, i128* %out7, align 4
  %out8 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out8, i128 0, i128 %i9
  %out10 = load i128, i128* %array_getter, align 4
  %out11 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %out11, i128 0, i128 %i12
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.2)
  %lc115 = load i128, i128* %lc1, align 4
  %out16 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %out16, i128 0, i128 %i17
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
  %n28 = load i128, i128* %num2bits.n.declare_arg, align 4
  %slt = icmp slt i128 %i27, %n28
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc129 = load i128, i128* %lc1, align 4
  %in30 = load i128, i128* %num2bits.in.declare_input, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lc129, i128 %in30, i1* @constraint.3)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %num2bits.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %n)
  br label %exit

exit:                                             ; preds = %arraydim
  %out31 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [256 x i128]* %out31, [256 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
  %OR = alloca %struct_template_circuit_or*, align 8
  store %struct_template_circuit_or* %0, %struct_template_circuit_or** %OR, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 0
  %or.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %or.a.declare_input = alloca i128, align 8
  store i128 %or.a.read_input_inner, i128* %or.a.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 1
  %or.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %or.b.declare_input = alloca i128, align 8
  store i128 %or.b.read_input_inner, i128* %or.b.declare_input, align 4
  %or.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %or.out.declare_output, align 4
  %a = load i128, i128* %or.a.declare_input, align 4
  %b = load i128, i128* %or.b.declare_input, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %or.a.declare_input, align 4
  %b3 = load i128, i128* %or.b.declare_input, align 4
  %mul = mul i128 %a2, %b3
  %sub = sub i128 %add, %mul
  %out4 = load i128, i128* %or.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out4, i128 %sub, i1* @constraint.4)
  %ptr_getter = load %struct_template_circuit_or*, %struct_template_circuit_or** %OR, align 8
  %or.out.write_output_inner = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ptr_getter, i32 0, i32 2
  store i128 %sub, i128* %or.out.write_output_inner, align 4
  %OR5 = load %struct_template_circuit_or*, %struct_template_circuit_or** %OR, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %OR5, i32 0, i32 2
  %or.out.read_output_inner = load i128, i128* %struct_getter6, align 4
  store i128 %or.out.read_output_inner, i128* %or.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out7 = load i128, i128* %or.out.declare_output, align 4
  %or.out.write_output_inner8 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %out7, i128* %or.out.write_output_inner8, align 4
  ret void
}

define %struct_template_circuit_or* @fn_template_build_or() {
entry:
  %struct_template_circuit_or = alloca %struct_template_circuit_or, align 8
  ret %struct_template_circuit_or* %struct_template_circuit_or
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
  %inv = call i128 @fn_intrinsic_utils_init()
  store i128 %inv, i128* %iszero.inv.declare_inter, align 4
  %iszero.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %iszero.out.declare_output, align 4
  %in = load i128, i128* %iszero.in.declare_input, align 4
  %ne = icmp ne i128 %in, 0
  %in1 = load i128, i128* %iszero.in.declare_input, align 4
  %sdiv = sdiv i128 1, %in1
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %ne, i128 %sdiv, i128 0)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %IsZero, align 8
  %iszero.inv.write_inter_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 1
  store i128 %utils_switch, i128* %iszero.inv.write_inter_inner, align 4
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
  call void @fn_intrinsic_utils_constraint(i128 %out6, i128 %add, i1* @constraint.5)
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
  call void @fn_intrinsic_utils_constraint(i128 %mul12, i128 0, i1* @constraint.6)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
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

define void @fn_template_init_bigmultshortlong2d(%struct_template_circuit_bigmultshortlong2d* %0) {
entry:
  %BigMultShortLong2D = alloca %struct_template_circuit_bigmultshortlong2d*, align 8
  store %struct_template_circuit_bigmultshortlong2d* %0, %struct_template_circuit_bigmultshortlong2d** %BigMultShortLong2D, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 0
  %bigmultshortlong2d.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmultshortlong2d.n.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2d.n.read_arg_inner, i128* %bigmultshortlong2d.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 1
  %bigmultshortlong2d.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmultshortlong2d.k.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2d.k.read_arg_inner, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 2
  %bigmultshortlong2d.l.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigmultshortlong2d.l.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong2d.l.read_arg_inner, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 3
  %bigmultshortlong2d.a.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %bigmultshortlong2d.a.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2d.a.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 4
  %bigmultshortlong2d.b.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter4, align 8
  %bigmultshortlong2d.b.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2d.b.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input, align 8
  %bigmultshortlong2d.out.declare_output = alloca [256 x [256 x i128]]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]*
  store [256 x [256 x i128]]* %out, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %deg2 = alloca i128, align 8
  %deg25 = call i128 @fn_intrinsic_utils_init()
  store i128 %deg25, i128* %deg2, align 4
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow6, [256 x [256 x i128]]** %pow, align 8
  %j1 = alloca i128, align 8
  %j17 = call i128 @fn_intrinsic_utils_init()
  store i128 %j17, i128* %j1, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val8, [256 x [256 x i128]]** %prod_val, align 8
  %i1 = alloca i128, align 8
  %i19 = call i128 @fn_intrinsic_utils_init()
  store i128 %i19, i128* %i1, align 4
  %j2 = alloca i128, align 8
  %j210 = call i128 @fn_intrinsic_utils_init()
  store i128 %j210, i128* %j2, align 4
  %i = alloca i128, align 8
  %i11 = call i128 @fn_intrinsic_utils_init()
  store i128 %i11, i128* %i, align 4
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly12, [256 x [256 x i128]]** %out_poly, align 8
  %k2 = alloca i128, align 8
  %k213 = call i128 @fn_intrinsic_utils_init()
  store i128 %k213, i128* %k2, align 4
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly14, [256 x [256 x i128]]** %b_poly, align 8
  %j = alloca i128, align 8
  %j15 = call i128 @fn_intrinsic_utils_init()
  store i128 %j15, i128* %j, align 4
  %i2 = alloca i128, align 8
  %i216 = call i128 @fn_intrinsic_utils_init()
  store i128 %i216, i128* %i2, align 4
  %deg1 = alloca i128, align 8
  %deg117 = call i128 @fn_intrinsic_utils_init()
  store i128 %deg117, i128* %deg1, align 4
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly18 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly18, [256 x [256 x i128]]** %a_poly, align 8
  %l = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %k = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %l19 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %k20 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %l21 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul = mul i128 2, %l21
  %sub = sub i128 %mul, 1
  %k22 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul23 = mul i128 2, %k22
  %sub24 = sub i128 %mul23, 1
  %l25 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul26 = mul i128 2, %l25
  %sub27 = sub i128 %mul26, 1
  %k28 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul29 = mul i128 2, %k28
  %sub30 = sub i128 %mul29, 1
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch40, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i32 = load i128, i128* %i, align 4
  %j33 = load i128, i128* %j, align 4
  %prod_val34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i32, i128 %j33
  store i128 0, i128* %prod_val34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body31
  %j35 = load i128, i128* %j, align 4
  %add = add i128 %j35, 1
  store i128 %add, i128* %j, align 4
  %j36 = load i128, i128* %j, align 4
  %k37 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul38 = mul i128 2, %k37
  %sub39 = sub i128 %mul38, 1
  %slt = icmp slt i128 %j36, %sub39
  br i1 %slt, label %loop.body31, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch40

loop.latch40:                                     ; preds = %loop.exit
  %i41 = load i128, i128* %i, align 4
  %add42 = add i128 %i41, 1
  store i128 %add42, i128* %i, align 4
  %i43 = load i128, i128* %i, align 4
  %l44 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul45 = mul i128 2, %l44
  %sub46 = sub i128 %mul45, 1
  %slt47 = icmp slt i128 %i43, %sub46
  br i1 %slt47, label %loop.body, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch40
  store i128 0, i128* %i1, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch98, %loop.exit48
  store i128 0, i128* %i2, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch91, %loop.body49
  store i128 0, i128* %j1, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch84, %loop.body50
  store i128 0, i128* %j2, align 4
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch77, %loop.body51
  %i153 = load i128, i128* %i1, align 4
  %i254 = load i128, i128* %i2, align 4
  %add55 = add i128 %i153, %i254
  store i128 %add55, i128* %i, align 4
  %j156 = load i128, i128* %j1, align 4
  %j257 = load i128, i128* %j2, align 4
  %add58 = add i128 %j156, %j257
  store i128 %add58, i128* %j, align 4
  %prod_val59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i60 = load i128, i128* %i, align 4
  %j61 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val59, i128 0, i128 %i60, i128 %j61
  %prod_val62 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input, align 8
  %i163 = load i128, i128* %i1, align 4
  %j164 = load i128, i128* %j1, align 4
  %array_getter65 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i163, i128 %j164
  %a66 = load i128, i128* %array_getter65, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input, align 8
  %i267 = load i128, i128* %i2, align 4
  %j268 = load i128, i128* %j2, align 4
  %array_getter69 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i267, i128 %j268
  %b70 = load i128, i128* %array_getter69, align 4
  %mul71 = mul i128 %a66, %b70
  %add72 = add i128 %prod_val62, %mul71
  %ptr_getter73 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i74 = load i128, i128* %i, align 4
  %j75 = load i128, i128* %j, align 4
  %prod_val76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter73, i128 0, i128 %i74, i128 %j75
  store i128 %add72, i128* %prod_val76, align 4
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.body52
  %j278 = load i128, i128* %j2, align 4
  %add79 = add i128 %j278, 1
  store i128 %add79, i128* %j2, align 4
  %j280 = load i128, i128* %j2, align 4
  %k81 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %slt82 = icmp slt i128 %j280, %k81
  br i1 %slt82, label %loop.body52, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  br label %loop.latch84

loop.latch84:                                     ; preds = %loop.exit83
  %j185 = load i128, i128* %j1, align 4
  %add86 = add i128 %j185, 1
  store i128 %add86, i128* %j1, align 4
  %j187 = load i128, i128* %j1, align 4
  %k88 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %slt89 = icmp slt i128 %j187, %k88
  br i1 %slt89, label %loop.body51, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch84
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.exit90
  %i292 = load i128, i128* %i2, align 4
  %add93 = add i128 %i292, 1
  store i128 %add93, i128* %i2, align 4
  %i294 = load i128, i128* %i2, align 4
  %l95 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %slt96 = icmp slt i128 %i294, %l95
  br i1 %slt96, label %loop.body50, label %loop.exit97

loop.exit97:                                      ; preds = %loop.latch91
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.exit97
  %i199 = load i128, i128* %i1, align 4
  %add100 = add i128 %i199, 1
  store i128 %add100, i128* %i1, align 4
  %i1101 = load i128, i128* %i1, align 4
  %l102 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %slt103 = icmp slt i128 %i1101, %l102
  br i1 %slt103, label %loop.body49, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  store i128 0, i128* %i, align 4
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch125, %loop.exit104
  store i128 0, i128* %j, align 4
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch116, %loop.body105
  %prod_val107 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i108 = load i128, i128* %i, align 4
  %j109 = load i128, i128* %j, align 4
  %array_getter110 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val107, i128 0, i128 %i108, i128 %j109
  %prod_val111 = load i128, i128* %array_getter110, align 4
  %ptr_getter112 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %i113 = load i128, i128* %i, align 4
  %j114 = load i128, i128* %j, align 4
  %out115 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter112, i128 0, i128 %i113, i128 %j114
  store i128 %prod_val111, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body106
  %j117 = load i128, i128* %j, align 4
  %add118 = add i128 %j117, 1
  store i128 %add118, i128* %j, align 4
  %j119 = load i128, i128* %j, align 4
  %k120 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul121 = mul i128 2, %k120
  %sub122 = sub i128 %mul121, 1
  %slt123 = icmp slt i128 %j119, %sub122
  br i1 %slt123, label %loop.body106, label %loop.exit124

loop.exit124:                                     ; preds = %loop.latch116
  br label %loop.latch125

loop.latch125:                                    ; preds = %loop.exit124
  %i126 = load i128, i128* %i, align 4
  %add127 = add i128 %i126, 1
  store i128 %add127, i128* %i, align 4
  %i128 = load i128, i128* %i, align 4
  %l129 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul130 = mul i128 2, %l129
  %sub131 = sub i128 %mul130, 1
  %slt132 = icmp slt i128 %i128, %sub131
  br i1 %slt132, label %loop.body105, label %loop.exit133

loop.exit133:                                     ; preds = %loop.latch125
  %k134 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul135 = mul i128 2, %k134
  %sub136 = sub i128 %mul135, 1
  %l137 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul138 = mul i128 2, %l137
  %sub139 = sub i128 %mul138, 1
  %sgt = icmp sgt i128 %sub136, %sub139
  %k140 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul141 = mul i128 2, %k140
  %sub142 = sub i128 %mul141, 1
  %l143 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul144 = mul i128 2, %l143
  %sub145 = sub i128 %mul144, 1
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %sgt, i128 %sub142, i128 %sub145)
  store i128 %utils_switch, i128* %k2, align 4
  %k2146 = load i128, i128* %k2, align 4
  %k2147 = load i128, i128* %k2, align 4
  %uniform_array148 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array148, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch166, %loop.exit133
  store i128 0, i128* %j, align 4
  br label %loop.body150

loop.body150:                                     ; preds = %loop.latch159, %loop.body149
  %i151 = load i128, i128* %i, align 4
  %j152 = load i128, i128* %j, align 4
  %pow153 = call i128 @fn_intrinsic_utils_powi(i128 %i151, i128 %j152)
  %ptr_getter154 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i155 = load i128, i128* %i, align 4
  %j157 = load i128, i128* %j, align 4
  %pow158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter154, i128 0, i128 %i155, i128 %j157
  store i128 %pow153, i128* %pow158, align 4
  br label %loop.latch159

loop.latch159:                                    ; preds = %loop.body150
  %j160 = load i128, i128* %j, align 4
  %add161 = add i128 %j160, 1
  store i128 %add161, i128* %j, align 4
  %j162 = load i128, i128* %j, align 4
  %k2163 = load i128, i128* %k2, align 4
  %slt164 = icmp slt i128 %j162, %k2163
  br i1 %slt164, label %loop.body150, label %loop.exit165

loop.exit165:                                     ; preds = %loop.latch159
  br label %loop.latch166

loop.latch166:                                    ; preds = %loop.exit165
  %i167 = load i128, i128* %i, align 4
  %add168 = add i128 %i167, 1
  store i128 %add168, i128* %i, align 4
  %i169 = load i128, i128* %i, align 4
  %k2170 = load i128, i128* %k2, align 4
  %slt171 = icmp slt i128 %i169, %k2170
  br i1 %slt171, label %loop.body149, label %loop.exit172

loop.exit172:                                     ; preds = %loop.latch166
  %l173 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul174 = mul i128 2, %l173
  %sub175 = sub i128 %mul174, 1
  %k176 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul177 = mul i128 2, %k176
  %sub178 = sub i128 %mul177, 1
  %uniform_array179 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array179, [256 x [256 x i128]]** %a_poly, align 8
  %l180 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul181 = mul i128 2, %l180
  %sub182 = sub i128 %mul181, 1
  %k183 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul184 = mul i128 2, %k183
  %sub185 = sub i128 %mul184, 1
  %uniform_array186 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array186, [256 x [256 x i128]]** %b_poly, align 8
  %l187 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul188 = mul i128 2, %l187
  %sub189 = sub i128 %mul188, 1
  %k190 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul191 = mul i128 2, %k190
  %sub192 = sub i128 %mul191, 1
  %uniform_array193 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array193, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body194

loop.body194:                                     ; preds = %loop.latch334, %loop.exit172
  store i128 0, i128* %j, align 4
  br label %loop.body195

loop.body195:                                     ; preds = %loop.latch325, %loop.body194
  %ptr_getter196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i197 = load i128, i128* %i, align 4
  %j198 = load i128, i128* %j, align 4
  %a_poly199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter196, i128 0, i128 %i197, i128 %j198
  store i128 0, i128* %a_poly199, align 4
  %ptr_getter200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i201 = load i128, i128* %i, align 4
  %j202 = load i128, i128* %j, align 4
  %b_poly203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter200, i128 0, i128 %i201, i128 %j202
  store i128 0, i128* %b_poly203, align 4
  %ptr_getter204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i205 = load i128, i128* %i, align 4
  %j206 = load i128, i128* %j, align 4
  %out_poly207 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter204, i128 0, i128 %i205, i128 %j206
  store i128 0, i128* %out_poly207, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body208

loop.body208:                                     ; preds = %loop.latch271, %loop.body195
  store i128 0, i128* %deg2, align 4
  br label %loop.body209

loop.body209:                                     ; preds = %loop.latch264, %loop.body208
  %a_poly210 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i211 = load i128, i128* %i, align 4
  %j212 = load i128, i128* %j, align 4
  %array_getter213 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly210, i128 0, i128 %i211, i128 %j212
  %a_poly214 = load i128, i128* %array_getter213, align 4
  %a215 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input, align 8
  %deg1216 = load i128, i128* %deg1, align 4
  %deg2217 = load i128, i128* %deg2, align 4
  %array_getter218 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a215, i128 0, i128 %deg1216, i128 %deg2217
  %a219 = load i128, i128* %array_getter218, align 4
  %pow220 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i221 = load i128, i128* %i, align 4
  %deg1222 = load i128, i128* %deg1, align 4
  %array_getter223 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow220, i128 0, i128 %i221, i128 %deg1222
  %pow224 = load i128, i128* %array_getter223, align 4
  %mul225 = mul i128 %a219, %pow224
  %pow226 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j227 = load i128, i128* %j, align 4
  %deg2228 = load i128, i128* %deg2, align 4
  %array_getter229 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow226, i128 0, i128 %j227, i128 %deg2228
  %pow230 = load i128, i128* %array_getter229, align 4
  %mul231 = mul i128 %mul225, %pow230
  %add232 = add i128 %a_poly214, %mul231
  %ptr_getter233 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i234 = load i128, i128* %i, align 4
  %j235 = load i128, i128* %j, align 4
  %a_poly236 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter233, i128 0, i128 %i234, i128 %j235
  store i128 %add232, i128* %a_poly236, align 4
  %b_poly237 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i238 = load i128, i128* %i, align 4
  %j239 = load i128, i128* %j, align 4
  %array_getter240 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly237, i128 0, i128 %i238, i128 %j239
  %b_poly241 = load i128, i128* %array_getter240, align 4
  %b242 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input, align 8
  %deg1243 = load i128, i128* %deg1, align 4
  %deg2244 = load i128, i128* %deg2, align 4
  %array_getter245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b242, i128 0, i128 %deg1243, i128 %deg2244
  %b246 = load i128, i128* %array_getter245, align 4
  %pow247 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i248 = load i128, i128* %i, align 4
  %deg1249 = load i128, i128* %deg1, align 4
  %array_getter250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow247, i128 0, i128 %i248, i128 %deg1249
  %pow251 = load i128, i128* %array_getter250, align 4
  %mul252 = mul i128 %b246, %pow251
  %pow253 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j254 = load i128, i128* %j, align 4
  %deg2255 = load i128, i128* %deg2, align 4
  %array_getter256 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow253, i128 0, i128 %j254, i128 %deg2255
  %pow257 = load i128, i128* %array_getter256, align 4
  %mul258 = mul i128 %mul252, %pow257
  %add259 = add i128 %b_poly241, %mul258
  %ptr_getter260 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i261 = load i128, i128* %i, align 4
  %j262 = load i128, i128* %j, align 4
  %b_poly263 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter260, i128 0, i128 %i261, i128 %j262
  store i128 %add259, i128* %b_poly263, align 4
  br label %loop.latch264

loop.latch264:                                    ; preds = %loop.body209
  %deg2265 = load i128, i128* %deg2, align 4
  %add266 = add i128 %deg2265, 1
  store i128 %add266, i128* %deg2, align 4
  %deg2267 = load i128, i128* %deg2, align 4
  %k268 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %slt269 = icmp slt i128 %deg2267, %k268
  br i1 %slt269, label %loop.body209, label %loop.exit270

loop.exit270:                                     ; preds = %loop.latch264
  br label %loop.latch271

loop.latch271:                                    ; preds = %loop.exit270
  %deg1272 = load i128, i128* %deg1, align 4
  %add273 = add i128 %deg1272, 1
  store i128 %add273, i128* %deg1, align 4
  %deg1274 = load i128, i128* %deg1, align 4
  %l275 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %slt276 = icmp slt i128 %deg1274, %l275
  br i1 %slt276, label %loop.body208, label %loop.exit277

loop.exit277:                                     ; preds = %loop.latch271
  store i128 0, i128* %deg1, align 4
  br label %loop.body278

loop.body278:                                     ; preds = %loop.latch316, %loop.exit277
  store i128 0, i128* %deg2, align 4
  br label %loop.body279

loop.body279:                                     ; preds = %loop.latch307, %loop.body278
  %out_poly280 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i281 = load i128, i128* %i, align 4
  %j282 = load i128, i128* %j, align 4
  %array_getter283 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly280, i128 0, i128 %i281, i128 %j282
  %out_poly284 = load i128, i128* %array_getter283, align 4
  %out285 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %deg1286 = load i128, i128* %deg1, align 4
  %deg2287 = load i128, i128* %deg2, align 4
  %array_getter288 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out285, i128 0, i128 %deg1286, i128 %deg2287
  %out289 = load i128, i128* %array_getter288, align 4
  %pow290 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i291 = load i128, i128* %i, align 4
  %deg1292 = load i128, i128* %deg1, align 4
  %array_getter293 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow290, i128 0, i128 %i291, i128 %deg1292
  %pow294 = load i128, i128* %array_getter293, align 4
  %mul295 = mul i128 %out289, %pow294
  %pow296 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j297 = load i128, i128* %j, align 4
  %deg2298 = load i128, i128* %deg2, align 4
  %array_getter299 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow296, i128 0, i128 %j297, i128 %deg2298
  %pow300 = load i128, i128* %array_getter299, align 4
  %mul301 = mul i128 %mul295, %pow300
  %add302 = add i128 %out_poly284, %mul301
  %ptr_getter303 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i304 = load i128, i128* %i, align 4
  %j305 = load i128, i128* %j, align 4
  %out_poly306 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter303, i128 0, i128 %i304, i128 %j305
  store i128 %add302, i128* %out_poly306, align 4
  br label %loop.latch307

loop.latch307:                                    ; preds = %loop.body279
  %deg2308 = load i128, i128* %deg2, align 4
  %add309 = add i128 %deg2308, 1
  store i128 %add309, i128* %deg2, align 4
  %deg2310 = load i128, i128* %deg2, align 4
  %k311 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul312 = mul i128 2, %k311
  %sub313 = sub i128 %mul312, 1
  %slt314 = icmp slt i128 %deg2310, %sub313
  br i1 %slt314, label %loop.body279, label %loop.exit315

loop.exit315:                                     ; preds = %loop.latch307
  br label %loop.latch316

loop.latch316:                                    ; preds = %loop.exit315
  %deg1317 = load i128, i128* %deg1, align 4
  %add318 = add i128 %deg1317, 1
  store i128 %add318, i128* %deg1, align 4
  %deg1319 = load i128, i128* %deg1, align 4
  %l320 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul321 = mul i128 2, %l320
  %sub322 = sub i128 %mul321, 1
  %slt323 = icmp slt i128 %deg1319, %sub322
  br i1 %slt323, label %loop.body278, label %loop.exit324

loop.exit324:                                     ; preds = %loop.latch316
  br label %loop.latch325

loop.latch325:                                    ; preds = %loop.exit324
  %j326 = load i128, i128* %j, align 4
  %add327 = add i128 %j326, 1
  store i128 %add327, i128* %j, align 4
  %j328 = load i128, i128* %j, align 4
  %k329 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul330 = mul i128 2, %k329
  %sub331 = sub i128 %mul330, 1
  %slt332 = icmp slt i128 %j328, %sub331
  br i1 %slt332, label %loop.body195, label %loop.exit333

loop.exit333:                                     ; preds = %loop.latch325
  br label %loop.latch334

loop.latch334:                                    ; preds = %loop.exit333
  %i335 = load i128, i128* %i, align 4
  %add336 = add i128 %i335, 1
  store i128 %add336, i128* %i, align 4
  %i337 = load i128, i128* %i, align 4
  %l338 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul339 = mul i128 2, %l338
  %sub340 = sub i128 %mul339, 1
  %slt341 = icmp slt i128 %i337, %sub340
  br i1 %slt341, label %loop.body194, label %loop.exit342

loop.exit342:                                     ; preds = %loop.latch334
  store i128 0, i128* %i, align 4
  br label %loop.body343

loop.body343:                                     ; preds = %loop.latch370, %loop.exit342
  store i128 0, i128* %j, align 4
  br label %loop.body344

loop.body344:                                     ; preds = %loop.latch361, %loop.body343
  %out_poly345 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i346 = load i128, i128* %i, align 4
  %j347 = load i128, i128* %j, align 4
  %array_getter348 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly345, i128 0, i128 %i346, i128 %j347
  %out_poly349 = load i128, i128* %array_getter348, align 4
  %a_poly350 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i351 = load i128, i128* %i, align 4
  %j352 = load i128, i128* %j, align 4
  %array_getter353 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly350, i128 0, i128 %i351, i128 %j352
  %a_poly354 = load i128, i128* %array_getter353, align 4
  %b_poly355 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i356 = load i128, i128* %i, align 4
  %j357 = load i128, i128* %j, align 4
  %array_getter358 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly355, i128 0, i128 %i356, i128 %j357
  %b_poly359 = load i128, i128* %array_getter358, align 4
  %mul360 = mul i128 %a_poly354, %b_poly359
  call void @fn_intrinsic_utils_constraint(i128 %out_poly349, i128 %mul360, i1* @constraint.7)
  br label %loop.latch361

loop.latch361:                                    ; preds = %loop.body344
  %j362 = load i128, i128* %j, align 4
  %add363 = add i128 %j362, 1
  store i128 %add363, i128* %j, align 4
  %j364 = load i128, i128* %j, align 4
  %k365 = load i128, i128* %bigmultshortlong2d.k.declare_arg, align 4
  %mul366 = mul i128 2, %k365
  %sub367 = sub i128 %mul366, 1
  %slt368 = icmp slt i128 %j364, %sub367
  br i1 %slt368, label %loop.body344, label %loop.exit369

loop.exit369:                                     ; preds = %loop.latch361
  br label %loop.latch370

loop.latch370:                                    ; preds = %loop.exit369
  %i371 = load i128, i128* %i, align 4
  %add372 = add i128 %i371, 1
  store i128 %add372, i128* %i, align 4
  %i373 = load i128, i128* %i, align 4
  %l374 = load i128, i128* %bigmultshortlong2d.l.declare_arg, align 4
  %mul375 = mul i128 2, %l374
  %sub376 = sub i128 %mul375, 1
  %slt377 = icmp slt i128 %i373, %sub376
  br i1 %slt377, label %loop.body343, label %loop.exit378

loop.exit378:                                     ; preds = %loop.latch370
  br label %arraydim

arraydim:                                         ; preds = %loop.exit378
  %ptr_cast = bitcast [256 x [256 x i128]]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub175, i128 %sub178)
  %ptr_cast379 = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast379, i128 %l, i128 %k)
  %ptr_cast380 = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast380, i128 %sub, i128 %sub24)
  %ptr_cast381 = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast381, i128 %l19, i128 %k20)
  %ptr_cast382 = bitcast [256 x [256 x i128]]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast382, i128 %sub27, i128 %sub30)
  %ptr_cast383 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast383, i128 %k2146, i128 %k2147)
  %ptr_cast384 = bitcast [256 x [256 x i128]]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast384, i128 %sub182, i128 %sub185)
  %ptr_cast385 = bitcast [256 x [256 x i128]]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast385, i128 %sub189, i128 %sub192)
  br label %exit

exit:                                             ; preds = %arraydim
  %out386 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %bigmultshortlong2d.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 5
  store [256 x [256 x i128]]* %out386, [256 x [256 x i128]]** %bigmultshortlong2d.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2d* @fn_template_build_bigmultshortlong2d(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong2d = alloca %struct_template_circuit_bigmultshortlong2d, align 8
  %bigmultshortlong2d.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong2d.n.write_arg_inner, align 4
  %bigmultshortlong2d.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong2d.k.write_arg_inner, align 4
  %bigmultshortlong2d.l.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong2d.l.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d
}

define void @fn_template_init_split(%struct_template_circuit_split* %0) {
entry:
  %Split = alloca %struct_template_circuit_split*, align 8
  store %struct_template_circuit_split* %0, %struct_template_circuit_split** %Split, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 0
  %split.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %split.n.declare_arg = alloca i128, align 8
  store i128 %split.n.read_arg_inner, i128* %split.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 1
  %split.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %split.m.declare_arg = alloca i128, align 8
  store i128 %split.m.read_arg_inner, i128* %split.m.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 2
  %split.in.read_input_inner = load i128, i128* %struct_getter2, align 4
  %split.in.declare_input = alloca i128, align 8
  store i128 %split.in.read_input_inner, i128* %split.in.declare_input, align 4
  %split.big.declare_output = alloca i128, align 8
  %big = call i128 @fn_intrinsic_utils_init()
  store i128 %big, i128* %split.big.declare_output, align 4
  %n2b_small = alloca %struct_template_circuit_num2bits*, align 8
  %n2b_big = alloca %struct_template_circuit_num2bits*, align 8
  %split.small.declare_output = alloca i128, align 8
  %small = call i128 @fn_intrinsic_utils_init()
  store i128 %small, i128* %split.small.declare_output, align 4
  %n = load i128, i128* %split.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %in = load i128, i128* %split.in.declare_input, align 4
  %n3 = load i128, i128* %split.n.declare_arg, align 4
  %lshift = shl i128 1, %n3
  %mod = srem i128 %in, %lshift
  %ptr_getter = load %struct_template_circuit_split*, %struct_template_circuit_split** %Split, align 8
  %split.small.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %ptr_getter, i32 0, i32 3
  store i128 %mod, i128* %split.small.write_output_inner, align 4
  %Split4 = load %struct_template_circuit_split*, %struct_template_circuit_split** %Split, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %Split4, i32 0, i32 3
  %split.small.read_output_inner = load i128, i128* %struct_getter5, align 4
  store i128 %split.small.read_output_inner, i128* %split.small.declare_output, align 4
  %in6 = load i128, i128* %split.in.declare_input, align 4
  %n7 = load i128, i128* %split.n.declare_arg, align 4
  %lshift8 = shl i128 1, %n7
  %sdiv = sdiv i128 %in6, %lshift8
  %ptr_getter9 = load %struct_template_circuit_split*, %struct_template_circuit_split** %Split, align 8
  %split.big.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %ptr_getter9, i32 0, i32 4
  store i128 %sdiv, i128* %split.big.write_output_inner, align 4
  %Split10 = load %struct_template_circuit_split*, %struct_template_circuit_split** %Split, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %Split10, i32 0, i32 4
  %split.big.read_output_inner = load i128, i128* %struct_getter11, align 4
  store i128 %split.big.read_output_inner, i128* %split.big.declare_output, align 4
  %n12 = load i128, i128* %split.n.declare_arg, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n12)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b_small, align 8
  %small13 = load i128, i128* %split.small.declare_output, align 4
  %n2b_small14 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small14, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %small13, i1* @constraint.8)
  %ptr_getter16 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter16, i32 0, i32 1
  store i128 %small13, i128* %num2bits.in.write_input_outter, align 4
  %m = load i128, i128* %split.m.declare_arg, align 4
  %call17 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m)
  store %struct_template_circuit_num2bits* %call17, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big18 = load i128, i128* %split.big.declare_output, align 4
  %n2b_big19 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big19, i32 0, i32 1
  %num2bits.in.read_input_outter21 = load i128, i128* %struct_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter21, i128 %big18, i1* @constraint.9)
  %ptr_getter22 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %num2bits.in.write_input_outter23 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter22, i32 0, i32 1
  store i128 %big18, i128* %num2bits.in.write_input_outter23, align 4
  %in24 = load i128, i128* %split.in.declare_input, align 4
  %small25 = load i128, i128* %split.small.declare_output, align 4
  %big26 = load i128, i128* %split.big.declare_output, align 4
  %n27 = load i128, i128* %split.n.declare_arg, align 4
  %lshift28 = shl i128 1, %n27
  %mul = mul i128 %big26, %lshift28
  %add = add i128 %small25, %mul
  call void @fn_intrinsic_utils_constraint(i128 %in24, i128 %add, i1* @constraint.10)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %small29 = load i128, i128* %split.small.declare_output, align 4
  %split.small.write_output_inner30 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %small29, i128* %split.small.write_output_inner30, align 4
  %big31 = load i128, i128* %split.big.declare_output, align 4
  %split.big.write_output_inner32 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %big31, i128* %split.big.write_output_inner32, align 4
  ret void
}

define %struct_template_circuit_split* @fn_template_build_split(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_split = alloca %struct_template_circuit_split, align 8
  %split.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 0
  store i128 %0, i128* %split.n.write_arg_inner, align 4
  %split.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 1
  store i128 %1, i128* %split.m.write_arg_inner, align 4
  ret %struct_template_circuit_split* %struct_template_circuit_split
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
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %borrow = alloca [256 x i128]*, align 8
  %borrow2 = alloca [256 x i128], align 8
  store [256 x i128]* %borrow2, [256 x i128]** %borrow, align 8
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

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %LessThan = alloca %struct_template_circuit_lessthan*, align 8
  store %struct_template_circuit_lessthan* %0, %struct_template_circuit_lessthan** %LessThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %lessthan.n.declare_arg = alloca i128, align 8
  store i128 %lessthan.n.read_arg_inner, i128* %lessthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %lessthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %lessthan.in.read_input_inner, [256 x i128]** %lessthan.in.declare_input, align 8
  %lessthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %lessthan.out.declare_output, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %lessthan.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n2 = load i128, i128* %lessthan.n.declare_arg, align 4
  %add = add i128 %n2, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load [256 x i128]*, [256 x i128]** %lessthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in3 = load i128, i128* %array_getter, align 4
  %n4 = load i128, i128* %lessthan.n.declare_arg, align 4
  %lshift = shl i128 1, %n4
  %add5 = add i128 %in3, %lshift
  %in6 = load [256 x i128]*, [256 x i128]** %lessthan.in.declare_input, align 8
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %in6, i128 0, i128 1
  %in8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %add5, %in8
  %n2b9 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b9, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.11)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %n2b11 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b11, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %n13 = load i128, i128* %lessthan.n.declare_arg, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %n13
  %n2b15 = load i128, i128* %array_getter14, align 4
  %sub16 = sub i128 1, %n2b15
  %out17 = load i128, i128* %lessthan.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out17, i128 %sub16, i1* @constraint.12)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %LessThan, align 8
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 2
  store i128 %sub16, i128* %lessthan.out.write_output_inner, align 4
  %LessThan19 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %LessThan, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %LessThan19, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter20, align 4
  store i128 %lessthan.out.read_output_inner, i128* %lessthan.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %lessthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
  %out21 = load i128, i128* %lessthan.out.declare_output, align 4
  %lessthan.out.write_output_inner22 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %out21, i128* %lessthan.out.write_output_inner22, align 4
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
  %ForceEqualIfEnabled = alloca %struct_template_circuit_forceequalifenabled*, align 8
  store %struct_template_circuit_forceequalifenabled* %0, %struct_template_circuit_forceequalifenabled** %ForceEqualIfEnabled, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %forceequalifenabled.enabled.declare_input = alloca i128, align 8
  store i128 %forceequalifenabled.enabled.read_input_inner, i128* %forceequalifenabled.enabled.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %forceequalifenabled.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %forceequalifenabled.in.read_input_inner, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [256 x i128]*, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %in3, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %isz6 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz6, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.13)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %isz8 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz8, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %enabled = load i128, i128* %forceequalifenabled.enabled.declare_input, align 4
  %mul = mul i128 %sub10, %enabled
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.14)
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %forceequalifenabled.in.declare_input to i128*
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

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %GreaterThan = alloca %struct_template_circuit_greaterthan*, align 8
  store %struct_template_circuit_greaterthan* %0, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %greaterthan.n.declare_arg = alloca i128, align 8
  store i128 %greaterthan.n.read_arg_inner, i128* %greaterthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %greaterthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %greaterthan.in.read_input_inner, [256 x i128]** %greaterthan.in.declare_input, align 8
  %greaterthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %greaterthan.out.declare_output, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %greaterthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.15)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %in12, i1* @constraint.16)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %greaterthan.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.17)
  %ptr_getter25 = load %struct_template_circuit_greaterthan*, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %GreaterThan26 = load %struct_template_circuit_greaterthan*, %struct_template_circuit_greaterthan** %GreaterThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %GreaterThan26, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %greaterthan.out.read_output_inner, i128* %greaterthan.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %greaterthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
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
  %carry = alloca [256 x i128]*, align 8
  %carry2 = alloca [256 x i128], align 8
  store [256 x i128]* %carry2, [256 x i128]** %carry, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %out = alloca [256 x i128]*, align 8
  %out4 = alloca [256 x i128], align 8
  store [256 x i128]* %out4, [256 x i128]** %out, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split5, [256 x [256 x i128]]** %split, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val6 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val6, [256 x i128]** %prod_val, align 8
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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %Bits2Num = alloca %struct_template_circuit_bits2num*, align 8
  store %struct_template_circuit_bits2num* %0, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bits2num.n.declare_arg = alloca i128, align 8
  store i128 %bits2num.n.read_arg_inner, i128* %bits2num.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bits2num.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bits2num.in.read_input_inner, [256 x i128]** %bits2num.in.declare_input, align 8
  %bits2num.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %bits2num.out.declare_output, align 4
  %lc1 = alloca i128, align 8
  %lc12 = call i128 @fn_intrinsic_utils_init()
  store i128 %lc12, i128* %lc1, align 4
  %e2 = alloca i128, align 8
  %e23 = call i128 @fn_intrinsic_utils_init()
  store i128 %e23, i128* %e2, align 4
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %n = load i128, i128* %bits2num.n.declare_arg, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc15 = load i128, i128* %lc1, align 4
  %in = load [256 x i128]*, [256 x i128]** %bits2num.in.declare_input, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i6
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
  %n15 = load i128, i128* %bits2num.n.declare_arg, align 4
  %slt = icmp slt i128 %i14, %n15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc116 = load i128, i128* %lc1, align 4
  %out17 = load i128, i128* %bits2num.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out17, i128 %lc116, i1* @constraint.18)
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 2
  store i128 %lc116, i128* %bits2num.out.write_output_inner, align 4
  %Bits2Num18 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %Bits2Num, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %Bits2Num18, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  store i128 %bits2num.out.read_output_inner, i128* %bits2num.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bits2num.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %n)
  br label %exit

exit:                                             ; preds = %arraydim
  %out20 = load i128, i128* %bits2num.out.declare_output, align 4
  %bits2num.out.write_output_inner21 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %out20, i128* %bits2num.out.write_output_inner21, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %bits2num.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %bits2num.n.write_arg_inner, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %AND = alloca %struct_template_circuit_and*, align 8
  store %struct_template_circuit_and* %0, %struct_template_circuit_and** %AND, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %and.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %and.a.declare_input = alloca i128, align 8
  store i128 %and.a.read_input_inner, i128* %and.a.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 1
  %and.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %and.b.declare_input = alloca i128, align 8
  store i128 %and.b.read_input_inner, i128* %and.b.declare_input, align 4
  %and.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %and.out.declare_output, align 4
  %a = load i128, i128* %and.a.declare_input, align 4
  %b = load i128, i128* %and.b.declare_input, align 4
  %mul = mul i128 %a, %b
  %out2 = load i128, i128* %and.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out2, i128 %mul, i1* @constraint.19)
  %ptr_getter = load %struct_template_circuit_and*, %struct_template_circuit_and** %AND, align 8
  %and.out.write_output_inner = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter, i32 0, i32 2
  store i128 %mul, i128* %and.out.write_output_inner, align 4
  %AND3 = load %struct_template_circuit_and*, %struct_template_circuit_and** %AND, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %AND3, i32 0, i32 2
  %and.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  store i128 %and.out.read_output_inner, i128* %and.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out5 = load i128, i128* %and.out.declare_output, align 4
  %and.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %out5, i128* %and.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and() {
entry:
  %struct_template_circuit_and = alloca %struct_template_circuit_and, align 8
  ret %struct_template_circuit_and* %struct_template_circuit_and
}

define i128 @nbits(i128 %0) {
entry:
  %nbits.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %nbits.a.declare_arg, align 4
  %n = alloca i128, align 8
  %n1 = call i128 @fn_intrinsic_utils_init()
  store i128 %n1, i128* %n, align 4
  %r = alloca i128, align 8
  %r2 = call i128 @fn_intrinsic_utils_init()
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

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %LessEqThan = alloca %struct_template_circuit_lesseqthan*, align 8
  store %struct_template_circuit_lesseqthan* %0, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %lesseqthan.n.declare_arg = alloca i128, align 8
  store i128 %lesseqthan.n.read_arg_inner, i128* %lesseqthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %lesseqthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %lesseqthan.in.read_input_inner, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %lesseqthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %lesseqthan.out.declare_output, align 4
  %n = load i128, i128* %lesseqthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.20)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.21)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %lesseqthan.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.22)
  %ptr_getter25 = load %struct_template_circuit_lesseqthan*, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %LessEqThan26 = load %struct_template_circuit_lesseqthan*, %struct_template_circuit_lesseqthan** %LessEqThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %LessEqThan26, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %lesseqthan.out.read_output_inner, i128* %lesseqthan.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %lesseqthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
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
  %carry = alloca i128, align 8
  %carry2 = call i128 @fn_intrinsic_utils_init()
  store i128 %carry2, i128* %carry, align 4
  %MAXL = alloca i128, align 8
  %MAXL3 = call i128 @fn_intrinsic_utils_init()
  store i128 %MAXL3, i128* %MAXL, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp4 = alloca [256 x i128], align 8
  store [256 x i128]* %temp4, [256 x i128]** %temp, align 8
  %X = alloca i128, align 8
  %X5 = call i128 @fn_intrinsic_utils_init()
  store i128 %X5, i128* %X, align 4
  %borrow = alloca i128, align 8
  %borrow6 = call i128 @fn_intrinsic_utils_init()
  store i128 %borrow6, i128* %borrow, align 4
  %i = alloca i128, align 8
  %i7 = call i128 @fn_intrinsic_utils_init()
  store i128 %i7, i128* %i, align 4
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

define void @fn_template_init_modsumthree(%struct_template_circuit_modsumthree* %0) {
entry:
  %ModSumThree = alloca %struct_template_circuit_modsumthree*, align 8
  store %struct_template_circuit_modsumthree* %0, %struct_template_circuit_modsumthree** %ModSumThree, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 0
  %modsumthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modsumthree.n.declare_arg = alloca i128, align 8
  store i128 %modsumthree.n.read_arg_inner, i128* %modsumthree.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 1
  %modsumthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modsumthree.a.declare_input = alloca i128, align 8
  store i128 %modsumthree.a.read_input_inner, i128* %modsumthree.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 2
  %modsumthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modsumthree.b.declare_input = alloca i128, align 8
  store i128 %modsumthree.b.read_input_inner, i128* %modsumthree.b.declare_input, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 3
  %modsumthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %modsumthree.c.declare_input = alloca i128, align 8
  store i128 %modsumthree.c.read_input_inner, i128* %modsumthree.c.declare_input, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %modsumthree.sum.declare_output = alloca i128, align 8
  %sum = call i128 @fn_intrinsic_utils_init()
  store i128 %sum, i128* %modsumthree.sum.declare_output, align 4
  %modsumthree.carry.declare_output = alloca i128, align 8
  %carry = call i128 @fn_intrinsic_utils_init()
  store i128 %carry, i128* %modsumthree.carry.declare_output, align 4
  %n = load i128, i128* %modsumthree.n.declare_arg, align 4
  %add = add i128 %n, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n4 = load i128, i128* %modsumthree.n.declare_arg, align 4
  %add5 = add i128 %n4, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add5)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %modsumthree.a.declare_input, align 4
  %b = load i128, i128* %modsumthree.b.declare_input, align 4
  %add6 = add i128 %a, %b
  %c = load i128, i128* %modsumthree.c.declare_input, align 4
  %add7 = add i128 %add6, %c
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add7, i1* @constraint.23)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add7, i128* %num2bits.in.write_input_outter, align 4
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %n12 = load i128, i128* %modsumthree.n.declare_arg, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %n12
  %n2b13 = load i128, i128* %array_getter, align 4
  %n2b14 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b14, i32 0, i32 2
  %num2bits.out.read_output_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %n17 = load i128, i128* %modsumthree.n.declare_arg, align 4
  %add18 = add i128 %n17, 1
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter16, i128 0, i128 %add18
  %n2b20 = load i128, i128* %array_getter19, align 4
  %mul = mul i128 2, %n2b20
  %add21 = add i128 %n2b13, %mul
  %carry22 = load i128, i128* %modsumthree.carry.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry22, i128 %add21, i1* @constraint.24)
  %ptr_getter23 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %ModSumThree, align 8
  %modsumthree.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %ptr_getter23, i32 0, i32 5
  store i128 %add21, i128* %modsumthree.carry.write_output_inner, align 4
  %ModSumThree24 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %ModSumThree, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %ModSumThree24, i32 0, i32 5
  %modsumthree.carry.read_output_inner = load i128, i128* %struct_getter25, align 4
  store i128 %modsumthree.carry.read_output_inner, i128* %modsumthree.carry.declare_output, align 4
  %a26 = load i128, i128* %modsumthree.a.declare_input, align 4
  %b27 = load i128, i128* %modsumthree.b.declare_input, align 4
  %add28 = add i128 %a26, %b27
  %c29 = load i128, i128* %modsumthree.c.declare_input, align 4
  %add30 = add i128 %add28, %c29
  %carry31 = load i128, i128* %modsumthree.carry.declare_output, align 4
  %n32 = load i128, i128* %modsumthree.n.declare_arg, align 4
  %lshift = shl i128 1, %n32
  %mul33 = mul i128 %carry31, %lshift
  %sub = sub i128 %add30, %mul33
  %sum34 = load i128, i128* %modsumthree.sum.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum34, i128 %sub, i1* @constraint.25)
  %ptr_getter35 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %ModSumThree, align 8
  %modsumthree.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %ptr_getter35, i32 0, i32 4
  store i128 %sub, i128* %modsumthree.sum.write_output_inner, align 4
  %ModSumThree36 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %ModSumThree, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %ModSumThree36, i32 0, i32 4
  %modsumthree.sum.read_output_inner = load i128, i128* %struct_getter37, align 4
  store i128 %modsumthree.sum.read_output_inner, i128* %modsumthree.sum.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %sum38 = load i128, i128* %modsumthree.sum.declare_output, align 4
  %modsumthree.sum.write_output_inner39 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %sum38, i128* %modsumthree.sum.write_output_inner39, align 4
  %carry40 = load i128, i128* %modsumthree.carry.declare_output, align 4
  %modsumthree.carry.write_output_inner41 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %carry40, i128* %modsumthree.carry.write_output_inner41, align 4
  ret void
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
  %struct_template_circuit_modsumthree = alloca %struct_template_circuit_modsumthree, align 8
  %modsumthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree, i32 0, i32 0
  store i128 %0, i128* %modsumthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree
}

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %XOR = alloca %struct_template_circuit_xor*, align 8
  store %struct_template_circuit_xor* %0, %struct_template_circuit_xor** %XOR, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 0
  %xor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %xor.a.declare_input = alloca i128, align 8
  store i128 %xor.a.read_input_inner, i128* %xor.a.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 1
  %xor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %xor.b.declare_input = alloca i128, align 8
  store i128 %xor.b.read_input_inner, i128* %xor.b.declare_input, align 4
  %xor.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %xor.out.declare_output, align 4
  %a = load i128, i128* %xor.a.declare_input, align 4
  %b = load i128, i128* %xor.b.declare_input, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %xor.a.declare_input, align 4
  %mul = mul i128 2, %a2
  %b3 = load i128, i128* %xor.b.declare_input, align 4
  %mul4 = mul i128 %mul, %b3
  %sub = sub i128 %add, %mul4
  %out5 = load i128, i128* %xor.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out5, i128 %sub, i1* @constraint.26)
  %ptr_getter = load %struct_template_circuit_xor*, %struct_template_circuit_xor** %XOR, align 8
  %xor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %ptr_getter, i32 0, i32 2
  store i128 %sub, i128* %xor.out.write_output_inner, align 4
  %XOR6 = load %struct_template_circuit_xor*, %struct_template_circuit_xor** %XOR, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %XOR6, i32 0, i32 2
  %xor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  store i128 %xor.out.read_output_inner, i128* %xor.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out8 = load i128, i128* %xor.out.declare_output, align 4
  %xor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %out8, i128* %xor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor() {
entry:
  %struct_template_circuit_xor = alloca %struct_template_circuit_xor, align 8
  ret %struct_template_circuit_xor* %struct_template_circuit_xor
}

define void @fn_template_init_bigmultshortlong(%struct_template_circuit_bigmultshortlong* %0) {
entry:
  %BigMultShortLong = alloca %struct_template_circuit_bigmultshortlong*, align 8
  store %struct_template_circuit_bigmultshortlong* %0, %struct_template_circuit_bigmultshortlong** %BigMultShortLong, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 0
  %bigmultshortlong.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmultshortlong.n.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong.n.read_arg_inner, i128* %bigmultshortlong.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 1
  %bigmultshortlong.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmultshortlong.k.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong.k.read_arg_inner, i128* %bigmultshortlong.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 2
  %bigmultshortlong.m_out.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigmultshortlong.m_out.declare_arg = alloca i128, align 8
  store i128 %bigmultshortlong.m_out.read_arg_inner, i128* %bigmultshortlong.m_out.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 3
  %bigmultshortlong.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmultshortlong.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlong.a.read_input_inner, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 4
  %bigmultshortlong.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmultshortlong.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlong.b.read_input_inner, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val6 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val6, [256 x i128]** %prod_val, align 8
  %k2 = alloca i128, align 8
  %k27 = call i128 @fn_intrinsic_utils_init()
  store i128 %k27, i128* %k2, align 4
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly8 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly8, [256 x i128]** %a_poly, align 8
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow9, [256 x [256 x i128]]** %pow, align 8
  %bigmultshortlong.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly10 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly10, [256 x i128]** %out_poly, align 8
  %a_idx = alloca i128, align 8
  %a_idx11 = call i128 @fn_intrinsic_utils_init()
  store i128 %a_idx11, i128* %a_idx, align 4
  %j = alloca i128, align 8
  %j12 = call i128 @fn_intrinsic_utils_init()
  store i128 %j12, i128* %j, align 4
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly13 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly13, [256 x i128]** %b_poly, align 8
  %n = load i128, i128* %bigmultshortlong.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %k14 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %k15 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul = mul i128 2, %k15
  %sub = sub i128 %mul, 1
  %k16 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul17 = mul i128 2, %k16
  %sub18 = sub i128 %mul17, 1
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch82, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i19 = load i128, i128* %i, align 4
  %prod_val20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i19
  store i128 0, i128* %prod_val20, align 4
  %i21 = load i128, i128* %i, align 4
  %k22 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %slt = icmp slt i128 %i21, %k22
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body23

if.false:                                         ; preds = %loop.body
  %i44 = load i128, i128* %i, align 4
  %k45 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %sub46 = sub i128 %i44, %k45
  %add47 = add i128 %sub46, 1
  store i128 %add47, i128* %a_idx, align 4
  br label %loop.body48

loop.body23:                                      ; preds = %loop.latch, %if.true
  %prod_val24 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val24, i128 0, i128 %i25
  %prod_val26 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %a_idx27 = load i128, i128* %a_idx, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx27
  %a29 = load i128, i128* %array_getter28, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %i30 = load i128, i128* %i, align 4
  %a_idx31 = load i128, i128* %a_idx, align 4
  %sub32 = sub i128 %i30, %a_idx31
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub32
  %b34 = load i128, i128* %array_getter33, align 4
  %mul35 = mul i128 %a29, %b34
  %add = add i128 %prod_val26, %mul35
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i37 = load i128, i128* %i, align 4
  %prod_val38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %i37
  store i128 %add, i128* %prod_val38, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body23
  %a_idx39 = load i128, i128* %a_idx, align 4
  %add40 = add i128 %a_idx39, 1
  store i128 %add40, i128* %a_idx, align 4
  %a_idx41 = load i128, i128* %a_idx, align 4
  %i42 = load i128, i128* %i, align 4
  %sle43 = icmp sle i128 %a_idx41, %i42
  br i1 %sle43, label %loop.body23, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body48:                                      ; preds = %loop.latch68, %if.false
  %prod_val49 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val49, i128 0, i128 %i50
  %prod_val52 = load i128, i128* %array_getter51, align 4
  %a53 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %a_idx54 = load i128, i128* %a_idx, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %a53, i128 0, i128 %a_idx54
  %a56 = load i128, i128* %array_getter55, align 4
  %b57 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %i58 = load i128, i128* %i, align 4
  %a_idx59 = load i128, i128* %a_idx, align 4
  %sub60 = sub i128 %i58, %a_idx59
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %b57, i128 0, i128 %sub60
  %b62 = load i128, i128* %array_getter61, align 4
  %mul63 = mul i128 %a56, %b62
  %add64 = add i128 %prod_val52, %mul63
  %ptr_getter65 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i66 = load i128, i128* %i, align 4
  %prod_val67 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter65, i128 0, i128 %i66
  store i128 %add64, i128* %prod_val67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body48
  %a_idx69 = load i128, i128* %a_idx, align 4
  %add70 = add i128 %a_idx69, 1
  store i128 %add70, i128* %a_idx, align 4
  %a_idx71 = load i128, i128* %a_idx, align 4
  %k72 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %slt73 = icmp slt i128 %a_idx71, %k72
  br i1 %slt73, label %loop.body48, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  br label %if.exit

if.exit:                                          ; preds = %loop.exit74, %loop.exit
  %prod_val75 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val75, i128 0, i128 %i76
  %prod_val78 = load i128, i128* %array_getter77, align 4
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %i80 = load i128, i128* %i, align 4
  %out81 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %i80
  store i128 %prod_val78, i128* %out81, align 4
  br label %loop.latch82

loop.latch82:                                     ; preds = %if.exit
  %i83 = load i128, i128* %i, align 4
  %add84 = add i128 %i83, 1
  store i128 %add84, i128* %i, align 4
  %i85 = load i128, i128* %i, align 4
  %k86 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul87 = mul i128 2, %k86
  %sub88 = sub i128 %mul87, 1
  %slt89 = icmp slt i128 %i85, %sub88
  br i1 %slt89, label %loop.body, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch82
  %k91 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul92 = mul i128 2, %k91
  %sub93 = sub i128 %mul92, 1
  store i128 %sub93, i128* %k2, align 4
  %k294 = load i128, i128* %k2, align 4
  %k295 = load i128, i128* %k2, align 4
  %uniform_array96 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array96, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch113, %loop.exit90
  store i128 0, i128* %j, align 4
  br label %loop.body98

loop.body98:                                      ; preds = %loop.latch106, %loop.body97
  %i99 = load i128, i128* %i, align 4
  %j100 = load i128, i128* %j, align 4
  %pow101 = call i128 @fn_intrinsic_utils_powi(i128 %i99, i128 %j100)
  %ptr_getter102 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i103 = load i128, i128* %i, align 4
  %j104 = load i128, i128* %j, align 4
  %pow105 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter102, i128 0, i128 %i103, i128 %j104
  store i128 %pow101, i128* %pow105, align 4
  br label %loop.latch106

loop.latch106:                                    ; preds = %loop.body98
  %j107 = load i128, i128* %j, align 4
  %add108 = add i128 %j107, 1
  store i128 %add108, i128* %j, align 4
  %j109 = load i128, i128* %j, align 4
  %k2110 = load i128, i128* %k2, align 4
  %slt111 = icmp slt i128 %j109, %k2110
  br i1 %slt111, label %loop.body98, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch106
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.exit112
  %i114 = load i128, i128* %i, align 4
  %add115 = add i128 %i114, 1
  store i128 %add115, i128* %i, align 4
  %i116 = load i128, i128* %i, align 4
  %k2117 = load i128, i128* %k2, align 4
  %slt118 = icmp slt i128 %i116, %k2117
  br i1 %slt118, label %loop.body97, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  %k120 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul121 = mul i128 2, %k120
  %sub122 = sub i128 %mul121, 1
  %uniform_array123 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array123, [256 x i128]** %a_poly, align 8
  %k124 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul125 = mul i128 2, %k124
  %sub126 = sub i128 %mul125, 1
  %uniform_array127 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array127, [256 x i128]** %b_poly, align 8
  %k128 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul129 = mul i128 2, %k128
  %sub130 = sub i128 %mul129, 1
  %uniform_array131 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array131, [256 x i128]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch214, %loop.exit119
  %ptr_getter133 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i134 = load i128, i128* %i, align 4
  %out_poly135 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter133, i128 0, i128 %i134
  store i128 0, i128* %out_poly135, align 4
  %ptr_getter136 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i137 = load i128, i128* %i, align 4
  %a_poly138 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter136, i128 0, i128 %i137
  store i128 0, i128* %a_poly138, align 4
  %ptr_getter139 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i140 = load i128, i128* %i, align 4
  %b_poly141 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter139, i128 0, i128 %i140
  store i128 0, i128* %b_poly141, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body142

loop.body142:                                     ; preds = %loop.latch161, %loop.body132
  %out_poly143 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i144 = load i128, i128* %i, align 4
  %array_getter145 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly143, i128 0, i128 %i144
  %out_poly146 = load i128, i128* %array_getter145, align 4
  %out147 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %j148 = load i128, i128* %j, align 4
  %array_getter149 = getelementptr inbounds [256 x i128], [256 x i128]* %out147, i128 0, i128 %j148
  %out150 = load i128, i128* %array_getter149, align 4
  %pow151 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i152 = load i128, i128* %i, align 4
  %j153 = load i128, i128* %j, align 4
  %array_getter154 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow151, i128 0, i128 %i152, i128 %j153
  %pow155 = load i128, i128* %array_getter154, align 4
  %mul156 = mul i128 %out150, %pow155
  %add157 = add i128 %out_poly146, %mul156
  %ptr_getter158 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i159 = load i128, i128* %i, align 4
  %out_poly160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter158, i128 0, i128 %i159
  store i128 %add157, i128* %out_poly160, align 4
  br label %loop.latch161

loop.latch161:                                    ; preds = %loop.body142
  %j162 = load i128, i128* %j, align 4
  %add163 = add i128 %j162, 1
  store i128 %add163, i128* %j, align 4
  %j164 = load i128, i128* %j, align 4
  %k165 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul166 = mul i128 2, %k165
  %sub167 = sub i128 %mul166, 1
  %slt168 = icmp slt i128 %j164, %sub167
  br i1 %slt168, label %loop.body142, label %loop.exit169

loop.exit169:                                     ; preds = %loop.latch161
  store i128 0, i128* %j, align 4
  br label %loop.body170

loop.body170:                                     ; preds = %loop.latch207, %loop.exit169
  %a_poly171 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i172 = load i128, i128* %i, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly171, i128 0, i128 %i172
  %a_poly174 = load i128, i128* %array_getter173, align 4
  %a175 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %j176 = load i128, i128* %j, align 4
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %a175, i128 0, i128 %j176
  %a178 = load i128, i128* %array_getter177, align 4
  %pow179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i180 = load i128, i128* %i, align 4
  %j181 = load i128, i128* %j, align 4
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow179, i128 0, i128 %i180, i128 %j181
  %pow183 = load i128, i128* %array_getter182, align 4
  %mul184 = mul i128 %a178, %pow183
  %add185 = add i128 %a_poly174, %mul184
  %ptr_getter186 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i187 = load i128, i128* %i, align 4
  %a_poly188 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter186, i128 0, i128 %i187
  store i128 %add185, i128* %a_poly188, align 4
  %b_poly189 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i190 = load i128, i128* %i, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly189, i128 0, i128 %i190
  %b_poly192 = load i128, i128* %array_getter191, align 4
  %b193 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %j194 = load i128, i128* %j, align 4
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %b193, i128 0, i128 %j194
  %b196 = load i128, i128* %array_getter195, align 4
  %pow197 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i198 = load i128, i128* %i, align 4
  %j199 = load i128, i128* %j, align 4
  %array_getter200 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow197, i128 0, i128 %i198, i128 %j199
  %pow201 = load i128, i128* %array_getter200, align 4
  %mul202 = mul i128 %b196, %pow201
  %add203 = add i128 %b_poly192, %mul202
  %ptr_getter204 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i205 = load i128, i128* %i, align 4
  %b_poly206 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter204, i128 0, i128 %i205
  store i128 %add203, i128* %b_poly206, align 4
  br label %loop.latch207

loop.latch207:                                    ; preds = %loop.body170
  %j208 = load i128, i128* %j, align 4
  %add209 = add i128 %j208, 1
  store i128 %add209, i128* %j, align 4
  %j210 = load i128, i128* %j, align 4
  %k211 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %slt212 = icmp slt i128 %j210, %k211
  br i1 %slt212, label %loop.body170, label %loop.exit213

loop.exit213:                                     ; preds = %loop.latch207
  br label %loop.latch214

loop.latch214:                                    ; preds = %loop.exit213
  %i215 = load i128, i128* %i, align 4
  %add216 = add i128 %i215, 1
  store i128 %add216, i128* %i, align 4
  %i217 = load i128, i128* %i, align 4
  %k218 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul219 = mul i128 2, %k218
  %sub220 = sub i128 %mul219, 1
  %slt221 = icmp slt i128 %i217, %sub220
  br i1 %slt221, label %loop.body132, label %loop.exit222

loop.exit222:                                     ; preds = %loop.latch214
  store i128 0, i128* %i, align 4
  br label %loop.body223

loop.body223:                                     ; preds = %loop.latch237, %loop.exit222
  %out_poly224 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i225 = load i128, i128* %i, align 4
  %array_getter226 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly224, i128 0, i128 %i225
  %out_poly227 = load i128, i128* %array_getter226, align 4
  %a_poly228 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i229 = load i128, i128* %i, align 4
  %array_getter230 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly228, i128 0, i128 %i229
  %a_poly231 = load i128, i128* %array_getter230, align 4
  %b_poly232 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i233 = load i128, i128* %i, align 4
  %array_getter234 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly232, i128 0, i128 %i233
  %b_poly235 = load i128, i128* %array_getter234, align 4
  %mul236 = mul i128 %a_poly231, %b_poly235
  call void @fn_intrinsic_utils_constraint(i128 %out_poly227, i128 %mul236, i1* @constraint.27)
  br label %loop.latch237

loop.latch237:                                    ; preds = %loop.body223
  %i238 = load i128, i128* %i, align 4
  %add239 = add i128 %i238, 1
  store i128 %add239, i128* %i, align 4
  %i240 = load i128, i128* %i, align 4
  %k241 = load i128, i128* %bigmultshortlong.k.declare_arg, align 4
  %mul242 = mul i128 2, %k241
  %sub243 = sub i128 %mul242, 1
  %slt244 = icmp slt i128 %i240, %sub243
  br i1 %slt244, label %loop.body223, label %loop.exit245

loop.exit245:                                     ; preds = %loop.latch237
  br label %arraydim

arraydim:                                         ; preds = %loop.exit245
  %ptr_cast = bitcast [256 x i128]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub130)
  %ptr_cast246 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast246, i128 %k294, i128 %k295)
  %ptr_cast247 = bitcast [256 x i128]** %bigmultshortlong.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast247, i128 %k14)
  %ptr_cast248 = bitcast [256 x i128]** %bigmultshortlong.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast248, i128 %sub)
  %ptr_cast249 = bitcast [256 x i128]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast249, i128 %sub18)
  %ptr_cast250 = bitcast [256 x i128]** %bigmultshortlong.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast250, i128 %k)
  %ptr_cast251 = bitcast [256 x i128]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast251, i128 %sub122)
  %ptr_cast252 = bitcast [256 x i128]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast252, i128 %sub126)
  br label %exit

exit:                                             ; preds = %arraydim
  %out253 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %bigmultshortlong.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 5
  store [256 x i128]* %out253, [256 x i128]** %bigmultshortlong.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong = alloca %struct_template_circuit_bigmultshortlong, align 8
  %bigmultshortlong.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong.n.write_arg_inner, align 4
  %bigmultshortlong.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong.k.write_arg_inner, align 4
  %bigmultshortlong.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong
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
  %num2bitsneg.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %lc1 = alloca i128, align 8
  %lc13 = call i128 @fn_intrinsic_utils_init()
  store i128 %lc13, i128* %lc1, align 4
  %isZero = alloca %struct_template_circuit_iszero*, align 8
  %neg = alloca i128, align 8
  %neg4 = call i128 @fn_intrinsic_utils_init()
  store i128 %neg4, i128* %neg, align 4
  %n = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  store i128 0, i128* %lc1, align 4
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZero, align 8
  %n5 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %eq = icmp eq i128 %n5, 0
  %n6 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %n6)
  %in = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %sub = sub i128 %pow, %in
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %eq, i128 0, i128 %sub)
  store i128 %utils_switch, i128* %neg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %neg7 = load i128, i128* %neg, align 4
  %i8 = load i128, i128* %i, align 4
  %rshift = lshr i128 %neg7, %i8
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %i9 = load i128, i128* %i, align 4
  %out10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i9
  store i128 %and, i128* %out10, align 4
  %out11 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out11, i128 0, i128 %i12
  %out13 = load i128, i128* %array_getter, align 4
  %out14 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %out14, i128 0, i128 %i15
  %out17 = load i128, i128* %array_getter16, align 4
  %sub18 = sub i128 %out17, 1
  %mul = mul i128 %out13, %sub18
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.28)
  %lc119 = load i128, i128* %lc1, align 4
  %out20 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %out20, i128 0, i128 %i21
  %out23 = load i128, i128* %array_getter22, align 4
  %i24 = load i128, i128* %i, align 4
  %pow25 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %i24)
  %mul26 = mul i128 %out23, %pow25
  %add = add i128 %lc119, %mul26
  store i128 %add, i128* %lc1, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %n30 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %slt = icmp slt i128 %i29, %n30
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in31 = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %isZero32 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero32, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %in31, i1* @constraint.29)
  %ptr_getter34 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter34, i32 0, i32 0
  store i128 %in31, i128* %iszero.in.write_input_outter, align 4
  %lc135 = load i128, i128* %lc1, align 4
  %isZero36 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero36, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter37, align 4
  %n38 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow39 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %n38)
  %mul40 = mul i128 %iszero.out.read_output_outter, %pow39
  %add41 = add i128 %lc135, %mul40
  %n42 = load i128, i128* %num2bitsneg.n.declare_arg, align 4
  %pow43 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %n42)
  %in44 = load i128, i128* %num2bitsneg.in.declare_input, align 4
  %sub45 = sub i128 %pow43, %in44
  call void @fn_intrinsic_utils_constraint(i128 %add41, i128 %sub45, i1* @constraint.30)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %num2bitsneg.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %n)
  br label %exit

exit:                                             ; preds = %arraydim
  %out46 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [256 x i128]* %out46, [256 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
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
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
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
  %j2 = alloca i128, align 8
  %j21 = call i128 @fn_intrinsic_utils_init()
  store i128 %j21, i128* %j2, align 4
  %i2 = alloca i128, align 8
  %i22 = call i128 @fn_intrinsic_utils_init()
  store i128 %i22, i128* %i2, align 4
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split3 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split3, [256 x [256 x [256 x i128]]]** %split, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %i1 = alloca i128, align 8
  %i15 = call i128 @fn_intrinsic_utils_init()
  store i128 %i15, i128* %i1, align 4
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry6, [256 x [256 x i128]]** %carry, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry7, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j = alloca i128, align 8
  %j8 = call i128 @fn_intrinsic_utils_init()
  store i128 %j8, i128* %j, align 4
  %j1 = alloca i128, align 8
  %j19 = call i128 @fn_intrinsic_utils_init()
  store i128 %j19, i128* %j1, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val10, [256 x [256 x i128]]** %prod_val, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out11, [256 x [256 x i128]]** %out, align 8
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

define void @fn_template_init_modsum(%struct_template_circuit_modsum* %0) {
entry:
  %ModSum = alloca %struct_template_circuit_modsum*, align 8
  store %struct_template_circuit_modsum* %0, %struct_template_circuit_modsum** %ModSum, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 0
  %modsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modsum.n.declare_arg = alloca i128, align 8
  store i128 %modsum.n.read_arg_inner, i128* %modsum.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 1
  %modsum.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modsum.a.declare_input = alloca i128, align 8
  store i128 %modsum.a.read_input_inner, i128* %modsum.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 2
  %modsum.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modsum.b.declare_input = alloca i128, align 8
  store i128 %modsum.b.read_input_inner, i128* %modsum.b.declare_input, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %modsum.sum.declare_output = alloca i128, align 8
  %sum = call i128 @fn_intrinsic_utils_init()
  store i128 %sum, i128* %modsum.sum.declare_output, align 4
  %modsum.carry.declare_output = alloca i128, align 8
  %carry = call i128 @fn_intrinsic_utils_init()
  store i128 %carry, i128* %modsum.carry.declare_output, align 4
  %n = load i128, i128* %modsum.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n3 = load i128, i128* %modsum.n.declare_arg, align 4
  %add = add i128 %n3, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %modsum.a.declare_input, align 4
  %b = load i128, i128* %modsum.b.declare_input, align 4
  %add4 = add i128 %a, %b
  %n2b5 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b5, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add4, i1* @constraint.31)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add4, i128* %num2bits.in.write_input_outter, align 4
  %n2b7 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b7, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %n9 = load i128, i128* %modsum.n.declare_arg, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %n9
  %n2b10 = load i128, i128* %array_getter, align 4
  %carry11 = load i128, i128* %modsum.carry.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry11, i128 %n2b10, i1* @constraint.32)
  %ptr_getter12 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %ModSum, align 8
  %modsum.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter12, i32 0, i32 4
  store i128 %n2b10, i128* %modsum.carry.write_output_inner, align 4
  %ModSum13 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %ModSum, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ModSum13, i32 0, i32 4
  %modsum.carry.read_output_inner = load i128, i128* %struct_getter14, align 4
  store i128 %modsum.carry.read_output_inner, i128* %modsum.carry.declare_output, align 4
  %a15 = load i128, i128* %modsum.a.declare_input, align 4
  %b16 = load i128, i128* %modsum.b.declare_input, align 4
  %add17 = add i128 %a15, %b16
  %carry18 = load i128, i128* %modsum.carry.declare_output, align 4
  %n19 = load i128, i128* %modsum.n.declare_arg, align 4
  %lshift = shl i128 1, %n19
  %mul = mul i128 %carry18, %lshift
  %sub = sub i128 %add17, %mul
  %sum20 = load i128, i128* %modsum.sum.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum20, i128 %sub, i1* @constraint.33)
  %ptr_getter21 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %ModSum, align 8
  %modsum.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter21, i32 0, i32 3
  store i128 %sub, i128* %modsum.sum.write_output_inner, align 4
  %ModSum22 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %ModSum, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ModSum22, i32 0, i32 3
  %modsum.sum.read_output_inner = load i128, i128* %struct_getter23, align 4
  store i128 %modsum.sum.read_output_inner, i128* %modsum.sum.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %sum24 = load i128, i128* %modsum.sum.declare_output, align 4
  %modsum.sum.write_output_inner25 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %sum24, i128* %modsum.sum.write_output_inner25, align 4
  %carry26 = load i128, i128* %modsum.carry.declare_output, align 4
  %modsum.carry.write_output_inner27 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %carry26, i128* %modsum.carry.write_output_inner27, align 4
  ret void
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
  %struct_template_circuit_modsum = alloca %struct_template_circuit_modsum, align 8
  %modsum.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %struct_template_circuit_modsum, i32 0, i32 0
  store i128 %0, i128* %modsum.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsum* %struct_template_circuit_modsum
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %IsEqual = alloca %struct_template_circuit_isequal*, align 8
  store %struct_template_circuit_isequal* %0, %struct_template_circuit_isequal** %IsEqual, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %isequal.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %isequal.in.read_input_inner, [256 x i128]** %isequal.in.declare_input, align 8
  %isequal.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %isequal.out.declare_output, align 4
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %isequal.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [256 x i128]*, [256 x i128]** %isequal.in.declare_input, align 8
  %array_getter3 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %isz5 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz5, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.34)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %isz7 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz7, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  %out9 = load i128, i128* %isequal.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out9, i128 %iszero.out.read_output_outter, i1* @constraint.35)
  %ptr_getter10 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %IsEqual, align 8
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %ptr_getter10, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %IsEqual11 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %IsEqual, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %IsEqual11, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  store i128 %isequal.out.read_output_inner, i128* %isequal.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %isequal.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
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

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
  %NAND = alloca %struct_template_circuit_nand*, align 8
  store %struct_template_circuit_nand* %0, %struct_template_circuit_nand** %NAND, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 0
  %nand.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %nand.a.declare_input = alloca i128, align 8
  store i128 %nand.a.read_input_inner, i128* %nand.a.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 1
  %nand.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %nand.b.declare_input = alloca i128, align 8
  store i128 %nand.b.read_input_inner, i128* %nand.b.declare_input, align 4
  %nand.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %nand.out.declare_output, align 4
  %a = load i128, i128* %nand.a.declare_input, align 4
  %b = load i128, i128* %nand.b.declare_input, align 4
  %mul = mul i128 %a, %b
  %sub = sub i128 1, %mul
  %out2 = load i128, i128* %nand.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out2, i128 %sub, i1* @constraint.36)
  %ptr_getter = load %struct_template_circuit_nand*, %struct_template_circuit_nand** %NAND, align 8
  %nand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %ptr_getter, i32 0, i32 2
  store i128 %sub, i128* %nand.out.write_output_inner, align 4
  %NAND3 = load %struct_template_circuit_nand*, %struct_template_circuit_nand** %NAND, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %NAND3, i32 0, i32 2
  %nand.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  store i128 %nand.out.read_output_inner, i128* %nand.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out5 = load i128, i128* %nand.out.declare_output, align 4
  %nand.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %out5, i128* %nand.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_nand* @fn_template_build_nand() {
entry:
  %struct_template_circuit_nand = alloca %struct_template_circuit_nand, align 8
  ret %struct_template_circuit_nand* %struct_template_circuit_nand
}

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %NOT = alloca %struct_template_circuit_not*, align 8
  store %struct_template_circuit_not* %0, %struct_template_circuit_not** %NOT, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %not.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %not.in.declare_input = alloca i128, align 8
  store i128 %not.in.read_input_inner, i128* %not.in.declare_input, align 4
  %not.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %not.out.declare_output, align 4
  %in = load i128, i128* %not.in.declare_input, align 4
  %add = add i128 1, %in
  %in1 = load i128, i128* %not.in.declare_input, align 4
  %mul = mul i128 2, %in1
  %sub = sub i128 %add, %mul
  %out2 = load i128, i128* %not.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out2, i128 %sub, i1* @constraint.37)
  %ptr_getter = load %struct_template_circuit_not*, %struct_template_circuit_not** %NOT, align 8
  %not.out.write_output_inner = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %ptr_getter, i32 0, i32 1
  store i128 %sub, i128* %not.out.write_output_inner, align 4
  %NOT3 = load %struct_template_circuit_not*, %struct_template_circuit_not** %NOT, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %NOT3, i32 0, i32 1
  %not.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  store i128 %not.out.read_output_inner, i128* %not.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out5 = load i128, i128* %not.out.declare_output, align 4
  %not.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %out5, i128* %not.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_not* @fn_template_build_not() {
entry:
  %struct_template_circuit_not = alloca %struct_template_circuit_not, align 8
  ret %struct_template_circuit_not* %struct_template_circuit_not
}

define void @fn_template_init_bigiszero(%struct_template_circuit_bigiszero* %0) {
entry:
  %BigIsZero = alloca %struct_template_circuit_bigiszero*, align 8
  store %struct_template_circuit_bigiszero* %0, %struct_template_circuit_bigiszero** %BigIsZero, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 0
  %bigiszero.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigiszero.k.declare_arg = alloca i128, align 8
  store i128 %bigiszero.k.read_arg_inner, i128* %bigiszero.k.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 1
  %bigiszero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bigiszero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigiszero.in.read_input_inner, [256 x i128]** %bigiszero.in.declare_input, align 8
  %total = alloca i128, align 8
  %total2 = call i128 @fn_intrinsic_utils_init()
  store i128 %total2, i128* %total, align 4
  %isZeros = alloca [256 x %struct_template_circuit_iszero*]*, align 8
  %isZeros3 = alloca [256 x %struct_template_circuit_iszero*], align 8
  store [256 x %struct_template_circuit_iszero*]* %isZeros3, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %checkZero = alloca %struct_template_circuit_iszero*, align 8
  %bigiszero.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %bigiszero.out.declare_output, align 4
  %k = load i128, i128* %bigiszero.k.declare_arg, align 4
  %k5 = load i128, i128* %bigiszero.k.declare_arg, align 4
  %k6 = load i128, i128* %bigiszero.k.declare_arg, align 4
  store i128 %k6, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %ptr_getter = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i7 = load i128, i128* %i, align 4
  %isZeros8 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter, i128 0, i128 %i7
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZeros8, align 8
  %in = load [256 x i128]*, [256 x i128]** %bigiszero.in.declare_input, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i9
  %in10 = load i128, i128* %array_getter, align 4
  %isZeros11 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros11, i128 0, i128 %i12
  %isZeros14 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter13, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros14, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %in10, i1* @constraint.38)
  %ptr_getter16 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter16, i128 0, i128 %i17
  %isZeros19 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter18, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros19, i32 0, i32 0
  store i128 %in10, i128* %iszero.in.write_input_outter, align 4
  %total20 = load i128, i128* %total, align 4
  %isZeros21 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros21, i128 0, i128 %i22
  %isZeros24 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter23, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros24, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter25, align 4
  %sub = sub i128 %total20, %iszero.out.read_output_outter
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i26 = load i128, i128* %i, align 4
  %add = add i128 %i26, 1
  store i128 %add, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %k28 = load i128, i128* %bigiszero.k.declare_arg, align 4
  %slt = icmp slt i128 %i27, %k28
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call29 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call29, %struct_template_circuit_iszero** %checkZero, align 8
  %total30 = load i128, i128* %total, align 4
  %checkZero31 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero31, i32 0, i32 0
  %iszero.in.read_input_outter33 = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter33, i128 %total30, i1* @constraint.39)
  %ptr_getter34 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %iszero.in.write_input_outter35 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter34, i32 0, i32 0
  store i128 %total30, i128* %iszero.in.write_input_outter35, align 4
  %checkZero36 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero36, i32 0, i32 2
  %iszero.out.read_output_outter38 = load i128, i128* %struct_getter37, align 4
  %out39 = load i128, i128* %bigiszero.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out39, i128 %iszero.out.read_output_outter38, i1* @constraint.40)
  %ptr_getter40 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %BigIsZero, align 8
  %bigiszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %ptr_getter40, i32 0, i32 2
  store i128 %iszero.out.read_output_outter38, i128* %bigiszero.out.write_output_inner, align 4
  %BigIsZero41 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %BigIsZero, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %BigIsZero41, i32 0, i32 2
  %bigiszero.out.read_output_inner = load i128, i128* %struct_getter42, align 4
  store i128 %bigiszero.out.read_output_inner, i128* %bigiszero.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x %struct_template_circuit_iszero*]** %isZeros to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k5)
  %ptr_cast43 = bitcast [256 x i128]** %bigiszero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast43, i128 %k)
  br label %exit

exit:                                             ; preds = %arraydim
  %out44 = load i128, i128* %bigiszero.out.declare_output, align 4
  %bigiszero.out.write_output_inner45 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %out44, i128* %bigiszero.out.write_output_inner45, align 4
  ret void
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
  %struct_template_circuit_bigiszero = alloca %struct_template_circuit_bigiszero, align 8
  %bigiszero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero, i32 0, i32 0
  store i128 %0, i128* %bigiszero.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero
}

define void @fn_template_init_multiand(%struct_template_circuit_multiand* %0) {
entry:
  %MultiAND = alloca %struct_template_circuit_multiand*, align 8
  store %struct_template_circuit_multiand* %0, %struct_template_circuit_multiand** %MultiAND, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 0
  %multiand.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %multiand.n.declare_arg = alloca i128, align 8
  store i128 %multiand.n.read_arg_inner, i128* %multiand.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 1
  %multiand.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %multiand.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %multiand.in.read_input_inner, [256 x i128]** %multiand.in.declare_input, align 8
  %multiand.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %multiand.out.declare_output, align 4
  %ands = alloca [256 x %struct_template_circuit_multiand*]*, align 8
  %ands2 = alloca [256 x %struct_template_circuit_multiand*], align 8
  store [256 x %struct_template_circuit_multiand*]* %ands2, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %and1 = alloca %struct_template_circuit_and*, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  store i128 %i3, i128* %i, align 4
  %n1 = alloca i128, align 8
  %n14 = call i128 @fn_intrinsic_utils_init()
  store i128 %n14, i128* %n1, align 4
  %n2 = alloca i128, align 8
  %n25 = call i128 @fn_intrinsic_utils_init()
  store i128 %n25, i128* %n2, align 4
  %and2 = alloca %struct_template_circuit_and*, align 8
  %n = load i128, i128* %multiand.n.declare_arg, align 4
  %n6 = load i128, i128* %multiand.n.declare_arg, align 4
  %eq = icmp eq i128 %n6, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %in = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in7 = load i128, i128* %array_getter, align 4
  %out8 = load i128, i128* %multiand.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out8, i128 %in7, i1* @constraint.41)
  %ptr_getter = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %multiand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_getter, i32 0, i32 2
  store i128 %in7, i128* %multiand.out.write_output_inner, align 4
  %MultiAND9 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %MultiAND9, i32 0, i32 2
  %multiand.out.read_output_inner = load i128, i128* %struct_getter10, align 4
  store i128 %multiand.out.read_output_inner, i128* %multiand.out.declare_output, align 4
  br label %if.exit133

if.false:                                         ; preds = %entry
  %n13 = load i128, i128* %multiand.n.declare_arg, align 4
  %eq14 = icmp eq i128 %n13, 2
  br i1 %eq14, label %if.true11, label %if.false12

if.true11:                                        ; preds = %if.false
  %call = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call, %struct_template_circuit_and** %and1, align 8
  %in15 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %in15, i128 0, i128 0
  %in17 = load i128, i128* %array_getter16, align 4
  %and118 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and118, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter, i128 %in17, i1* @constraint.42)
  %ptr_getter20 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter20, i32 0, i32 0
  store i128 %in17, i128* %and.a.write_input_outter, align 4
  %in21 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %in21, i128 0, i128 1
  %in23 = load i128, i128* %array_getter22, align 4
  %and124 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and124, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter, i128 %in23, i1* @constraint.43)
  %ptr_getter26 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter26, i32 0, i32 1
  store i128 %in23, i128* %and.b.write_input_outter, align 4
  %and127 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and127, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter28, align 4
  %out29 = load i128, i128* %multiand.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out29, i128 %and.out.read_output_outter, i1* @constraint.44)
  %ptr_getter30 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %multiand.out.write_output_inner31 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_getter30, i32 0, i32 2
  store i128 %and.out.read_output_outter, i128* %multiand.out.write_output_inner31, align 4
  %MultiAND32 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %MultiAND32, i32 0, i32 2
  %multiand.out.read_output_inner34 = load i128, i128* %struct_getter33, align 4
  store i128 %multiand.out.read_output_inner34, i128* %multiand.out.declare_output, align 4
  br label %if.exit

if.false12:                                       ; preds = %if.false
  %call35 = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call35, %struct_template_circuit_and** %and2, align 8
  %n36 = load i128, i128* %multiand.n.declare_arg, align 4
  %sdiv = sdiv i128 %n36, 2
  store i128 %sdiv, i128* %n1, align 4
  %n37 = load i128, i128* %multiand.n.declare_arg, align 4
  %n38 = load i128, i128* %multiand.n.declare_arg, align 4
  %sdiv39 = sdiv i128 %n38, 2
  %sub = sub i128 %n37, %sdiv39
  store i128 %sub, i128* %n2, align 4
  %n140 = load i128, i128* %n1, align 4
  %call41 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n140)
  %ptr_getter42 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands43 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter42, i128 0, i128 0
  store %struct_template_circuit_multiand* %call41, %struct_template_circuit_multiand** %ands43, align 8
  %n244 = load i128, i128* %n2, align 4
  %call45 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n244)
  %ptr_getter46 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands47 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter46, i128 0, i128 1
  store %struct_template_circuit_multiand* %call45, %struct_template_circuit_multiand** %ands47, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false12
  %in48 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %i49 = load i128, i128* %i, align 4
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %in48, i128 0, i128 %i49
  %in51 = load i128, i128* %array_getter50, align 4
  %ands52 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands52, i128 0, i128 0
  %ands54 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter53, align 8
  %ptr_cast = bitcast %struct_template_circuit_multiand* %ands54 to %struct_template_circuit_multiand*
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast, i32 0, i32 1
  %multiand.in.read_input_inner56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner56, i128 0, i128 %i57
  %ands59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ands59, i128 %in51, i1* @constraint.45)
  %ptr_getter60 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter61 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter60, i128 0, i128 0
  %ands62 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter61, align 8
  %ptr_cast63 = bitcast %struct_template_circuit_multiand* %ands62 to %struct_template_circuit_multiand*
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast63, i32 0, i32 1
  %multiand.in.read_input_inner65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %ands67 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner65, i128 0, i128 %i66
  store i128 %in51, i128* %ands67, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i68 = load i128, i128* %i, align 4
  %add = add i128 %i68, 1
  store i128 %add, i128* %i, align 4
  %i69 = load i128, i128* %i, align 4
  %n170 = load i128, i128* %n1, align 4
  %slt = icmp slt i128 %i69, %n170
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch95, %loop.exit
  %in72 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %n173 = load i128, i128* %n1, align 4
  %i74 = load i128, i128* %i, align 4
  %add75 = add i128 %n173, %i74
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %in72, i128 0, i128 %add75
  %in77 = load i128, i128* %array_getter76, align 4
  %ands78 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands78, i128 0, i128 1
  %ands80 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter79, align 8
  %ptr_cast81 = bitcast %struct_template_circuit_multiand* %ands80 to %struct_template_circuit_multiand*
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast81, i32 0, i32 1
  %multiand.in.read_input_inner83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner83, i128 0, i128 %i84
  %ands86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ands86, i128 %in77, i1* @constraint.46)
  %ptr_getter87 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter88 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter87, i128 0, i128 1
  %ands89 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter88, align 8
  %ptr_cast90 = bitcast %struct_template_circuit_multiand* %ands89 to %struct_template_circuit_multiand*
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast90, i32 0, i32 1
  %multiand.in.read_input_inner92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %i93 = load i128, i128* %i, align 4
  %ands94 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner92, i128 0, i128 %i93
  store i128 %in77, i128* %ands94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body71
  %i96 = load i128, i128* %i, align 4
  %add97 = add i128 %i96, 1
  store i128 %add97, i128* %i, align 4
  %i98 = load i128, i128* %i, align 4
  %n299 = load i128, i128* %n2, align 4
  %slt100 = icmp slt i128 %i98, %n299
  br i1 %slt100, label %loop.body71, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch95
  %ands102 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter103 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands102, i128 0, i128 0
  %ands104 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter103, align 8
  %ptr_cast105 = bitcast %struct_template_circuit_multiand* %ands104 to %struct_template_circuit_multiand*
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast105, i32 0, i32 2
  %multiand.out.read_output_inner107 = load i128, i128* %struct_getter106, align 4
  %and2108 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2108, i32 0, i32 0
  %and.a.read_input_outter110 = load i128, i128* %struct_getter109, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter110, i128 %multiand.out.read_output_inner107, i1* @constraint.47)
  %ptr_getter111 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %and.a.write_input_outter112 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter111, i32 0, i32 0
  store i128 %multiand.out.read_output_inner107, i128* %and.a.write_input_outter112, align 4
  %ands113 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands113, i128 0, i128 1
  %ands115 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter114, align 8
  %ptr_cast116 = bitcast %struct_template_circuit_multiand* %ands115 to %struct_template_circuit_multiand*
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast116, i32 0, i32 2
  %multiand.out.read_output_inner118 = load i128, i128* %struct_getter117, align 4
  %and2119 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2119, i32 0, i32 1
  %and.b.read_input_outter121 = load i128, i128* %struct_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter121, i128 %multiand.out.read_output_inner118, i1* @constraint.48)
  %ptr_getter122 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %and.b.write_input_outter123 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter122, i32 0, i32 1
  store i128 %multiand.out.read_output_inner118, i128* %and.b.write_input_outter123, align 4
  %and2124 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter125 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2124, i32 0, i32 2
  %and.out.read_output_outter126 = load i128, i128* %struct_getter125, align 4
  %out127 = load i128, i128* %multiand.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out127, i128 %and.out.read_output_outter126, i1* @constraint.49)
  %ptr_getter128 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %multiand.out.write_output_inner129 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_getter128, i32 0, i32 2
  store i128 %and.out.read_output_outter126, i128* %multiand.out.write_output_inner129, align 4
  %MultiAND130 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %MultiAND, align 8
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %MultiAND130, i32 0, i32 2
  %multiand.out.read_output_inner132 = load i128, i128* %struct_getter131, align 4
  store i128 %multiand.out.read_output_inner132, i128* %multiand.out.declare_output, align 4
  br label %if.exit

if.exit:                                          ; preds = %loop.exit101, %if.true11
  br label %if.exit133

if.exit133:                                       ; preds = %if.exit, %if.true
  br label %arraydim

arraydim:                                         ; preds = %if.exit133
  %ptr_cast134 = bitcast [256 x %struct_template_circuit_multiand*]** %ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast134, i128 2)
  %ptr_cast135 = bitcast [256 x i128]** %multiand.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast135, i128 %n)
  br label %exit

exit:                                             ; preds = %arraydim
  %out136 = load i128, i128* %multiand.out.declare_output, align 4
  %multiand.out.write_output_inner137 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %out136, i128* %multiand.out.write_output_inner137, align 4
  ret void
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
  %struct_template_circuit_multiand = alloca %struct_template_circuit_multiand, align 8
  %multiand.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %struct_template_circuit_multiand, i32 0, i32 0
  store i128 %0, i128* %multiand.n.write_arg_inner, align 4
  ret %struct_template_circuit_multiand* %struct_template_circuit_multiand
}

define void @fn_template_init_modsub(%struct_template_circuit_modsub* %0) {
entry:
  %ModSub = alloca %struct_template_circuit_modsub*, align 8
  store %struct_template_circuit_modsub* %0, %struct_template_circuit_modsub** %ModSub, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 0
  %modsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modsub.n.declare_arg = alloca i128, align 8
  store i128 %modsub.n.read_arg_inner, i128* %modsub.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 1
  %modsub.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modsub.a.declare_input = alloca i128, align 8
  store i128 %modsub.a.read_input_inner, i128* %modsub.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 2
  %modsub.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modsub.b.declare_input = alloca i128, align 8
  store i128 %modsub.b.read_input_inner, i128* %modsub.b.declare_input, align 4
  %modsub.borrow.declare_output = alloca i128, align 8
  %borrow = call i128 @fn_intrinsic_utils_init()
  store i128 %borrow, i128* %modsub.borrow.declare_output, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %modsub.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %modsub.out.declare_output, align 4
  %n = load i128, i128* %modsub.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n3 = load i128, i128* %modsub.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n3)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a = load i128, i128* %modsub.a.declare_input, align 4
  %lt4 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt4, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %a, i1* @constraint.50)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %a, i128* %lt9, align 4
  %b = load i128, i128* %modsub.b.declare_input, align 4
  %lt10 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt10, i32 0, i32 1
  %lessthan.in.read_input_outter12 = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter12, i128 0, i128 1
  %lt14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt14, i128 %b, i1* @constraint.51)
  %ptr_getter15 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter15, i32 0, i32 1
  %lessthan.in.read_input_outter17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter17, i128 0, i128 1
  store i128 %b, i128* %lt18, align 4
  %lt19 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt19, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter20, align 4
  %borrow21 = load i128, i128* %modsub.borrow.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %borrow21, i128 %lessthan.out.read_output_outter, i1* @constraint.52)
  %ptr_getter22 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %ModSub, align 8
  %modsub.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter22, i32 0, i32 4
  store i128 %lessthan.out.read_output_outter, i128* %modsub.borrow.write_output_inner, align 4
  %ModSub23 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %ModSub, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ModSub23, i32 0, i32 4
  %modsub.borrow.read_output_inner = load i128, i128* %struct_getter24, align 4
  store i128 %modsub.borrow.read_output_inner, i128* %modsub.borrow.declare_output, align 4
  %borrow25 = load i128, i128* %modsub.borrow.declare_output, align 4
  %n26 = load i128, i128* %modsub.n.declare_arg, align 4
  %lshift = shl i128 1, %n26
  %mul = mul i128 %borrow25, %lshift
  %a27 = load i128, i128* %modsub.a.declare_input, align 4
  %add = add i128 %mul, %a27
  %b28 = load i128, i128* %modsub.b.declare_input, align 4
  %sub = sub i128 %add, %b28
  %out29 = load i128, i128* %modsub.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out29, i128 %sub, i1* @constraint.53)
  %ptr_getter30 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %ModSub, align 8
  %modsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter30, i32 0, i32 3
  store i128 %sub, i128* %modsub.out.write_output_inner, align 4
  %ModSub31 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %ModSub, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ModSub31, i32 0, i32 3
  %modsub.out.read_output_inner = load i128, i128* %struct_getter32, align 4
  store i128 %modsub.out.read_output_inner, i128* %modsub.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out33 = load i128, i128* %modsub.out.declare_output, align 4
  %modsub.out.write_output_inner34 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %out33, i128* %modsub.out.write_output_inner34, align 4
  %borrow35 = load i128, i128* %modsub.borrow.declare_output, align 4
  %modsub.borrow.write_output_inner36 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %borrow35, i128* %modsub.borrow.write_output_inner36, align 4
  ret void
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
  %struct_template_circuit_modsub = alloca %struct_template_circuit_modsub, align 8
  %modsub.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %struct_template_circuit_modsub, i32 0, i32 0
  store i128 %0, i128* %modsub.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsub* %struct_template_circuit_modsub
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

define void @fn_template_init_nor(%struct_template_circuit_nor* %0) {
entry:
  %NOR = alloca %struct_template_circuit_nor*, align 8
  store %struct_template_circuit_nor* %0, %struct_template_circuit_nor** %NOR, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 0
  %nor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %nor.a.declare_input = alloca i128, align 8
  store i128 %nor.a.read_input_inner, i128* %nor.a.declare_input, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 1
  %nor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %nor.b.declare_input = alloca i128, align 8
  store i128 %nor.b.read_input_inner, i128* %nor.b.declare_input, align 4
  %nor.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %nor.out.declare_output, align 4
  %a = load i128, i128* %nor.a.declare_input, align 4
  %b = load i128, i128* %nor.b.declare_input, align 4
  %mul = mul i128 %a, %b
  %add = add i128 %mul, 1
  %a2 = load i128, i128* %nor.a.declare_input, align 4
  %sub = sub i128 %add, %a2
  %b3 = load i128, i128* %nor.b.declare_input, align 4
  %sub4 = sub i128 %sub, %b3
  %out5 = load i128, i128* %nor.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out5, i128 %sub4, i1* @constraint.54)
  %ptr_getter = load %struct_template_circuit_nor*, %struct_template_circuit_nor** %NOR, align 8
  %nor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %ptr_getter, i32 0, i32 2
  store i128 %sub4, i128* %nor.out.write_output_inner, align 4
  %NOR6 = load %struct_template_circuit_nor*, %struct_template_circuit_nor** %NOR, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %NOR6, i32 0, i32 2
  %nor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  store i128 %nor.out.read_output_inner, i128* %nor.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %out8 = load i128, i128* %nor.out.declare_output, align 4
  %nor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %out8, i128* %nor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_nor* @fn_template_build_nor() {
entry:
  %struct_template_circuit_nor = alloca %struct_template_circuit_nor, align 8
  ret %struct_template_circuit_nor* %struct_template_circuit_nor
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

define void @fn_template_init_splitthree(%struct_template_circuit_splitthree* %0) {
entry:
  %SplitThree = alloca %struct_template_circuit_splitthree*, align 8
  store %struct_template_circuit_splitthree* %0, %struct_template_circuit_splitthree** %SplitThree, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 0
  %splitthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %splitthree.n.declare_arg = alloca i128, align 8
  store i128 %splitthree.n.read_arg_inner, i128* %splitthree.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 1
  %splitthree.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %splitthree.m.declare_arg = alloca i128, align 8
  store i128 %splitthree.m.read_arg_inner, i128* %splitthree.m.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 2
  %splitthree.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %splitthree.k.declare_arg = alloca i128, align 8
  store i128 %splitthree.k.read_arg_inner, i128* %splitthree.k.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 3
  %splitthree.in.read_input_inner = load i128, i128* %struct_getter3, align 4
  %splitthree.in.declare_input = alloca i128, align 8
  store i128 %splitthree.in.read_input_inner, i128* %splitthree.in.declare_input, align 4
  %n2b_big = alloca %struct_template_circuit_num2bits*, align 8
  %splitthree.medium.declare_output = alloca i128, align 8
  %medium = call i128 @fn_intrinsic_utils_init()
  store i128 %medium, i128* %splitthree.medium.declare_output, align 4
  %n2b_small = alloca %struct_template_circuit_num2bits*, align 8
  %splitthree.big.declare_output = alloca i128, align 8
  %big = call i128 @fn_intrinsic_utils_init()
  store i128 %big, i128* %splitthree.big.declare_output, align 4
  %splitthree.small.declare_output = alloca i128, align 8
  %small = call i128 @fn_intrinsic_utils_init()
  store i128 %small, i128* %splitthree.small.declare_output, align 4
  %n2b_medium = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %splitthree.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %in = load i128, i128* %splitthree.in.declare_input, align 4
  %n4 = load i128, i128* %splitthree.n.declare_arg, align 4
  %lshift = shl i128 1, %n4
  %mod = srem i128 %in, %lshift
  %ptr_getter = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %splitthree.small.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %ptr_getter, i32 0, i32 4
  store i128 %mod, i128* %splitthree.small.write_output_inner, align 4
  %SplitThree5 = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %SplitThree5, i32 0, i32 4
  %splitthree.small.read_output_inner = load i128, i128* %struct_getter6, align 4
  store i128 %splitthree.small.read_output_inner, i128* %splitthree.small.declare_output, align 4
  %in7 = load i128, i128* %splitthree.in.declare_input, align 4
  %n8 = load i128, i128* %splitthree.n.declare_arg, align 4
  %lshift9 = shl i128 1, %n8
  %sdiv = sdiv i128 %in7, %lshift9
  %m = load i128, i128* %splitthree.m.declare_arg, align 4
  %lshift10 = shl i128 1, %m
  %mod11 = srem i128 %sdiv, %lshift10
  %ptr_getter12 = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %splitthree.medium.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %ptr_getter12, i32 0, i32 5
  store i128 %mod11, i128* %splitthree.medium.write_output_inner, align 4
  %SplitThree13 = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %SplitThree13, i32 0, i32 5
  %splitthree.medium.read_output_inner = load i128, i128* %struct_getter14, align 4
  store i128 %splitthree.medium.read_output_inner, i128* %splitthree.medium.declare_output, align 4
  %in15 = load i128, i128* %splitthree.in.declare_input, align 4
  %n16 = load i128, i128* %splitthree.n.declare_arg, align 4
  %m17 = load i128, i128* %splitthree.m.declare_arg, align 4
  %add = add i128 %n16, %m17
  %lshift18 = shl i128 1, %add
  %sdiv19 = sdiv i128 %in15, %lshift18
  %ptr_getter20 = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %splitthree.big.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %ptr_getter20, i32 0, i32 6
  store i128 %sdiv19, i128* %splitthree.big.write_output_inner, align 4
  %SplitThree21 = load %struct_template_circuit_splitthree*, %struct_template_circuit_splitthree** %SplitThree, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %SplitThree21, i32 0, i32 6
  %splitthree.big.read_output_inner = load i128, i128* %struct_getter22, align 4
  store i128 %splitthree.big.read_output_inner, i128* %splitthree.big.declare_output, align 4
  %n23 = load i128, i128* %splitthree.n.declare_arg, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n23)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b_small, align 8
  %small24 = load i128, i128* %splitthree.small.declare_output, align 4
  %n2b_small25 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small25, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %small24, i1* @constraint.55)
  %ptr_getter27 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter27, i32 0, i32 1
  store i128 %small24, i128* %num2bits.in.write_input_outter, align 4
  %m28 = load i128, i128* %splitthree.m.declare_arg, align 4
  %call29 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m28)
  store %struct_template_circuit_num2bits* %call29, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %medium30 = load i128, i128* %splitthree.medium.declare_output, align 4
  %n2b_medium31 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_medium31, i32 0, i32 1
  %num2bits.in.read_input_outter33 = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter33, i128 %medium30, i1* @constraint.56)
  %ptr_getter34 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %num2bits.in.write_input_outter35 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter34, i32 0, i32 1
  store i128 %medium30, i128* %num2bits.in.write_input_outter35, align 4
  %k = load i128, i128* %splitthree.k.declare_arg, align 4
  %call36 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %k)
  store %struct_template_circuit_num2bits* %call36, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big37 = load i128, i128* %splitthree.big.declare_output, align 4
  %n2b_big38 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big38, i32 0, i32 1
  %num2bits.in.read_input_outter40 = load i128, i128* %struct_getter39, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter40, i128 %big37, i1* @constraint.57)
  %ptr_getter41 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %num2bits.in.write_input_outter42 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter41, i32 0, i32 1
  store i128 %big37, i128* %num2bits.in.write_input_outter42, align 4
  %in43 = load i128, i128* %splitthree.in.declare_input, align 4
  %small44 = load i128, i128* %splitthree.small.declare_output, align 4
  %medium45 = load i128, i128* %splitthree.medium.declare_output, align 4
  %n46 = load i128, i128* %splitthree.n.declare_arg, align 4
  %lshift47 = shl i128 1, %n46
  %mul = mul i128 %medium45, %lshift47
  %add48 = add i128 %small44, %mul
  %big49 = load i128, i128* %splitthree.big.declare_output, align 4
  %n50 = load i128, i128* %splitthree.n.declare_arg, align 4
  %m51 = load i128, i128* %splitthree.m.declare_arg, align 4
  %add52 = add i128 %n50, %m51
  %lshift53 = shl i128 1, %add52
  %mul54 = mul i128 %big49, %lshift53
  %add55 = add i128 %add48, %mul54
  call void @fn_intrinsic_utils_constraint(i128 %in43, i128 %add55, i1* @constraint.58)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %small56 = load i128, i128* %splitthree.small.declare_output, align 4
  %splitthree.small.write_output_inner57 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %small56, i128* %splitthree.small.write_output_inner57, align 4
  %medium58 = load i128, i128* %splitthree.medium.declare_output, align 4
  %splitthree.medium.write_output_inner59 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %medium58, i128* %splitthree.medium.write_output_inner59, align 4
  %big60 = load i128, i128* %splitthree.big.declare_output, align 4
  %splitthree.big.write_output_inner61 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %big60, i128* %splitthree.big.write_output_inner61, align 4
  ret void
}

define %struct_template_circuit_splitthree* @fn_template_build_splitthree(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_splitthree = alloca %struct_template_circuit_splitthree, align 8
  %splitthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 0
  store i128 %0, i128* %splitthree.n.write_arg_inner, align 4
  %splitthree.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 1
  store i128 %1, i128* %splitthree.m.write_arg_inner, align 4
  %splitthree.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 2
  store i128 %2, i128* %splitthree.k.write_arg_inner, align 4
  ret %struct_template_circuit_splitthree* %struct_template_circuit_splitthree
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
  %greatereqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %greatereqthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %greatereqthan.in.read_input_inner, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %greatereqthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %greatereqthan.out.declare_output, align 4
  %n = load i128, i128* %greatereqthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.59)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.60)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %greatereqthan.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out24, i128 %lessthan.out.read_output_outter, i1* @constraint.61)
  %ptr_getter25 = load %struct_template_circuit_greatereqthan*, %struct_template_circuit_greatereqthan** %GreaterEqThan, align 8
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %ptr_getter25, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %GreaterEqThan26 = load %struct_template_circuit_greatereqthan*, %struct_template_circuit_greatereqthan** %GreaterEqThan, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %GreaterEqThan26, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %greatereqthan.out.read_output_inner, i128* %greatereqthan.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %greatereqthan.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2)
  br label %exit

exit:                                             ; preds = %arraydim
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

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %CompConstant = alloca %struct_template_circuit_compconstant*, align 8
  store %struct_template_circuit_compconstant* %0, %struct_template_circuit_compconstant** %CompConstant, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %compconstant.ct.declare_arg = alloca i128, align 8
  store i128 %compconstant.ct.read_arg_inner, i128* %compconstant.ct.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %compconstant.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %compconstant.in.read_input_inner, [256 x i128]** %compconstant.in.declare_input, align 8
  %compconstant.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %compconstant.out.declare_output, align 4
  %compconstant.parts.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %parts, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %num2bits = alloca %struct_template_circuit_num2bits*, align 8
  %e = alloca i128, align 8
  %e2 = call i128 @fn_intrinsic_utils_init()
  store i128 %e2, i128* %e, align 4
  %sum = alloca i128, align 8
  %sum3 = call i128 @fn_intrinsic_utils_init()
  store i128 %sum3, i128* %sum, align 4
  %slsb = alloca i128, align 8
  %slsb4 = call i128 @fn_intrinsic_utils_init()
  store i128 %slsb4, i128* %slsb, align 4
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %clsb = alloca i128, align 8
  %clsb6 = call i128 @fn_intrinsic_utils_init()
  store i128 %clsb6, i128* %clsb, align 4
  %b = alloca i128, align 8
  %b7 = call i128 @fn_intrinsic_utils_init()
  store i128 %b7, i128* %b, align 4
  %a = alloca i128, align 8
  %a8 = call i128 @fn_intrinsic_utils_init()
  store i128 %a8, i128* %a, align 4
  %compconstant.sout.declare_inter = alloca i128, align 8
  %sout = call i128 @fn_intrinsic_utils_init()
  store i128 %sout, i128* %compconstant.sout.declare_inter, align 4
  %smsb = alloca i128, align 8
  %smsb9 = call i128 @fn_intrinsic_utils_init()
  store i128 %smsb9, i128* %smsb, align 4
  %cmsb = alloca i128, align 8
  %cmsb10 = call i128 @fn_intrinsic_utils_init()
  store i128 %cmsb10, i128* %cmsb, align 4
  store i128 0, i128* %clsb, align 4
  store i128 0, i128* %cmsb, align 4
  store i128 0, i128* %slsb, align 4
  store i128 0, i128* %smsb, align 4
  store i128 0, i128* %sum, align 4
  store i128 340282366920938463463374607431768211455, i128* %b, align 4
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
  %in = load [256 x i128]*, [256 x i128]** %compconstant.in.declare_input, align 8
  %i17 = load i128, i128* %i, align 4
  %mul18 = mul i128 %i17, 2
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  store i128 %in19, i128* %slsb, align 4
  %in20 = load [256 x i128]*, [256 x i128]** %compconstant.in.declare_input, align 8
  %i21 = load i128, i128* %i, align 4
  %mul22 = mul i128 %i21, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %in20, i128 0, i128 %add23
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
  %parts43 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %parts43, i128 0, i128 %i44
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts46, i128 %add42, i1* @constraint.62)
  %ptr_getter = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i47 = load i128, i128* %i, align 4
  %parts48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i47
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
  %parts74 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i75 = load i128, i128* %i, align 4
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %parts74, i128 0, i128 %i75
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts77, i128 %add73, i1* @constraint.63)
  %ptr_getter78 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i79 = load i128, i128* %i, align 4
  %parts80 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter78, i128 0, i128 %i79
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
  %parts99 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i100 = load i128, i128* %i, align 4
  %array_getter101 = getelementptr inbounds [256 x i128], [256 x i128]* %parts99, i128 0, i128 %i100
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts102, i128 %add98, i1* @constraint.64)
  %ptr_getter103 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i104 = load i128, i128* %i, align 4
  %parts105 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter103, i128 0, i128 %i104
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
  %parts114 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %parts114, i128 0, i128 %i115
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts117, i128 %add113, i1* @constraint.65)
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i119 = load i128, i128* %i, align 4
  %parts120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %i119
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %sum123 = load i128, i128* %sum, align 4
  %parts124 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %parts124, i128 0, i128 %i125
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
  call void @fn_intrinsic_utils_constraint(i128 %sout141, i128 %sum140, i1* @constraint.66)
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
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %sout145, i1* @constraint.67)
  %ptr_getter148 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter148, i32 0, i32 1
  store i128 %sout145, i128* %num2bits.in.write_input_outter, align 4
  %num2bits149 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits149, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  %out153 = load i128, i128* %compconstant.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out153, i128 %num2bits152, i1* @constraint.68)
  %ptr_getter154 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter154, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %CompConstant155 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %CompConstant, align 8
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %CompConstant155, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  store i128 %compconstant.out.read_output_inner, i128* %compconstant.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %compconstant.parts.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 127)
  %ptr_cast157 = bitcast [256 x i128]** %compconstant.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast157, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
  %parts158 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [256 x i128]* %parts158, [256 x i128]** %compconstant.parts.write_inter_inner, align 8
  %sout159 = load i128, i128* %compconstant.sout.declare_inter, align 4
  %compconstant.sout.write_inter_inner160 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %sout159, i128* %compconstant.sout.write_inter_inner160, align 4
  %out161 = load i128, i128* %compconstant.out.declare_output, align 4
  %compconstant.out.write_output_inner162 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %out161, i128* %compconstant.out.write_output_inner162, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %compconstant.ct.write_arg_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %compconstant.ct.write_arg_inner, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
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
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %carry = alloca i128, align 8
  %carry3 = call i128 @fn_intrinsic_utils_init()
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

define void @fn_template_init_checkcarrytozero(%struct_template_circuit_checkcarrytozero* %0) {
entry:
  %CheckCarryToZero = alloca %struct_template_circuit_checkcarrytozero*, align 8
  store %struct_template_circuit_checkcarrytozero* %0, %struct_template_circuit_checkcarrytozero** %CheckCarryToZero, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 0
  %checkcarrytozero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %checkcarrytozero.n.declare_arg = alloca i128, align 8
  store i128 %checkcarrytozero.n.read_arg_inner, i128* %checkcarrytozero.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 1
  %checkcarrytozero.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %checkcarrytozero.m.declare_arg = alloca i128, align 8
  store i128 %checkcarrytozero.m.read_arg_inner, i128* %checkcarrytozero.m.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 2
  %checkcarrytozero.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %checkcarrytozero.k.declare_arg = alloca i128, align 8
  store i128 %checkcarrytozero.k.read_arg_inner, i128* %checkcarrytozero.k.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 3
  %checkcarrytozero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %checkcarrytozero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %checkcarrytozero.in.read_input_inner, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %checkcarrytozero.carry.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %carry, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %carryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %carryRangeChecks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks5, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %EPSILON = alloca i128, align 8
  %EPSILON6 = call i128 @fn_intrinsic_utils_init()
  store i128 %EPSILON6, i128* %EPSILON, align 4
  %k = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %sge = icmp sge i128 %k, 2
  call void @fn_intrinsic_utils_assert(i1 %sge)
  store i128 1, i128* %EPSILON, align 4
  %k7 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %k8 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %k9 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %m = load i128, i128* %checkcarrytozero.m.declare_arg, align 4
  %EPSILON10 = load i128, i128* %EPSILON, align 4
  %add = add i128 %m, %EPSILON10
  %n = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %sub = sub i128 %add, %n
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %sub)
  %ptr_getter = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i11 = load i128, i128* %i, align 4
  %carryRangeChecks12 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i11
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %carryRangeChecks12, align 8
  %i13 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i13, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %in = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i14
  %in15 = load i128, i128* %array_getter, align 4
  %n16 = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %lshift = shl i128 1, %n16
  %sdiv = sdiv i128 %in15, %lshift
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i18 = load i128, i128* %i, align 4
  %carry19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 %sdiv, i128* %carry19, align 4
  %in20 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %in20, i128 0, i128 %i21
  %in23 = load i128, i128* %array_getter22, align 4
  %carry24 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %carry24, i128 0, i128 %i25
  %carry27 = load i128, i128* %array_getter26, align 4
  %n28 = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %lshift29 = shl i128 1, %n28
  %mul = mul i128 %carry27, %lshift29
  call void @fn_intrinsic_utils_constraint(i128 %in23, i128 %mul, i1* @constraint.69)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in30 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %in30, i128 0, i128 %i31
  %in33 = load i128, i128* %array_getter32, align 4
  %carry34 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i35 = load i128, i128* %i, align 4
  %sub36 = sub i128 %i35, 1
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %carry34, i128 0, i128 %sub36
  %carry38 = load i128, i128* %array_getter37, align 4
  %add39 = add i128 %in33, %carry38
  %n40 = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %lshift41 = shl i128 1, %n40
  %sdiv42 = sdiv i128 %add39, %lshift41
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i44 = load i128, i128* %i, align 4
  %carry45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %i44
  store i128 %sdiv42, i128* %carry45, align 4
  %in46 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %in46, i128 0, i128 %i47
  %in49 = load i128, i128* %array_getter48, align 4
  %carry50 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %carry50, i128 0, i128 %sub52
  %carry54 = load i128, i128* %array_getter53, align 4
  %add55 = add i128 %in49, %carry54
  %carry56 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %carry56, i128 0, i128 %i57
  %carry59 = load i128, i128* %array_getter58, align 4
  %n60 = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %lshift61 = shl i128 1, %n60
  %mul62 = mul i128 %carry59, %lshift61
  call void @fn_intrinsic_utils_constraint(i128 %add55, i128 %mul62, i1* @constraint.70)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry63 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %i64 = load i128, i128* %i, align 4
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %carry63, i128 0, i128 %i64
  %carry66 = load i128, i128* %array_getter65, align 4
  %m67 = load i128, i128* %checkcarrytozero.m.declare_arg, align 4
  %EPSILON68 = load i128, i128* %EPSILON, align 4
  %add69 = add i128 %m67, %EPSILON68
  %n70 = load i128, i128* %checkcarrytozero.n.declare_arg, align 4
  %sub71 = sub i128 %add69, %n70
  %sub72 = sub i128 %sub71, 1
  %lshift73 = shl i128 1, %sub72
  %add74 = add i128 %carry66, %lshift73
  %carryRangeChecks75 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks75, i128 0, i128 %i76
  %carryRangeChecks78 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter77, align 8
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks78, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter79, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add74, i1* @constraint.71)
  %ptr_getter80 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i81 = load i128, i128* %i, align 4
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter80, i128 0, i128 %i81
  %carryRangeChecks83 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter82, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks83, i32 0, i32 1
  store i128 %add74, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i84 = load i128, i128* %i, align 4
  %add85 = add i128 %i84, 1
  store i128 %add85, i128* %i, align 4
  %i86 = load i128, i128* %i, align 4
  %k87 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %sub88 = sub i128 %k87, 1
  %slt = icmp slt i128 %i86, %sub88
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in89 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %k90 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %sub91 = sub i128 %k90, 1
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %in89, i128 0, i128 %sub91
  %in93 = load i128, i128* %array_getter92, align 4
  %carry94 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %k95 = load i128, i128* %checkcarrytozero.k.declare_arg, align 4
  %sub96 = sub i128 %k95, 2
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %carry94, i128 0, i128 %sub96
  %carry98 = load i128, i128* %array_getter97, align 4
  %add99 = add i128 %in93, %carry98
  call void @fn_intrinsic_utils_constraint(i128 %add99, i128 0, i1* @constraint.72)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %checkcarrytozero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k7)
  %ptr_cast100 = bitcast [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast100, i128 %k9)
  %ptr_cast101 = bitcast [256 x i128]** %checkcarrytozero.carry.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast101, i128 %k8)
  br label %exit

exit:                                             ; preds = %arraydim
  %carry102 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %checkcarrytozero.carry.write_inter_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 4
  store [256 x i128]* %carry102, [256 x i128]** %checkcarrytozero.carry.write_inter_inner, align 8
  ret void
}

define %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_checkcarrytozero = alloca %struct_template_circuit_checkcarrytozero, align 8
  %checkcarrytozero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 0
  store i128 %0, i128* %checkcarrytozero.n.write_arg_inner, align 4
  %checkcarrytozero.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 1
  store i128 %1, i128* %checkcarrytozero.m.write_arg_inner, align 4
  %checkcarrytozero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 2
  store i128 %2, i128* %checkcarrytozero.k.write_arg_inner, align 4
  ret %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero
}

define void @fn_template_init_biglessthan(%struct_template_circuit_biglessthan* %0) {
entry:
  %BigLessThan = alloca %struct_template_circuit_biglessthan*, align 8
  store %struct_template_circuit_biglessthan* %0, %struct_template_circuit_biglessthan** %BigLessThan, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 0
  %biglessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %biglessthan.n.declare_arg = alloca i128, align 8
  store i128 %biglessthan.n.read_arg_inner, i128* %biglessthan.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 1
  %biglessthan.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %biglessthan.k.declare_arg = alloca i128, align 8
  store i128 %biglessthan.k.read_arg_inner, i128* %biglessthan.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 2
  %biglessthan.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %biglessthan.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %biglessthan.a.read_input_inner, [256 x i128]** %biglessthan.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 3
  %biglessthan.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %biglessthan.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %biglessthan.b.read_input_inner, [256 x i128]** %biglessthan.b.declare_input, align 8
  %eq = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %eq4 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %eq4, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %ors = alloca [256 x %struct_template_circuit_or*]*, align 8
  %ors5 = alloca [256 x %struct_template_circuit_or*], align 8
  store [256 x %struct_template_circuit_or*]* %ors5, [256 x %struct_template_circuit_or*]** %ors, align 8
  %lt = alloca [256 x %struct_template_circuit_lessthan*]*, align 8
  %lt6 = alloca [256 x %struct_template_circuit_lessthan*], align 8
  store [256 x %struct_template_circuit_lessthan*]* %lt6, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i = alloca i128, align 8
  %i7 = call i128 @fn_intrinsic_utils_init()
  store i128 %i7, i128* %i, align 4
  %biglessthan.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %biglessthan.out.declare_output, align 4
  %ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %ands8 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %ands8, [256 x %struct_template_circuit_and*]** %ands, align 8
  %eq_ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %eq_ands9 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %eq_ands9, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %k = load i128, i128* %biglessthan.k.declare_arg, align 4
  %k10 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %k11 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %k12 = load i128, i128* %biglessthan.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %biglessthan.n.declare_arg, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  %ptr_getter = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i13 = load i128, i128* %i, align 4
  %lt14 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter, i128 0, i128 %i13
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt14, align 8
  %a = load [256 x i128]*, [256 x i128]** %biglessthan.a.declare_input, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i15
  %a16 = load i128, i128* %array_getter, align 4
  %lt17 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt17, i128 0, i128 %i18
  %lt20 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter19, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt20, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt23, i128 %a16, i1* @constraint.73)
  %ptr_getter24 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter24, i128 0, i128 %i25
  %lt27 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter26, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt27, i32 0, i32 1
  %lessthan.in.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %lt30 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter29, i128 0, i128 0
  store i128 %a16, i128* %lt30, align 4
  %b = load [256 x i128]*, [256 x i128]** %biglessthan.b.declare_input, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i31
  %b33 = load i128, i128* %array_getter32, align 4
  %lt34 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt34, i128 0, i128 %i35
  %lt37 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter36, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt37, i32 0, i32 1
  %lessthan.in.read_input_outter39 = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter39, i128 0, i128 1
  %lt41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt41, i128 %b33, i1* @constraint.74)
  %ptr_getter42 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter42, i128 0, i128 %i43
  %lt45 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter44, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt45, i32 0, i32 1
  %lessthan.in.read_input_outter47 = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %lt48 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter47, i128 0, i128 1
  store i128 %b33, i128* %lt48, align 4
  %call49 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter50 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i51 = load i128, i128* %i, align 4
  %eq52 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter50, i128 0, i128 %i51
  store %struct_template_circuit_isequal* %call49, %struct_template_circuit_isequal** %eq52, align 8
  %a53 = load [256 x i128]*, [256 x i128]** %biglessthan.a.declare_input, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %a53, i128 0, i128 %i54
  %a56 = load i128, i128* %array_getter55, align 4
  %eq57 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq57, i128 0, i128 %i58
  %eq60 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter59, align 8
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq60, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter61, align 8
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %eq63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_utils_constraint(i128 %eq63, i128 %a56, i1* @constraint.75)
  %ptr_getter64 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter64, i128 0, i128 %i65
  %eq67 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter66, align 8
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq67, i32 0, i32 0
  %isequal.in.read_input_outter69 = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %eq70 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter69, i128 0, i128 0
  store i128 %a56, i128* %eq70, align 4
  %b71 = load [256 x i128]*, [256 x i128]** %biglessthan.b.declare_input, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x i128], [256 x i128]* %b71, i128 0, i128 %i72
  %b74 = load i128, i128* %array_getter73, align 4
  %eq75 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq75, i128 0, i128 %i76
  %eq78 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter77, align 8
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq78, i32 0, i32 0
  %isequal.in.read_input_outter80 = load [256 x i128]*, [256 x i128]** %struct_getter79, align 8
  %array_getter81 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter80, i128 0, i128 1
  %eq82 = load i128, i128* %array_getter81, align 4
  call void @fn_intrinsic_utils_constraint(i128 %eq82, i128 %b74, i1* @constraint.76)
  %ptr_getter83 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter83, i128 0, i128 %i84
  %eq86 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter85, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq86, i32 0, i32 0
  %isequal.in.read_input_outter88 = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %eq89 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter88, i128 0, i128 1
  store i128 %b74, i128* %eq89, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i90 = load i128, i128* %i, align 4
  %add = add i128 %i90, 1
  store i128 %add, i128* %i, align 4
  %i91 = load i128, i128* %i, align 4
  %k92 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %slt = icmp slt i128 %i91, %k92
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k93 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub = sub i128 %k93, 1
  %k94 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub95 = sub i128 %k94, 1
  %k96 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub97 = sub i128 %k96, 1
  %k98 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub99 = sub i128 %k98, 2
  store i128 %sub99, i128* %i, align 4
  br label %loop.body100

loop.body100:                                     ; preds = %loop.latch317, %loop.exit
  %call101 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter102 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i103 = load i128, i128* %i, align 4
  %ands104 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter102, i128 0, i128 %i103
  store %struct_template_circuit_and* %call101, %struct_template_circuit_and** %ands104, align 8
  %call105 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter106 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i107 = load i128, i128* %i, align 4
  %eq_ands108 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter106, i128 0, i128 %i107
  store %struct_template_circuit_and* %call105, %struct_template_circuit_and** %eq_ands108, align 8
  %call109 = call %struct_template_circuit_or* @fn_template_build_or()
  %ptr_getter110 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i111 = load i128, i128* %i, align 4
  %ors112 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter110, i128 0, i128 %i111
  store %struct_template_circuit_or* %call109, %struct_template_circuit_or** %ors112, align 8
  %i113 = load i128, i128* %i, align 4
  %k114 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub115 = sub i128 %k114, 2
  %eq116 = icmp eq i128 %i113, %sub115
  br i1 %eq116, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body100
  %eq117 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k118 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub119 = sub i128 %k118, 1
  %array_getter120 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq117, i128 0, i128 %sub119
  %eq121 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter120, align 8
  %struct_getter122 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq121, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter122, align 4
  %ands123 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i124 = load i128, i128* %i, align 4
  %array_getter125 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands123, i128 0, i128 %i124
  %ands126 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter125, align 8
  %struct_getter127 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands126, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter127, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter, i128 %isequal.out.read_output_outter, i1* @constraint.77)
  %ptr_getter128 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i129 = load i128, i128* %i, align 4
  %array_getter130 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter128, i128 0, i128 %i129
  %ands131 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter130, align 8
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands131, i32 0, i32 0
  store i128 %isequal.out.read_output_outter, i128* %and.a.write_input_outter, align 4
  %lt132 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k133 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub134 = sub i128 %k133, 2
  %array_getter135 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt132, i128 0, i128 %sub134
  %lt136 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter135, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt136, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter137, align 4
  %ands138 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i139 = load i128, i128* %i, align 4
  %array_getter140 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands138, i128 0, i128 %i139
  %ands141 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter140, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands141, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter142, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter, i128 %lessthan.out.read_output_outter, i1* @constraint.78)
  %ptr_getter143 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i144 = load i128, i128* %i, align 4
  %array_getter145 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter143, i128 0, i128 %i144
  %ands146 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter145, align 8
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands146, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter, i128* %and.b.write_input_outter, align 4
  %eq147 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k148 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub149 = sub i128 %k148, 1
  %array_getter150 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq147, i128 0, i128 %sub149
  %eq151 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter150, align 8
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq151, i32 0, i32 1
  %isequal.out.read_output_outter153 = load i128, i128* %struct_getter152, align 4
  %eq_ands154 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i155 = load i128, i128* %i, align 4
  %array_getter156 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands154, i128 0, i128 %i155
  %eq_ands157 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter156, align 8
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands157, i32 0, i32 0
  %and.a.read_input_outter159 = load i128, i128* %struct_getter158, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter159, i128 %isequal.out.read_output_outter153, i1* @constraint.79)
  %ptr_getter160 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i161 = load i128, i128* %i, align 4
  %array_getter162 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter160, i128 0, i128 %i161
  %eq_ands163 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter162, align 8
  %and.a.write_input_outter164 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands163, i32 0, i32 0
  store i128 %isequal.out.read_output_outter153, i128* %and.a.write_input_outter164, align 4
  %eq165 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k166 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub167 = sub i128 %k166, 2
  %array_getter168 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq165, i128 0, i128 %sub167
  %eq169 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter168, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq169, i32 0, i32 1
  %isequal.out.read_output_outter171 = load i128, i128* %struct_getter170, align 4
  %eq_ands172 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i173 = load i128, i128* %i, align 4
  %array_getter174 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands172, i128 0, i128 %i173
  %eq_ands175 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands175, i32 0, i32 1
  %and.b.read_input_outter177 = load i128, i128* %struct_getter176, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter177, i128 %isequal.out.read_output_outter171, i1* @constraint.80)
  %ptr_getter178 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i179 = load i128, i128* %i, align 4
  %array_getter180 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter178, i128 0, i128 %i179
  %eq_ands181 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter180, align 8
  %and.b.write_input_outter182 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands181, i32 0, i32 1
  store i128 %isequal.out.read_output_outter171, i128* %and.b.write_input_outter182, align 4
  %lt183 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k184 = load i128, i128* %biglessthan.k.declare_arg, align 4
  %sub185 = sub i128 %k184, 1
  %array_getter186 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt183, i128 0, i128 %sub185
  %lt187 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter186, align 8
  %struct_getter188 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt187, i32 0, i32 2
  %lessthan.out.read_output_outter189 = load i128, i128* %struct_getter188, align 4
  %ors190 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i191 = load i128, i128* %i, align 4
  %array_getter192 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors190, i128 0, i128 %i191
  %ors193 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter192, align 8
  %struct_getter194 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors193, i32 0, i32 0
  %or.a.read_input_outter = load i128, i128* %struct_getter194, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.a.read_input_outter, i128 %lessthan.out.read_output_outter189, i1* @constraint.81)
  %ptr_getter195 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i196 = load i128, i128* %i, align 4
  %array_getter197 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter195, i128 0, i128 %i196
  %ors198 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter197, align 8
  %or.a.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors198, i32 0, i32 0
  store i128 %lessthan.out.read_output_outter189, i128* %or.a.write_input_outter, align 4
  %ands199 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i200 = load i128, i128* %i, align 4
  %array_getter201 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands199, i128 0, i128 %i200
  %ands202 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter201, align 8
  %struct_getter203 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands202, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter203, align 4
  %ors204 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i205 = load i128, i128* %i, align 4
  %array_getter206 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors204, i128 0, i128 %i205
  %ors207 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter206, align 8
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors207, i32 0, i32 1
  %or.b.read_input_outter = load i128, i128* %struct_getter208, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.b.read_input_outter, i128 %and.out.read_output_outter, i1* @constraint.82)
  %ptr_getter209 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i210 = load i128, i128* %i, align 4
  %array_getter211 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter209, i128 0, i128 %i210
  %ors212 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter211, align 8
  %or.b.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors212, i32 0, i32 1
  store i128 %and.out.read_output_outter, i128* %or.b.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body100
  %eq_ands213 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i214 = load i128, i128* %i, align 4
  %add215 = add i128 %i214, 1
  %array_getter216 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands213, i128 0, i128 %add215
  %eq_ands217 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter216, align 8
  %struct_getter218 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands217, i32 0, i32 2
  %and.out.read_output_outter219 = load i128, i128* %struct_getter218, align 4
  %ands220 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i221 = load i128, i128* %i, align 4
  %array_getter222 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands220, i128 0, i128 %i221
  %ands223 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter222, align 8
  %struct_getter224 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands223, i32 0, i32 0
  %and.a.read_input_outter225 = load i128, i128* %struct_getter224, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter225, i128 %and.out.read_output_outter219, i1* @constraint.83)
  %ptr_getter226 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter226, i128 0, i128 %i227
  %ands229 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter228, align 8
  %and.a.write_input_outter230 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands229, i32 0, i32 0
  store i128 %and.out.read_output_outter219, i128* %and.a.write_input_outter230, align 4
  %lt231 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt231, i128 0, i128 %i232
  %lt234 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter233, align 8
  %struct_getter235 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt234, i32 0, i32 2
  %lessthan.out.read_output_outter236 = load i128, i128* %struct_getter235, align 4
  %ands237 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i238 = load i128, i128* %i, align 4
  %array_getter239 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands237, i128 0, i128 %i238
  %ands240 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands240, i32 0, i32 1
  %and.b.read_input_outter242 = load i128, i128* %struct_getter241, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter242, i128 %lessthan.out.read_output_outter236, i1* @constraint.84)
  %ptr_getter243 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i244 = load i128, i128* %i, align 4
  %array_getter245 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter243, i128 0, i128 %i244
  %ands246 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter245, align 8
  %and.b.write_input_outter247 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands246, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter236, i128* %and.b.write_input_outter247, align 4
  %eq_ands248 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i249 = load i128, i128* %i, align 4
  %add250 = add i128 %i249, 1
  %array_getter251 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands248, i128 0, i128 %add250
  %eq_ands252 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter251, align 8
  %struct_getter253 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands252, i32 0, i32 2
  %and.out.read_output_outter254 = load i128, i128* %struct_getter253, align 4
  %eq_ands255 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i256 = load i128, i128* %i, align 4
  %array_getter257 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands255, i128 0, i128 %i256
  %eq_ands258 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter257, align 8
  %struct_getter259 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands258, i32 0, i32 0
  %and.a.read_input_outter260 = load i128, i128* %struct_getter259, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter260, i128 %and.out.read_output_outter254, i1* @constraint.85)
  %ptr_getter261 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i262 = load i128, i128* %i, align 4
  %array_getter263 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter261, i128 0, i128 %i262
  %eq_ands264 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter263, align 8
  %and.a.write_input_outter265 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands264, i32 0, i32 0
  store i128 %and.out.read_output_outter254, i128* %and.a.write_input_outter265, align 4
  %eq266 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i267 = load i128, i128* %i, align 4
  %array_getter268 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq266, i128 0, i128 %i267
  %eq269 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter268, align 8
  %struct_getter270 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq269, i32 0, i32 1
  %isequal.out.read_output_outter271 = load i128, i128* %struct_getter270, align 4
  %eq_ands272 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i273 = load i128, i128* %i, align 4
  %array_getter274 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands272, i128 0, i128 %i273
  %eq_ands275 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter274, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands275, i32 0, i32 1
  %and.b.read_input_outter277 = load i128, i128* %struct_getter276, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter277, i128 %isequal.out.read_output_outter271, i1* @constraint.86)
  %ptr_getter278 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i279 = load i128, i128* %i, align 4
  %array_getter280 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter278, i128 0, i128 %i279
  %eq_ands281 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter280, align 8
  %and.b.write_input_outter282 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands281, i32 0, i32 1
  store i128 %isequal.out.read_output_outter271, i128* %and.b.write_input_outter282, align 4
  %ors283 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i284 = load i128, i128* %i, align 4
  %add285 = add i128 %i284, 1
  %array_getter286 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors283, i128 0, i128 %add285
  %ors287 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter286, align 8
  %struct_getter288 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors287, i32 0, i32 2
  %or.out.read_output_outter = load i128, i128* %struct_getter288, align 4
  %ors289 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i290 = load i128, i128* %i, align 4
  %array_getter291 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors289, i128 0, i128 %i290
  %ors292 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors292, i32 0, i32 0
  %or.a.read_input_outter294 = load i128, i128* %struct_getter293, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.a.read_input_outter294, i128 %or.out.read_output_outter, i1* @constraint.87)
  %ptr_getter295 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i296 = load i128, i128* %i, align 4
  %array_getter297 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter295, i128 0, i128 %i296
  %ors298 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter297, align 8
  %or.a.write_input_outter299 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors298, i32 0, i32 0
  store i128 %or.out.read_output_outter, i128* %or.a.write_input_outter299, align 4
  %ands300 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i301 = load i128, i128* %i, align 4
  %array_getter302 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands300, i128 0, i128 %i301
  %ands303 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter302, align 8
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands303, i32 0, i32 2
  %and.out.read_output_outter305 = load i128, i128* %struct_getter304, align 4
  %ors306 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i307 = load i128, i128* %i, align 4
  %array_getter308 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors306, i128 0, i128 %i307
  %ors309 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter308, align 8
  %struct_getter310 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors309, i32 0, i32 1
  %or.b.read_input_outter311 = load i128, i128* %struct_getter310, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.b.read_input_outter311, i128 %and.out.read_output_outter305, i1* @constraint.88)
  %ptr_getter312 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i313 = load i128, i128* %i, align 4
  %array_getter314 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter312, i128 0, i128 %i313
  %ors315 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter314, align 8
  %or.b.write_input_outter316 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors315, i32 0, i32 1
  store i128 %and.out.read_output_outter305, i128* %or.b.write_input_outter316, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch317

loop.latch317:                                    ; preds = %if.exit
  %i318 = load i128, i128* %i, align 4
  %sub319 = sub i128 %i318, 1
  store i128 %sub319, i128* %i, align 4
  %i320 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i320, 0
  br i1 %sge, label %loop.body100, label %loop.exit321

loop.exit321:                                     ; preds = %loop.latch317
  %ors322 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter323 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors322, i128 0, i128 0
  %ors324 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter323, align 8
  %struct_getter325 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors324, i32 0, i32 2
  %or.out.read_output_outter326 = load i128, i128* %struct_getter325, align 4
  %out327 = load i128, i128* %biglessthan.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out327, i128 %or.out.read_output_outter326, i1* @constraint.89)
  %ptr_getter328 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %BigLessThan, align 8
  %biglessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter328, i32 0, i32 4
  store i128 %or.out.read_output_outter326, i128* %biglessthan.out.write_output_inner, align 4
  %BigLessThan329 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %BigLessThan, align 8
  %struct_getter330 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %BigLessThan329, i32 0, i32 4
  %biglessthan.out.read_output_inner = load i128, i128* %struct_getter330, align 4
  store i128 %biglessthan.out.read_output_inner, i128* %biglessthan.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit321
  %ptr_cast = bitcast [256 x %struct_template_circuit_isequal*]** %eq to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k12)
  %ptr_cast331 = bitcast [256 x %struct_template_circuit_lessthan*]** %lt to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast331, i128 %k11)
  %ptr_cast332 = bitcast [256 x i128]** %biglessthan.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast332, i128 %k10)
  %ptr_cast333 = bitcast [256 x i128]** %biglessthan.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast333, i128 %k)
  %ptr_cast334 = bitcast [256 x %struct_template_circuit_and*]** %eq_ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast334, i128 %sub97)
  %ptr_cast335 = bitcast [256 x %struct_template_circuit_and*]** %ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast335, i128 %sub95)
  %ptr_cast336 = bitcast [256 x %struct_template_circuit_or*]** %ors to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast336, i128 %sub)
  br label %exit

exit:                                             ; preds = %arraydim
  %out337 = load i128, i128* %biglessthan.out.declare_output, align 4
  %biglessthan.out.write_output_inner338 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %out337, i128* %biglessthan.out.write_output_inner338, align 4
  ret void
}

define %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_biglessthan = alloca %struct_template_circuit_biglessthan, align 8
  %biglessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 0
  store i128 %0, i128* %biglessthan.n.write_arg_inner, align 4
  %biglessthan.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 1
  store i128 %1, i128* %biglessthan.k.write_arg_inner, align 4
  ret %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan
}

define void @fn_template_init_modsubthree(%struct_template_circuit_modsubthree* %0) {
entry:
  %ModSubThree = alloca %struct_template_circuit_modsubthree*, align 8
  store %struct_template_circuit_modsubthree* %0, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 0
  %modsubthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modsubthree.n.declare_arg = alloca i128, align 8
  store i128 %modsubthree.n.read_arg_inner, i128* %modsubthree.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 1
  %modsubthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modsubthree.a.declare_input = alloca i128, align 8
  store i128 %modsubthree.a.read_input_inner, i128* %modsubthree.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 2
  %modsubthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modsubthree.b.declare_input = alloca i128, align 8
  store i128 %modsubthree.b.read_input_inner, i128* %modsubthree.b.declare_input, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 3
  %modsubthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %modsubthree.c.declare_input = alloca i128, align 8
  store i128 %modsubthree.c.read_input_inner, i128* %modsubthree.c.declare_input, align 4
  %modsubthree.borrow.declare_output = alloca i128, align 8
  %borrow = call i128 @fn_intrinsic_utils_init()
  store i128 %borrow, i128* %modsubthree.borrow.declare_output, align 4
  %modsubthree.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %modsubthree.out.declare_output, align 4
  %modsubthree.b_plus_c.declare_inter = alloca i128, align 8
  %b_plus_c = call i128 @fn_intrinsic_utils_init()
  store i128 %b_plus_c, i128* %modsubthree.b_plus_c.declare_inter, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %modsubthree.n.declare_arg, align 4
  %add = add i128 %n, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %a = load i128, i128* %modsubthree.a.declare_input, align 4
  %b = load i128, i128* %modsubthree.b.declare_input, align 4
  %sub = sub i128 %a, %b
  %c = load i128, i128* %modsubthree.c.declare_input, align 4
  %sub4 = sub i128 %sub, %c
  %n5 = load i128, i128* %modsubthree.n.declare_arg, align 4
  %lshift = shl i128 1, %n5
  %add6 = add i128 %sub4, %lshift
  %sge = icmp sge i128 %add6, 0
  call void @fn_intrinsic_utils_assert(i1 %sge)
  %b7 = load i128, i128* %modsubthree.b.declare_input, align 4
  %c8 = load i128, i128* %modsubthree.c.declare_input, align 4
  %add9 = add i128 %b7, %c8
  %b_plus_c10 = load i128, i128* %modsubthree.b_plus_c.declare_inter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b_plus_c10, i128 %add9, i1* @constraint.90)
  %ptr_getter = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %modsubthree.b_plus_c.write_inter_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ptr_getter, i32 0, i32 4
  store i128 %add9, i128* %modsubthree.b_plus_c.write_inter_inner, align 4
  %ModSubThree11 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ModSubThree11, i32 0, i32 4
  %modsubthree.b_plus_c.read_inter_inner = load i128, i128* %struct_getter12, align 4
  store i128 %modsubthree.b_plus_c.read_inter_inner, i128* %modsubthree.b_plus_c.declare_inter, align 4
  %n13 = load i128, i128* %modsubthree.n.declare_arg, align 4
  %add14 = add i128 %n13, 1
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %add14)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a15 = load i128, i128* %modsubthree.a.declare_input, align 4
  %lt16 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt16, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt18 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt18, i128 %a15, i1* @constraint.91)
  %ptr_getter19 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter19, i32 0, i32 1
  %lessthan.in.read_input_outter21 = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %lt22 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter21, i128 0, i128 0
  store i128 %a15, i128* %lt22, align 4
  %b_plus_c23 = load i128, i128* %modsubthree.b_plus_c.declare_inter, align 4
  %lt24 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt24, i32 0, i32 1
  %lessthan.in.read_input_outter26 = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter26, i128 0, i128 1
  %lt28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt28, i128 %b_plus_c23, i1* @constraint.92)
  %ptr_getter29 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter29, i32 0, i32 1
  %lessthan.in.read_input_outter31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %lt32 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter31, i128 0, i128 1
  store i128 %b_plus_c23, i128* %lt32, align 4
  %lt33 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt33, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter34, align 4
  %borrow35 = load i128, i128* %modsubthree.borrow.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %borrow35, i128 %lessthan.out.read_output_outter, i1* @constraint.93)
  %ptr_getter36 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %modsubthree.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ptr_getter36, i32 0, i32 6
  store i128 %lessthan.out.read_output_outter, i128* %modsubthree.borrow.write_output_inner, align 4
  %ModSubThree37 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ModSubThree37, i32 0, i32 6
  %modsubthree.borrow.read_output_inner = load i128, i128* %struct_getter38, align 4
  store i128 %modsubthree.borrow.read_output_inner, i128* %modsubthree.borrow.declare_output, align 4
  %borrow39 = load i128, i128* %modsubthree.borrow.declare_output, align 4
  %n40 = load i128, i128* %modsubthree.n.declare_arg, align 4
  %lshift41 = shl i128 1, %n40
  %mul = mul i128 %borrow39, %lshift41
  %a42 = load i128, i128* %modsubthree.a.declare_input, align 4
  %add43 = add i128 %mul, %a42
  %b_plus_c44 = load i128, i128* %modsubthree.b_plus_c.declare_inter, align 4
  %sub45 = sub i128 %add43, %b_plus_c44
  %out46 = load i128, i128* %modsubthree.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out46, i128 %sub45, i1* @constraint.94)
  %ptr_getter47 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %modsubthree.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ptr_getter47, i32 0, i32 5
  store i128 %sub45, i128* %modsubthree.out.write_output_inner, align 4
  %ModSubThree48 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %ModSubThree, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %ModSubThree48, i32 0, i32 5
  %modsubthree.out.read_output_inner = load i128, i128* %struct_getter49, align 4
  store i128 %modsubthree.out.read_output_inner, i128* %modsubthree.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %b_plus_c50 = load i128, i128* %modsubthree.b_plus_c.declare_inter, align 4
  %modsubthree.b_plus_c.write_inter_inner51 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %b_plus_c50, i128* %modsubthree.b_plus_c.write_inter_inner51, align 4
  %out52 = load i128, i128* %modsubthree.out.declare_output, align 4
  %modsubthree.out.write_output_inner53 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %out52, i128* %modsubthree.out.write_output_inner53, align 4
  %borrow54 = load i128, i128* %modsubthree.borrow.declare_output, align 4
  %modsubthree.borrow.write_output_inner55 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  store i128 %borrow54, i128* %modsubthree.borrow.write_output_inner55, align 4
  ret void
}

define %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %0) {
entry:
  %struct_template_circuit_modsubthree = alloca %struct_template_circuit_modsubthree, align 8
  %modsubthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree, i32 0, i32 0
  store i128 %0, i128* %modsubthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree
}

define void @fn_template_init_modsumfour(%struct_template_circuit_modsumfour* %0) {
entry:
  %ModSumFour = alloca %struct_template_circuit_modsumfour*, align 8
  store %struct_template_circuit_modsumfour* %0, %struct_template_circuit_modsumfour** %ModSumFour, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 0
  %modsumfour.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modsumfour.n.declare_arg = alloca i128, align 8
  store i128 %modsumfour.n.read_arg_inner, i128* %modsumfour.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 1
  %modsumfour.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modsumfour.a.declare_input = alloca i128, align 8
  store i128 %modsumfour.a.read_input_inner, i128* %modsumfour.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 2
  %modsumfour.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modsumfour.b.declare_input = alloca i128, align 8
  store i128 %modsumfour.b.read_input_inner, i128* %modsumfour.b.declare_input, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 3
  %modsumfour.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %modsumfour.c.declare_input = alloca i128, align 8
  store i128 %modsumfour.c.read_input_inner, i128* %modsumfour.c.declare_input, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 4
  %modsumfour.d.read_input_inner = load i128, i128* %struct_getter4, align 4
  %modsumfour.d.declare_input = alloca i128, align 8
  store i128 %modsumfour.d.read_input_inner, i128* %modsumfour.d.declare_input, align 4
  %modsumfour.carry.declare_output = alloca i128, align 8
  %carry = call i128 @fn_intrinsic_utils_init()
  store i128 %carry, i128* %modsumfour.carry.declare_output, align 4
  %modsumfour.sum.declare_output = alloca i128, align 8
  %sum = call i128 @fn_intrinsic_utils_init()
  store i128 %sum, i128* %modsumfour.sum.declare_output, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %modsumfour.n.declare_arg, align 4
  %add = add i128 %n, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n5 = load i128, i128* %modsumfour.n.declare_arg, align 4
  %add6 = add i128 %n5, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add6)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %modsumfour.a.declare_input, align 4
  %b = load i128, i128* %modsumfour.b.declare_input, align 4
  %add7 = add i128 %a, %b
  %c = load i128, i128* %modsumfour.c.declare_input, align 4
  %add8 = add i128 %add7, %c
  %d = load i128, i128* %modsumfour.d.declare_input, align 4
  %add9 = add i128 %add8, %d
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add9, i1* @constraint.95)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add9, i128* %num2bits.in.write_input_outter, align 4
  %n2b12 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b12, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %n14 = load i128, i128* %modsumfour.n.declare_arg, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %n14
  %n2b15 = load i128, i128* %array_getter, align 4
  %n2b16 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b16, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %n19 = load i128, i128* %modsumfour.n.declare_arg, align 4
  %add20 = add i128 %n19, 1
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %add20
  %n2b22 = load i128, i128* %array_getter21, align 4
  %mul = mul i128 2, %n2b22
  %add23 = add i128 %n2b15, %mul
  %carry24 = load i128, i128* %modsumfour.carry.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry24, i128 %add23, i1* @constraint.96)
  %ptr_getter25 = load %struct_template_circuit_modsumfour*, %struct_template_circuit_modsumfour** %ModSumFour, align 8
  %modsumfour.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %ptr_getter25, i32 0, i32 6
  store i128 %add23, i128* %modsumfour.carry.write_output_inner, align 4
  %ModSumFour26 = load %struct_template_circuit_modsumfour*, %struct_template_circuit_modsumfour** %ModSumFour, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %ModSumFour26, i32 0, i32 6
  %modsumfour.carry.read_output_inner = load i128, i128* %struct_getter27, align 4
  store i128 %modsumfour.carry.read_output_inner, i128* %modsumfour.carry.declare_output, align 4
  %a28 = load i128, i128* %modsumfour.a.declare_input, align 4
  %b29 = load i128, i128* %modsumfour.b.declare_input, align 4
  %add30 = add i128 %a28, %b29
  %c31 = load i128, i128* %modsumfour.c.declare_input, align 4
  %add32 = add i128 %add30, %c31
  %d33 = load i128, i128* %modsumfour.d.declare_input, align 4
  %add34 = add i128 %add32, %d33
  %carry35 = load i128, i128* %modsumfour.carry.declare_output, align 4
  %n36 = load i128, i128* %modsumfour.n.declare_arg, align 4
  %lshift = shl i128 1, %n36
  %mul37 = mul i128 %carry35, %lshift
  %sub = sub i128 %add34, %mul37
  %sum38 = load i128, i128* %modsumfour.sum.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sum38, i128 %sub, i1* @constraint.97)
  %ptr_getter39 = load %struct_template_circuit_modsumfour*, %struct_template_circuit_modsumfour** %ModSumFour, align 8
  %modsumfour.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %ptr_getter39, i32 0, i32 5
  store i128 %sub, i128* %modsumfour.sum.write_output_inner, align 4
  %ModSumFour40 = load %struct_template_circuit_modsumfour*, %struct_template_circuit_modsumfour** %ModSumFour, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %ModSumFour40, i32 0, i32 5
  %modsumfour.sum.read_output_inner = load i128, i128* %struct_getter41, align 4
  store i128 %modsumfour.sum.read_output_inner, i128* %modsumfour.sum.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %sum42 = load i128, i128* %modsumfour.sum.declare_output, align 4
  %modsumfour.sum.write_output_inner43 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %sum42, i128* %modsumfour.sum.write_output_inner43, align 4
  %carry44 = load i128, i128* %modsumfour.carry.declare_output, align 4
  %modsumfour.carry.write_output_inner45 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %carry44, i128* %modsumfour.carry.write_output_inner45, align 4
  ret void
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
  %struct_template_circuit_modsumfour = alloca %struct_template_circuit_modsumfour, align 8
  %modsumfour.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour, i32 0, i32 0
  store i128 %0, i128* %modsumfour.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour
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
  %binsum.in.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter2, align 8
  %binsum.in.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %binsum.in.read_input_inner, [256 x [256 x i128]]** %binsum.in.declare_input, align 8
  %binsum.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %binsum.out.declare_output, align 8
  %e2 = alloca i128, align 8
  %e23 = call i128 @fn_intrinsic_utils_init()
  store i128 %e23, i128* %e2, align 4
  %lout = alloca i128, align 8
  %lout4 = call i128 @fn_intrinsic_utils_init()
  store i128 %lout4, i128* %lout, align 4
  %nout = alloca i128, align 8
  %nout5 = call i128 @fn_intrinsic_utils_init()
  store i128 %nout5, i128* %nout, align 4
  %j = alloca i128, align 8
  %j6 = call i128 @fn_intrinsic_utils_init()
  store i128 %j6, i128* %j, align 4
  %k = alloca i128, align 8
  %k7 = call i128 @fn_intrinsic_utils_init()
  store i128 %k7, i128* %k, align 4
  %lin = alloca i128, align 8
  %lin8 = call i128 @fn_intrinsic_utils_init()
  store i128 %lin8, i128* %lin, align 4
  %n = load i128, i128* %binsum.n.declare_arg, align 4
  %pow = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %n)
  %sub = sub i128 %pow, 1
  %ops = load i128, i128* %binsum.ops.declare_arg, align 4
  %mul = mul i128 %sub, %ops
  %call = call i128 @nbits(i128 %mul)
  store i128 %call, i128* %nout, align 4
  %ops9 = load i128, i128* %binsum.ops.declare_arg, align 4
  %n10 = load i128, i128* %binsum.n.declare_arg, align 4
  %nout11 = load i128, i128* %nout, align 4
  store i128 0, i128* %lin, align 4
  store i128 0, i128* %lout, align 4
  store i128 0, i128* %k, align 4
  store i128 0, i128* %j, align 4
  store i128 0, i128* %e2, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %lin13 = load i128, i128* %lin, align 4
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %binsum.in.declare_input, align 8
  %j14 = load i128, i128* %j, align 4
  %k15 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %j14, i128 %k15
  %in16 = load i128, i128* %array_getter, align 4
  %e217 = load i128, i128* %e2, align 4
  %mul18 = mul i128 %in16, %e217
  %add = add i128 %lin13, %mul18
  store i128 %add, i128* %lin, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %j19 = load i128, i128* %j, align 4
  %add20 = add i128 %j19, 1
  store i128 %add20, i128* %j, align 4
  %j21 = load i128, i128* %j, align 4
  %ops22 = load i128, i128* %binsum.ops.declare_arg, align 4
  %slt = icmp slt i128 %j21, %ops22
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %e223 = load i128, i128* %e2, align 4
  %e224 = load i128, i128* %e2, align 4
  %add25 = add i128 %e223, %e224
  store i128 %add25, i128* %e2, align 4
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %k27 = load i128, i128* %k, align 4
  %add28 = add i128 %k27, 1
  store i128 %add28, i128* %k, align 4
  %k29 = load i128, i128* %k, align 4
  %n30 = load i128, i128* %binsum.n.declare_arg, align 4
  %slt31 = icmp slt i128 %k29, %n30
  br i1 %slt31, label %loop.body, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch26
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch59, %loop.exit32
  %lin34 = load i128, i128* %lin, align 4
  %k35 = load i128, i128* %k, align 4
  %rshift = lshr i128 %lin34, %k35
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %k36 = load i128, i128* %k, align 4
  %out37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %k36
  store i128 %and, i128* %out37, align 4
  %out38 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %k39 = load i128, i128* %k, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %out38, i128 0, i128 %k39
  %out41 = load i128, i128* %array_getter40, align 4
  %out42 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %k43 = load i128, i128* %k, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %out42, i128 0, i128 %k43
  %out45 = load i128, i128* %array_getter44, align 4
  %sub46 = sub i128 %out45, 1
  %mul47 = mul i128 %out41, %sub46
  call void @fn_intrinsic_utils_constraint(i128 %mul47, i128 0, i1* @constraint.98)
  %lout48 = load i128, i128* %lout, align 4
  %out49 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %k50 = load i128, i128* %k, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %out49, i128 0, i128 %k50
  %out52 = load i128, i128* %array_getter51, align 4
  %e253 = load i128, i128* %e2, align 4
  %mul54 = mul i128 %out52, %e253
  %add55 = add i128 %lout48, %mul54
  store i128 %add55, i128* %lout, align 4
  %e256 = load i128, i128* %e2, align 4
  %e257 = load i128, i128* %e2, align 4
  %add58 = add i128 %e256, %e257
  store i128 %add58, i128* %e2, align 4
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body33
  %k60 = load i128, i128* %k, align 4
  %add61 = add i128 %k60, 1
  store i128 %add61, i128* %k, align 4
  %k62 = load i128, i128* %k, align 4
  %nout63 = load i128, i128* %nout, align 4
  %slt64 = icmp slt i128 %k62, %nout63
  br i1 %slt64, label %loop.body33, label %loop.exit65

loop.exit65:                                      ; preds = %loop.latch59
  %lin66 = load i128, i128* %lin, align 4
  %lout67 = load i128, i128* %lout, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lin66, i128 %lout67, i1* @constraint.99)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit65
  %ptr_cast = bitcast [256 x i128]** %binsum.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %nout11)
  %ptr_cast68 = bitcast [256 x [256 x i128]]** %binsum.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %ops9, i128 %n10)
  br label %exit

exit:                                             ; preds = %arraydim
  %out69 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [256 x i128]* %out69, [256 x i128]** %binsum.out.write_output_inner, align 8
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

define void @fn_template_init_longtoshortnoendcarry(%struct_template_circuit_longtoshortnoendcarry* %0) {
entry:
  %LongToShortNoEndCarry = alloca %struct_template_circuit_longtoshortnoendcarry*, align 8
  store %struct_template_circuit_longtoshortnoendcarry* %0, %struct_template_circuit_longtoshortnoendcarry** %LongToShortNoEndCarry, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 0
  %longtoshortnoendcarry.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %longtoshortnoendcarry.n.declare_arg = alloca i128, align 8
  store i128 %longtoshortnoendcarry.n.read_arg_inner, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 1
  %longtoshortnoendcarry.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %longtoshortnoendcarry.k.declare_arg = alloca i128, align 8
  store i128 %longtoshortnoendcarry.k.read_arg_inner, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %longtoshortnoendcarry.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %runningCarryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %runningCarryRangeChecks3 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks3, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry4 = alloca [256 x i128], align 8
  store [256 x i128]* %carry4, [256 x i128]** %carry, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry5 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry5, [256 x i128]** %sumAndCarry, align 8
  %longtoshortnoendcarry.runningcarry.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %runningCarry = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %runningCarry, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %outRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %outRangeChecks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %outRangeChecks6, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split7, [256 x [256 x i128]]** %split, align 8
  %i = alloca i128, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  store i128 %i8, i128* %i, align 4
  %longtoshortnoendcarry.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall9 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %n = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %k10 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %add = add i128 %k10, 1
  %k11 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i12
  %in13 = load i128, i128* %array_getter, align 4
  %n14 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %n15 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %n16 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %in13, i128 %n14, i128 %n15, i128 %n16)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i17 = load i128, i128* %i, align 4
  %split18 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i17
  %1 = bitcast [256 x i128]* %split18 to i8*
  %2 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k22 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %slt = icmp slt i128 %i21, %k22
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k23 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %uniform_array24 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array24, [256 x i128]** %carry, align 8
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry26 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 0
  store i128 0, i128* %carry26, align 4
  %split27 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter28 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split27, i128 0, i128 0, i128 0
  %split29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %out31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 0
  store i128 %split29, i128* %out31, align 4
  %k32 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sgt = icmp sgt i128 %k32, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %split33 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split33, i128 0, i128 0, i128 1
  %split35 = load i128, i128* %array_getter34, align 4
  %split36 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split36, i128 0, i128 1, i128 0
  %split38 = load i128, i128* %array_getter37, align 4
  %add39 = add i128 %split35, %split38
  %n40 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %n41 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %call42 = call [256 x i128]* @SplitFn(i128 %add39, i128 %n40, i128 %n41)
  store [256 x i128]* %call42, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry43 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry43, i128 0, i128 0
  %sumAndCarry45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %out47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 1
  store i128 %sumAndCarry45, i128* %out47, align 4
  %sumAndCarry48 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry48, i128 0, i128 1
  %sumAndCarry50 = load i128, i128* %array_getter49, align 4
  %ptr_getter51 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter51, i128 0, i128 1
  store i128 %sumAndCarry50, i128* %carry52, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.exit
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k55 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sgt56 = icmp sgt i128 %k55, 2
  br i1 %sgt56, label %if.true53, label %if.false54

if.true53:                                        ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body57

if.false54:                                       ; preds = %if.exit
  br label %if.exit121

loop.body57:                                      ; preds = %loop.latch94, %if.true53
  %split58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split58, i128 0, i128 %i59, i128 0
  %split61 = load i128, i128* %array_getter60, align 4
  %split62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i63 = load i128, i128* %i, align 4
  %sub = sub i128 %i63, 1
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split62, i128 0, i128 %sub, i128 1
  %split65 = load i128, i128* %array_getter64, align 4
  %add66 = add i128 %split61, %split65
  %split67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i68 = load i128, i128* %i, align 4
  %sub69 = sub i128 %i68, 2
  %array_getter70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split67, i128 0, i128 %sub69, i128 2
  %split71 = load i128, i128* %array_getter70, align 4
  %add72 = add i128 %add66, %split71
  %carry73 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i74 = load i128, i128* %i, align 4
  %sub75 = sub i128 %i74, 1
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %carry73, i128 0, i128 %sub75
  %carry77 = load i128, i128* %array_getter76, align 4
  %add78 = add i128 %add72, %carry77
  %n79 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %n80 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %call81 = call [256 x i128]* @SplitFn(i128 %add78, i128 %n79, i128 %n80)
  store [256 x i128]* %call81, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry82 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry82, i128 0, i128 0
  %sumAndCarry84 = load i128, i128* %array_getter83, align 4
  %ptr_getter85 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %i86 = load i128, i128* %i, align 4
  %out87 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter85, i128 0, i128 %i86
  store i128 %sumAndCarry84, i128* %out87, align 4
  %sumAndCarry88 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry88, i128 0, i128 1
  %sumAndCarry90 = load i128, i128* %array_getter89, align 4
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i92 = load i128, i128* %i, align 4
  %carry93 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %i92
  store i128 %sumAndCarry90, i128* %carry93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body57
  %i95 = load i128, i128* %i, align 4
  %add96 = add i128 %i95, 1
  store i128 %add96, i128* %i, align 4
  %i97 = load i128, i128* %i, align 4
  %k98 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %slt99 = icmp slt i128 %i97, %k98
  br i1 %slt99, label %loop.body57, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch94
  %split101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k102 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sub103 = sub i128 %k102, 1
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split101, i128 0, i128 %sub103, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %split106 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k107 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sub108 = sub i128 %k107, 2
  %array_getter109 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split106, i128 0, i128 %sub108, i128 2
  %split110 = load i128, i128* %array_getter109, align 4
  %add111 = add i128 %split105, %split110
  %carry112 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k113 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sub114 = sub i128 %k113, 1
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %carry112, i128 0, i128 %sub114
  %carry116 = load i128, i128* %array_getter115, align 4
  %add117 = add i128 %add111, %carry116
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %k119 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %out120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %k119
  store i128 %add117, i128* %out120, align 4
  br label %if.exit121

if.exit121:                                       ; preds = %if.false54, %loop.exit100
  %k122 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %add123 = add i128 %k122, 1
  store i128 0, i128* %i, align 4
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch143, %if.exit121
  %n125 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %call126 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n125)
  %ptr_getter127 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i128 = load i128, i128* %i, align 4
  %outRangeChecks129 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter127, i128 0, i128 %i128
  store %struct_template_circuit_num2bits* %call126, %struct_template_circuit_num2bits** %outRangeChecks129, align 8
  %out130 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %i131 = load i128, i128* %i, align 4
  %array_getter132 = getelementptr inbounds [256 x i128], [256 x i128]* %out130, i128 0, i128 %i131
  %out133 = load i128, i128* %array_getter132, align 4
  %outRangeChecks134 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i135 = load i128, i128* %i, align 4
  %array_getter136 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks134, i128 0, i128 %i135
  %outRangeChecks137 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter136, align 8
  %struct_getter138 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks137, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter138, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %out133, i1* @constraint.100)
  %ptr_getter139 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i140 = load i128, i128* %i, align 4
  %array_getter141 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter139, i128 0, i128 %i140
  %outRangeChecks142 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter141, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks142, i32 0, i32 1
  store i128 %out133, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch143

loop.latch143:                                    ; preds = %loop.body124
  %i144 = load i128, i128* %i, align 4
  %add145 = add i128 %i144, 1
  store i128 %add145, i128* %i, align 4
  %i146 = load i128, i128* %i, align 4
  %k147 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %add148 = add i128 %k147, 1
  %slt149 = icmp slt i128 %i146, %add148
  br i1 %slt149, label %loop.body124, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch143
  %k151 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %k152 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %in153 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %in153, i128 0, i128 0
  %in155 = load i128, i128* %array_getter154, align 4
  %out156 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %out156, i128 0, i128 0
  %out158 = load i128, i128* %array_getter157, align 4
  %sub159 = sub i128 %in155, %out158
  %n160 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %lshift = shl i128 1, %n160
  %sdiv = sdiv i128 %sub159, %lshift
  %ptr_getter161 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %runningCarry162 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter161, i128 0, i128 0
  store i128 %sdiv, i128* %runningCarry162, align 4
  %n163 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %k164 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %call165 = call i128 @log_ceil(i128 %k164)
  %add166 = add i128 %n163, %call165
  %call167 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add166)
  %ptr_getter168 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %runningCarryRangeChecks169 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter168, i128 0, i128 0
  store %struct_template_circuit_num2bits* %call167, %struct_template_circuit_num2bits** %runningCarryRangeChecks169, align 8
  %runningCarry170 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %array_getter171 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry170, i128 0, i128 0
  %runningCarry172 = load i128, i128* %array_getter171, align 4
  %runningCarryRangeChecks173 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter174 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks173, i128 0, i128 0
  %runningCarryRangeChecks175 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks175, i32 0, i32 1
  %num2bits.in.read_input_outter177 = load i128, i128* %struct_getter176, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter177, i128 %runningCarry172, i1* @constraint.101)
  %ptr_getter178 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter179 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter178, i128 0, i128 0
  %runningCarryRangeChecks180 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter179, align 8
  %num2bits.in.write_input_outter181 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks180, i32 0, i32 1
  store i128 %runningCarry172, i128* %num2bits.in.write_input_outter181, align 4
  %runningCarry182 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry182, i128 0, i128 0
  %runningCarry184 = load i128, i128* %array_getter183, align 4
  %n185 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %lshift186 = shl i128 1, %n185
  %mul = mul i128 %runningCarry184, %lshift186
  %in187 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %in187, i128 0, i128 0
  %in189 = load i128, i128* %array_getter188, align 4
  %out190 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %out190, i128 0, i128 0
  %out192 = load i128, i128* %array_getter191, align 4
  %sub193 = sub i128 %in189, %out192
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 %sub193, i1* @constraint.102)
  store i128 1, i128* %i, align 4
  br label %loop.body194

loop.body194:                                     ; preds = %loop.latch261, %loop.exit150
  %in195 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %i196 = load i128, i128* %i, align 4
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %in195, i128 0, i128 %i196
  %in198 = load i128, i128* %array_getter197, align 4
  %out199 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %i200 = load i128, i128* %i, align 4
  %array_getter201 = getelementptr inbounds [256 x i128], [256 x i128]* %out199, i128 0, i128 %i200
  %out202 = load i128, i128* %array_getter201, align 4
  %sub203 = sub i128 %in198, %out202
  %runningCarry204 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %i205 = load i128, i128* %i, align 4
  %sub206 = sub i128 %i205, 1
  %array_getter207 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry204, i128 0, i128 %sub206
  %runningCarry208 = load i128, i128* %array_getter207, align 4
  %add209 = add i128 %sub203, %runningCarry208
  %n210 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %lshift211 = shl i128 1, %n210
  %sdiv212 = sdiv i128 %add209, %lshift211
  %ptr_getter213 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %i214 = load i128, i128* %i, align 4
  %runningCarry215 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter213, i128 0, i128 %i214
  store i128 %sdiv212, i128* %runningCarry215, align 4
  %n216 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %k217 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %call218 = call i128 @log_ceil(i128 %k217)
  %add219 = add i128 %n216, %call218
  %call220 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add219)
  %ptr_getter221 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i222 = load i128, i128* %i, align 4
  %runningCarryRangeChecks223 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter221, i128 0, i128 %i222
  store %struct_template_circuit_num2bits* %call220, %struct_template_circuit_num2bits** %runningCarryRangeChecks223, align 8
  %runningCarry224 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %i225 = load i128, i128* %i, align 4
  %array_getter226 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry224, i128 0, i128 %i225
  %runningCarry227 = load i128, i128* %array_getter226, align 4
  %runningCarryRangeChecks228 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i229 = load i128, i128* %i, align 4
  %array_getter230 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks228, i128 0, i128 %i229
  %runningCarryRangeChecks231 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter230, align 8
  %struct_getter232 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks231, i32 0, i32 1
  %num2bits.in.read_input_outter233 = load i128, i128* %struct_getter232, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter233, i128 %runningCarry227, i1* @constraint.103)
  %ptr_getter234 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i235 = load i128, i128* %i, align 4
  %array_getter236 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter234, i128 0, i128 %i235
  %runningCarryRangeChecks237 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter236, align 8
  %num2bits.in.write_input_outter238 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks237, i32 0, i32 1
  store i128 %runningCarry227, i128* %num2bits.in.write_input_outter238, align 4
  %runningCarry239 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %i240 = load i128, i128* %i, align 4
  %array_getter241 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry239, i128 0, i128 %i240
  %runningCarry242 = load i128, i128* %array_getter241, align 4
  %n243 = load i128, i128* %longtoshortnoendcarry.n.declare_arg, align 4
  %lshift244 = shl i128 1, %n243
  %mul245 = mul i128 %runningCarry242, %lshift244
  %in246 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %i247 = load i128, i128* %i, align 4
  %array_getter248 = getelementptr inbounds [256 x i128], [256 x i128]* %in246, i128 0, i128 %i247
  %in249 = load i128, i128* %array_getter248, align 4
  %out250 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %i251 = load i128, i128* %i, align 4
  %array_getter252 = getelementptr inbounds [256 x i128], [256 x i128]* %out250, i128 0, i128 %i251
  %out253 = load i128, i128* %array_getter252, align 4
  %sub254 = sub i128 %in249, %out253
  %runningCarry255 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %i256 = load i128, i128* %i, align 4
  %sub257 = sub i128 %i256, 1
  %array_getter258 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry255, i128 0, i128 %sub257
  %runningCarry259 = load i128, i128* %array_getter258, align 4
  %add260 = add i128 %sub254, %runningCarry259
  call void @fn_intrinsic_utils_constraint(i128 %mul245, i128 %add260, i1* @constraint.104)
  br label %loop.latch261

loop.latch261:                                    ; preds = %loop.body194
  %i262 = load i128, i128* %i, align 4
  %add263 = add i128 %i262, 1
  store i128 %add263, i128* %i, align 4
  %i264 = load i128, i128* %i, align 4
  %k265 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %slt266 = icmp slt i128 %i264, %k265
  br i1 %slt266, label %loop.body194, label %loop.exit267

loop.exit267:                                     ; preds = %loop.latch261
  %runningCarry268 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %k269 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %sub270 = sub i128 %k269, 1
  %array_getter271 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry268, i128 0, i128 %sub270
  %runningCarry272 = load i128, i128* %array_getter271, align 4
  %out273 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %k274 = load i128, i128* %longtoshortnoendcarry.k.declare_arg, align 4
  %array_getter275 = getelementptr inbounds [256 x i128], [256 x i128]* %out273, i128 0, i128 %k274
  %out276 = load i128, i128* %array_getter275, align 4
  call void @fn_intrinsic_utils_constraint(i128 %runningCarry272, i128 %out276, i1* @constraint.105)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit267
  %ptr_cast = bitcast [256 x i128]** %carry to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k23)
  %ptr_cast277 = bitcast [256 x %struct_template_circuit_num2bits*]** %outRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast277, i128 %add123)
  %ptr_cast278 = bitcast [256 x i128]** %longtoshortnoendcarry.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast278, i128 %k)
  %ptr_cast279 = bitcast [256 x [256 x i128]]** %split to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast279, i128 %k11, i128 3)
  %ptr_cast280 = bitcast [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast280, i128 %k151)
  %ptr_cast281 = bitcast [256 x i128]** %sumAndCarry to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast281, i128 2)
  %ptr_cast282 = bitcast [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast282, i128 %k152)
  %ptr_cast283 = bitcast [256 x i128]** %longtoshortnoendcarry.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast283, i128 %add)
  br label %exit

exit:                                             ; preds = %arraydim
  %runningCarry284 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %longtoshortnoendcarry.runningcarry.write_inter_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 3
  store [256 x i128]* %runningCarry284, [256 x i128]** %longtoshortnoendcarry.runningcarry.write_inter_inner, align 8
  %out285 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %longtoshortnoendcarry.out.write_output_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 4
  store [256 x i128]* %out285, [256 x i128]** %longtoshortnoendcarry.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_longtoshortnoendcarry = alloca %struct_template_circuit_longtoshortnoendcarry, align 8
  %longtoshortnoendcarry.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 0
  store i128 %0, i128* %longtoshortnoendcarry.n.write_arg_inner, align 4
  %longtoshortnoendcarry.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 1
  store i128 %1, i128* %longtoshortnoendcarry.k.write_arg_inner, align 4
  ret %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry
}

define void @fn_template_init_modprod(%struct_template_circuit_modprod* %0) {
entry:
  %ModProd = alloca %struct_template_circuit_modprod*, align 8
  store %struct_template_circuit_modprod* %0, %struct_template_circuit_modprod** %ModProd, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 0
  %modprod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %modprod.n.declare_arg = alloca i128, align 8
  store i128 %modprod.n.read_arg_inner, i128* %modprod.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 1
  %modprod.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %modprod.a.declare_input = alloca i128, align 8
  store i128 %modprod.a.read_input_inner, i128* %modprod.a.declare_input, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 2
  %modprod.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %modprod.b.declare_input = alloca i128, align 8
  store i128 %modprod.b.read_input_inner, i128* %modprod.b.declare_input, align 4
  %modprod.prod.declare_output = alloca i128, align 8
  %prod = call i128 @fn_intrinsic_utils_init()
  store i128 %prod, i128* %modprod.prod.declare_output, align 4
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  store i128 %i3, i128* %i, align 4
  %b2n1 = alloca %struct_template_circuit_bits2num*, align 8
  %modprod.carry.declare_output = alloca i128, align 8
  %carry = call i128 @fn_intrinsic_utils_init()
  store i128 %carry, i128* %modprod.carry.declare_output, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %b2n2 = alloca %struct_template_circuit_bits2num*, align 8
  %n = load i128, i128* %modprod.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %n4 = load i128, i128* %modprod.n.declare_arg, align 4
  %mul = mul i128 2, %n4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %mul)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %modprod.a.declare_input, align 4
  %b = load i128, i128* %modprod.b.declare_input, align 4
  %mul5 = mul i128 %a, %b
  %n2b6 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b6, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %mul5, i1* @constraint.106)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %mul5, i128* %num2bits.in.write_input_outter, align 4
  %n8 = load i128, i128* %modprod.n.declare_arg, align 4
  %call9 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n8)
  store %struct_template_circuit_bits2num* %call9, %struct_template_circuit_bits2num** %b2n1, align 8
  %n10 = load i128, i128* %modprod.n.declare_arg, align 4
  %call11 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n10)
  store %struct_template_circuit_bits2num* %call11, %struct_template_circuit_bits2num** %b2n2, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b12 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b12, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i14
  %n2b15 = load i128, i128* %array_getter, align 4
  %b2n116 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n116, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i18
  %b2n120 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n120, i128 %n2b15, i1* @constraint.107)
  %ptr_getter21 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter21, i32 0, i32 1
  %bits2num.in.read_input_outter23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i24 = load i128, i128* %i, align 4
  %b2n125 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter23, i128 0, i128 %i24
  store i128 %n2b15, i128* %b2n125, align 4
  %n2b26 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b26, i32 0, i32 2
  %num2bits.out.read_output_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %n30 = load i128, i128* %modprod.n.declare_arg, align 4
  %add = add i128 %i29, %n30
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter28, i128 0, i128 %add
  %n2b32 = load i128, i128* %array_getter31, align 4
  %b2n233 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n233, i32 0, i32 1
  %bits2num.in.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter35, i128 0, i128 %i36
  %b2n238 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n238, i128 %n2b32, i1* @constraint.108)
  %ptr_getter39 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter39, i32 0, i32 1
  %bits2num.in.read_input_outter41 = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %i42 = load i128, i128* %i, align 4
  %b2n243 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter41, i128 0, i128 %i42
  store i128 %n2b32, i128* %b2n243, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %i, align 4
  %i46 = load i128, i128* %i, align 4
  %n47 = load i128, i128* %modprod.n.declare_arg, align 4
  %slt = icmp slt i128 %i46, %n47
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n148 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n148, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter49, align 4
  %prod50 = load i128, i128* %modprod.prod.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %prod50, i128 %bits2num.out.read_output_outter, i1* @constraint.109)
  %ptr_getter51 = load %struct_template_circuit_modprod*, %struct_template_circuit_modprod** %ModProd, align 8
  %modprod.prod.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %ptr_getter51, i32 0, i32 3
  store i128 %bits2num.out.read_output_outter, i128* %modprod.prod.write_output_inner, align 4
  %ModProd52 = load %struct_template_circuit_modprod*, %struct_template_circuit_modprod** %ModProd, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %ModProd52, i32 0, i32 3
  %modprod.prod.read_output_inner = load i128, i128* %struct_getter53, align 4
  store i128 %modprod.prod.read_output_inner, i128* %modprod.prod.declare_output, align 4
  %b2n254 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n254, i32 0, i32 2
  %bits2num.out.read_output_outter56 = load i128, i128* %struct_getter55, align 4
  %carry57 = load i128, i128* %modprod.carry.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry57, i128 %bits2num.out.read_output_outter56, i1* @constraint.110)
  %ptr_getter58 = load %struct_template_circuit_modprod*, %struct_template_circuit_modprod** %ModProd, align 8
  %modprod.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %ptr_getter58, i32 0, i32 4
  store i128 %bits2num.out.read_output_outter56, i128* %modprod.carry.write_output_inner, align 4
  %ModProd59 = load %struct_template_circuit_modprod*, %struct_template_circuit_modprod** %ModProd, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %ModProd59, i32 0, i32 4
  %modprod.carry.read_output_inner = load i128, i128* %struct_getter60, align 4
  store i128 %modprod.carry.read_output_inner, i128* %modprod.carry.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  br label %exit

exit:                                             ; preds = %arraydim
  %prod61 = load i128, i128* %modprod.prod.declare_output, align 4
  %modprod.prod.write_output_inner62 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %prod61, i128* %modprod.prod.write_output_inner62, align 4
  %carry63 = load i128, i128* %modprod.carry.declare_output, align 4
  %modprod.carry.write_output_inner64 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %carry63, i128* %modprod.carry.write_output_inner64, align 4
  ret void
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
  %struct_template_circuit_modprod = alloca %struct_template_circuit_modprod, align 8
  %modprod.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %struct_template_circuit_modprod, i32 0, i32 0
  store i128 %0, i128* %modprod.n.write_arg_inner, align 4
  ret %struct_template_circuit_modprod* %struct_template_circuit_modprod
}

define void @fn_template_init_bigisequal(%struct_template_circuit_bigisequal* %0) {
entry:
  %BigIsEqual = alloca %struct_template_circuit_bigisequal*, align 8
  store %struct_template_circuit_bigisequal* %0, %struct_template_circuit_bigisequal** %BigIsEqual, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 0
  %bigisequal.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigisequal.k.declare_arg = alloca i128, align 8
  store i128 %bigisequal.k.read_arg_inner, i128* %bigisequal.k.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 1
  %bigisequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bigisequal.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigisequal.a.read_input_inner, [256 x i128]** %bigisequal.a.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 2
  %bigisequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigisequal.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigisequal.b.read_input_inner, [256 x i128]** %bigisequal.b.declare_input, align 8
  %bigisequal.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %bigisequal.out.declare_output, align 4
  %isEquals = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %isEquals3 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %isEquals3, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %total = alloca i128, align 8
  %total4 = call i128 @fn_intrinsic_utils_init()
  store i128 %total4, i128* %total, align 4
  %checkZero = alloca %struct_template_circuit_iszero*, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %k = load i128, i128* %bigisequal.k.declare_arg, align 4
  %k6 = load i128, i128* %bigisequal.k.declare_arg, align 4
  %k7 = load i128, i128* %bigisequal.k.declare_arg, align 4
  %k8 = load i128, i128* %bigisequal.k.declare_arg, align 4
  store i128 %k8, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i9 = load i128, i128* %i, align 4
  %isEquals10 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter, i128 0, i128 %i9
  store %struct_template_circuit_isequal* %call, %struct_template_circuit_isequal** %isEquals10, align 8
  %a = load [256 x i128]*, [256 x i128]** %bigisequal.a.declare_input, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %isEquals13 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals13, i128 0, i128 %i14
  %isEquals16 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter15, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals16, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %isEquals19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEquals19, i128 %a12, i1* @constraint.111)
  %ptr_getter20 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter20, i128 0, i128 %i21
  %isEquals23 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals23, i32 0, i32 0
  %isequal.in.read_input_outter25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %isEquals26 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter25, i128 0, i128 0
  store i128 %a12, i128* %isEquals26, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigisequal.b.declare_input, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i27
  %b29 = load i128, i128* %array_getter28, align 4
  %isEquals30 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals30, i128 0, i128 %i31
  %isEquals33 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals33, i32 0, i32 0
  %isequal.in.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter35, i128 0, i128 1
  %isEquals37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEquals37, i128 %b29, i1* @constraint.112)
  %ptr_getter38 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i39 = load i128, i128* %i, align 4
  %array_getter40 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter38, i128 0, i128 %i39
  %isEquals41 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter40, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals41, i32 0, i32 0
  %isequal.in.read_input_outter43 = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %isEquals44 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter43, i128 0, i128 1
  store i128 %b29, i128* %isEquals44, align 4
  %total45 = load i128, i128* %total, align 4
  %isEquals46 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals46, i128 0, i128 %i47
  %isEquals49 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter48, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals49, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter50, align 4
  %sub = sub i128 %total45, %isequal.out.read_output_outter
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i51 = load i128, i128* %i, align 4
  %add = add i128 %i51, 1
  store i128 %add, i128* %i, align 4
  %i52 = load i128, i128* %i, align 4
  %k53 = load i128, i128* %bigisequal.k.declare_arg, align 4
  %slt = icmp slt i128 %i52, %k53
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call54 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call54, %struct_template_circuit_iszero** %checkZero, align 8
  %total55 = load i128, i128* %total, align 4
  %checkZero56 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero56, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %total55, i1* @constraint.113)
  %ptr_getter58 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter58, i32 0, i32 0
  store i128 %total55, i128* %iszero.in.write_input_outter, align 4
  %checkZero59 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero59, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter60, align 4
  %out61 = load i128, i128* %bigisequal.out.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out61, i128 %iszero.out.read_output_outter, i1* @constraint.114)
  %ptr_getter62 = load %struct_template_circuit_bigisequal*, %struct_template_circuit_bigisequal** %BigIsEqual, align 8
  %bigisequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %ptr_getter62, i32 0, i32 3
  store i128 %iszero.out.read_output_outter, i128* %bigisequal.out.write_output_inner, align 4
  %BigIsEqual63 = load %struct_template_circuit_bigisequal*, %struct_template_circuit_bigisequal** %BigIsEqual, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %BigIsEqual63, i32 0, i32 3
  %bigisequal.out.read_output_inner = load i128, i128* %struct_getter64, align 4
  store i128 %bigisequal.out.read_output_inner, i128* %bigisequal.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x %struct_template_circuit_isequal*]** %isEquals to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k7)
  %ptr_cast65 = bitcast [256 x i128]** %bigisequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast65, i128 %k)
  %ptr_cast66 = bitcast [256 x i128]** %bigisequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast66, i128 %k6)
  br label %exit

exit:                                             ; preds = %arraydim
  %out67 = load i128, i128* %bigisequal.out.declare_output, align 4
  %bigisequal.out.write_output_inner68 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %out67, i128* %bigisequal.out.write_output_inner68, align 4
  ret void
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
  %struct_template_circuit_bigisequal = alloca %struct_template_circuit_bigisequal, align 8
  %bigisequal.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal, i32 0, i32 0
  store i128 %0, i128* %bigisequal.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal
}

define void @fn_template_init_bigadd(%struct_template_circuit_bigadd* %0) {
entry:
  %BigAdd = alloca %struct_template_circuit_bigadd*, align 8
  store %struct_template_circuit_bigadd* %0, %struct_template_circuit_bigadd** %BigAdd, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 0
  %bigadd.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigadd.n.declare_arg = alloca i128, align 8
  store i128 %bigadd.n.read_arg_inner, i128* %bigadd.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 1
  %bigadd.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigadd.k.declare_arg = alloca i128, align 8
  store i128 %bigadd.k.read_arg_inner, i128* %bigadd.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 2
  %bigadd.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigadd.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigadd.a.read_input_inner, [256 x i128]** %bigadd.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 3
  %bigadd.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigadd.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigadd.b.read_input_inner, [256 x i128]** %bigadd.b.declare_input, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %bigadd.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigadd.out.declare_output, align 8
  %unit0 = alloca %struct_template_circuit_modsum*, align 8
  %unit = alloca [256 x %struct_template_circuit_modsumthree*]*, align 8
  %unit5 = alloca [256 x %struct_template_circuit_modsumthree*], align 8
  store [256 x %struct_template_circuit_modsumthree*]* %unit5, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %n = load i128, i128* %bigadd.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigadd.k.declare_arg, align 4
  %k6 = load i128, i128* %bigadd.k.declare_arg, align 4
  %k7 = load i128, i128* %bigadd.k.declare_arg, align 4
  %add = add i128 %k7, 1
  %n8 = load i128, i128* %bigadd.n.declare_arg, align 4
  %call = call %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %n8)
  store %struct_template_circuit_modsum* %call, %struct_template_circuit_modsum** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %bigadd.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a9 = load i128, i128* %array_getter, align 4
  %unit010 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit010, i32 0, i32 1
  %modsum.a.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsum.a.read_input_outter, i128 %a9, i1* @constraint.115)
  %ptr_getter = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %modsum.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter, i32 0, i32 1
  store i128 %a9, i128* %modsum.a.write_input_outter, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigadd.b.declare_input, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b13 = load i128, i128* %array_getter12, align 4
  %unit014 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit014, i32 0, i32 2
  %modsum.b.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsum.b.read_input_outter, i128 %b13, i1* @constraint.116)
  %ptr_getter16 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %modsum.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter16, i32 0, i32 2
  store i128 %b13, i128* %modsum.b.write_input_outter, align 4
  %unit017 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit017, i32 0, i32 3
  %modsum.sum.read_output_outter = load i128, i128* %struct_getter18, align 4
  %out19 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out19, i128 0, i128 0
  %out21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out21, i128 %modsum.sum.read_output_outter, i1* @constraint.117)
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %out23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 0
  store i128 %modsum.sum.read_output_outter, i128* %out23, align 4
  %k24 = load i128, i128* %bigadd.k.declare_arg, align 4
  %sub = sub i128 %k24, 1
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n25 = load i128, i128* %bigadd.n.declare_arg, align 4
  %call26 = call %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %n25)
  %ptr_getter27 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i28 = load i128, i128* %i, align 4
  %sub29 = sub i128 %i28, 1
  %unit30 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter27, i128 0, i128 %sub29
  store %struct_template_circuit_modsumthree* %call26, %struct_template_circuit_modsumthree** %unit30, align 8
  %a31 = load [256 x i128]*, [256 x i128]** %bigadd.a.declare_input, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %i32
  %a34 = load i128, i128* %array_getter33, align 4
  %unit35 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i36 = load i128, i128* %i, align 4
  %sub37 = sub i128 %i36, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit39, i32 0, i32 1
  %modsumthree.a.read_input_outter = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.a.read_input_outter, i128 %a34, i1* @constraint.118)
  %ptr_getter41 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i42 = load i128, i128* %i, align 4
  %sub43 = sub i128 %i42, 1
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter41, i128 0, i128 %sub43
  %unit45 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter44, align 8
  %modsumthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit45, i32 0, i32 1
  store i128 %a34, i128* %modsumthree.a.write_input_outter, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %bigadd.b.declare_input, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i47
  %b49 = load i128, i128* %array_getter48, align 4
  %unit50 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit54, i32 0, i32 2
  %modsumthree.b.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.b.read_input_outter, i128 %b49, i1* @constraint.119)
  %ptr_getter56 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i57 = load i128, i128* %i, align 4
  %sub58 = sub i128 %i57, 1
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter56, i128 0, i128 %sub58
  %unit60 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter59, align 8
  %modsumthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit60, i32 0, i32 2
  store i128 %b49, i128* %modsumthree.b.write_input_outter, align 4
  %i61 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i61, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit062 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit062, i32 0, i32 4
  %modsum.carry.read_output_outter = load i128, i128* %struct_getter63, align 4
  %unit64 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit68, i32 0, i32 3
  %modsumthree.c.read_input_outter = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.c.read_input_outter, i128 %modsum.carry.read_output_outter, i1* @constraint.120)
  %ptr_getter70 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i71 = load i128, i128* %i, align 4
  %sub72 = sub i128 %i71, 1
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter73, align 8
  %modsumthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit74, i32 0, i32 3
  store i128 %modsum.carry.read_output_outter, i128* %modsumthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit75 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i76 = load i128, i128* %i, align 4
  %sub77 = sub i128 %i76, 2
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit75, i128 0, i128 %sub77
  %unit79 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit79, i32 0, i32 5
  %modsumthree.carry.read_output_outter = load i128, i128* %struct_getter80, align 4
  %unit81 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i82 = load i128, i128* %i, align 4
  %sub83 = sub i128 %i82, 1
  %array_getter84 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit81, i128 0, i128 %sub83
  %unit85 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter84, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit85, i32 0, i32 3
  %modsumthree.c.read_input_outter87 = load i128, i128* %struct_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.c.read_input_outter87, i128 %modsumthree.carry.read_output_outter, i1* @constraint.121)
  %ptr_getter88 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i89 = load i128, i128* %i, align 4
  %sub90 = sub i128 %i89, 1
  %array_getter91 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter88, i128 0, i128 %sub90
  %unit92 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter91, align 8
  %modsumthree.c.write_input_outter93 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit92, i32 0, i32 3
  store i128 %modsumthree.carry.read_output_outter, i128* %modsumthree.c.write_input_outter93, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit94 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i95 = load i128, i128* %i, align 4
  %sub96 = sub i128 %i95, 1
  %array_getter97 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit94, i128 0, i128 %sub96
  %unit98 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter97, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit98, i32 0, i32 4
  %modsumthree.sum.read_output_outter = load i128, i128* %struct_getter99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %out100, i128 0, i128 %i101
  %out103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out103, i128 %modsumthree.sum.read_output_outter, i1* @constraint.122)
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %i105 = load i128, i128* %i, align 4
  %out106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i105
  store i128 %modsumthree.sum.read_output_outter, i128* %out106, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i107 = load i128, i128* %i, align 4
  %add108 = add i128 %i107, 1
  store i128 %add108, i128* %i, align 4
  %i109 = load i128, i128* %i, align 4
  %k110 = load i128, i128* %bigadd.k.declare_arg, align 4
  %slt = icmp slt i128 %i109, %k110
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit111 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %k112 = load i128, i128* %bigadd.k.declare_arg, align 4
  %sub113 = sub i128 %k112, 2
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit111, i128 0, i128 %sub113
  %unit115 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit115, i32 0, i32 5
  %modsumthree.carry.read_output_outter117 = load i128, i128* %struct_getter116, align 4
  %out118 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %k119 = load i128, i128* %bigadd.k.declare_arg, align 4
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %out118, i128 0, i128 %k119
  %out121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out121, i128 %modsumthree.carry.read_output_outter117, i1* @constraint.123)
  %ptr_getter122 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %k123 = load i128, i128* %bigadd.k.declare_arg, align 4
  %out124 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter122, i128 0, i128 %k123
  store i128 %modsumthree.carry.read_output_outter117, i128* %out124, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x %struct_template_circuit_modsumthree*]** %unit to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub)
  %ptr_cast125 = bitcast [256 x i128]** %bigadd.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast125, i128 %k)
  %ptr_cast126 = bitcast [256 x i128]** %bigadd.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast126, i128 %k6)
  %ptr_cast127 = bitcast [256 x i128]** %bigadd.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast127, i128 %add)
  br label %exit

exit:                                             ; preds = %arraydim
  %out128 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %bigadd.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 4
  store [256 x i128]* %out128, [256 x i128]** %bigadd.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigadd = alloca %struct_template_circuit_bigadd, align 8
  %bigadd.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 0
  store i128 %0, i128* %bigadd.n.write_arg_inner, align 4
  %bigadd.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 1
  store i128 %1, i128* %bigadd.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigadd* %struct_template_circuit_bigadd
}

define void @fn_template_init_bigmult(%struct_template_circuit_bigmult* %0) {
entry:
  %BigMult = alloca %struct_template_circuit_bigmult*, align 8
  store %struct_template_circuit_bigmult* %0, %struct_template_circuit_bigmult** %BigMult, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 0
  %bigmult.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmult.n.declare_arg = alloca i128, align 8
  store i128 %bigmult.n.read_arg_inner, i128* %bigmult.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 1
  %bigmult.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmult.k.declare_arg = alloca i128, align 8
  store i128 %bigmult.k.read_arg_inner, i128* %bigmult.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 2
  %bigmult.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmult.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmult.a.read_input_inner, [256 x i128]** %bigmult.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 3
  %bigmult.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmult.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmult.b.read_input_inner, [256 x i128]** %bigmult.b.declare_input, align 8
  %LOGK = alloca i128, align 8
  %LOGK4 = call i128 @fn_intrinsic_utils_init()
  store i128 %LOGK4, i128* %LOGK, align 4
  %mult = alloca %struct_template_circuit_bigmultshortlong*, align 8
  %longshort = alloca %struct_template_circuit_longtoshortnoendcarry*, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %bigmult.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmult.out.declare_output, align 8
  %k = load i128, i128* %bigmult.k.declare_arg, align 4
  %k6 = load i128, i128* %bigmult.k.declare_arg, align 4
  %k7 = load i128, i128* %bigmult.k.declare_arg, align 4
  %mul = mul i128 2, %k7
  %k8 = load i128, i128* %bigmult.k.declare_arg, align 4
  %call = call i128 @log_ceil(i128 %k8)
  store i128 %call, i128* %LOGK, align 4
  %n = load i128, i128* %bigmult.n.declare_arg, align 4
  %k9 = load i128, i128* %bigmult.k.declare_arg, align 4
  %n10 = load i128, i128* %bigmult.n.declare_arg, align 4
  %mul11 = mul i128 2, %n10
  %LOGK12 = load i128, i128* %LOGK, align 4
  %add = add i128 %mul11, %LOGK12
  %call13 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %n, i128 %k9, i128 %add)
  store %struct_template_circuit_bigmultshortlong* %call13, %struct_template_circuit_bigmultshortlong** %mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %bigmult.a.declare_input, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i14
  %a15 = load i128, i128* %array_getter, align 4
  %mult16 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult16, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter, i128 0, i128 %i18
  %mult20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult20, i128 %a15, i1* @constraint.124)
  %ptr_getter = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter22 = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %i23 = load i128, i128* %i, align 4
  %mult24 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter22, i128 0, i128 %i23
  store i128 %a15, i128* %mult24, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmult.b.declare_input, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i25
  %b27 = load i128, i128* %array_getter26, align 4
  %mult28 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult28, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter, i128 0, i128 %i30
  %mult32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult32, i128 %b27, i1* @constraint.125)
  %ptr_getter33 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter33, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %i36 = load i128, i128* %i, align 4
  %mult37 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter35, i128 0, i128 %i36
  store i128 %b27, i128* %mult37, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %k41 = load i128, i128* %bigmult.k.declare_arg, align 4
  %slt = icmp slt i128 %i40, %k41
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n42 = load i128, i128* %bigmult.n.declare_arg, align 4
  %k43 = load i128, i128* %bigmult.k.declare_arg, align 4
  %mul44 = mul i128 2, %k43
  %sub = sub i128 %mul44, 1
  %call45 = call %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %n42, i128 %sub)
  store %struct_template_circuit_longtoshortnoendcarry* %call45, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body46

loop.body46:                                      ; preds = %loop.latch62, %loop.exit
  %mult47 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult47, i32 0, i32 5
  %bigmultshortlong.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %i49 = load i128, i128* %i, align 4
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.out.read_output_outter, i128 0, i128 %i49
  %mult51 = load i128, i128* %array_getter50, align 4
  %longshort52 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort52, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter53, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter, i128 0, i128 %i54
  %longshort56 = load i128, i128* %array_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %longshort56, i128 %mult51, i1* @constraint.126)
  %ptr_getter57 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %ptr_getter57, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter59 = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %i60 = load i128, i128* %i, align 4
  %longshort61 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter59, i128 0, i128 %i60
  store i128 %mult51, i128* %longshort61, align 4
  br label %loop.latch62

loop.latch62:                                     ; preds = %loop.body46
  %i63 = load i128, i128* %i, align 4
  %add64 = add i128 %i63, 1
  store i128 %add64, i128* %i, align 4
  %i65 = load i128, i128* %i, align 4
  %k66 = load i128, i128* %bigmult.k.declare_arg, align 4
  %mul67 = mul i128 2, %k66
  %sub68 = sub i128 %mul67, 1
  %slt69 = icmp slt i128 %i65, %sub68
  br i1 %slt69, label %loop.body46, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch62
  store i128 0, i128* %i, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch84, %loop.exit70
  %longshort72 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort72, i32 0, i32 4
  %longtoshortnoendcarry.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter73, align 8
  %i74 = load i128, i128* %i, align 4
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.out.read_output_outter, i128 0, i128 %i74
  %longshort76 = load i128, i128* %array_getter75, align 4
  %out77 = load [256 x i128]*, [256 x i128]** %bigmult.out.declare_output, align 8
  %i78 = load i128, i128* %i, align 4
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %out77, i128 0, i128 %i78
  %out80 = load i128, i128* %array_getter79, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out80, i128 %longshort76, i1* @constraint.127)
  %ptr_getter81 = load [256 x i128]*, [256 x i128]** %bigmult.out.declare_output, align 8
  %i82 = load i128, i128* %i, align 4
  %out83 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter81, i128 0, i128 %i82
  store i128 %longshort76, i128* %out83, align 4
  br label %loop.latch84

loop.latch84:                                     ; preds = %loop.body71
  %i85 = load i128, i128* %i, align 4
  %add86 = add i128 %i85, 1
  store i128 %add86, i128* %i, align 4
  %i87 = load i128, i128* %i, align 4
  %k88 = load i128, i128* %bigmult.k.declare_arg, align 4
  %mul89 = mul i128 2, %k88
  %slt90 = icmp slt i128 %i87, %mul89
  br i1 %slt90, label %loop.body71, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch84
  br label %arraydim

arraydim:                                         ; preds = %loop.exit91
  %ptr_cast = bitcast [256 x i128]** %bigmult.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %mul)
  %ptr_cast92 = bitcast [256 x i128]** %bigmult.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast92, i128 %k)
  %ptr_cast93 = bitcast [256 x i128]** %bigmult.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast93, i128 %k6)
  br label %exit

exit:                                             ; preds = %arraydim
  %out94 = load [256 x i128]*, [256 x i128]** %bigmult.out.declare_output, align 8
  %bigmult.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 4
  store [256 x i128]* %out94, [256 x i128]** %bigmult.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmult = alloca %struct_template_circuit_bigmult, align 8
  %bigmult.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 0
  store i128 %0, i128* %bigmult.n.write_arg_inner, align 4
  %bigmult.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 1
  store i128 %1, i128* %bigmult.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmult* %struct_template_circuit_bigmult
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %AliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  store %struct_template_circuit_aliascheck* %0, %struct_template_circuit_aliascheck** %AliasCheck, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %aliascheck.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %aliascheck.in.read_input_inner, [256 x i128]** %aliascheck.in.declare_input, align 8
  %compConstant = alloca %struct_template_circuit_compconstant*, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  store %struct_template_circuit_compconstant* %call, %struct_template_circuit_compconstant** %compConstant, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %aliascheck.in.declare_input, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i2
  %in3 = load i128, i128* %array_getter, align 4
  %compConstant4 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant4, i32 0, i32 1
  %compconstant.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i6
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.128)
  %ptr_getter = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %i11 = load i128, i128* %i, align 4
  %compConstant12 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i11
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
  call void @fn_intrinsic_utils_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.129)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %aliascheck.in.declare_input to i128*
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
  %scale = alloca i128, align 8
  %scale1 = call i128 @fn_intrinsic_utils_init()
  store i128 %scale1, i128* %scale, align 4
  %ret = alloca i128, align 8
  %ret2 = call i128 @fn_intrinsic_utils_init()
  store i128 %ret2, i128* %ret, align 4
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b3 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b3, [256 x i128]** %norm_b, align 8
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a4 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a4, [256 x i128]** %norm_a, align 8
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

define void @fn_template_init_bigsub(%struct_template_circuit_bigsub* %0) {
entry:
  %BigSub = alloca %struct_template_circuit_bigsub*, align 8
  store %struct_template_circuit_bigsub* %0, %struct_template_circuit_bigsub** %BigSub, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 0
  %bigsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigsub.n.declare_arg = alloca i128, align 8
  store i128 %bigsub.n.read_arg_inner, i128* %bigsub.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 1
  %bigsub.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigsub.k.declare_arg = alloca i128, align 8
  store i128 %bigsub.k.read_arg_inner, i128* %bigsub.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 2
  %bigsub.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigsub.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsub.a.read_input_inner, [256 x i128]** %bigsub.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 3
  %bigsub.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigsub.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsub.b.read_input_inner, [256 x i128]** %bigsub.b.declare_input, align 8
  %bigsub.underflow.declare_output = alloca i128, align 8
  %underflow = call i128 @fn_intrinsic_utils_init()
  store i128 %underflow, i128* %bigsub.underflow.declare_output, align 4
  %unit0 = alloca %struct_template_circuit_modsub*, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  store i128 %i4, i128* %i, align 4
  %unit = alloca [256 x %struct_template_circuit_modsubthree*]*, align 8
  %unit5 = alloca [256 x %struct_template_circuit_modsubthree*], align 8
  store [256 x %struct_template_circuit_modsubthree*]* %unit5, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %bigsub.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigsub.out.declare_output, align 8
  %n = load i128, i128* %bigsub.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigsub.k.declare_arg, align 4
  %k6 = load i128, i128* %bigsub.k.declare_arg, align 4
  %k7 = load i128, i128* %bigsub.k.declare_arg, align 4
  %n8 = load i128, i128* %bigsub.n.declare_arg, align 4
  %call = call %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %n8)
  store %struct_template_circuit_modsub* %call, %struct_template_circuit_modsub** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %bigsub.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a9 = load i128, i128* %array_getter, align 4
  %unit010 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit010, i32 0, i32 1
  %modsub.a.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsub.a.read_input_outter, i128 %a9, i1* @constraint.130)
  %ptr_getter = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %modsub.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter, i32 0, i32 1
  store i128 %a9, i128* %modsub.a.write_input_outter, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigsub.b.declare_input, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b13 = load i128, i128* %array_getter12, align 4
  %unit014 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit014, i32 0, i32 2
  %modsub.b.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsub.b.read_input_outter, i128 %b13, i1* @constraint.131)
  %ptr_getter16 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %modsub.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter16, i32 0, i32 2
  store i128 %b13, i128* %modsub.b.write_input_outter, align 4
  %unit017 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit017, i32 0, i32 3
  %modsub.out.read_output_outter = load i128, i128* %struct_getter18, align 4
  %out19 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out19, i128 0, i128 0
  %out21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out21, i128 %modsub.out.read_output_outter, i1* @constraint.132)
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %out23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 0
  store i128 %modsub.out.read_output_outter, i128* %out23, align 4
  %k24 = load i128, i128* %bigsub.k.declare_arg, align 4
  %sub = sub i128 %k24, 1
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n25 = load i128, i128* %bigsub.n.declare_arg, align 4
  %call26 = call %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %n25)
  %ptr_getter27 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i28 = load i128, i128* %i, align 4
  %sub29 = sub i128 %i28, 1
  %unit30 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter27, i128 0, i128 %sub29
  store %struct_template_circuit_modsubthree* %call26, %struct_template_circuit_modsubthree** %unit30, align 8
  %a31 = load [256 x i128]*, [256 x i128]** %bigsub.a.declare_input, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %i32
  %a34 = load i128, i128* %array_getter33, align 4
  %unit35 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i36 = load i128, i128* %i, align 4
  %sub37 = sub i128 %i36, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit39, i32 0, i32 1
  %modsubthree.a.read_input_outter = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.a.read_input_outter, i128 %a34, i1* @constraint.133)
  %ptr_getter41 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i42 = load i128, i128* %i, align 4
  %sub43 = sub i128 %i42, 1
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter41, i128 0, i128 %sub43
  %unit45 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter44, align 8
  %modsubthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit45, i32 0, i32 1
  store i128 %a34, i128* %modsubthree.a.write_input_outter, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %bigsub.b.declare_input, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i47
  %b49 = load i128, i128* %array_getter48, align 4
  %unit50 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit54, i32 0, i32 2
  %modsubthree.b.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.b.read_input_outter, i128 %b49, i1* @constraint.134)
  %ptr_getter56 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i57 = load i128, i128* %i, align 4
  %sub58 = sub i128 %i57, 1
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter56, i128 0, i128 %sub58
  %unit60 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter59, align 8
  %modsubthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit60, i32 0, i32 2
  store i128 %b49, i128* %modsubthree.b.write_input_outter, align 4
  %i61 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i61, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit062 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit062, i32 0, i32 4
  %modsub.borrow.read_output_outter = load i128, i128* %struct_getter63, align 4
  %unit64 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit68, i32 0, i32 3
  %modsubthree.c.read_input_outter = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.c.read_input_outter, i128 %modsub.borrow.read_output_outter, i1* @constraint.135)
  %ptr_getter70 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i71 = load i128, i128* %i, align 4
  %sub72 = sub i128 %i71, 1
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter73, align 8
  %modsubthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit74, i32 0, i32 3
  store i128 %modsub.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit75 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i76 = load i128, i128* %i, align 4
  %sub77 = sub i128 %i76, 2
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit75, i128 0, i128 %sub77
  %unit79 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit79, i32 0, i32 6
  %modsubthree.borrow.read_output_outter = load i128, i128* %struct_getter80, align 4
  %unit81 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i82 = load i128, i128* %i, align 4
  %sub83 = sub i128 %i82, 1
  %array_getter84 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit81, i128 0, i128 %sub83
  %unit85 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter84, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit85, i32 0, i32 3
  %modsubthree.c.read_input_outter87 = load i128, i128* %struct_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.c.read_input_outter87, i128 %modsubthree.borrow.read_output_outter, i1* @constraint.136)
  %ptr_getter88 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i89 = load i128, i128* %i, align 4
  %sub90 = sub i128 %i89, 1
  %array_getter91 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter88, i128 0, i128 %sub90
  %unit92 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter91, align 8
  %modsubthree.c.write_input_outter93 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit92, i32 0, i32 3
  store i128 %modsubthree.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter93, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit94 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i95 = load i128, i128* %i, align 4
  %sub96 = sub i128 %i95, 1
  %array_getter97 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit94, i128 0, i128 %sub96
  %unit98 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter97, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit98, i32 0, i32 5
  %modsubthree.out.read_output_outter = load i128, i128* %struct_getter99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %out100, i128 0, i128 %i101
  %out103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out103, i128 %modsubthree.out.read_output_outter, i1* @constraint.137)
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %i105 = load i128, i128* %i, align 4
  %out106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i105
  store i128 %modsubthree.out.read_output_outter, i128* %out106, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i107 = load i128, i128* %i, align 4
  %add = add i128 %i107, 1
  store i128 %add, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %k109 = load i128, i128* %bigsub.k.declare_arg, align 4
  %slt = icmp slt i128 %i108, %k109
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit110 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %k111 = load i128, i128* %bigsub.k.declare_arg, align 4
  %sub112 = sub i128 %k111, 2
  %array_getter113 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit110, i128 0, i128 %sub112
  %unit114 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter113, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit114, i32 0, i32 6
  %modsubthree.borrow.read_output_outter116 = load i128, i128* %struct_getter115, align 4
  %underflow117 = load i128, i128* %bigsub.underflow.declare_output, align 4
  call void @fn_intrinsic_utils_constraint(i128 %underflow117, i128 %modsubthree.borrow.read_output_outter116, i1* @constraint.138)
  %ptr_getter118 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %BigSub, align 8
  %bigsub.underflow.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter118, i32 0, i32 5
  store i128 %modsubthree.borrow.read_output_outter116, i128* %bigsub.underflow.write_output_inner, align 4
  %BigSub119 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %BigSub, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %BigSub119, i32 0, i32 5
  %bigsub.underflow.read_output_inner = load i128, i128* %struct_getter120, align 4
  store i128 %bigsub.underflow.read_output_inner, i128* %bigsub.underflow.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bigsub.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k)
  %ptr_cast121 = bitcast [256 x i128]** %bigsub.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 %k6)
  %ptr_cast122 = bitcast [256 x %struct_template_circuit_modsubthree*]** %unit to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 %sub)
  %ptr_cast123 = bitcast [256 x i128]** %bigsub.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast123, i128 %k7)
  br label %exit

exit:                                             ; preds = %arraydim
  %out124 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %bigsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 4
  store [256 x i128]* %out124, [256 x i128]** %bigsub.out.write_output_inner, align 8
  %underflow125 = load i128, i128* %bigsub.underflow.declare_output, align 4
  %bigsub.underflow.write_output_inner126 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %underflow125, i128* %bigsub.underflow.write_output_inner126, align 4
  ret void
}

define %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsub = alloca %struct_template_circuit_bigsub, align 8
  %bigsub.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 0
  store i128 %0, i128* %bigsub.n.write_arg_inner, align 4
  %bigsub.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 1
  store i128 %1, i128* %bigsub.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigsub* %struct_template_circuit_bigsub
}

define void @fn_template_init_bigaddmodp(%struct_template_circuit_bigaddmodp* %0) {
entry:
  %BigAddModP = alloca %struct_template_circuit_bigaddmodp*, align 8
  store %struct_template_circuit_bigaddmodp* %0, %struct_template_circuit_bigaddmodp** %BigAddModP, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 0
  %bigaddmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigaddmodp.n.declare_arg = alloca i128, align 8
  store i128 %bigaddmodp.n.read_arg_inner, i128* %bigaddmodp.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 1
  %bigaddmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigaddmodp.k.declare_arg = alloca i128, align 8
  store i128 %bigaddmodp.k.read_arg_inner, i128* %bigaddmodp.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 2
  %bigaddmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigaddmodp.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigaddmodp.a.read_input_inner, [256 x i128]** %bigaddmodp.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 3
  %bigaddmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigaddmodp.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigaddmodp.b.read_input_inner, [256 x i128]** %bigaddmodp.b.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 4
  %bigaddmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigaddmodp.p.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigaddmodp.p.read_input_inner, [256 x i128]** %bigaddmodp.p.declare_input, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %bigaddmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %n = load i128, i128* %bigaddmodp.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %k6 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %k7 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %k8 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %n9 = load i128, i128* %bigaddmodp.n.declare_arg, align 4
  %k10 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n9, i128 %k10)
  store %struct_template_circuit_bigadd* %call, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %bigaddmodp.a.declare_input, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %add13 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add13, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i15
  %add17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add17, i128 %a12, i1* @constraint.139)
  %ptr_getter = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter, i32 0, i32 2
  %bigadd.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i20 = load i128, i128* %i, align 4
  %add21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter19, i128 0, i128 %i20
  store i128 %a12, i128* %add21, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigaddmodp.b.declare_input, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i22
  %b24 = load i128, i128* %array_getter23, align 4
  %add25 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add25, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i27
  %add29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add29, i128 %b24, i1* @constraint.140)
  %ptr_getter30 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter30, i32 0, i32 3
  %bigadd.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %i33 = load i128, i128* %i, align 4
  %add34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter32, i128 0, i128 %i33
  store i128 %b24, i128* %add34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i35 = load i128, i128* %i, align 4
  %add36 = add i128 %i35, 1
  store i128 %add36, i128* %i, align 4
  %i37 = load i128, i128* %i, align 4
  %k38 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %slt = icmp slt i128 %i37, %k38
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n39 = load i128, i128* %bigaddmodp.n.declare_arg, align 4
  %k40 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %add41 = add i128 %k40, 1
  %call42 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n39, i128 %add41)
  store %struct_template_circuit_biglessthan* %call42, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch72, %loop.exit
  %add44 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add44, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i46
  %add48 = load i128, i128* %array_getter47, align 4
  %lt49 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt49, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i51
  %lt53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt53, i128 %add48, i1* @constraint.141)
  %ptr_getter54 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter54, i32 0, i32 2
  %biglessthan.a.read_input_outter56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i57 = load i128, i128* %i, align 4
  %lt58 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter56, i128 0, i128 %i57
  store i128 %add48, i128* %lt58, align 4
  %p = load [256 x i128]*, [256 x i128]** %bigaddmodp.p.declare_input, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i59
  %p61 = load i128, i128* %array_getter60, align 4
  %lt62 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt62, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %i64 = load i128, i128* %i, align 4
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i64
  %lt66 = load i128, i128* %array_getter65, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt66, i128 %p61, i1* @constraint.142)
  %ptr_getter67 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter67, i32 0, i32 3
  %biglessthan.b.read_input_outter69 = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %i70 = load i128, i128* %i, align 4
  %lt71 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter69, i128 0, i128 %i70
  store i128 %p61, i128* %lt71, align 4
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.body43
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  store i128 %add74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %k76 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %slt77 = icmp slt i128 %i75, %k76
  br i1 %slt77, label %loop.body43, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  %add79 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add79, i32 0, i32 4
  %bigadd.out.read_output_outter81 = load [256 x i128]*, [256 x i128]** %struct_getter80, align 8
  %k82 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter81, i128 0, i128 %k82
  %add84 = load i128, i128* %array_getter83, align 4
  %lt85 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt85, i32 0, i32 2
  %biglessthan.a.read_input_outter87 = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %k88 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter87, i128 0, i128 %k88
  %lt90 = load i128, i128* %array_getter89, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt90, i128 %add84, i1* @constraint.143)
  %ptr_getter91 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter91, i32 0, i32 2
  %biglessthan.a.read_input_outter93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %k94 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %lt95 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter93, i128 0, i128 %k94
  store i128 %add84, i128* %lt95, align 4
  %lt96 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter97 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt96, i32 0, i32 3
  %biglessthan.b.read_input_outter98 = load [256 x i128]*, [256 x i128]** %struct_getter97, align 8
  %k99 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter98, i128 0, i128 %k99
  %lt101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt101, i128 0, i1* @constraint.144)
  %ptr_getter102 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter102, i32 0, i32 3
  %biglessthan.b.read_input_outter104 = load [256 x i128]*, [256 x i128]** %struct_getter103, align 8
  %k105 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %lt106 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter104, i128 0, i128 %k105
  store i128 0, i128* %lt106, align 4
  %n107 = load i128, i128* %bigaddmodp.n.declare_arg, align 4
  %k108 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %add109 = add i128 %k108, 1
  %call110 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n107, i128 %add109)
  store %struct_template_circuit_bigsub* %call110, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch145, %loop.exit78
  %add112 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add112, i32 0, i32 4
  %bigadd.out.read_output_outter114 = load [256 x i128]*, [256 x i128]** %struct_getter113, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter114, i128 0, i128 %i115
  %add117 = load i128, i128* %array_getter116, align 4
  %sub118 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter119 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub118, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter119, align 8
  %i120 = load i128, i128* %i, align 4
  %array_getter121 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i120
  %sub122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub122, i128 %add117, i1* @constraint.145)
  %ptr_getter123 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter124 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter123, i32 0, i32 2
  %bigsub.a.read_input_outter125 = load [256 x i128]*, [256 x i128]** %struct_getter124, align 8
  %i126 = load i128, i128* %i, align 4
  %sub127 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter125, i128 0, i128 %i126
  store i128 %add117, i128* %sub127, align 4
  %lt128 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt128, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter129, align 4
  %sub130 = sub i128 1, %biglessthan.out.read_output_outter
  %p131 = load [256 x i128]*, [256 x i128]** %bigaddmodp.p.declare_input, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %p131, i128 0, i128 %i132
  %p134 = load i128, i128* %array_getter133, align 4
  %mul = mul i128 %sub130, %p134
  %sub135 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub135, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i137
  %sub139 = load i128, i128* %array_getter138, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub139, i128 %mul, i1* @constraint.146)
  %ptr_getter140 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter140, i32 0, i32 3
  %bigsub.b.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %i143 = load i128, i128* %i, align 4
  %sub144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter142, i128 0, i128 %i143
  store i128 %mul, i128* %sub144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body111
  %i146 = load i128, i128* %i, align 4
  %add147 = add i128 %i146, 1
  store i128 %add147, i128* %i, align 4
  %i148 = load i128, i128* %i, align 4
  %k149 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %slt150 = icmp slt i128 %i148, %k149
  br i1 %slt150, label %loop.body111, label %loop.exit151

loop.exit151:                                     ; preds = %loop.latch145
  %add152 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add152, i32 0, i32 4
  %bigadd.out.read_output_outter154 = load [256 x i128]*, [256 x i128]** %struct_getter153, align 8
  %k155 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter154, i128 0, i128 %k155
  %add157 = load i128, i128* %array_getter156, align 4
  %sub158 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub158, i32 0, i32 2
  %bigsub.a.read_input_outter160 = load [256 x i128]*, [256 x i128]** %struct_getter159, align 8
  %k161 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter160, i128 0, i128 %k161
  %sub163 = load i128, i128* %array_getter162, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub163, i128 %add157, i1* @constraint.147)
  %ptr_getter164 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter164, i32 0, i32 2
  %bigsub.a.read_input_outter166 = load [256 x i128]*, [256 x i128]** %struct_getter165, align 8
  %k167 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %sub168 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter166, i128 0, i128 %k167
  store i128 %add157, i128* %sub168, align 4
  %sub169 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub169, i32 0, i32 3
  %bigsub.b.read_input_outter171 = load [256 x i128]*, [256 x i128]** %struct_getter170, align 8
  %k172 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter171, i128 0, i128 %k172
  %sub174 = load i128, i128* %array_getter173, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub174, i128 0, i1* @constraint.148)
  %ptr_getter175 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter175, i32 0, i32 3
  %bigsub.b.read_input_outter177 = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %k178 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %sub179 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter177, i128 0, i128 %k178
  store i128 0, i128* %sub179, align 4
  %sub180 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter181 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub180, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter181, align 8
  %k182 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %k182
  %sub184 = load i128, i128* %array_getter183, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub184, i128 0, i1* @constraint.149)
  store i128 0, i128* %i, align 4
  br label %loop.body185

loop.body185:                                     ; preds = %loop.latch199, %loop.exit151
  %sub186 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter187 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub186, i32 0, i32 4
  %bigsub.out.read_output_outter188 = load [256 x i128]*, [256 x i128]** %struct_getter187, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter188, i128 0, i128 %i189
  %sub191 = load i128, i128* %array_getter190, align 4
  %out192 = load [256 x i128]*, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %i193 = load i128, i128* %i, align 4
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %out192, i128 0, i128 %i193
  %out195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out195, i128 %sub191, i1* @constraint.150)
  %ptr_getter196 = load [256 x i128]*, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %i197 = load i128, i128* %i, align 4
  %out198 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter196, i128 0, i128 %i197
  store i128 %sub191, i128* %out198, align 4
  br label %loop.latch199

loop.latch199:                                    ; preds = %loop.body185
  %i200 = load i128, i128* %i, align 4
  %add201 = add i128 %i200, 1
  store i128 %add201, i128* %i, align 4
  %i202 = load i128, i128* %i, align 4
  %k203 = load i128, i128* %bigaddmodp.k.declare_arg, align 4
  %slt204 = icmp slt i128 %i202, %k203
  br i1 %slt204, label %loop.body185, label %loop.exit205

loop.exit205:                                     ; preds = %loop.latch199
  br label %arraydim

arraydim:                                         ; preds = %loop.exit205
  %ptr_cast = bitcast [256 x i128]** %bigaddmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k)
  %ptr_cast206 = bitcast [256 x i128]** %bigaddmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast206, i128 %k8)
  %ptr_cast207 = bitcast [256 x i128]** %bigaddmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast207, i128 %k6)
  %ptr_cast208 = bitcast [256 x i128]** %bigaddmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast208, i128 %k7)
  br label %exit

exit:                                             ; preds = %arraydim
  %out209 = load [256 x i128]*, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %bigaddmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 5
  store [256 x i128]* %out209, [256 x i128]** %bigaddmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigaddmodp* @fn_template_build_bigaddmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigaddmodp = alloca %struct_template_circuit_bigaddmodp, align 8
  %bigaddmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 0
  store i128 %0, i128* %bigaddmodp.n.write_arg_inner, align 4
  %bigaddmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 1
  store i128 %1, i128* %bigaddmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp
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
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  store i128 %i2, i128* %i, align 4
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift3 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift3, [256 x i128]** %mult_shift, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend4 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend4, [256 x i128]** %subtrahend, align 8
  %remainder = alloca [256 x i128]*, align 8
  %remainder5 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder5, [256 x i128]** %remainder, align 8
  %dividend = alloca [256 x i128]*, align 8
  %dividend6 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend6, [256 x i128]** %dividend, align 8
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

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %Bits2Num_strict = alloca %struct_template_circuit_bits2num_strict*, align 8
  store %struct_template_circuit_bits2num_strict* %0, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %bits2num_strict.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bits2num_strict.in.read_input_inner, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %bits2num_strict.out.declare_output = alloca i128, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  store i128 %out, i128* %bits2num_strict.out.declare_output, align 4
  %b2n = alloca %struct_template_circuit_bits2num*, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  store %struct_template_circuit_bits2num* %call2, %struct_template_circuit_bits2num** %b2n, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i3
  %in4 = load i128, i128* %array_getter, align 4
  %b2n5 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n5, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i7
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n9, i128 %in4, i1* @constraint.151)
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i12 = load i128, i128* %i, align 4
  %b2n13 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i12
  store i128 %in4, i128* %b2n13, align 4
  %in14 = load [256 x i128]*, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %in14, i128 0, i128 %i15
  %in17 = load i128, i128* %array_getter16, align 4
  %aliasCheck18 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck18, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i20
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.152)
  %ptr_getter23 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter23, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i26 = load i128, i128* %i, align 4
  %aliasCheck27 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i26
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
  call void @fn_intrinsic_utils_constraint(i128 %out32, i128 %bits2num.out.read_output_outter, i1* @constraint.153)
  %ptr_getter33 = load %struct_template_circuit_bits2num_strict*, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %ptr_getter33, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %Bits2Num_strict34 = load %struct_template_circuit_bits2num_strict*, %struct_template_circuit_bits2num_strict** %Bits2Num_strict, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %Bits2Num_strict34, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  store i128 %bits2num_strict.out.read_output_inner, i128* %bits2num_strict.out.declare_output, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bits2num_strict.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
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

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %Num2Bits_strict = alloca %struct_template_circuit_num2bits_strict*, align 8
  store %struct_template_circuit_num2bits_strict* %0, %struct_template_circuit_num2bits_strict** %Num2Bits_strict, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %num2bits_strict.in.declare_input = alloca i128, align 8
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits_strict.in.declare_input, align 4
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %num2bits_strict.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  store i128 %i1, i128* %i, align 4
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  store %struct_template_circuit_num2bits* %call2, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load i128, i128* %num2bits_strict.in.declare_input, align 4
  %n2b3 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b3, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %in, i1* @constraint.154)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %in, i128* %num2bits.in.write_input_outter, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b5 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b5, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i7
  %n2b8 = load i128, i128* %array_getter, align 4
  %out9 = load [256 x i128]*, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %out9, i128 0, i128 %i10
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out12, i128 %n2b8, i1* @constraint.155)
  %ptr_getter13 = load [256 x i128]*, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %i14 = load i128, i128* %i, align 4
  %out15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter13, i128 0, i128 %i14
  store i128 %n2b8, i128* %out15, align 4
  %n2b16 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b16, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i19
  %n2b21 = load i128, i128* %array_getter20, align 4
  %aliasCheck22 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck22, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i24
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.156)
  %ptr_getter27 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter27, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %aliasCheck31 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i30
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
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %num2bits_strict.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  br label %exit

exit:                                             ; preds = %arraydim
  %out34 = load [256 x i128]*, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %num2bits_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 1
  store [256 x i128]* %out34, [256 x i128]** %num2bits_strict.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define void @fn_template_init_bigsubmodp(%struct_template_circuit_bigsubmodp* %0) {
entry:
  %BigSubModP = alloca %struct_template_circuit_bigsubmodp*, align 8
  store %struct_template_circuit_bigsubmodp* %0, %struct_template_circuit_bigsubmodp** %BigSubModP, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 0
  %bigsubmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigsubmodp.n.declare_arg = alloca i128, align 8
  store i128 %bigsubmodp.n.read_arg_inner, i128* %bigsubmodp.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 1
  %bigsubmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigsubmodp.k.declare_arg = alloca i128, align 8
  store i128 %bigsubmodp.k.read_arg_inner, i128* %bigsubmodp.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 2
  %bigsubmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigsubmodp.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsubmodp.a.read_input_inner, [256 x i128]** %bigsubmodp.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 3
  %bigsubmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigsubmodp.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsubmodp.b.read_input_inner, [256 x i128]** %bigsubmodp.b.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 4
  %bigsubmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigsubmodp.p.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsubmodp.p.read_input_inner, [256 x i128]** %bigsubmodp.p.declare_input, align 8
  %bigsubmodp.tmp.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %tmp, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %bigsubmodp.flag.declare_inter = alloca i128, align 8
  %flag = call i128 @fn_intrinsic_utils_init()
  store i128 %flag, i128* %bigsubmodp.flag.declare_inter, align 4
  %bigsubmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %n = load i128, i128* %bigsubmodp.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %k7 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %k8 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %k9 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %n10 = load i128, i128* %bigsubmodp.n.declare_arg, align 4
  %k11 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n10, i128 %k11)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %bigsubmodp.a.declare_input, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i12
  %a13 = load i128, i128* %array_getter, align 4
  %sub14 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub14, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i16
  %sub18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub18, i128 %a13, i1* @constraint.157)
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %bigsub.a.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %i21 = load i128, i128* %i, align 4
  %sub22 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter20, i128 0, i128 %i21
  store i128 %a13, i128* %sub22, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigsubmodp.b.declare_input, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i23
  %b25 = load i128, i128* %array_getter24, align 4
  %sub26 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub26, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i28
  %sub30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub30, i128 %b25, i1* @constraint.158)
  %ptr_getter31 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter31, i32 0, i32 3
  %bigsub.b.read_input_outter33 = load [256 x i128]*, [256 x i128]** %struct_getter32, align 8
  %i34 = load i128, i128* %i, align 4
  %sub35 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter33, i128 0, i128 %i34
  store i128 %b25, i128* %sub35, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i36 = load i128, i128* %i, align 4
  %add37 = add i128 %i36, 1
  store i128 %add37, i128* %i, align 4
  %i38 = load i128, i128* %i, align 4
  %k39 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %slt = icmp slt i128 %i38, %k39
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub40 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub40, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter41, align 4
  %flag42 = load i128, i128* %bigsubmodp.flag.declare_inter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %flag42, i128 %bigsub.underflow.read_output_outter, i1* @constraint.159)
  %ptr_getter43 = load %struct_template_circuit_bigsubmodp*, %struct_template_circuit_bigsubmodp** %BigSubModP, align 8
  %bigsubmodp.flag.write_inter_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %ptr_getter43, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_outter, i128* %bigsubmodp.flag.write_inter_inner, align 4
  %BigSubModP44 = load %struct_template_circuit_bigsubmodp*, %struct_template_circuit_bigsubmodp** %BigSubModP, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %BigSubModP44, i32 0, i32 5
  %bigsubmodp.flag.read_inter_inner = load i128, i128* %struct_getter45, align 4
  store i128 %bigsubmodp.flag.read_inter_inner, i128* %bigsubmodp.flag.declare_inter, align 4
  %n46 = load i128, i128* %bigsubmodp.n.declare_arg, align 4
  %k47 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %call48 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n46, i128 %k47)
  store %struct_template_circuit_bigadd* %call48, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch78, %loop.exit
  %sub50 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub50, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i52 = load i128, i128* %i, align 4
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %i52
  %sub54 = load i128, i128* %array_getter53, align 4
  %add55 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add55, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i57
  %add59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add59, i128 %sub54, i1* @constraint.160)
  %ptr_getter60 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter60, i32 0, i32 2
  %bigadd.a.read_input_outter62 = load [256 x i128]*, [256 x i128]** %struct_getter61, align 8
  %i63 = load i128, i128* %i, align 4
  %add64 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter62, i128 0, i128 %i63
  store i128 %sub54, i128* %add64, align 4
  %p = load [256 x i128]*, [256 x i128]** %bigsubmodp.p.declare_input, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i65
  %p67 = load i128, i128* %array_getter66, align 4
  %add68 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add68, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i70
  %add72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add72, i128 %p67, i1* @constraint.161)
  %ptr_getter73 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter73, i32 0, i32 3
  %bigadd.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %i76 = load i128, i128* %i, align 4
  %add77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter75, i128 0, i128 %i76
  store i128 %p67, i128* %add77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body49
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %k82 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %slt83 = icmp slt i128 %i81, %k82
  br i1 %slt83, label %loop.body49, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %k85 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch121, %loop.exit84
  %flag87 = load i128, i128* %bigsubmodp.flag.declare_inter, align 4
  %sub88 = sub i128 1, %flag87
  %sub89 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub89, i32 0, i32 4
  %bigsub.out.read_output_outter91 = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter91, i128 0, i128 %i92
  %sub94 = load i128, i128* %array_getter93, align 4
  %mul = mul i128 %sub88, %sub94
  %tmp95 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp95, i128 0, i128 %i96
  %tmp98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_utils_constraint(i128 %tmp98, i128 %mul, i1* @constraint.162)
  %ptr_getter99 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %i100 = load i128, i128* %i, align 4
  %tmp101 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter99, i128 0, i128 %i100
  store i128 %mul, i128* %tmp101, align 4
  %tmp102 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %i103 = load i128, i128* %i, align 4
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp102, i128 0, i128 %i103
  %tmp105 = load i128, i128* %array_getter104, align 4
  %flag106 = load i128, i128* %bigsubmodp.flag.declare_inter, align 4
  %add107 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add107, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter108, align 8
  %i109 = load i128, i128* %i, align 4
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i109
  %add111 = load i128, i128* %array_getter110, align 4
  %mul112 = mul i128 %flag106, %add111
  %add113 = add i128 %tmp105, %mul112
  %out114 = load [256 x i128]*, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %out114, i128 0, i128 %i115
  %out117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out117, i128 %add113, i1* @constraint.163)
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %i119 = load i128, i128* %i, align 4
  %out120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %i119
  store i128 %add113, i128* %out120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body86
  %i122 = load i128, i128* %i, align 4
  %add123 = add i128 %i122, 1
  store i128 %add123, i128* %i, align 4
  %i124 = load i128, i128* %i, align 4
  %k125 = load i128, i128* %bigsubmodp.k.declare_arg, align 4
  %slt126 = icmp slt i128 %i124, %k125
  br i1 %slt126, label %loop.body86, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  br label %arraydim

arraydim:                                         ; preds = %loop.exit127
  %ptr_cast = bitcast [256 x i128]** %bigsubmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k9)
  %ptr_cast128 = bitcast [256 x i128]** %bigsubmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast128, i128 %k8)
  %ptr_cast129 = bitcast [256 x i128]** %bigsubmodp.tmp.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast129, i128 %k85)
  %ptr_cast130 = bitcast [256 x i128]** %bigsubmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast130, i128 %k7)
  %ptr_cast131 = bitcast [256 x i128]** %bigsubmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast131, i128 %k)
  br label %exit

exit:                                             ; preds = %arraydim
  %flag132 = load i128, i128* %bigsubmodp.flag.declare_inter, align 4
  %bigsubmodp.flag.write_inter_inner133 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store i128 %flag132, i128* %bigsubmodp.flag.write_inter_inner133, align 4
  %tmp134 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %bigsubmodp.tmp.write_inter_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 6
  store [256 x i128]* %tmp134, [256 x i128]** %bigsubmodp.tmp.write_inter_inner, align 8
  %out135 = load [256 x i128]*, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %bigsubmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 7
  store [256 x i128]* %out135, [256 x i128]** %bigsubmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigsubmodp* @fn_template_build_bigsubmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsubmodp = alloca %struct_template_circuit_bigsubmodp, align 8
  %bigsubmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 0
  store i128 %0, i128* %bigsubmodp.n.write_arg_inner, align 4
  %bigsubmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 1
  store i128 %1, i128* %bigsubmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp
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

define void @fn_template_init_bigmod2(%struct_template_circuit_bigmod2* %0) {
entry:
  %BigMod2 = alloca %struct_template_circuit_bigmod2*, align 8
  store %struct_template_circuit_bigmod2* %0, %struct_template_circuit_bigmod2** %BigMod2, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 0
  %bigmod2.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmod2.n.declare_arg = alloca i128, align 8
  store i128 %bigmod2.n.read_arg_inner, i128* %bigmod2.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 1
  %bigmod2.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmod2.k.declare_arg = alloca i128, align 8
  store i128 %bigmod2.k.read_arg_inner, i128* %bigmod2.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 2
  %bigmod2.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %bigmod2.m.declare_arg = alloca i128, align 8
  store i128 %bigmod2.m.read_arg_inner, i128* %bigmod2.m.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 3
  %bigmod2.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmod2.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod2.a.read_input_inner, [256 x i128]** %bigmod2.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 4
  %bigmod2.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmod2.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod2.b.read_input_inner, [256 x i128]** %bigmod2.b.declare_input, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %bigmod2.mod.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %mod, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks6, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %mul = alloca %struct_template_circuit_bigmult*, align 8
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks7 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks7, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv8, [256 x [256 x i128]]** %longdiv, align 8
  %bigmod2.div.declare_output = alloca [256 x i128]*, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall9 to [256 x i128]*
  store [256 x i128]* %div, [256 x i128]** %bigmod2.div.declare_output, align 8
  %n = load i128, i128* %bigmod2.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %m = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k = load i128, i128* %bigmod2.k.declare_arg, align 4
  %m10 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k11 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub = sub i128 %m10, %k11
  %add12 = add i128 %sub, 1
  %k13 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %n14 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %k15 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %m16 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k17 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub18 = sub i128 %m16, %k17
  %a = load [256 x i128]*, [256 x i128]** %bigmod2.a.declare_input, align 8
  %b = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n14, i128 %k15, i128 %sub18, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv19, i128 0, i128 1, i128 %i20
  %longdiv21 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %i22 = load i128, i128* %i, align 4
  %mod23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i22
  store i128 %longdiv21, i128* %mod23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i24 = load i128, i128* %i, align 4
  %add25 = add i128 %i24, 1
  store i128 %add25, i128* %i, align 4
  %i26 = load i128, i128* %i, align 4
  %k27 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %slt = icmp slt i128 %i26, %k27
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch36, %loop.exit
  %longdiv29 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv29, i128 0, i128 0, i128 %i30
  %longdiv32 = load i128, i128* %array_getter31, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %i34 = load i128, i128* %i, align 4
  %div35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i34
  store i128 %longdiv32, i128* %div35, align 4
  br label %loop.latch36

loop.latch36:                                     ; preds = %loop.body28
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %m40 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k41 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub42 = sub i128 %m40, %k41
  %sle43 = icmp sle i128 %i39, %sub42
  br i1 %sle43, label %loop.body28, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch36
  %m45 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k46 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub47 = sub i128 %m45, %k46
  %add48 = add i128 %sub47, 1
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch68, %loop.exit44
  %n50 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %call51 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n50)
  %ptr_getter52 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i53 = load i128, i128* %i, align 4
  %div_range_checks54 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter52, i128 0, i128 %i53
  store %struct_template_circuit_num2bits* %call51, %struct_template_circuit_num2bits** %div_range_checks54, align 8
  %div55 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %div55, i128 0, i128 %i56
  %div58 = load i128, i128* %array_getter57, align 4
  %div_range_checks59 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks59, i128 0, i128 %i60
  %div_range_checks62 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter61, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks62, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter63, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %div58, i1* @constraint.164)
  %ptr_getter64 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter64, i128 0, i128 %i65
  %div_range_checks67 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter66, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks67, i32 0, i32 1
  store i128 %div58, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body49
  %i69 = load i128, i128* %i, align 4
  %add70 = add i128 %i69, 1
  store i128 %add70, i128* %i, align 4
  %i71 = load i128, i128* %i, align 4
  %m72 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k73 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub74 = sub i128 %m72, %k73
  %sle75 = icmp sle i128 %i71, %sub74
  br i1 %sle75, label %loop.body49, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch68
  %k77 = load i128, i128* %bigmod2.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch99, %loop.exit76
  %n79 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %call80 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n79)
  %ptr_getter81 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i82 = load i128, i128* %i, align 4
  %mod_range_checks83 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter81, i128 0, i128 %i82
  store %struct_template_circuit_num2bits* %call80, %struct_template_circuit_num2bits** %mod_range_checks83, align 8
  %mod84 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %mod84, i128 0, i128 %i85
  %mod87 = load i128, i128* %array_getter86, align 4
  %mod_range_checks88 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks88, i128 0, i128 %i89
  %mod_range_checks91 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks91, i32 0, i32 1
  %num2bits.in.read_input_outter93 = load i128, i128* %struct_getter92, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter93, i128 %mod87, i1* @constraint.165)
  %ptr_getter94 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter94, i128 0, i128 %i95
  %mod_range_checks97 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter96, align 8
  %num2bits.in.write_input_outter98 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks97, i32 0, i32 1
  store i128 %mod87, i128* %num2bits.in.write_input_outter98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body78
  %i100 = load i128, i128* %i, align 4
  %add101 = add i128 %i100, 1
  store i128 %add101, i128* %i, align 4
  %i102 = load i128, i128* %i, align 4
  %k103 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %slt104 = icmp slt i128 %i102, %k103
  br i1 %slt104, label %loop.body78, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch99
  %n106 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %m107 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k108 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub109 = sub i128 %m107, %k108
  %add110 = add i128 %sub109, 1
  %call111 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n106, i128 %add110)
  store %struct_template_circuit_bigmult* %call111, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch141, %loop.exit105
  %div113 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %div113, i128 0, i128 %i114
  %div116 = load i128, i128* %array_getter115, align 4
  %mul117 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul117, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter118, align 8
  %i119 = load i128, i128* %i, align 4
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i119
  %mul121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul121, i128 %div116, i1* @constraint.166)
  %ptr_getter122 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter123 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter122, i32 0, i32 2
  %bigmult.a.read_input_outter124 = load [256 x i128]*, [256 x i128]** %struct_getter123, align 8
  %i125 = load i128, i128* %i, align 4
  %mul126 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter124, i128 0, i128 %i125
  store i128 %div116, i128* %mul126, align 4
  %b127 = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %b127, i128 0, i128 %i128
  %b130 = load i128, i128* %array_getter129, align 4
  %mul131 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul131, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter132, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i133
  %mul135 = load i128, i128* %array_getter134, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul135, i128 %b130, i1* @constraint.167)
  %ptr_getter136 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter136, i32 0, i32 3
  %bigmult.b.read_input_outter138 = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %i139 = load i128, i128* %i, align 4
  %mul140 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter138, i128 0, i128 %i139
  store i128 %b130, i128* %mul140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body112
  %i142 = load i128, i128* %i, align 4
  %add143 = add i128 %i142, 1
  store i128 %add143, i128* %i, align 4
  %i144 = load i128, i128* %i, align 4
  %k145 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %slt146 = icmp slt i128 %i144, %k145
  br i1 %slt146, label %loop.body112, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch141
  %k148 = load i128, i128* %bigmod2.k.declare_arg, align 4
  store i128 %k148, i128* %i, align 4
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch176, %loop.exit147
  %div150 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %i151 = load i128, i128* %i, align 4
  %array_getter152 = getelementptr inbounds [256 x i128], [256 x i128]* %div150, i128 0, i128 %i151
  %div153 = load i128, i128* %array_getter152, align 4
  %mul154 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter155 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul154, i32 0, i32 2
  %bigmult.a.read_input_outter156 = load [256 x i128]*, [256 x i128]** %struct_getter155, align 8
  %i157 = load i128, i128* %i, align 4
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter156, i128 0, i128 %i157
  %mul159 = load i128, i128* %array_getter158, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul159, i128 %div153, i1* @constraint.168)
  %ptr_getter160 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter160, i32 0, i32 2
  %bigmult.a.read_input_outter162 = load [256 x i128]*, [256 x i128]** %struct_getter161, align 8
  %i163 = load i128, i128* %i, align 4
  %mul164 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter162, i128 0, i128 %i163
  store i128 %div153, i128* %mul164, align 4
  %mul165 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul165, i32 0, i32 3
  %bigmult.b.read_input_outter167 = load [256 x i128]*, [256 x i128]** %struct_getter166, align 8
  %i168 = load i128, i128* %i, align 4
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter167, i128 0, i128 %i168
  %mul170 = load i128, i128* %array_getter169, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul170, i128 0, i1* @constraint.169)
  %ptr_getter171 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter172 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter171, i32 0, i32 3
  %bigmult.b.read_input_outter173 = load [256 x i128]*, [256 x i128]** %struct_getter172, align 8
  %i174 = load i128, i128* %i, align 4
  %mul175 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter173, i128 0, i128 %i174
  store i128 0, i128* %mul175, align 4
  br label %loop.latch176

loop.latch176:                                    ; preds = %loop.body149
  %i177 = load i128, i128* %i, align 4
  %add178 = add i128 %i177, 1
  store i128 %add178, i128* %i, align 4
  %i179 = load i128, i128* %i, align 4
  %m180 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k181 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub182 = sub i128 %m180, %k181
  %sle183 = icmp sle i128 %i179, %sub182
  br i1 %sle183, label %loop.body149, label %loop.exit184

loop.exit184:                                     ; preds = %loop.latch176
  %m185 = load i128, i128* %bigmod2.m.declare_arg, align 4
  store i128 %m185, i128* %i, align 4
  br label %loop.body186

loop.body186:                                     ; preds = %loop.latch192, %loop.exit184
  %mul187 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter188 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul187, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter188, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i189
  %mul191 = load i128, i128* %array_getter190, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul191, i128 0, i1* @constraint.170)
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.body186
  %i193 = load i128, i128* %i, align 4
  %add194 = add i128 %i193, 1
  store i128 %add194, i128* %i, align 4
  %i195 = load i128, i128* %i, align 4
  %m196 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %k197 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %sub198 = sub i128 %m196, %k197
  %mul199 = mul i128 2, %sub198
  %add200 = add i128 %mul199, 2
  %slt201 = icmp slt i128 %i195, %add200
  br i1 %slt201, label %loop.body186, label %loop.exit202

loop.exit202:                                     ; preds = %loop.latch192
  %n203 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %m204 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %call205 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n203, i128 %m204)
  store %struct_template_circuit_bigadd* %call205, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body206

loop.body206:                                     ; preds = %loop.latch251, %loop.exit202
  %mul207 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul207, i32 0, i32 4
  %bigmult.out.read_output_outter209 = load [256 x i128]*, [256 x i128]** %struct_getter208, align 8
  %i210 = load i128, i128* %i, align 4
  %array_getter211 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter209, i128 0, i128 %i210
  %mul212 = load i128, i128* %array_getter211, align 4
  %add213 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter214 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add213, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter214, align 8
  %i215 = load i128, i128* %i, align 4
  %array_getter216 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i215
  %add217 = load i128, i128* %array_getter216, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add217, i128 %mul212, i1* @constraint.171)
  %ptr_getter218 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter219 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter218, i32 0, i32 2
  %bigadd.a.read_input_outter220 = load [256 x i128]*, [256 x i128]** %struct_getter219, align 8
  %i221 = load i128, i128* %i, align 4
  %add222 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter220, i128 0, i128 %i221
  store i128 %mul212, i128* %add222, align 4
  %i223 = load i128, i128* %i, align 4
  %k224 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %slt225 = icmp slt i128 %i223, %k224
  br i1 %slt225, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body206
  %mod226 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [256 x i128], [256 x i128]* %mod226, i128 0, i128 %i227
  %mod229 = load i128, i128* %array_getter228, align 4
  %add230 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter231 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add230, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter231, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i232
  %add234 = load i128, i128* %array_getter233, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add234, i128 %mod229, i1* @constraint.172)
  %ptr_getter235 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter236 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter235, i32 0, i32 3
  %bigadd.b.read_input_outter237 = load [256 x i128]*, [256 x i128]** %struct_getter236, align 8
  %i238 = load i128, i128* %i, align 4
  %add239 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter237, i128 0, i128 %i238
  store i128 %mod229, i128* %add239, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body206
  %add240 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add240, i32 0, i32 3
  %bigadd.b.read_input_outter242 = load [256 x i128]*, [256 x i128]** %struct_getter241, align 8
  %i243 = load i128, i128* %i, align 4
  %array_getter244 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter242, i128 0, i128 %i243
  %add245 = load i128, i128* %array_getter244, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add245, i128 0, i1* @constraint.173)
  %ptr_getter246 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter247 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter246, i32 0, i32 3
  %bigadd.b.read_input_outter248 = load [256 x i128]*, [256 x i128]** %struct_getter247, align 8
  %i249 = load i128, i128* %i, align 4
  %add250 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter248, i128 0, i128 %i249
  store i128 0, i128* %add250, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch251

loop.latch251:                                    ; preds = %if.exit
  %i252 = load i128, i128* %i, align 4
  %add253 = add i128 %i252, 1
  store i128 %add253, i128* %i, align 4
  %i254 = load i128, i128* %i, align 4
  %m255 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %slt256 = icmp slt i128 %i254, %m255
  br i1 %slt256, label %loop.body206, label %loop.exit257

loop.exit257:                                     ; preds = %loop.latch251
  store i128 0, i128* %i, align 4
  br label %loop.body258

loop.body258:                                     ; preds = %loop.latch268, %loop.exit257
  %add259 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter260 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add259, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter260, align 8
  %i261 = load i128, i128* %i, align 4
  %array_getter262 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i261
  %add263 = load i128, i128* %array_getter262, align 4
  %a264 = load [256 x i128]*, [256 x i128]** %bigmod2.a.declare_input, align 8
  %i265 = load i128, i128* %i, align 4
  %array_getter266 = getelementptr inbounds [256 x i128], [256 x i128]* %a264, i128 0, i128 %i265
  %a267 = load i128, i128* %array_getter266, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add263, i128 %a267, i1* @constraint.174)
  br label %loop.latch268

loop.latch268:                                    ; preds = %loop.body258
  %i269 = load i128, i128* %i, align 4
  %add270 = add i128 %i269, 1
  store i128 %add270, i128* %i, align 4
  %i271 = load i128, i128* %i, align 4
  %m272 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %slt273 = icmp slt i128 %i271, %m272
  br i1 %slt273, label %loop.body258, label %loop.exit274

loop.exit274:                                     ; preds = %loop.latch268
  %add275 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add275, i32 0, i32 4
  %bigadd.out.read_output_outter277 = load [256 x i128]*, [256 x i128]** %struct_getter276, align 8
  %m278 = load i128, i128* %bigmod2.m.declare_arg, align 4
  %array_getter279 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter277, i128 0, i128 %m278
  %add280 = load i128, i128* %array_getter279, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add280, i128 0, i1* @constraint.175)
  %n281 = load i128, i128* %bigmod2.n.declare_arg, align 4
  %k282 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %call283 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n281, i128 %k282)
  store %struct_template_circuit_biglessthan* %call283, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body284

loop.body284:                                     ; preds = %loop.latch313, %loop.exit274
  %mod285 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %i286 = load i128, i128* %i, align 4
  %array_getter287 = getelementptr inbounds [256 x i128], [256 x i128]* %mod285, i128 0, i128 %i286
  %mod288 = load i128, i128* %array_getter287, align 4
  %lt289 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter290 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt289, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter290, align 8
  %i291 = load i128, i128* %i, align 4
  %array_getter292 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i291
  %lt293 = load i128, i128* %array_getter292, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt293, i128 %mod288, i1* @constraint.176)
  %ptr_getter294 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter295 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter294, i32 0, i32 2
  %biglessthan.a.read_input_outter296 = load [256 x i128]*, [256 x i128]** %struct_getter295, align 8
  %i297 = load i128, i128* %i, align 4
  %lt298 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter296, i128 0, i128 %i297
  store i128 %mod288, i128* %lt298, align 4
  %b299 = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %i300 = load i128, i128* %i, align 4
  %array_getter301 = getelementptr inbounds [256 x i128], [256 x i128]* %b299, i128 0, i128 %i300
  %b302 = load i128, i128* %array_getter301, align 4
  %lt303 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt303, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter304, align 8
  %i305 = load i128, i128* %i, align 4
  %array_getter306 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i305
  %lt307 = load i128, i128* %array_getter306, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt307, i128 %b302, i1* @constraint.177)
  %ptr_getter308 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter309 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter308, i32 0, i32 3
  %biglessthan.b.read_input_outter310 = load [256 x i128]*, [256 x i128]** %struct_getter309, align 8
  %i311 = load i128, i128* %i, align 4
  %lt312 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter310, i128 0, i128 %i311
  store i128 %b302, i128* %lt312, align 4
  br label %loop.latch313

loop.latch313:                                    ; preds = %loop.body284
  %i314 = load i128, i128* %i, align 4
  %add315 = add i128 %i314, 1
  store i128 %add315, i128* %i, align 4
  %i316 = load i128, i128* %i, align 4
  %k317 = load i128, i128* %bigmod2.k.declare_arg, align 4
  %slt318 = icmp slt i128 %i316, %k317
  br i1 %slt318, label %loop.body284, label %loop.exit319

loop.exit319:                                     ; preds = %loop.latch313
  %lt320 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter321 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt320, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter321, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.178)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit319
  %ptr_cast = bitcast [256 x i128]** %bigmod2.div.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %add12)
  %ptr_cast322 = bitcast [256 x i128]** %bigmod2.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast322, i128 %k)
  %ptr_cast323 = bitcast [256 x %struct_template_circuit_num2bits*]** %div_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast323, i128 %add48)
  %ptr_cast324 = bitcast [256 x [256 x i128]]** %longdiv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast324, i128 2, i128 50)
  %ptr_cast325 = bitcast [256 x i128]** %bigmod2.mod.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast325, i128 %k13)
  %ptr_cast326 = bitcast [256 x i128]** %bigmod2.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast326, i128 %m)
  %ptr_cast327 = bitcast [256 x %struct_template_circuit_num2bits*]** %mod_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast327, i128 %k77)
  br label %exit

exit:                                             ; preds = %arraydim
  %div328 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %bigmod2.div.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 5
  store [256 x i128]* %div328, [256 x i128]** %bigmod2.div.write_output_inner, align 8
  %mod329 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %bigmod2.mod.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 6
  store [256 x i128]* %mod329, [256 x i128]** %bigmod2.mod.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmod2* @fn_template_build_bigmod2(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmod2 = alloca %struct_template_circuit_bigmod2, align 8
  %bigmod2.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 0
  store i128 %0, i128* %bigmod2.n.write_arg_inner, align 4
  %bigmod2.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 1
  store i128 %1, i128* %bigmod2.k.write_arg_inner, align 4
  %bigmod2.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 2
  store i128 %2, i128* %bigmod2.m.write_arg_inner, align 4
  ret %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2
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
  %bitlength = alloca i128, align 8
  %bitlength1 = call i128 @fn_intrinsic_utils_init()
  store i128 %bitlength1, i128* %bitlength, align 4
  %eBits = alloca [256 x i128]*, align 8
  %eBits2 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits2, [256 x i128]** %eBits, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_utils_init()
  store i128 %i3, i128* %i, align 4
  %j = alloca i128, align 8
  %j4 = call i128 @fn_intrinsic_utils_init()
  store i128 %j4, i128* %j, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp5 = alloca [256 x i128], align 8
  store [256 x i128]* %temp5, [256 x i128]** %temp, align 8
  %out = alloca [256 x i128]*, align 8
  %out6 = alloca [256 x i128], align 8
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp27 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp27, [256 x [256 x i128]]** %temp2, align 8
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
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %prod = alloca [256 x i128]*, align 8
  %prod2 = alloca [256 x i128], align 8
  store [256 x i128]* %prod2, [256 x i128]** %prod, align 8
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

define void @fn_template_init_primereduce(%struct_template_circuit_primereduce* %0) {
entry:
  %PrimeReduce = alloca %struct_template_circuit_primereduce*, align 8
  store %struct_template_circuit_primereduce* %0, %struct_template_circuit_primereduce** %PrimeReduce, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 0
  %primereduce.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %primereduce.n.declare_arg = alloca i128, align 8
  store i128 %primereduce.n.read_arg_inner, i128* %primereduce.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 1
  %primereduce.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %primereduce.k.declare_arg = alloca i128, align 8
  store i128 %primereduce.k.read_arg_inner, i128* %primereduce.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 2
  %primereduce.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %primereduce.m.declare_arg = alloca i128, align 8
  store i128 %primereduce.m.read_arg_inner, i128* %primereduce.m.declare_arg, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 3
  %primereduce.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %primereduce.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %primereduce.p.read_arg_inner, [256 x i128]** %primereduce.p.declare_arg, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 4
  %primereduce.m_out.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %primereduce.m_out.declare_arg = alloca i128, align 8
  store i128 %primereduce.m_out.read_arg_inner, i128* %primereduce.m_out.declare_arg, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 5
  %primereduce.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %primereduce.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %primereduce.in.read_input_inner, [256 x i128]** %primereduce.in.declare_input, align 8
  %pow2n = alloca [256 x i128]*, align 8
  %pow2n6 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2n6, [256 x i128]** %pow2n, align 8
  %j = alloca i128, align 8
  %j7 = call i128 @fn_intrinsic_utils_init()
  store i128 %j7, i128* %j, align 4
  %primereduce.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %primereduce.out.declare_output, align 8
  %two = alloca [256 x i128]*, align 8
  %two8 = alloca [256 x i128], align 8
  store [256 x i128]* %two8, [256 x i128]** %two, align 8
  %e = alloca [256 x i128]*, align 8
  %e9 = alloca [256 x i128], align 8
  store [256 x i128]* %e9, [256 x i128]** %e, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %r10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r10, [256 x [256 x i128]]** %r, align 8
  %pow2nk = alloca [256 x i128]*, align 8
  %pow2nk11 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2nk11, [256 x i128]** %pow2nk, align 8
  %i = alloca i128, align 8
  %i12 = call i128 @fn_intrinsic_utils_init()
  store i128 %i12, i128* %i, align 4
  %out_sum = alloca [256 x i128]*, align 8
  %out_sum13 = alloca [256 x i128], align 8
  store [256 x i128]* %out_sum13, [256 x i128]** %out_sum, align 8
  %m = load i128, i128* %primereduce.m.declare_arg, align 4
  %k = load i128, i128* %primereduce.k.declare_arg, align 4
  %add = add i128 %m, %k
  %k14 = load i128, i128* %primereduce.k.declare_arg, align 4
  %k15 = load i128, i128* %primereduce.k.declare_arg, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %two, align 8
  %k16 = load i128, i128* %primereduce.k.declare_arg, align 4
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %e, align 8
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %two, align 8
  %i18 = load i128, i128* %i, align 4
  %two19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i18
  store i128 0, i128* %two19, align 4
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %e, align 8
  %i21 = load i128, i128* %i, align 4
  %e22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i21
  store i128 0, i128* %e22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i23 = load i128, i128* %i, align 4
  %add24 = add i128 %i23, 1
  store i128 %add24, i128* %i, align 4
  %i25 = load i128, i128* %i, align 4
  %k26 = load i128, i128* %primereduce.k.declare_arg, align 4
  %slt = icmp slt i128 %i25, %k26
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter27 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two28 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter27, i128 0, i128 0
  store i128 2, i128* %two28, align 4
  %n = load i128, i128* %primereduce.n.declare_arg, align 4
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 0
  store i128 %n, i128* %e30, align 4
  %n31 = load i128, i128* %primereduce.n.declare_arg, align 4
  %k32 = load i128, i128* %primereduce.k.declare_arg, align 4
  %two33 = load [256 x i128]*, [256 x i128]** %two, align 8
  %p = load [256 x i128]*, [256 x i128]** %primereduce.p.declare_arg, align 8
  %e34 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call = call [256 x i128]* @mod_exp(i128 %n31, i128 %k32, [256 x i128]* %two33, [256 x i128]* %p, [256 x i128]* %e34)
  store [256 x i128]* %call, [256 x i128]** %pow2n, align 8
  %k35 = load i128, i128* %primereduce.k.declare_arg, align 4
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 0
  store i128 %k35, i128* %e37, align 4
  %k38 = load i128, i128* %primereduce.k.declare_arg, align 4
  %n39 = load i128, i128* %primereduce.n.declare_arg, align 4
  %lshift = shl i128 1, %n39
  %slt40 = icmp slt i128 %k38, %lshift
  call void @fn_intrinsic_utils_assert(i1 %slt40)
  %n41 = load i128, i128* %primereduce.n.declare_arg, align 4
  %k42 = load i128, i128* %primereduce.k.declare_arg, align 4
  %pow2n43 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p44 = load [256 x i128]*, [256 x i128]** %primereduce.p.declare_arg, align 8
  %e45 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call46 = call [256 x i128]* @mod_exp(i128 %n41, i128 %k42, [256 x i128]* %pow2n43, [256 x i128]* %p44, [256 x i128]* %e45)
  store [256 x i128]* %call46, [256 x i128]** %pow2nk, align 8
  %m47 = load i128, i128* %primereduce.m.declare_arg, align 4
  %uniform_array48 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array48, [256 x [256 x i128]]** %r, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch66, %loop.exit
  %i50 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i50, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body49
  %pow2nk51 = load [256 x i128]*, [256 x i128]** %pow2nk, align 8
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i53 = load i128, i128* %i, align 4
  %r54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 %i53
  %1 = bitcast [256 x i128]* %r54 to i8*
  %2 = bitcast [256 x i128]* %pow2nk51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body49
  %n55 = load i128, i128* %primereduce.n.declare_arg, align 4
  %k56 = load i128, i128* %primereduce.k.declare_arg, align 4
  %r57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i58 = load i128, i128* %i, align 4
  %sub = sub i128 %i58, 1
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r57, i128 0, i128 %sub
  %r59 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %r59, [256 x i128]* %spice_inline_array, align 4
  %pow2n60 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p61 = load [256 x i128]*, [256 x i128]** %primereduce.p.declare_arg, align 8
  %call62 = call [256 x i128]* @prod_mod(i128 %n55, i128 %k56, [256 x i128]* %spice_inline_array, [256 x i128]* %pow2n60, [256 x i128]* %p61)
  %ptr_getter63 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i64 = load i128, i128* %i, align 4
  %r65 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter63, i128 0, i128 %i64
  %3 = bitcast [256 x i128]* %r65 to i8*
  %4 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch66

loop.latch66:                                     ; preds = %if.exit
  %i67 = load i128, i128* %i, align 4
  %add68 = add i128 %i67, 1
  store i128 %add68, i128* %i, align 4
  %i69 = load i128, i128* %i, align 4
  %m70 = load i128, i128* %primereduce.m.declare_arg, align 4
  %slt71 = icmp slt i128 %i69, %m70
  br i1 %slt71, label %loop.body49, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch66
  %k73 = load i128, i128* %primereduce.k.declare_arg, align 4
  %uniform_array74 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array74, [256 x i128]** %out_sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch82, %loop.exit72
  %in = load [256 x i128]*, [256 x i128]** %primereduce.in.declare_input, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i76
  %in78 = load i128, i128* %array_getter77, align 4
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i80 = load i128, i128* %i, align 4
  %out_sum81 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %i80
  store i128 %in78, i128* %out_sum81, align 4
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.body75
  %i83 = load i128, i128* %i, align 4
  %add84 = add i128 %i83, 1
  store i128 %add84, i128* %i, align 4
  %i85 = load i128, i128* %i, align 4
  %k86 = load i128, i128* %primereduce.k.declare_arg, align 4
  %slt87 = icmp slt i128 %i85, %k86
  br i1 %slt87, label %loop.body75, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch82
  store i128 0, i128* %i, align 4
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch117, %loop.exit88
  store i128 0, i128* %j, align 4
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch110, %loop.body89
  %out_sum91 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j92 = load i128, i128* %j, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum91, i128 0, i128 %j92
  %out_sum94 = load i128, i128* %array_getter93, align 4
  %in95 = load [256 x i128]*, [256 x i128]** %primereduce.in.declare_input, align 8
  %i96 = load i128, i128* %i, align 4
  %k97 = load i128, i128* %primereduce.k.declare_arg, align 4
  %add98 = add i128 %i96, %k97
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %in95, i128 0, i128 %add98
  %in100 = load i128, i128* %array_getter99, align 4
  %r101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i102 = load i128, i128* %i, align 4
  %j103 = load i128, i128* %j, align 4
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r101, i128 0, i128 %i102, i128 %j103
  %r105 = load i128, i128* %array_getter104, align 4
  %mul = mul i128 %in100, %r105
  %add106 = add i128 %out_sum94, %mul
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j108 = load i128, i128* %j, align 4
  %out_sum109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %j108
  store i128 %add106, i128* %out_sum109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body90
  %j111 = load i128, i128* %j, align 4
  %add112 = add i128 %j111, 1
  store i128 %add112, i128* %j, align 4
  %j113 = load i128, i128* %j, align 4
  %k114 = load i128, i128* %primereduce.k.declare_arg, align 4
  %slt115 = icmp slt i128 %j113, %k114
  br i1 %slt115, label %loop.body90, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit116
  %i118 = load i128, i128* %i, align 4
  %add119 = add i128 %i118, 1
  store i128 %add119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %m121 = load i128, i128* %primereduce.m.declare_arg, align 4
  %slt122 = icmp slt i128 %i120, %m121
  br i1 %slt122, label %loop.body89, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  store i128 0, i128* %i, align 4
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch136, %loop.exit123
  %out_sum125 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i126 = load i128, i128* %i, align 4
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum125, i128 0, i128 %i126
  %out_sum128 = load i128, i128* %array_getter127, align 4
  %out129 = load [256 x i128]*, [256 x i128]** %primereduce.out.declare_output, align 8
  %i130 = load i128, i128* %i, align 4
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %out129, i128 0, i128 %i130
  %out132 = load i128, i128* %array_getter131, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out132, i128 %out_sum128, i1* @constraint.179)
  %ptr_getter133 = load [256 x i128]*, [256 x i128]** %primereduce.out.declare_output, align 8
  %i134 = load i128, i128* %i, align 4
  %out135 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter133, i128 0, i128 %i134
  store i128 %out_sum128, i128* %out135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body124
  %i137 = load i128, i128* %i, align 4
  %add138 = add i128 %i137, 1
  store i128 %add138, i128* %i, align 4
  %i139 = load i128, i128* %i, align 4
  %k140 = load i128, i128* %primereduce.k.declare_arg, align 4
  %slt141 = icmp slt i128 %i139, %k140
  br i1 %slt141, label %loop.body124, label %loop.exit142

loop.exit142:                                     ; preds = %loop.latch136
  br label %arraydim

arraydim:                                         ; preds = %loop.exit142
  %ptr_cast = bitcast [256 x i128]** %primereduce.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %add)
  %ptr_cast143 = bitcast [256 x [256 x i128]]** %r to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast143, i128 %m47, i128 50)
  %ptr_cast144 = bitcast [256 x i128]** %pow2n to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast144, i128 50)
  %ptr_cast145 = bitcast [256 x i128]** %two to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast145, i128 %k15)
  %ptr_cast146 = bitcast [256 x i128]** %primereduce.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast146, i128 %k14)
  %ptr_cast147 = bitcast [256 x i128]** %pow2nk to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast147, i128 50)
  %ptr_cast148 = bitcast [256 x i128]** %out_sum to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast148, i128 %k73)
  %ptr_cast149 = bitcast [256 x i128]** %e to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast149, i128 %k16)
  br label %exit

exit:                                             ; preds = %arraydim
  %out150 = load [256 x i128]*, [256 x i128]** %primereduce.out.declare_output, align 8
  %primereduce.out.write_output_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 6
  store [256 x i128]* %out150, [256 x i128]** %primereduce.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, i128 %4) {
entry:
  %struct_template_circuit_primereduce = alloca %struct_template_circuit_primereduce, align 8
  %primereduce.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 0
  store i128 %0, i128* %primereduce.n.write_arg_inner, align 4
  %primereduce.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 1
  store i128 %1, i128* %primereduce.k.write_arg_inner, align 4
  %primereduce.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 2
  store i128 %2, i128* %primereduce.m.write_arg_inner, align 4
  %primereduce.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %primereduce.p.write_arg_inner, align 8
  %primereduce.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 4
  store i128 %4, i128* %primereduce.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_primereduce* %struct_template_circuit_primereduce
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
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %two = alloca [256 x i128]*, align 8
  %two2 = alloca [256 x i128], align 8
  store [256 x i128]* %two2, [256 x i128]** %two, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo3 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo3, [256 x i128]** %pMinusTwo, align 8
  %isZero = alloca i128, align 8
  %isZero4 = call i128 @fn_intrinsic_utils_init()
  store i128 %isZero4, i128* %isZero, align 4
  %ret = alloca [256 x i128]*, align 8
  %ret5 = alloca [256 x i128], align 8
  store [256 x i128]* %ret5, [256 x i128]** %ret, align 8
  %i = alloca i128, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  store i128 %i6, i128* %i, align 4
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy7 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy7, [256 x i128]** %pCopy, align 8
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

define void @fn_template_init_bigmod(%struct_template_circuit_bigmod* %0) {
entry:
  %BigMod = alloca %struct_template_circuit_bigmod*, align 8
  store %struct_template_circuit_bigmod* %0, %struct_template_circuit_bigmod** %BigMod, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 0
  %bigmod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmod.n.declare_arg = alloca i128, align 8
  store i128 %bigmod.n.read_arg_inner, i128* %bigmod.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 1
  %bigmod.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmod.k.declare_arg = alloca i128, align 8
  store i128 %bigmod.k.read_arg_inner, i128* %bigmod.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 2
  %bigmod.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmod.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod.a.read_input_inner, [256 x i128]** %bigmod.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 3
  %bigmod.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmod.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod.b.read_input_inner, [256 x i128]** %bigmod.b.declare_input, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %bigmod.div.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %div, [256 x i128]** %bigmod.div.declare_output, align 8
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks4 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks4, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %mul = alloca %struct_template_circuit_bigmult*, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %bigmod.mod.declare_output = alloca [256 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %mod, [256 x i128]** %bigmod.mod.declare_output, align 8
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks7 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks7, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv8, [256 x [256 x i128]]** %longdiv, align 8
  %n = load i128, i128* %bigmod.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul9 = mul i128 2, %k
  %k10 = load i128, i128* %bigmod.k.declare_arg, align 4
  %k11 = load i128, i128* %bigmod.k.declare_arg, align 4
  %add12 = add i128 %k11, 1
  %k13 = load i128, i128* %bigmod.k.declare_arg, align 4
  %n14 = load i128, i128* %bigmod.n.declare_arg, align 4
  %k15 = load i128, i128* %bigmod.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %bigmod.a.declare_input, align 8
  %b = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %call = call [256 x [256 x i128]]* @long_div(i128 %n14, i128 %k15, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv16 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv16, i128 0, i128 0, i128 %i17
  %longdiv18 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %i19 = load i128, i128* %i, align 4
  %div20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i19
  store i128 %longdiv18, i128* %div20, align 4
  %longdiv21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv21, i128 0, i128 1, i128 %i22
  %longdiv24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %i26 = load i128, i128* %i, align 4
  %mod27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %i26
  store i128 %longdiv24, i128* %mod27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i28 = load i128, i128* %i, align 4
  %add29 = add i128 %i28, 1
  store i128 %add29, i128* %i, align 4
  %i30 = load i128, i128* %i, align 4
  %k31 = load i128, i128* %bigmod.k.declare_arg, align 4
  %slt = icmp slt i128 %i30, %k31
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %longdiv32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %k33 = load i128, i128* %bigmod.k.declare_arg, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv32, i128 0, i128 0, i128 %k33
  %longdiv35 = load i128, i128* %array_getter34, align 4
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %k37 = load i128, i128* %bigmod.k.declare_arg, align 4
  %div38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %k37
  store i128 %longdiv35, i128* %div38, align 4
  %k39 = load i128, i128* %bigmod.k.declare_arg, align 4
  %add40 = add i128 %k39, 1
  store i128 0, i128* %i, align 4
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch60, %loop.exit
  %n42 = load i128, i128* %bigmod.n.declare_arg, align 4
  %call43 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n42)
  %ptr_getter44 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i45 = load i128, i128* %i, align 4
  %div_range_checks46 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter44, i128 0, i128 %i45
  store %struct_template_circuit_num2bits* %call43, %struct_template_circuit_num2bits** %div_range_checks46, align 8
  %div47 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %div47, i128 0, i128 %i48
  %div50 = load i128, i128* %array_getter49, align 4
  %div_range_checks51 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i52 = load i128, i128* %i, align 4
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks51, i128 0, i128 %i52
  %div_range_checks54 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks54, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %div50, i1* @constraint.180)
  %ptr_getter56 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter56, i128 0, i128 %i57
  %div_range_checks59 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter58, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks59, i32 0, i32 1
  store i128 %div50, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.body41
  %i61 = load i128, i128* %i, align 4
  %add62 = add i128 %i61, 1
  store i128 %add62, i128* %i, align 4
  %i63 = load i128, i128* %i, align 4
  %k64 = load i128, i128* %bigmod.k.declare_arg, align 4
  %sle65 = icmp sle i128 %i63, %k64
  br i1 %sle65, label %loop.body41, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch60
  %k67 = load i128, i128* %bigmod.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body68

loop.body68:                                      ; preds = %loop.latch89, %loop.exit66
  %n69 = load i128, i128* %bigmod.n.declare_arg, align 4
  %call70 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n69)
  %ptr_getter71 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i72 = load i128, i128* %i, align 4
  %mod_range_checks73 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter71, i128 0, i128 %i72
  store %struct_template_circuit_num2bits* %call70, %struct_template_circuit_num2bits** %mod_range_checks73, align 8
  %mod74 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %i75 = load i128, i128* %i, align 4
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %mod74, i128 0, i128 %i75
  %mod77 = load i128, i128* %array_getter76, align 4
  %mod_range_checks78 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks78, i128 0, i128 %i79
  %mod_range_checks81 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks81, i32 0, i32 1
  %num2bits.in.read_input_outter83 = load i128, i128* %struct_getter82, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter83, i128 %mod77, i1* @constraint.181)
  %ptr_getter84 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter84, i128 0, i128 %i85
  %mod_range_checks87 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter86, align 8
  %num2bits.in.write_input_outter88 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks87, i32 0, i32 1
  store i128 %mod77, i128* %num2bits.in.write_input_outter88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body68
  %i90 = load i128, i128* %i, align 4
  %add91 = add i128 %i90, 1
  store i128 %add91, i128* %i, align 4
  %i92 = load i128, i128* %i, align 4
  %k93 = load i128, i128* %bigmod.k.declare_arg, align 4
  %slt94 = icmp slt i128 %i92, %k93
  br i1 %slt94, label %loop.body68, label %loop.exit95

loop.exit95:                                      ; preds = %loop.latch89
  %n96 = load i128, i128* %bigmod.n.declare_arg, align 4
  %k97 = load i128, i128* %bigmod.k.declare_arg, align 4
  %add98 = add i128 %k97, 1
  %call99 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n96, i128 %add98)
  store %struct_template_circuit_bigmult* %call99, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body100

loop.body100:                                     ; preds = %loop.latch129, %loop.exit95
  %div101 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %i102 = load i128, i128* %i, align 4
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %div101, i128 0, i128 %i102
  %div104 = load i128, i128* %array_getter103, align 4
  %mul105 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul105, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter106, align 8
  %i107 = load i128, i128* %i, align 4
  %array_getter108 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i107
  %mul109 = load i128, i128* %array_getter108, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul109, i128 %div104, i1* @constraint.182)
  %ptr_getter110 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter110, i32 0, i32 2
  %bigmult.a.read_input_outter112 = load [256 x i128]*, [256 x i128]** %struct_getter111, align 8
  %i113 = load i128, i128* %i, align 4
  %mul114 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter112, i128 0, i128 %i113
  store i128 %div104, i128* %mul114, align 4
  %b115 = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %i116 = load i128, i128* %i, align 4
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %b115, i128 0, i128 %i116
  %b118 = load i128, i128* %array_getter117, align 4
  %mul119 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul119, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %i121 = load i128, i128* %i, align 4
  %array_getter122 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i121
  %mul123 = load i128, i128* %array_getter122, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul123, i128 %b118, i1* @constraint.183)
  %ptr_getter124 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter125 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter124, i32 0, i32 3
  %bigmult.b.read_input_outter126 = load [256 x i128]*, [256 x i128]** %struct_getter125, align 8
  %i127 = load i128, i128* %i, align 4
  %mul128 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter126, i128 0, i128 %i127
  store i128 %b118, i128* %mul128, align 4
  br label %loop.latch129

loop.latch129:                                    ; preds = %loop.body100
  %i130 = load i128, i128* %i, align 4
  %add131 = add i128 %i130, 1
  store i128 %add131, i128* %i, align 4
  %i132 = load i128, i128* %i, align 4
  %k133 = load i128, i128* %bigmod.k.declare_arg, align 4
  %slt134 = icmp slt i128 %i132, %k133
  br i1 %slt134, label %loop.body100, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  %div136 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %k137 = load i128, i128* %bigmod.k.declare_arg, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %div136, i128 0, i128 %k137
  %div139 = load i128, i128* %array_getter138, align 4
  %mul140 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul140, i32 0, i32 2
  %bigmult.a.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %k143 = load i128, i128* %bigmod.k.declare_arg, align 4
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter142, i128 0, i128 %k143
  %mul145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul145, i128 %div139, i1* @constraint.184)
  %ptr_getter146 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter146, i32 0, i32 2
  %bigmult.a.read_input_outter148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %k149 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul150 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter148, i128 0, i128 %k149
  store i128 %div139, i128* %mul150, align 4
  %mul151 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul151, i32 0, i32 3
  %bigmult.b.read_input_outter153 = load [256 x i128]*, [256 x i128]** %struct_getter152, align 8
  %k154 = load i128, i128* %bigmod.k.declare_arg, align 4
  %array_getter155 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter153, i128 0, i128 %k154
  %mul156 = load i128, i128* %array_getter155, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul156, i128 0, i1* @constraint.185)
  %ptr_getter157 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter157, i32 0, i32 3
  %bigmult.b.read_input_outter159 = load [256 x i128]*, [256 x i128]** %struct_getter158, align 8
  %k160 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul161 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter159, i128 0, i128 %k160
  store i128 0, i128* %mul161, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body162

loop.body162:                                     ; preds = %loop.latch163, %loop.exit135
  br label %loop.latch163

loop.latch163:                                    ; preds = %loop.body162
  %i164 = load i128, i128* %i, align 4
  %add165 = add i128 %i164, 1
  store i128 %add165, i128* %i, align 4
  %i166 = load i128, i128* %i, align 4
  %k167 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul168 = mul i128 2, %k167
  %add169 = add i128 %mul168, 2
  %slt170 = icmp slt i128 %i166, %add169
  br i1 %slt170, label %loop.body162, label %loop.exit171

loop.exit171:                                     ; preds = %loop.latch163
  %n172 = load i128, i128* %bigmod.n.declare_arg, align 4
  %k173 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul174 = mul i128 2, %k173
  %add175 = add i128 %mul174, 2
  %call176 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n172, i128 %add175)
  store %struct_template_circuit_bigadd* %call176, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body177

loop.body177:                                     ; preds = %loop.latch221, %loop.exit171
  %mul178 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter179 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul178, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter179, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i180
  %mul182 = load i128, i128* %array_getter181, align 4
  %add183 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter184 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add183, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter184, align 8
  %i185 = load i128, i128* %i, align 4
  %array_getter186 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i185
  %add187 = load i128, i128* %array_getter186, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add187, i128 %mul182, i1* @constraint.186)
  %ptr_getter188 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter189 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter188, i32 0, i32 2
  %bigadd.a.read_input_outter190 = load [256 x i128]*, [256 x i128]** %struct_getter189, align 8
  %i191 = load i128, i128* %i, align 4
  %add192 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter190, i128 0, i128 %i191
  store i128 %mul182, i128* %add192, align 4
  %i193 = load i128, i128* %i, align 4
  %k194 = load i128, i128* %bigmod.k.declare_arg, align 4
  %slt195 = icmp slt i128 %i193, %k194
  br i1 %slt195, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body177
  %mod196 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %i197 = load i128, i128* %i, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %mod196, i128 0, i128 %i197
  %mod199 = load i128, i128* %array_getter198, align 4
  %add200 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add200, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter201, align 8
  %i202 = load i128, i128* %i, align 4
  %array_getter203 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i202
  %add204 = load i128, i128* %array_getter203, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add204, i128 %mod199, i1* @constraint.187)
  %ptr_getter205 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter206 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter205, i32 0, i32 3
  %bigadd.b.read_input_outter207 = load [256 x i128]*, [256 x i128]** %struct_getter206, align 8
  %i208 = load i128, i128* %i, align 4
  %add209 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter207, i128 0, i128 %i208
  store i128 %mod199, i128* %add209, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body177
  %add210 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter211 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add210, i32 0, i32 3
  %bigadd.b.read_input_outter212 = load [256 x i128]*, [256 x i128]** %struct_getter211, align 8
  %i213 = load i128, i128* %i, align 4
  %array_getter214 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter212, i128 0, i128 %i213
  %add215 = load i128, i128* %array_getter214, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add215, i128 0, i1* @constraint.188)
  %ptr_getter216 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter217 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter216, i32 0, i32 3
  %bigadd.b.read_input_outter218 = load [256 x i128]*, [256 x i128]** %struct_getter217, align 8
  %i219 = load i128, i128* %i, align 4
  %add220 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter218, i128 0, i128 %i219
  store i128 0, i128* %add220, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch221

loop.latch221:                                    ; preds = %if.exit
  %i222 = load i128, i128* %i, align 4
  %add223 = add i128 %i222, 1
  store i128 %add223, i128* %i, align 4
  %i224 = load i128, i128* %i, align 4
  %k225 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul226 = mul i128 2, %k225
  %slt227 = icmp slt i128 %i224, %mul226
  br i1 %slt227, label %loop.body177, label %loop.exit228

loop.exit228:                                     ; preds = %loop.latch221
  %mul229 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter230 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul229, i32 0, i32 4
  %bigmult.out.read_output_outter231 = load [256 x i128]*, [256 x i128]** %struct_getter230, align 8
  %k232 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul233 = mul i128 2, %k232
  %array_getter234 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter231, i128 0, i128 %mul233
  %mul235 = load i128, i128* %array_getter234, align 4
  %add236 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter237 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add236, i32 0, i32 2
  %bigadd.a.read_input_outter238 = load [256 x i128]*, [256 x i128]** %struct_getter237, align 8
  %k239 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul240 = mul i128 2, %k239
  %array_getter241 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter238, i128 0, i128 %mul240
  %add242 = load i128, i128* %array_getter241, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add242, i128 %mul235, i1* @constraint.189)
  %ptr_getter243 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter244 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter243, i32 0, i32 2
  %bigadd.a.read_input_outter245 = load [256 x i128]*, [256 x i128]** %struct_getter244, align 8
  %k246 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul247 = mul i128 2, %k246
  %add248 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter245, i128 0, i128 %mul247
  store i128 %mul235, i128* %add248, align 4
  %mul249 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter250 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul249, i32 0, i32 4
  %bigmult.out.read_output_outter251 = load [256 x i128]*, [256 x i128]** %struct_getter250, align 8
  %k252 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul253 = mul i128 2, %k252
  %add254 = add i128 %mul253, 1
  %array_getter255 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter251, i128 0, i128 %add254
  %mul256 = load i128, i128* %array_getter255, align 4
  %add257 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter258 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add257, i32 0, i32 2
  %bigadd.a.read_input_outter259 = load [256 x i128]*, [256 x i128]** %struct_getter258, align 8
  %k260 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul261 = mul i128 2, %k260
  %add262 = add i128 %mul261, 1
  %array_getter263 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter259, i128 0, i128 %add262
  %add264 = load i128, i128* %array_getter263, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add264, i128 %mul256, i1* @constraint.190)
  %ptr_getter265 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter265, i32 0, i32 2
  %bigadd.a.read_input_outter267 = load [256 x i128]*, [256 x i128]** %struct_getter266, align 8
  %k268 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul269 = mul i128 2, %k268
  %add270 = add i128 %mul269, 1
  %add271 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter267, i128 0, i128 %add270
  store i128 %mul256, i128* %add271, align 4
  %add272 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter273 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add272, i32 0, i32 3
  %bigadd.b.read_input_outter274 = load [256 x i128]*, [256 x i128]** %struct_getter273, align 8
  %k275 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul276 = mul i128 2, %k275
  %array_getter277 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter274, i128 0, i128 %mul276
  %add278 = load i128, i128* %array_getter277, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add278, i128 0, i1* @constraint.191)
  %ptr_getter279 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter280 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter279, i32 0, i32 3
  %bigadd.b.read_input_outter281 = load [256 x i128]*, [256 x i128]** %struct_getter280, align 8
  %k282 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul283 = mul i128 2, %k282
  %add284 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter281, i128 0, i128 %mul283
  store i128 0, i128* %add284, align 4
  %add285 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter286 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add285, i32 0, i32 3
  %bigadd.b.read_input_outter287 = load [256 x i128]*, [256 x i128]** %struct_getter286, align 8
  %k288 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul289 = mul i128 2, %k288
  %add290 = add i128 %mul289, 1
  %array_getter291 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter287, i128 0, i128 %add290
  %add292 = load i128, i128* %array_getter291, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add292, i128 0, i1* @constraint.192)
  %ptr_getter293 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter294 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter293, i32 0, i32 3
  %bigadd.b.read_input_outter295 = load [256 x i128]*, [256 x i128]** %struct_getter294, align 8
  %k296 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul297 = mul i128 2, %k296
  %add298 = add i128 %mul297, 1
  %add299 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter295, i128 0, i128 %add298
  store i128 0, i128* %add299, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body300

loop.body300:                                     ; preds = %loop.latch301, %loop.exit228
  br label %loop.latch301

loop.latch301:                                    ; preds = %loop.body300
  %i302 = load i128, i128* %i, align 4
  %add303 = add i128 %i302, 1
  store i128 %add303, i128* %i, align 4
  %i304 = load i128, i128* %i, align 4
  %k305 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul306 = mul i128 2, %k305
  %add307 = add i128 %mul306, 2
  %slt308 = icmp slt i128 %i304, %add307
  br i1 %slt308, label %loop.body300, label %loop.exit309

loop.exit309:                                     ; preds = %loop.latch301
  store i128 0, i128* %i, align 4
  br label %loop.body310

loop.body310:                                     ; preds = %loop.latch320, %loop.exit309
  %add311 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter312 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add311, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter312, align 8
  %i313 = load i128, i128* %i, align 4
  %array_getter314 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i313
  %add315 = load i128, i128* %array_getter314, align 4
  %a316 = load [256 x i128]*, [256 x i128]** %bigmod.a.declare_input, align 8
  %i317 = load i128, i128* %i, align 4
  %array_getter318 = getelementptr inbounds [256 x i128], [256 x i128]* %a316, i128 0, i128 %i317
  %a319 = load i128, i128* %array_getter318, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add315, i128 %a319, i1* @constraint.193)
  br label %loop.latch320

loop.latch320:                                    ; preds = %loop.body310
  %i321 = load i128, i128* %i, align 4
  %add322 = add i128 %i321, 1
  store i128 %add322, i128* %i, align 4
  %i323 = load i128, i128* %i, align 4
  %k324 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul325 = mul i128 2, %k324
  %slt326 = icmp slt i128 %i323, %mul325
  br i1 %slt326, label %loop.body310, label %loop.exit327

loop.exit327:                                     ; preds = %loop.latch320
  %add328 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter329 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add328, i32 0, i32 4
  %bigadd.out.read_output_outter330 = load [256 x i128]*, [256 x i128]** %struct_getter329, align 8
  %k331 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul332 = mul i128 2, %k331
  %array_getter333 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter330, i128 0, i128 %mul332
  %add334 = load i128, i128* %array_getter333, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add334, i128 0, i1* @constraint.194)
  %add335 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter336 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add335, i32 0, i32 4
  %bigadd.out.read_output_outter337 = load [256 x i128]*, [256 x i128]** %struct_getter336, align 8
  %k338 = load i128, i128* %bigmod.k.declare_arg, align 4
  %mul339 = mul i128 2, %k338
  %add340 = add i128 %mul339, 1
  %array_getter341 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter337, i128 0, i128 %add340
  %add342 = load i128, i128* %array_getter341, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add342, i128 0, i1* @constraint.195)
  %n343 = load i128, i128* %bigmod.n.declare_arg, align 4
  %k344 = load i128, i128* %bigmod.k.declare_arg, align 4
  %call345 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n343, i128 %k344)
  store %struct_template_circuit_biglessthan* %call345, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body346

loop.body346:                                     ; preds = %loop.latch375, %loop.exit327
  %mod347 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %i348 = load i128, i128* %i, align 4
  %array_getter349 = getelementptr inbounds [256 x i128], [256 x i128]* %mod347, i128 0, i128 %i348
  %mod350 = load i128, i128* %array_getter349, align 4
  %lt351 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter352 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt351, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter352, align 8
  %i353 = load i128, i128* %i, align 4
  %array_getter354 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i353
  %lt355 = load i128, i128* %array_getter354, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt355, i128 %mod350, i1* @constraint.196)
  %ptr_getter356 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter357 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter356, i32 0, i32 2
  %biglessthan.a.read_input_outter358 = load [256 x i128]*, [256 x i128]** %struct_getter357, align 8
  %i359 = load i128, i128* %i, align 4
  %lt360 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter358, i128 0, i128 %i359
  store i128 %mod350, i128* %lt360, align 4
  %b361 = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %i362 = load i128, i128* %i, align 4
  %array_getter363 = getelementptr inbounds [256 x i128], [256 x i128]* %b361, i128 0, i128 %i362
  %b364 = load i128, i128* %array_getter363, align 4
  %lt365 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter366 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt365, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter366, align 8
  %i367 = load i128, i128* %i, align 4
  %array_getter368 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i367
  %lt369 = load i128, i128* %array_getter368, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt369, i128 %b364, i1* @constraint.197)
  %ptr_getter370 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter371 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter370, i32 0, i32 3
  %biglessthan.b.read_input_outter372 = load [256 x i128]*, [256 x i128]** %struct_getter371, align 8
  %i373 = load i128, i128* %i, align 4
  %lt374 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter372, i128 0, i128 %i373
  store i128 %b364, i128* %lt374, align 4
  br label %loop.latch375

loop.latch375:                                    ; preds = %loop.body346
  %i376 = load i128, i128* %i, align 4
  %add377 = add i128 %i376, 1
  store i128 %add377, i128* %i, align 4
  %i378 = load i128, i128* %i, align 4
  %k379 = load i128, i128* %bigmod.k.declare_arg, align 4
  %slt380 = icmp slt i128 %i378, %k379
  br i1 %slt380, label %loop.body346, label %loop.exit381

loop.exit381:                                     ; preds = %loop.latch375
  %lt382 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter383 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt382, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter383, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.198)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit381
  %ptr_cast = bitcast [256 x i128]** %bigmod.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %mul9)
  %ptr_cast384 = bitcast [256 x i128]** %bigmod.div.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast384, i128 %add12)
  %ptr_cast385 = bitcast [256 x i128]** %bigmod.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast385, i128 %k10)
  %ptr_cast386 = bitcast [256 x i128]** %bigmod.mod.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast386, i128 %k13)
  %ptr_cast387 = bitcast [256 x [256 x i128]]** %longdiv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast387, i128 2, i128 50)
  %ptr_cast388 = bitcast [256 x %struct_template_circuit_num2bits*]** %mod_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast388, i128 %k67)
  %ptr_cast389 = bitcast [256 x %struct_template_circuit_num2bits*]** %div_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast389, i128 %add40)
  br label %exit

exit:                                             ; preds = %arraydim
  %div390 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %bigmod.div.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 4
  store [256 x i128]* %div390, [256 x i128]** %bigmod.div.write_output_inner, align 8
  %mod391 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %bigmod.mod.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 5
  store [256 x i128]* %mod391, [256 x i128]** %bigmod.mod.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmod = alloca %struct_template_circuit_bigmod, align 8
  %bigmod.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 0
  store i128 %0, i128* %bigmod.n.write_arg_inner, align 4
  %bigmod.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 1
  store i128 %1, i128* %bigmod.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmod* %struct_template_circuit_bigmod
}

define void @fn_template_init_bigmultmodp(%struct_template_circuit_bigmultmodp* %0) {
entry:
  %BigMultModP = alloca %struct_template_circuit_bigmultmodp*, align 8
  store %struct_template_circuit_bigmultmodp* %0, %struct_template_circuit_bigmultmodp** %BigMultModP, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 0
  %bigmultmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmultmodp.n.declare_arg = alloca i128, align 8
  store i128 %bigmultmodp.n.read_arg_inner, i128* %bigmultmodp.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 1
  %bigmultmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmultmodp.k.declare_arg = alloca i128, align 8
  store i128 %bigmultmodp.k.read_arg_inner, i128* %bigmultmodp.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 2
  %bigmultmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmultmodp.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultmodp.a.read_input_inner, [256 x i128]** %bigmultmodp.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 3
  %bigmultmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmultmodp.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultmodp.b.read_input_inner, [256 x i128]** %bigmultmodp.b.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 4
  %bigmultmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmultmodp.p.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultmodp.p.read_input_inner, [256 x i128]** %bigmultmodp.p.declare_input, align 8
  %big_mod = alloca %struct_template_circuit_bigmod*, align 8
  %bigmultmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %big_mult = alloca %struct_template_circuit_bigmult*, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %n = load i128, i128* %bigmultmodp.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %k6 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %k7 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %k8 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %n9 = load i128, i128* %bigmultmodp.n.declare_arg, align 4
  %k10 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %call = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n9, i128 %k10)
  store %struct_template_circuit_bigmult* %call, %struct_template_circuit_bigmult** %big_mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %bigmultmodp.a.declare_input, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %big_mult13 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult13, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i15
  %big_mult17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mult17, i128 %a12, i1* @constraint.199)
  %ptr_getter = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter, i32 0, i32 2
  %bigmult.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i20 = load i128, i128* %i, align 4
  %big_mult21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter19, i128 0, i128 %i20
  store i128 %a12, i128* %big_mult21, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultmodp.b.declare_input, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i22
  %b24 = load i128, i128* %array_getter23, align 4
  %big_mult25 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult25, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i27
  %big_mult29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mult29, i128 %b24, i1* @constraint.200)
  %ptr_getter30 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter30, i32 0, i32 3
  %bigmult.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %i33 = load i128, i128* %i, align 4
  %big_mult34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter32, i128 0, i128 %i33
  store i128 %b24, i128* %big_mult34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i35 = load i128, i128* %i, align 4
  %add = add i128 %i35, 1
  store i128 %add, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k37 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %slt = icmp slt i128 %i36, %k37
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n38 = load i128, i128* %bigmultmodp.n.declare_arg, align 4
  %k39 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %call40 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %n38, i128 %k39)
  store %struct_template_circuit_bigmod* %call40, %struct_template_circuit_bigmod** %big_mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch57, %loop.exit
  %big_mult42 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult42, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i44
  %big_mult46 = load i128, i128* %array_getter45, align 4
  %big_mod47 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod47, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %i49 = load i128, i128* %i, align 4
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i49
  %big_mod51 = load i128, i128* %array_getter50, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mod51, i128 %big_mult46, i1* @constraint.201)
  %ptr_getter52 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter52, i32 0, i32 2
  %bigmod.a.read_input_outter54 = load [256 x i128]*, [256 x i128]** %struct_getter53, align 8
  %i55 = load i128, i128* %i, align 4
  %big_mod56 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter54, i128 0, i128 %i55
  store i128 %big_mult46, i128* %big_mod56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body41
  %i58 = load i128, i128* %i, align 4
  %add59 = add i128 %i58, 1
  store i128 %add59, i128* %i, align 4
  %i60 = load i128, i128* %i, align 4
  %k61 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %mul = mul i128 2, %k61
  %slt62 = icmp slt i128 %i60, %mul
  br i1 %slt62, label %loop.body41, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  store i128 0, i128* %i, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch78, %loop.exit63
  %p = load [256 x i128]*, [256 x i128]** %bigmultmodp.p.declare_input, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i65
  %p67 = load i128, i128* %array_getter66, align 4
  %big_mod68 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod68, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i70
  %big_mod72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mod72, i128 %p67, i1* @constraint.202)
  %ptr_getter73 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter73, i32 0, i32 3
  %bigmod.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %i76 = load i128, i128* %i, align 4
  %big_mod77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter75, i128 0, i128 %i76
  store i128 %p67, i128* %big_mod77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body64
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %k82 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %slt83 = icmp slt i128 %i81, %k82
  br i1 %slt83, label %loop.body64, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  store i128 0, i128* %i, align 4
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch98, %loop.exit84
  %big_mod86 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod86, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %i88 = load i128, i128* %i, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 %i88
  %big_mod90 = load i128, i128* %array_getter89, align 4
  %out91 = load [256 x i128]*, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %out91, i128 0, i128 %i92
  %out94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out94, i128 %big_mod90, i1* @constraint.203)
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %i96 = load i128, i128* %i, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %i96
  store i128 %big_mod90, i128* %out97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body85
  %i99 = load i128, i128* %i, align 4
  %add100 = add i128 %i99, 1
  store i128 %add100, i128* %i, align 4
  %i101 = load i128, i128* %i, align 4
  %k102 = load i128, i128* %bigmultmodp.k.declare_arg, align 4
  %slt103 = icmp slt i128 %i101, %k102
  br i1 %slt103, label %loop.body85, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  br label %arraydim

arraydim:                                         ; preds = %loop.exit104
  %ptr_cast = bitcast [256 x i128]** %bigmultmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k7)
  %ptr_cast105 = bitcast [256 x i128]** %bigmultmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast105, i128 %k)
  %ptr_cast106 = bitcast [256 x i128]** %bigmultmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast106, i128 %k8)
  %ptr_cast107 = bitcast [256 x i128]** %bigmultmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast107, i128 %k6)
  br label %exit

exit:                                             ; preds = %arraydim
  %out108 = load [256 x i128]*, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %bigmultmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 5
  store [256 x i128]* %out108, [256 x i128]** %bigmultmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultmodp* @fn_template_build_bigmultmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmultmodp = alloca %struct_template_circuit_bigmultmodp, align 8
  %bigmultmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 0
  store i128 %0, i128* %bigmultmodp.n.write_arg_inner, align 4
  %bigmultmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 1
  store i128 %1, i128* %bigmultmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp
}

define void @fn_template_init_bigmodinv(%struct_template_circuit_bigmodinv* %0) {
entry:
  %BigModInv = alloca %struct_template_circuit_bigmodinv*, align 8
  store %struct_template_circuit_bigmodinv* %0, %struct_template_circuit_bigmodinv** %BigModInv, align 8
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 0
  %bigmodinv.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %bigmodinv.n.declare_arg = alloca i128, align 8
  store i128 %bigmodinv.n.read_arg_inner, i128* %bigmodinv.n.declare_arg, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 1
  %bigmodinv.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %bigmodinv.k.declare_arg = alloca i128, align 8
  store i128 %bigmodinv.k.read_arg_inner, i128* %bigmodinv.k.declare_arg, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 2
  %bigmodinv.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmodinv.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmodinv.in.read_input_inner, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 3
  %bigmodinv.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmodinv.p.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmodinv.p.read_input_inner, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %mult = alloca %struct_template_circuit_bigmult*, align 8
  %inv = alloca [256 x i128]*, align 8
  %inv4 = alloca [256 x i128], align 8
  store [256 x i128]* %inv4, [256 x i128]** %inv, align 8
  %i = alloca i128, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  store i128 %i5, i128* %i, align 4
  %range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %range_checks6, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %bigmodinv.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %mod = alloca %struct_template_circuit_bigmod*, align 8
  %n = load i128, i128* %bigmodinv.n.declare_arg, align 4
  %sle = icmp sle i128 %n, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %k = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %k7 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %k8 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %n9 = load i128, i128* %bigmodinv.n.declare_arg, align 4
  %k10 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %in = load [256 x i128]*, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %p = load [256 x i128]*, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %call = call [256 x i128]* @mod_inv(i128 %n9, i128 %k10, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x i128]* %call, [256 x i128]** %inv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %inv11 = load [256 x i128]*, [256 x i128]** %inv, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %inv11, i128 0, i128 %i12
  %inv13 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %i14 = load i128, i128* %i, align 4
  %out15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 %inv13, i128* %out15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i16 = load i128, i128* %i, align 4
  %add = add i128 %i16, 1
  store i128 %add, i128* %i, align 4
  %i17 = load i128, i128* %i, align 4
  %k18 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %slt = icmp slt i128 %i17, %k18
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k19 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch39, %loop.exit
  %n21 = load i128, i128* %bigmodinv.n.declare_arg, align 4
  %call22 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n21)
  %ptr_getter23 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i24 = load i128, i128* %i, align 4
  %range_checks25 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter23, i128 0, i128 %i24
  store %struct_template_circuit_num2bits* %call22, %struct_template_circuit_num2bits** %range_checks25, align 8
  %out26 = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %out26, i128 0, i128 %i27
  %out29 = load i128, i128* %array_getter28, align 4
  %range_checks30 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks30, i128 0, i128 %i31
  %range_checks33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks33, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter34, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %out29, i1* @constraint.204)
  %ptr_getter35 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter35, i128 0, i128 %i36
  %range_checks38 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter37, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks38, i32 0, i32 1
  store i128 %out29, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch39

loop.latch39:                                     ; preds = %loop.body20
  %i40 = load i128, i128* %i, align 4
  %add41 = add i128 %i40, 1
  store i128 %add41, i128* %i, align 4
  %i42 = load i128, i128* %i, align 4
  %k43 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %slt44 = icmp slt i128 %i42, %k43
  br i1 %slt44, label %loop.body20, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %n46 = load i128, i128* %bigmodinv.n.declare_arg, align 4
  %k47 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %call48 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n46, i128 %k47)
  store %struct_template_circuit_bigmult* %call48, %struct_template_circuit_bigmult** %mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch78, %loop.exit45
  %in50 = load [256 x i128]*, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %in50, i128 0, i128 %i51
  %in53 = load i128, i128* %array_getter52, align 4
  %mult54 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult54, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i56
  %mult58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult58, i128 %in53, i1* @constraint.205)
  %ptr_getter59 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter59, i32 0, i32 2
  %bigmult.a.read_input_outter61 = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %i62 = load i128, i128* %i, align 4
  %mult63 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter61, i128 0, i128 %i62
  store i128 %in53, i128* %mult63, align 4
  %out64 = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %out64, i128 0, i128 %i65
  %out67 = load i128, i128* %array_getter66, align 4
  %mult68 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult68, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i70
  %mult72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult72, i128 %out67, i1* @constraint.206)
  %ptr_getter73 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter73, i32 0, i32 3
  %bigmult.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %i76 = load i128, i128* %i, align 4
  %mult77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter75, i128 0, i128 %i76
  store i128 %out67, i128* %mult77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body49
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %k82 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %slt83 = icmp slt i128 %i81, %k82
  br i1 %slt83, label %loop.body49, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %n85 = load i128, i128* %bigmodinv.n.declare_arg, align 4
  %k86 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %call87 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %n85, i128 %k86)
  store %struct_template_circuit_bigmod* %call87, %struct_template_circuit_bigmod** %mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch104, %loop.exit84
  %mult89 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult89, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %i91 = load i128, i128* %i, align 4
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i91
  %mult93 = load i128, i128* %array_getter92, align 4
  %mod94 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod94, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i96
  %mod98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod98, i128 %mult93, i1* @constraint.207)
  %ptr_getter99 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter99, i32 0, i32 2
  %bigmod.a.read_input_outter101 = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %i102 = load i128, i128* %i, align 4
  %mod103 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter101, i128 0, i128 %i102
  store i128 %mult93, i128* %mod103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body88
  %i105 = load i128, i128* %i, align 4
  %add106 = add i128 %i105, 1
  store i128 %add106, i128* %i, align 4
  %i107 = load i128, i128* %i, align 4
  %k108 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %mul = mul i128 2, %k108
  %slt109 = icmp slt i128 %i107, %mul
  br i1 %slt109, label %loop.body88, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch104
  store i128 0, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch126, %loop.exit110
  %p112 = load [256 x i128]*, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %i113 = load i128, i128* %i, align 4
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %p112, i128 0, i128 %i113
  %p115 = load i128, i128* %array_getter114, align 4
  %mod116 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod116, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %i118 = load i128, i128* %i, align 4
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i118
  %mod120 = load i128, i128* %array_getter119, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod120, i128 %p115, i1* @constraint.208)
  %ptr_getter121 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter122 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter121, i32 0, i32 3
  %bigmod.b.read_input_outter123 = load [256 x i128]*, [256 x i128]** %struct_getter122, align 8
  %i124 = load i128, i128* %i, align 4
  %mod125 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter123, i128 0, i128 %i124
  store i128 %p115, i128* %mod125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body111
  %i127 = load i128, i128* %i, align 4
  %add128 = add i128 %i127, 1
  store i128 %add128, i128* %i, align 4
  %i129 = load i128, i128* %i, align 4
  %k130 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %slt131 = icmp slt i128 %i129, %k130
  br i1 %slt131, label %loop.body111, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  %mod133 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod133, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %array_getter135 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 0
  %mod136 = load i128, i128* %array_getter135, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod136, i128 1, i1* @constraint.209)
  store i128 1, i128* %i, align 4
  br label %loop.body137

loop.body137:                                     ; preds = %loop.latch144, %loop.exit132
  %mod138 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod138, i32 0, i32 5
  %bigmod.mod.read_output_outter140 = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %i141 = load i128, i128* %i, align 4
  %array_getter142 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter140, i128 0, i128 %i141
  %mod143 = load i128, i128* %array_getter142, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod143, i128 0, i1* @constraint.210)
  br label %loop.latch144

loop.latch144:                                    ; preds = %loop.body137
  %i145 = load i128, i128* %i, align 4
  %add146 = add i128 %i145, 1
  store i128 %add146, i128* %i, align 4
  %i147 = load i128, i128* %i, align 4
  %k148 = load i128, i128* %bigmodinv.k.declare_arg, align 4
  %slt149 = icmp slt i128 %i147, %k148
  br i1 %slt149, label %loop.body137, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch144
  br label %arraydim

arraydim:                                         ; preds = %loop.exit150
  %ptr_cast = bitcast [256 x i128]** %bigmodinv.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %k)
  %ptr_cast151 = bitcast [256 x i128]** %bigmodinv.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast151, i128 %k8)
  %ptr_cast152 = bitcast [256 x i128]** %bigmodinv.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast152, i128 %k7)
  %ptr_cast153 = bitcast [256 x i128]** %inv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast153, i128 50)
  %ptr_cast154 = bitcast [256 x %struct_template_circuit_num2bits*]** %range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast154, i128 %k19)
  br label %exit

exit:                                             ; preds = %arraydim
  %out155 = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %bigmodinv.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 4
  store [256 x i128]* %out155, [256 x i128]** %bigmodinv.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmodinv* @fn_template_build_bigmodinv(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmodinv = alloca %struct_template_circuit_bigmodinv, align 8
  %bigmodinv.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 0
  store i128 %0, i128* %bigmodinv.n.write_arg_inner, align 4
  %bigmodinv.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 1
  store i128 %1, i128* %bigmodinv.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv
}

declare noalias i8* @malloc(i32)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
