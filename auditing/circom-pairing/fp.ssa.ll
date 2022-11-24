; ModuleID = './auditing/circom-pairing/fp.ll'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp.circom"

%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_compconstant = type { i128, [256 x i128]*, [256 x i128]*, i128, i128 }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_isequal = type { [256 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [256 x i128]* }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_checkcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_lessthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_aliascheck = type { [256 x i128]* }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_greaterthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bits2num_strict = type { [256 x i128]*, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_lesseqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [256 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_fpsgn0 = type { i128, i128, [256 x i128]*, [256 x i128]*, i128, i128 }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpisequal = type { i128, i128, [256 x i128]*, [256 x [256 x i128]]*, i128 }
%struct_template_circuit_fpnegate = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpiszero = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsubtract = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_primereduce = type { i128, i128, i128, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedfpcarrymodp = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpmultiply = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedcheckcarrymodtozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }

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
@constraint.211 = external global i1
@constraint.212 = external global i1
@constraint.213 = external global i1
@constraint.214 = external global i1
@constraint.215 = external global i1
@constraint.216 = external global i1
@constraint.217 = external global i1
@constraint.218 = external global i1
@constraint.219 = external global i1
@constraint.220 = external global i1
@constraint.221 = external global i1
@constraint.222 = external global i1
@constraint.223 = external global i1
@constraint.224 = external global i1
@constraint.225 = external global i1
@constraint.226 = external global i1
@constraint.227 = external global i1
@constraint.228 = external global i1
@constraint.229 = external global i1
@constraint.230 = external global i1
@constraint.231 = external global i1
@constraint.232 = external global i1
@constraint.233 = external global i1
@constraint.234 = external global i1
@constraint.235 = external global i1
@constraint.236 = external global i1
@constraint.237 = external global i1
@constraint.238 = external global i1
@constraint.239 = external global i1
@constraint.240 = external global i1
@constraint.241 = external global i1
@constraint.242 = external global i1
@constraint.243 = external global i1
@constraint.244 = external global i1
@constraint.245 = external global i1
@constraint.246 = external global i1
@constraint.247 = external global i1
@constraint.248 = external global i1
@constraint.249 = external global i1
@constraint.250 = external global i1
@constraint.251 = external global i1
@constraint.252 = external global i1
@constraint.253 = external global i1
@constraint.254 = external global i1
@constraint.255 = external global i1
@constraint.256 = external global i1
@constraint.257 = external global i1
@constraint.258 = external global i1
@constraint.259 = external global i1
@constraint.260 = external global i1
@constraint.261 = external global i1
@constraint.262 = external global i1
@constraint.263 = external global i1
@constraint.264 = external global i1
@constraint.265 = external global i1
@constraint.266 = external global i1
@constraint.267 = external global i1
@constraint.268 = external global i1
@constraint.269 = external global i1
@constraint.270 = external global i1

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

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %not.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %add = add i128 1, %not.in.read_input_inner
  %mul = mul i128 2, %not.in.read_input_inner
  %sub = sub i128 %add, %mul
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub, i1* @constraint)
  %not.out.write_output_inner = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %sub, i128* %not.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  %not.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %not.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %not.out.read_output_inner, i128* %not.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_not* @fn_template_build_not() {
entry:
  %struct_template_circuit_not = alloca %struct_template_circuit_not, align 8
  ret %struct_template_circuit_not* %struct_template_circuit_not
}

define [256 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %var_inline_array = alloca [256 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [256 x i128]* %var_inline_array
}

define void @fn_template_init_bigmultshortlong2d(%struct_template_circuit_bigmultshortlong2d* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 0
  %bigmultshortlong2d.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 1
  %bigmultshortlong2d.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 2
  %bigmultshortlong2d.l.read_arg_inner = load i128, i128* %struct_getter2, align 4
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
  %i15 = call i128 @fn_intrinsic_utils_init()
  %k26 = call i128 @fn_intrinsic_utils_init()
  %i27 = call i128 @fn_intrinsic_utils_init()
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly8, [256 x [256 x i128]]** %a_poly, align 8
  %j9 = call i128 @fn_intrinsic_utils_init()
  %j110 = call i128 @fn_intrinsic_utils_init()
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly11, [256 x [256 x i128]]** %b_poly, align 8
  %j212 = call i128 @fn_intrinsic_utils_init()
  %deg213 = call i128 @fn_intrinsic_utils_init()
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val14, [256 x [256 x i128]]** %prod_val, align 8
  %deg115 = call i128 @fn_intrinsic_utils_init()
  %i16 = call i128 @fn_intrinsic_utils_init()
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow17 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow17, [256 x [256 x i128]]** %pow, align 8
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly18 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly18, [256 x [256 x i128]]** %out_poly, align 8
  %mul = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub = sub i128 %mul, 1
  %mul23 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub24 = sub i128 %mul23, 1
  %mul26 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub27 = sub i128 %mul26, 1
  %mul29 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub30 = sub i128 %mul29, 1
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch40, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add42, %loop.latch40 ]
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %prod_val34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i.0, i128 %j.0
  store i128 0, i128* %prod_val34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body31
  %add = add i128 %j.0, 1
  %mul38 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub39 = sub i128 %mul38, 1
  %slt = icmp slt i128 %add, %sub39
  br i1 %slt, label %loop.body31, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch40

loop.latch40:                                     ; preds = %loop.exit
  %add42 = add i128 %i.0, 1
  %mul45 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub46 = sub i128 %mul45, 1
  %slt47 = icmp slt i128 %add42, %sub46
  br i1 %slt47, label %loop.body, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch40
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch98, %loop.exit48
  %i1.0 = phi i128 [ 0, %loop.exit48 ], [ %add100, %loop.latch98 ]
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch91, %loop.body49
  %i2.0 = phi i128 [ 0, %loop.body49 ], [ %add93, %loop.latch91 ]
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch84, %loop.body50
  %j1.0 = phi i128 [ 0, %loop.body50 ], [ %add86, %loop.latch84 ]
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch77, %loop.body51
  %j2.0 = phi i128 [ 0, %loop.body51 ], [ %add79, %loop.latch77 ]
  %add55 = add i128 %i1.0, %i2.0
  %add58 = add i128 %j1.0, %j2.0
  %prod_val59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val59, i128 0, i128 %add55, i128 %add58
  %prod_val62 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input, align 8
  %array_getter65 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i1.0, i128 %j1.0
  %a66 = load i128, i128* %array_getter65, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input, align 8
  %array_getter69 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i2.0, i128 %j2.0
  %b70 = load i128, i128* %array_getter69, align 4
  %mul71 = mul i128 %a66, %b70
  %add72 = add i128 %prod_val62, %mul71
  %ptr_getter73 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %prod_val76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter73, i128 0, i128 %add55, i128 %add58
  store i128 %add72, i128* %prod_val76, align 4
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.body52
  %add79 = add i128 %j2.0, 1
  %slt82 = icmp slt i128 %add79, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt82, label %loop.body52, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  br label %loop.latch84

loop.latch84:                                     ; preds = %loop.exit83
  %add86 = add i128 %j1.0, 1
  %slt89 = icmp slt i128 %add86, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt89, label %loop.body51, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch84
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.exit90
  %add93 = add i128 %i2.0, 1
  %slt96 = icmp slt i128 %add93, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt96, label %loop.body50, label %loop.exit97

loop.exit97:                                      ; preds = %loop.latch91
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.exit97
  %add100 = add i128 %i1.0, 1
  %slt103 = icmp slt i128 %add100, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt103, label %loop.body49, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch125, %loop.exit104
  %i.1 = phi i128 [ 0, %loop.exit104 ], [ %add127, %loop.latch125 ]
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch116, %loop.body105
  %j.1 = phi i128 [ 0, %loop.body105 ], [ %add118, %loop.latch116 ]
  %prod_val107 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %array_getter110 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val107, i128 0, i128 %i.1, i128 %j.1
  %prod_val111 = load i128, i128* %array_getter110, align 4
  %ptr_getter112 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %out115 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter112, i128 0, i128 %i.1, i128 %j.1
  store i128 %prod_val111, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body106
  %add118 = add i128 %j.1, 1
  %mul121 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub122 = sub i128 %mul121, 1
  %slt123 = icmp slt i128 %add118, %sub122
  br i1 %slt123, label %loop.body106, label %loop.exit124

loop.exit124:                                     ; preds = %loop.latch116
  br label %loop.latch125

loop.latch125:                                    ; preds = %loop.exit124
  %add127 = add i128 %i.1, 1
  %mul130 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub131 = sub i128 %mul130, 1
  %slt132 = icmp slt i128 %add127, %sub131
  br i1 %slt132, label %loop.body105, label %loop.exit133

loop.exit133:                                     ; preds = %loop.latch125
  %mul135 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub136 = sub i128 %mul135, 1
  %mul138 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub139 = sub i128 %mul138, 1
  %sgt = icmp sgt i128 %sub136, %sub139
  %mul141 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub142 = sub i128 %mul141, 1
  %mul144 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub145 = sub i128 %mul144, 1
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %sgt, i128 %sub142, i128 %sub145)
  %uniform_array148 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array148, [256 x [256 x i128]]** %pow, align 8
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch166, %loop.exit133
  %i.2 = phi i128 [ 0, %loop.exit133 ], [ %add168, %loop.latch166 ]
  br label %loop.body150

loop.body150:                                     ; preds = %loop.latch159, %loop.body149
  %j.2 = phi i128 [ 0, %loop.body149 ], [ %add161, %loop.latch159 ]
  %pow153 = call i128 @fn_intrinsic_utils_powi(i128 %i.2, i128 %j.2)
  %ptr_getter154 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %pow158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter154, i128 0, i128 %i.2, i128 %j.2
  store i128 %pow153, i128* %pow158, align 4
  br label %loop.latch159

loop.latch159:                                    ; preds = %loop.body150
  %add161 = add i128 %j.2, 1
  %slt164 = icmp slt i128 %add161, %utils_switch
  br i1 %slt164, label %loop.body150, label %loop.exit165

loop.exit165:                                     ; preds = %loop.latch159
  br label %loop.latch166

loop.latch166:                                    ; preds = %loop.exit165
  %add168 = add i128 %i.2, 1
  %slt171 = icmp slt i128 %add168, %utils_switch
  br i1 %slt171, label %loop.body149, label %loop.exit172

loop.exit172:                                     ; preds = %loop.latch166
  %mul174 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub175 = sub i128 %mul174, 1
  %mul177 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub178 = sub i128 %mul177, 1
  %uniform_array179 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array179, [256 x [256 x i128]]** %a_poly, align 8
  %mul181 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub182 = sub i128 %mul181, 1
  %mul184 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub185 = sub i128 %mul184, 1
  %uniform_array186 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array186, [256 x [256 x i128]]** %b_poly, align 8
  %mul188 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub189 = sub i128 %mul188, 1
  %mul191 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub192 = sub i128 %mul191, 1
  %uniform_array193 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array193, [256 x [256 x i128]]** %out_poly, align 8
  br label %loop.body194

loop.body194:                                     ; preds = %loop.latch336, %loop.exit172
  %i.3 = phi i128 [ 0, %loop.exit172 ], [ %add338, %loop.latch336 ]
  br label %loop.body195

loop.body195:                                     ; preds = %loop.latch327, %loop.body194
  %j.3 = phi i128 [ 0, %loop.body194 ], [ %add329, %loop.latch327 ]
  %ptr_getter196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %a_poly199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter196, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %a_poly199, align 4
  %ptr_getter200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %b_poly203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter200, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %b_poly203, align 4
  %ptr_getter204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %out_poly207 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter204, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %out_poly207, align 4
  br label %loop.body208

loop.body208:                                     ; preds = %loop.latch272, %loop.body195
  %deg1.0 = phi i128 [ 0, %loop.body195 ], [ %add274, %loop.latch272 ]
  br label %loop.body209

loop.body209:                                     ; preds = %loop.latch265, %loop.body208
  %deg2.0 = phi i128 [ 0, %loop.body208 ], [ %add267, %loop.latch265 ]
  %a_poly210 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %array_getter214 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly210, i128 0, i128 %i.3, i128 %j.3
  %a_poly215 = load i128, i128* %array_getter214, align 4
  %a216 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input, align 8
  %array_getter219 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a216, i128 0, i128 %deg1.0, i128 %deg2.0
  %a220 = load i128, i128* %array_getter219, align 4
  %pow221 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter224 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow221, i128 0, i128 %i.3, i128 %deg1.0
  %pow225 = load i128, i128* %array_getter224, align 4
  %mul226 = mul i128 %a220, %pow225
  %pow227 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter230 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow227, i128 0, i128 %j.3, i128 %deg2.0
  %pow231 = load i128, i128* %array_getter230, align 4
  %mul232 = mul i128 %mul226, %pow231
  %add233 = add i128 %a_poly215, %mul232
  %ptr_getter234 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %a_poly237 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter234, i128 0, i128 %i.3, i128 %j.3
  store i128 %add233, i128* %a_poly237, align 4
  %b_poly238 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %array_getter241 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly238, i128 0, i128 %i.3, i128 %j.3
  %b_poly242 = load i128, i128* %array_getter241, align 4
  %b243 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input, align 8
  %array_getter246 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b243, i128 0, i128 %deg1.0, i128 %deg2.0
  %b247 = load i128, i128* %array_getter246, align 4
  %pow248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter251 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow248, i128 0, i128 %i.3, i128 %deg1.0
  %pow252 = load i128, i128* %array_getter251, align 4
  %mul253 = mul i128 %b247, %pow252
  %pow254 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter257 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow254, i128 0, i128 %j.3, i128 %deg2.0
  %pow258 = load i128, i128* %array_getter257, align 4
  %mul259 = mul i128 %mul253, %pow258
  %add260 = add i128 %b_poly242, %mul259
  %ptr_getter261 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %b_poly264 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter261, i128 0, i128 %i.3, i128 %j.3
  store i128 %add260, i128* %b_poly264, align 4
  br label %loop.latch265

loop.latch265:                                    ; preds = %loop.body209
  %add267 = add i128 %deg2.0, 1
  %slt270 = icmp slt i128 %add267, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt270, label %loop.body209, label %loop.exit271

loop.exit271:                                     ; preds = %loop.latch265
  br label %loop.latch272

loop.latch272:                                    ; preds = %loop.exit271
  %add274 = add i128 %deg1.0, 1
  %slt277 = icmp slt i128 %add274, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt277, label %loop.body208, label %loop.exit278

loop.exit278:                                     ; preds = %loop.latch272
  br label %loop.body279

loop.body279:                                     ; preds = %loop.latch318, %loop.exit278
  %deg1.1 = phi i128 [ 0, %loop.exit278 ], [ %add320, %loop.latch318 ]
  br label %loop.body280

loop.body280:                                     ; preds = %loop.latch309, %loop.body279
  %deg2.1 = phi i128 [ 0, %loop.body279 ], [ %add311, %loop.latch309 ]
  %out_poly281 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %array_getter284 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly281, i128 0, i128 %i.3, i128 %j.3
  %out_poly285 = load i128, i128* %array_getter284, align 4
  %out286 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %array_getter289 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out286, i128 0, i128 %deg1.1, i128 %deg2.1
  %out290 = load i128, i128* %array_getter289, align 4
  %pow291 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter295 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow291, i128 0, i128 %i.3, i128 %deg1.1
  %pow296 = load i128, i128* %array_getter295, align 4
  %mul297 = mul i128 %out290, %pow296
  %pow298 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter301 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow298, i128 0, i128 %j.3, i128 %deg2.1
  %pow302 = load i128, i128* %array_getter301, align 4
  %mul303 = mul i128 %mul297, %pow302
  %add304 = add i128 %out_poly285, %mul303
  %ptr_getter305 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %out_poly308 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter305, i128 0, i128 %i.3, i128 %j.3
  store i128 %add304, i128* %out_poly308, align 4
  br label %loop.latch309

loop.latch309:                                    ; preds = %loop.body280
  %add311 = add i128 %deg2.1, 1
  %mul314 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub315 = sub i128 %mul314, 1
  %slt316 = icmp slt i128 %add311, %sub315
  br i1 %slt316, label %loop.body280, label %loop.exit317

loop.exit317:                                     ; preds = %loop.latch309
  br label %loop.latch318

loop.latch318:                                    ; preds = %loop.exit317
  %add320 = add i128 %deg1.1, 1
  %mul323 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub324 = sub i128 %mul323, 1
  %slt325 = icmp slt i128 %add320, %sub324
  br i1 %slt325, label %loop.body279, label %loop.exit326

loop.exit326:                                     ; preds = %loop.latch318
  br label %loop.latch327

loop.latch327:                                    ; preds = %loop.exit326
  %add329 = add i128 %j.3, 1
  %mul332 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub333 = sub i128 %mul332, 1
  %slt334 = icmp slt i128 %add329, %sub333
  br i1 %slt334, label %loop.body195, label %loop.exit335

loop.exit335:                                     ; preds = %loop.latch327
  br label %loop.latch336

loop.latch336:                                    ; preds = %loop.exit335
  %add338 = add i128 %i.3, 1
  %mul341 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub342 = sub i128 %mul341, 1
  %slt343 = icmp slt i128 %add338, %sub342
  br i1 %slt343, label %loop.body194, label %loop.exit344

loop.exit344:                                     ; preds = %loop.latch336
  br label %loop.body345

loop.body345:                                     ; preds = %loop.latch372, %loop.exit344
  %i.4 = phi i128 [ 0, %loop.exit344 ], [ %add374, %loop.latch372 ]
  br label %loop.body346

loop.body346:                                     ; preds = %loop.latch363, %loop.body345
  %j.4 = phi i128 [ 0, %loop.body345 ], [ %add365, %loop.latch363 ]
  %out_poly347 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %array_getter350 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly347, i128 0, i128 %i.4, i128 %j.4
  %out_poly351 = load i128, i128* %array_getter350, align 4
  %a_poly352 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %array_getter355 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly352, i128 0, i128 %i.4, i128 %j.4
  %a_poly356 = load i128, i128* %array_getter355, align 4
  %b_poly357 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %array_getter360 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly357, i128 0, i128 %i.4, i128 %j.4
  %b_poly361 = load i128, i128* %array_getter360, align 4
  %mul362 = mul i128 %a_poly356, %b_poly361
  call void @fn_intrinsic_utils_constraint(i128 %out_poly351, i128 %mul362, i1* @constraint.1)
  br label %loop.latch363

loop.latch363:                                    ; preds = %loop.body346
  %add365 = add i128 %j.4, 1
  %mul368 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub369 = sub i128 %mul368, 1
  %slt370 = icmp slt i128 %add365, %sub369
  br i1 %slt370, label %loop.body346, label %loop.exit371

loop.exit371:                                     ; preds = %loop.latch363
  br label %loop.latch372

loop.latch372:                                    ; preds = %loop.exit371
  %add374 = add i128 %i.4, 1
  %mul377 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub378 = sub i128 %mul377, 1
  %slt379 = icmp slt i128 %add374, %sub378
  br i1 %slt379, label %loop.body345, label %loop.exit380

loop.exit380:                                     ; preds = %loop.latch372
  br label %arraydim

arraydim:                                         ; preds = %loop.exit380
  %ptr_cast = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigmultshortlong2d.l.read_arg_inner, i128 %bigmultshortlong2d.k.read_arg_inner)
  %ptr_cast381 = bitcast [256 x [256 x i128]]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast381, i128 %sub189, i128 %sub192)
  %ptr_cast382 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast382, i128 %utils_switch, i128 %utils_switch)
  %ptr_cast383 = bitcast [256 x [256 x i128]]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast383, i128 %sub175, i128 %sub178)
  %ptr_cast384 = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast384, i128 %sub, i128 %sub24)
  %ptr_cast385 = bitcast [256 x [256 x i128]]** %bigmultshortlong2d.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast385, i128 %bigmultshortlong2d.l.read_arg_inner, i128 %bigmultshortlong2d.k.read_arg_inner)
  %ptr_cast386 = bitcast [256 x [256 x i128]]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast386, i128 %sub182, i128 %sub185)
  %ptr_cast387 = bitcast [256 x [256 x i128]]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast387, i128 %sub27, i128 %sub30)
  br label %exit

exit:                                             ; preds = %arraydim
  %out388 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2d.out.declare_output, align 8
  %bigmultshortlong2d.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 5
  store [256 x [256 x i128]]* %out388, [256 x [256 x i128]]** %bigmultshortlong2d.out.write_output_inner, align 8
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

define i128 @min(i128 %0, i128 %1) {
entry:
  %slt = icmp slt i128 %0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 0
  %nand.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 1
  %nand.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %mul = mul i128 %nand.a.read_input_inner, %nand.b.read_input_inner
  %sub = sub i128 1, %mul
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub, i1* @constraint.2)
  %nand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %sub, i128* %nand.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  %nand.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %nand.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %nand.out.read_output_inner, i128* %nand.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_nand* @fn_template_build_nand() {
entry:
  %struct_template_circuit_nand = alloca %struct_template_circuit_nand, align 8
  ret %struct_template_circuit_nand* %struct_template_circuit_nand
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %carry3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry20, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %add11 = add i128 %add, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add11, i128 %0, i128 %0)
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add22 = add i128 %i.0, 1
  %slt = icmp slt i128 %add22, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry20, i128* %sum27, align 4
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 0
  %or.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 1
  %or.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %or.a.read_input_inner, %or.b.read_input_inner
  %mul = mul i128 %or.a.read_input_inner, %or.b.read_input_inner
  %sub = sub i128 %add, %mul
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub, i1* @constraint.3)
  %or.out.write_output_inner = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %sub, i128* %or.out.write_output_inner, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  %or.out.read_output_inner = load i128, i128* %struct_getter6, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %or.out.write_output_inner8 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %or.out.read_output_inner, i128* %or.out.write_output_inner8, align 4
  ret void
}

define %struct_template_circuit_or* @fn_template_build_or() {
entry:
  %struct_template_circuit_or = alloca %struct_template_circuit_or, align 8
  ret %struct_template_circuit_or* %struct_template_circuit_or
}

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bits2num.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bits2num.in.read_input_inner, [256 x i128]** %bits2num.in.declare_input, align 8
  %e22 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %lc14 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %bits2num.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
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
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.4)
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %add, i128* %bits2num.out.write_output_inner, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bits2num.in.declare_input to i128*
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

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %lc12 = call i128 @fn_intrinsic_utils_init()
  %num2bits.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bits.out.declare_output, align 8
  %e23 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %rshift = lshr i128 %num2bits.in.read_input_inner, %i.0
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %out7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out7, align 4
  %out8 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out8, i128 0, i128 %i.0
  %out10 = load i128, i128* %array_getter, align 4
  %out11 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %out11, i128 0, i128 %i.0
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.5)
  %out16 = load [256 x i128]*, [256 x i128]** %num2bits.out.declare_output, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %out16, i128 0, i128 %i.0
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
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.6)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %num2bits.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %num2bits.n.read_arg_inner)
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

define void @fn_template_init_modsumfour(%struct_template_circuit_modsumfour* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 0
  %modsumfour.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 1
  %modsumfour.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 2
  %modsumfour.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 3
  %modsumfour.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 4
  %modsumfour.d.read_input_inner = load i128, i128* %struct_getter4, align 4
  %sum = call i128 @fn_intrinsic_utils_init()
  %carry = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %modsumfour.n.read_arg_inner, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add6 = add i128 %modsumfour.n.read_arg_inner, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add6)
  %add7 = add i128 %modsumfour.a.read_input_inner, %modsumfour.b.read_input_inner
  %add8 = add i128 %add7, %modsumfour.c.read_input_inner
  %add9 = add i128 %add8, %modsumfour.d.read_input_inner
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add9, i1* @constraint.7)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add9, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsumfour.n.read_arg_inner
  %n2b15 = load i128, i128* %array_getter, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %add20 = add i128 %modsumfour.n.read_arg_inner, 1
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %add20
  %n2b22 = load i128, i128* %array_getter21, align 4
  %mul = mul i128 2, %n2b22
  %add23 = add i128 %n2b15, %mul
  call void @fn_intrinsic_utils_constraint(i128 %carry, i128 %add23, i1* @constraint.8)
  %modsumfour.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %add23, i128* %modsumfour.carry.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  %modsumfour.carry.read_output_inner = load i128, i128* %struct_getter27, align 4
  %add30 = add i128 %modsumfour.a.read_input_inner, %modsumfour.b.read_input_inner
  %add32 = add i128 %add30, %modsumfour.c.read_input_inner
  %add34 = add i128 %add32, %modsumfour.d.read_input_inner
  %lshift = shl i128 1, %modsumfour.n.read_arg_inner
  %mul37 = mul i128 %modsumfour.carry.read_output_inner, %lshift
  %sub = sub i128 %add34, %mul37
  call void @fn_intrinsic_utils_constraint(i128 %sum, i128 %sub, i1* @constraint.9)
  %modsumfour.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %sub, i128* %modsumfour.sum.write_output_inner, align 4
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  %modsumfour.sum.read_output_inner = load i128, i128* %struct_getter41, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %modsumfour.sum.write_output_inner43 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %modsumfour.sum.read_output_inner, i128* %modsumfour.sum.write_output_inner43, align 4
  %modsumfour.carry.write_output_inner45 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %modsumfour.carry.read_output_inner, i128* %modsumfour.carry.write_output_inner45, align 4
  ret void
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
  %struct_template_circuit_modsumfour = alloca %struct_template_circuit_modsumfour, align 8
  %modsumfour.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour, i32 0, i32 0
  store i128 %0, i128* %modsumfour.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour
}

define void @fn_template_init_bigmultshortlongunequal(%struct_template_circuit_bigmultshortlongunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 0
  %bigmultshortlongunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 1
  %bigmultshortlongunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 2
  %bigmultshortlongunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 3
  %bigmultshortlongunequal.m_out.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmultshortlongunequal.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlongunequal.a.read_input_inner, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %bigmultshortlongunequal.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlongunequal.b.read_input_inner, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  %k27 = call i128 @fn_intrinsic_utils_init()
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow8, [256 x [256 x i128]]** %pow, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val9 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val9, [256 x i128]** %prod_val, align 8
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly10 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly10, [256 x i128]** %a_poly, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly11 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly11, [256 x i128]** %out_poly, align 8
  %bigmultshortlongunequal.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %j12 = call i128 @fn_intrinsic_utils_init()
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly13 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly13, [256 x i128]** %b_poly, align 8
  %sle = icmp sle i128 %bigmultshortlongunequal.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub = sub i128 %add, 1
  %add18 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub19 = sub i128 %add18, 1
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add23, %loop.latch ]
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %prod_val21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 0, i128* %prod_val21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add23 = add i128 %i.0, 1
  %add27 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub28 = sub i128 %add27, 1
  %slt = icmp slt i128 %add23, %sub28
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch55, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add57, %loop.latch55 ]
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch48, %loop.body29
  %j.0 = phi i128 [ 0, %loop.body29 ], [ %add50, %loop.latch48 ]
  %prod_val31 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %add34 = add i128 %i.1, %j.0
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val31, i128 0, i128 %add34
  %prod_val35 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.1
  %a38 = load i128, i128* %array_getter37, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %j.0
  %b41 = load i128, i128* %array_getter40, align 4
  %mul = mul i128 %a38, %b41
  %add42 = add i128 %prod_val35, %mul
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %add46 = add i128 %i.1, %j.0
  %prod_val47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %add46
  store i128 %add42, i128* %prod_val47, align 4
  br label %loop.latch48

loop.latch48:                                     ; preds = %loop.body30
  %add50 = add i128 %j.0, 1
  %slt53 = icmp slt i128 %add50, %bigmultshortlongunequal.kb.read_arg_inner
  br i1 %slt53, label %loop.body30, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch48
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit54
  %add57 = add i128 %i.1, 1
  %slt60 = icmp slt i128 %add57, %bigmultshortlongunequal.ka.read_arg_inner
  br i1 %slt60, label %loop.body29, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch70, %loop.exit61
  %i.2 = phi i128 [ 0, %loop.exit61 ], [ %add72, %loop.latch70 ]
  %prod_val63 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val63, i128 0, i128 %i.2
  %prod_val66 = load i128, i128* %array_getter65, align 4
  %ptr_getter67 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %out69 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter67, i128 0, i128 %i.2
  store i128 %prod_val66, i128* %out69, align 4
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.body62
  %add72 = add i128 %i.2, 1
  %add76 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub77 = sub i128 %add76, 1
  %slt78 = icmp slt i128 %add72, %sub77
  br i1 %slt78, label %loop.body62, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch70
  %add82 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub83 = sub i128 %add82, 1
  %uniform_array86 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array86, [256 x [256 x i128]]** %pow, align 8
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch103, %loop.exit79
  %i.3 = phi i128 [ 0, %loop.exit79 ], [ %add105, %loop.latch103 ]
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch96, %loop.body87
  %j.1 = phi i128 [ 0, %loop.body87 ], [ %add98, %loop.latch96 ]
  %pow91 = call i128 @fn_intrinsic_utils_powi(i128 %i.3, i128 %j.1)
  %ptr_getter92 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %pow95 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter92, i128 0, i128 %i.3, i128 %j.1
  store i128 %pow91, i128* %pow95, align 4
  br label %loop.latch96

loop.latch96:                                     ; preds = %loop.body88
  %add98 = add i128 %j.1, 1
  %slt101 = icmp slt i128 %add98, %sub83
  br i1 %slt101, label %loop.body88, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch96
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.exit102
  %add105 = add i128 %i.3, 1
  %slt108 = icmp slt i128 %add105, %sub83
  br i1 %slt108, label %loop.body87, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %add112 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub113 = sub i128 %add112, 1
  %uniform_array114 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array114, [256 x i128]** %a_poly, align 8
  %add117 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub118 = sub i128 %add117, 1
  %uniform_array119 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array119, [256 x i128]** %b_poly, align 8
  %add122 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub123 = sub i128 %add122, 1
  %uniform_array124 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array124, [256 x i128]** %out_poly, align 8
  br label %loop.body125

loop.body125:                                     ; preds = %loop.latch216, %loop.exit109
  %i.4 = phi i128 [ 0, %loop.exit109 ], [ %add218, %loop.latch216 ]
  %ptr_getter126 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %out_poly128 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter126, i128 0, i128 %i.4
  store i128 0, i128* %out_poly128, align 4
  %ptr_getter129 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %a_poly131 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter129, i128 0, i128 %i.4
  store i128 0, i128* %a_poly131, align 4
  %ptr_getter132 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %b_poly134 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter132, i128 0, i128 %i.4
  store i128 0, i128* %b_poly134, align 4
  br label %loop.body135

loop.body135:                                     ; preds = %loop.latch154, %loop.body125
  %j.2 = phi i128 [ 0, %loop.body125 ], [ %add156, %loop.latch154 ]
  %out_poly136 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly136, i128 0, i128 %i.4
  %out_poly139 = load i128, i128* %array_getter138, align 4
  %out140 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.out.declare_output, align 8
  %array_getter142 = getelementptr inbounds [256 x i128], [256 x i128]* %out140, i128 0, i128 %j.2
  %out143 = load i128, i128* %array_getter142, align 4
  %pow144 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter147 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow144, i128 0, i128 %i.4, i128 %j.2
  %pow148 = load i128, i128* %array_getter147, align 4
  %mul149 = mul i128 %out143, %pow148
  %add150 = add i128 %out_poly139, %mul149
  %ptr_getter151 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %out_poly153 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter151, i128 0, i128 %i.4
  store i128 %add150, i128* %out_poly153, align 4
  br label %loop.latch154

loop.latch154:                                    ; preds = %loop.body135
  %add156 = add i128 %j.2, 1
  %add160 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub161 = sub i128 %add160, 1
  %slt162 = icmp slt i128 %add156, %sub161
  br i1 %slt162, label %loop.body135, label %loop.exit163

loop.exit163:                                     ; preds = %loop.latch154
  br label %loop.body164

loop.body164:                                     ; preds = %loop.latch183, %loop.exit163
  %j.3 = phi i128 [ 0, %loop.exit163 ], [ %add185, %loop.latch183 ]
  %a_poly165 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %array_getter167 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly165, i128 0, i128 %i.4
  %a_poly168 = load i128, i128* %array_getter167, align 4
  %a169 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.a.declare_input, align 8
  %array_getter171 = getelementptr inbounds [256 x i128], [256 x i128]* %a169, i128 0, i128 %j.3
  %a172 = load i128, i128* %array_getter171, align 4
  %pow173 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow173, i128 0, i128 %i.4, i128 %j.3
  %pow177 = load i128, i128* %array_getter176, align 4
  %mul178 = mul i128 %a172, %pow177
  %add179 = add i128 %a_poly168, %mul178
  %ptr_getter180 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %a_poly182 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter180, i128 0, i128 %i.4
  store i128 %add179, i128* %a_poly182, align 4
  br label %loop.latch183

loop.latch183:                                    ; preds = %loop.body164
  %add185 = add i128 %j.3, 1
  %slt188 = icmp slt i128 %add185, %bigmultshortlongunequal.ka.read_arg_inner
  br i1 %slt188, label %loop.body164, label %loop.exit189

loop.exit189:                                     ; preds = %loop.latch183
  br label %loop.body190

loop.body190:                                     ; preds = %loop.latch209, %loop.exit189
  %j.4 = phi i128 [ 0, %loop.exit189 ], [ %add211, %loop.latch209 ]
  %b_poly191 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly191, i128 0, i128 %i.4
  %b_poly194 = load i128, i128* %array_getter193, align 4
  %b195 = load [256 x i128]*, [256 x i128]** %bigmultshortlongunequal.b.declare_input, align 8
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %b195, i128 0, i128 %j.4
  %b198 = load i128, i128* %array_getter197, align 4
  %pow199 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow199, i128 0, i128 %i.4, i128 %j.4
  %pow203 = load i128, i128* %array_getter202, align 4
  %mul204 = mul i128 %b198, %pow203
  %add205 = add i128 %b_poly194, %mul204
  %ptr_getter206 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %b_poly208 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter206, i128 0, i128 %i.4
  store i128 %add205, i128* %b_poly208, align 4
  br label %loop.latch209

loop.latch209:                                    ; preds = %loop.body190
  %add211 = add i128 %j.4, 1
  %slt214 = icmp slt i128 %add211, %bigmultshortlongunequal.kb.read_arg_inner
  br i1 %slt214, label %loop.body190, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch209
  br label %loop.latch216

loop.latch216:                                    ; preds = %loop.exit215
  %add218 = add i128 %i.4, 1
  %add222 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub223 = sub i128 %add222, 1
  %slt224 = icmp slt i128 %add218, %sub223
  br i1 %slt224, label %loop.body125, label %loop.exit225

loop.exit225:                                     ; preds = %loop.latch216
  br label %loop.body226

loop.body226:                                     ; preds = %loop.latch240, %loop.exit225
  %i.5 = phi i128 [ 0, %loop.exit225 ], [ %add242, %loop.latch240 ]
  %out_poly227 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %array_getter229 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly227, i128 0, i128 %i.5
  %out_poly230 = load i128, i128* %array_getter229, align 4
  %a_poly231 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly231, i128 0, i128 %i.5
  %a_poly234 = load i128, i128* %array_getter233, align 4
  %b_poly235 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %array_getter237 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly235, i128 0, i128 %i.5
  %b_poly238 = load i128, i128* %array_getter237, align 4
  %mul239 = mul i128 %a_poly234, %b_poly238
  call void @fn_intrinsic_utils_constraint(i128 %out_poly230, i128 %mul239, i1* @constraint.10)
  br label %loop.latch240

loop.latch240:                                    ; preds = %loop.body226
  %add242 = add i128 %i.5, 1
  %add246 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub247 = sub i128 %add246, 1
  %slt248 = icmp slt i128 %add242, %sub247
  br i1 %slt248, label %loop.body226, label %loop.exit249

loop.exit249:                                     ; preds = %loop.latch240
  br label %arraydim

arraydim:                                         ; preds = %loop.exit249
  %ptr_cast = bitcast [256 x i128]** %bigmultshortlongunequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigmultshortlongunequal.kb.read_arg_inner)
  %ptr_cast250 = bitcast [256 x i128]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast250, i128 %sub19)
  %ptr_cast251 = bitcast [256 x i128]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast251, i128 %sub123)
  %ptr_cast252 = bitcast [256 x i128]** %bigmultshortlongunequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast252, i128 %bigmultshortlongunequal.ka.read_arg_inner)
  %ptr_cast253 = bitcast [256 x i128]** %bigmultshortlongunequal.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast253, i128 %sub)
  %ptr_cast254 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast254, i128 %sub83, i128 %sub83)
  %ptr_cast255 = bitcast [256 x i128]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast255, i128 %sub118)
  %ptr_cast256 = bitcast [256 x i128]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast256, i128 %sub113)
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

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define void @fn_template_init_split(%struct_template_circuit_split* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 0
  %split.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 1
  %split.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 2
  %split.in.read_input_inner = load i128, i128* %struct_getter2, align 4
  %small = call i128 @fn_intrinsic_utils_init()
  %big = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %split.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %lshift = shl i128 1, %split.n.read_arg_inner
  %mod = srem i128 %split.in.read_input_inner, %lshift
  %split.small.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %mod, i128* %split.small.write_output_inner, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  %split.small.read_output_inner = load i128, i128* %struct_getter5, align 4
  %lshift8 = shl i128 1, %split.n.read_arg_inner
  %sdiv = sdiv i128 %split.in.read_input_inner, %lshift8
  %split.big.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %sdiv, i128* %split.big.write_output_inner, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  %split.big.read_output_inner = load i128, i128* %struct_getter11, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %split.n.read_arg_inner)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %split.small.read_output_inner, i1* @constraint.11)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %split.small.read_output_inner, i128* %num2bits.in.write_input_outter, align 4
  %call17 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %split.m.read_arg_inner)
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call17, i32 0, i32 1
  %num2bits.in.read_input_outter21 = load i128, i128* %struct_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter21, i128 %split.big.read_output_inner, i1* @constraint.12)
  %num2bits.in.write_input_outter23 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call17, i32 0, i32 1
  store i128 %split.big.read_output_inner, i128* %num2bits.in.write_input_outter23, align 4
  %lshift28 = shl i128 1, %split.n.read_arg_inner
  %mul = mul i128 %split.big.read_output_inner, %lshift28
  %add = add i128 %split.small.read_output_inner, %mul
  call void @fn_intrinsic_utils_constraint(i128 %split.in.read_input_inner, i128 %add, i1* @constraint.13)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %split.small.write_output_inner30 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %split.small.read_output_inner, i128* %split.small.write_output_inner30, align 4
  %split.big.write_output_inner32 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %split.big.read_output_inner, i128* %split.big.write_output_inner32, align 4
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

define void @fn_template_init_nor(%struct_template_circuit_nor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 0
  %nor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 1
  %nor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %mul = mul i128 %nor.a.read_input_inner, %nor.b.read_input_inner
  %add = add i128 %mul, 1
  %sub = sub i128 %add, %nor.a.read_input_inner
  %sub4 = sub i128 %sub, %nor.b.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub4, i1* @constraint.14)
  %nor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %sub4, i128* %nor.out.write_output_inner, align 4
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  %nor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %nor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %nor.out.read_output_inner, i128* %nor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_nor* @fn_template_build_nor() {
entry:
  %struct_template_circuit_nor = alloca %struct_template_circuit_nor, align 8
  ret %struct_template_circuit_nor* %struct_template_circuit_nor
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %compconstant.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %compconstant.in.read_input_inner, [256 x i128]** %compconstant.in.declare_input, align 8
  %a2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %sout = call i128 @fn_intrinsic_utils_init()
  %smsb4 = call i128 @fn_intrinsic_utils_init()
  %e5 = call i128 @fn_intrinsic_utils_init()
  %b6 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %compconstant.parts.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %parts, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %cmsb7 = call i128 @fn_intrinsic_utils_init()
  %clsb8 = call i128 @fn_intrinsic_utils_init()
  %slsb9 = call i128 @fn_intrinsic_utils_init()
  %sum10 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %b.0 = phi i128 [ -1, %entry ], [ %sub131, %loop.latch ]
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %mul = mul i128 %i.0, 2
  %rshift = lshr i128 %compconstant.ct.read_arg_inner, %mul
  %and = and i128 %rshift, 1
  %mul14 = mul i128 %i.0, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %compconstant.ct.read_arg_inner, %add
  %and16 = and i128 %rshift15, 1
  %in = load [256 x i128]*, [256 x i128]** %compconstant.in.declare_input, align 8
  %mul18 = mul i128 %i.0, 2
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  %in20 = load [256 x i128]*, [256 x i128]** %compconstant.in.declare_input, align 8
  %mul22 = mul i128 %i.0, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %in20, i128 0, i128 %add23
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
  %parts43 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %parts43, i128 0, i128 %i.0
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts46, i128 %add42, i1* @constraint.15)
  %ptr_getter = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %parts48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
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
  %parts74 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %parts74, i128 0, i128 %i.0
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts77, i128 %add73, i1* @constraint.16)
  %ptr_getter78 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %parts80 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter78, i128 0, i128 %i.0
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
  %parts99 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter101 = getelementptr inbounds [256 x i128], [256 x i128]* %parts99, i128 0, i128 %i.0
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts102, i128 %add98, i1* @constraint.17)
  %ptr_getter103 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %parts105 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter103, i128 0, i128 %i.0
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %neg107 = sub i128 0, %a.0
  %mul109 = mul i128 %neg107, %in25
  %mul111 = mul i128 %mul109, %in19
  %add113 = add i128 %mul111, %a.0
  %parts114 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %parts114, i128 0, i128 %i.0
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_utils_constraint(i128 %parts117, i128 %add113, i1* @constraint.18)
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %parts120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %i.0
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %parts124 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %parts124, i128 0, i128 %i.0
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
  call void @fn_intrinsic_utils_constraint(i128 %sout, i128 %add128, i1* @constraint.19)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.20)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %num2bits152, i1* @constraint.21)
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %compconstant.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 254)
  %ptr_cast157 = bitcast [256 x i128]** %compconstant.parts.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast157, i128 127)
  br label %exit

exit:                                             ; preds = %arraydim
  %parts158 = load [256 x i128]*, [256 x i128]** %compconstant.parts.declare_inter, align 8
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [256 x i128]* %parts158, [256 x i128]** %compconstant.parts.write_inter_inner, align 8
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
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %add, i1* @constraint.22)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_utils_constraint(i128 %mul12, i128 0, i1* @constraint.23)
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

define void @fn_template_init_bigmultshortlong(%struct_template_circuit_bigmultshortlong* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 0
  %bigmultshortlong.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 1
  %bigmultshortlong.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 2
  %bigmultshortlong.m_out.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 3
  %bigmultshortlong.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmultshortlong.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlong.a.read_input_inner, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 4
  %bigmultshortlong.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmultshortlong.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmultshortlong.b.read_input_inner, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly5 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly5, [256 x i128]** %b_poly, align 8
  %k26 = call i128 @fn_intrinsic_utils_init()
  %i7 = call i128 @fn_intrinsic_utils_init()
  %j8 = call i128 @fn_intrinsic_utils_init()
  %bigmultshortlong.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly9 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly9, [256 x i128]** %a_poly, align 8
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow10, [256 x [256 x i128]]** %pow, align 8
  %a_idx11 = call i128 @fn_intrinsic_utils_init()
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val12 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val12, [256 x i128]** %prod_val, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly13 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly13, [256 x i128]** %out_poly, align 8
  %sle = icmp sle i128 %bigmultshortlong.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %mul = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub = sub i128 %mul, 1
  %mul17 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub18 = sub i128 %mul17, 1
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch82, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add84, %loop.latch82 ]
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %prod_val20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 0, i128* %prod_val20, align 4
  %slt = icmp slt i128 %i.0, %bigmultshortlong.k.read_arg_inner
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body23

if.false:                                         ; preds = %loop.body
  %sub46 = sub i128 %i.0, %bigmultshortlong.k.read_arg_inner
  %add47 = add i128 %sub46, 1
  br label %loop.body48

loop.body23:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add40, %loop.latch ]
  %prod_val24 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val24, i128 0, i128 %i.0
  %prod_val26 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx.0
  %a29 = load i128, i128* %array_getter28, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %sub32 = sub i128 %i.0, %a_idx.0
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub32
  %b34 = load i128, i128* %array_getter33, align 4
  %mul35 = mul i128 %a29, %b34
  %add = add i128 %prod_val26, %mul35
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %prod_val38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val38, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body23
  %add40 = add i128 %a_idx.0, 1
  %sle43 = icmp sle i128 %add40, %i.0
  br i1 %sle43, label %loop.body23, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body48:                                      ; preds = %loop.latch68, %if.false
  %a_idx.1 = phi i128 [ %add47, %if.false ], [ %add70, %loop.latch68 ]
  %prod_val49 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val49, i128 0, i128 %i.0
  %prod_val52 = load i128, i128* %array_getter51, align 4
  %a53 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %a53, i128 0, i128 %a_idx.1
  %a56 = load i128, i128* %array_getter55, align 4
  %b57 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %sub60 = sub i128 %i.0, %a_idx.1
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %b57, i128 0, i128 %sub60
  %b62 = load i128, i128* %array_getter61, align 4
  %mul63 = mul i128 %a56, %b62
  %add64 = add i128 %prod_val52, %mul63
  %ptr_getter65 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %prod_val67 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter65, i128 0, i128 %i.0
  store i128 %add64, i128* %prod_val67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body48
  %add70 = add i128 %a_idx.1, 1
  %slt73 = icmp slt i128 %add70, %bigmultshortlong.k.read_arg_inner
  br i1 %slt73, label %loop.body48, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  br label %if.exit

if.exit:                                          ; preds = %loop.exit74, %loop.exit
  %prod_val75 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val75, i128 0, i128 %i.0
  %prod_val78 = load i128, i128* %array_getter77, align 4
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %out81 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %i.0
  store i128 %prod_val78, i128* %out81, align 4
  br label %loop.latch82

loop.latch82:                                     ; preds = %if.exit
  %add84 = add i128 %i.0, 1
  %mul87 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub88 = sub i128 %mul87, 1
  %slt89 = icmp slt i128 %add84, %sub88
  br i1 %slt89, label %loop.body, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch82
  %mul92 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub93 = sub i128 %mul92, 1
  %uniform_array96 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array96, [256 x [256 x i128]]** %pow, align 8
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch113, %loop.exit90
  %i.1 = phi i128 [ 0, %loop.exit90 ], [ %add115, %loop.latch113 ]
  br label %loop.body98

loop.body98:                                      ; preds = %loop.latch106, %loop.body97
  %j.0 = phi i128 [ 0, %loop.body97 ], [ %add108, %loop.latch106 ]
  %pow101 = call i128 @fn_intrinsic_utils_powi(i128 %i.1, i128 %j.0)
  %ptr_getter102 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %pow105 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter102, i128 0, i128 %i.1, i128 %j.0
  store i128 %pow101, i128* %pow105, align 4
  br label %loop.latch106

loop.latch106:                                    ; preds = %loop.body98
  %add108 = add i128 %j.0, 1
  %slt111 = icmp slt i128 %add108, %sub93
  br i1 %slt111, label %loop.body98, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch106
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.exit112
  %add115 = add i128 %i.1, 1
  %slt118 = icmp slt i128 %add115, %sub93
  br i1 %slt118, label %loop.body97, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  %mul121 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub122 = sub i128 %mul121, 1
  %uniform_array123 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array123, [256 x i128]** %a_poly, align 8
  %mul125 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub126 = sub i128 %mul125, 1
  %uniform_array127 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array127, [256 x i128]** %b_poly, align 8
  %mul129 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub130 = sub i128 %mul129, 1
  %uniform_array131 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array131, [256 x i128]** %out_poly, align 8
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch214, %loop.exit119
  %i.2 = phi i128 [ 0, %loop.exit119 ], [ %add216, %loop.latch214 ]
  %ptr_getter133 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %out_poly135 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter133, i128 0, i128 %i.2
  store i128 0, i128* %out_poly135, align 4
  %ptr_getter136 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %a_poly138 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter136, i128 0, i128 %i.2
  store i128 0, i128* %a_poly138, align 4
  %ptr_getter139 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %b_poly141 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter139, i128 0, i128 %i.2
  store i128 0, i128* %b_poly141, align 4
  br label %loop.body142

loop.body142:                                     ; preds = %loop.latch161, %loop.body132
  %j.1 = phi i128 [ 0, %loop.body132 ], [ %add163, %loop.latch161 ]
  %out_poly143 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %array_getter145 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly143, i128 0, i128 %i.2
  %out_poly146 = load i128, i128* %array_getter145, align 4
  %out147 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.out.declare_output, align 8
  %array_getter149 = getelementptr inbounds [256 x i128], [256 x i128]* %out147, i128 0, i128 %j.1
  %out150 = load i128, i128* %array_getter149, align 4
  %pow151 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter154 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow151, i128 0, i128 %i.2, i128 %j.1
  %pow155 = load i128, i128* %array_getter154, align 4
  %mul156 = mul i128 %out150, %pow155
  %add157 = add i128 %out_poly146, %mul156
  %ptr_getter158 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %out_poly160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter158, i128 0, i128 %i.2
  store i128 %add157, i128* %out_poly160, align 4
  br label %loop.latch161

loop.latch161:                                    ; preds = %loop.body142
  %add163 = add i128 %j.1, 1
  %mul166 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub167 = sub i128 %mul166, 1
  %slt168 = icmp slt i128 %add163, %sub167
  br i1 %slt168, label %loop.body142, label %loop.exit169

loop.exit169:                                     ; preds = %loop.latch161
  br label %loop.body170

loop.body170:                                     ; preds = %loop.latch207, %loop.exit169
  %j.2 = phi i128 [ 0, %loop.exit169 ], [ %add209, %loop.latch207 ]
  %a_poly171 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly171, i128 0, i128 %i.2
  %a_poly174 = load i128, i128* %array_getter173, align 4
  %a175 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.a.declare_input, align 8
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %a175, i128 0, i128 %j.2
  %a178 = load i128, i128* %array_getter177, align 4
  %pow179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow179, i128 0, i128 %i.2, i128 %j.2
  %pow183 = load i128, i128* %array_getter182, align 4
  %mul184 = mul i128 %a178, %pow183
  %add185 = add i128 %a_poly174, %mul184
  %ptr_getter186 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %a_poly188 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter186, i128 0, i128 %i.2
  store i128 %add185, i128* %a_poly188, align 4
  %b_poly189 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly189, i128 0, i128 %i.2
  %b_poly192 = load i128, i128* %array_getter191, align 4
  %b193 = load [256 x i128]*, [256 x i128]** %bigmultshortlong.b.declare_input, align 8
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %b193, i128 0, i128 %j.2
  %b196 = load i128, i128* %array_getter195, align 4
  %pow197 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter200 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow197, i128 0, i128 %i.2, i128 %j.2
  %pow201 = load i128, i128* %array_getter200, align 4
  %mul202 = mul i128 %b196, %pow201
  %add203 = add i128 %b_poly192, %mul202
  %ptr_getter204 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %b_poly206 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter204, i128 0, i128 %i.2
  store i128 %add203, i128* %b_poly206, align 4
  br label %loop.latch207

loop.latch207:                                    ; preds = %loop.body170
  %add209 = add i128 %j.2, 1
  %slt212 = icmp slt i128 %add209, %bigmultshortlong.k.read_arg_inner
  br i1 %slt212, label %loop.body170, label %loop.exit213

loop.exit213:                                     ; preds = %loop.latch207
  br label %loop.latch214

loop.latch214:                                    ; preds = %loop.exit213
  %add216 = add i128 %i.2, 1
  %mul219 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub220 = sub i128 %mul219, 1
  %slt221 = icmp slt i128 %add216, %sub220
  br i1 %slt221, label %loop.body132, label %loop.exit222

loop.exit222:                                     ; preds = %loop.latch214
  br label %loop.body223

loop.body223:                                     ; preds = %loop.latch237, %loop.exit222
  %i.3 = phi i128 [ 0, %loop.exit222 ], [ %add239, %loop.latch237 ]
  %out_poly224 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %array_getter226 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly224, i128 0, i128 %i.3
  %out_poly227 = load i128, i128* %array_getter226, align 4
  %a_poly228 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %array_getter230 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly228, i128 0, i128 %i.3
  %a_poly231 = load i128, i128* %array_getter230, align 4
  %b_poly232 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %array_getter234 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly232, i128 0, i128 %i.3
  %b_poly235 = load i128, i128* %array_getter234, align 4
  %mul236 = mul i128 %a_poly231, %b_poly235
  call void @fn_intrinsic_utils_constraint(i128 %out_poly227, i128 %mul236, i1* @constraint.24)
  br label %loop.latch237

loop.latch237:                                    ; preds = %loop.body223
  %add239 = add i128 %i.3, 1
  %mul242 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub243 = sub i128 %mul242, 1
  %slt244 = icmp slt i128 %add239, %sub243
  br i1 %slt244, label %loop.body223, label %loop.exit245

loop.exit245:                                     ; preds = %loop.latch237
  br label %arraydim

arraydim:                                         ; preds = %loop.exit245
  %ptr_cast = bitcast [256 x i128]** %bigmultshortlong.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigmultshortlong.k.read_arg_inner)
  %ptr_cast246 = bitcast [256 x i128]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast246, i128 %sub18)
  %ptr_cast247 = bitcast [256 x i128]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast247, i128 %sub126)
  %ptr_cast248 = bitcast [256 x i128]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast248, i128 %sub122)
  %ptr_cast249 = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast249, i128 %sub93, i128 %sub93)
  %ptr_cast250 = bitcast [256 x i128]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast250, i128 %sub130)
  %ptr_cast251 = bitcast [256 x i128]** %bigmultshortlong.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast251, i128 %bigmultshortlong.k.read_arg_inner)
  %ptr_cast252 = bitcast [256 x i128]** %bigmultshortlong.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast252, i128 %sub)
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

define void @fn_template_init_bigmultshortlong2dunequal(%struct_template_circuit_bigmultshortlong2dunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 0
  %bigmultshortlong2dunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 1
  %bigmultshortlong2dunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 2
  %bigmultshortlong2dunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 3
  %bigmultshortlong2dunequal.la.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 4
  %bigmultshortlong2dunequal.lb.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 5
  %bigmultshortlong2dunequal.a.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter5, align 8
  %bigmultshortlong2dunequal.a.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2dunequal.a.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 6
  %bigmultshortlong2dunequal.b.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter6, align 8
  %bigmultshortlong2dunequal.b.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %bigmultshortlong2dunequal.b.read_input_inner, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %j17 = call i128 @fn_intrinsic_utils_init()
  %i18 = call i128 @fn_intrinsic_utils_init()
  %i9 = call i128 @fn_intrinsic_utils_init()
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val10, [256 x [256 x i128]]** %prod_val, align 8
  %bigmultshortlong2dunequal.out.declare_output = alloca [256 x [256 x i128]]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]*
  store [256 x [256 x i128]]* %out, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow11, [256 x [256 x i128]]** %pow, align 8
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly12, [256 x [256 x i128]]** %b_poly, align 8
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly13 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly13, [256 x [256 x i128]]** %a_poly, align 8
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly14 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly14, [256 x [256 x i128]]** %out_poly, align 8
  %j15 = call i128 @fn_intrinsic_utils_init()
  %j216 = call i128 @fn_intrinsic_utils_init()
  %deg117 = call i128 @fn_intrinsic_utils_init()
  %i218 = call i128 @fn_intrinsic_utils_init()
  %deg219 = call i128 @fn_intrinsic_utils_init()
  %k220 = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub = sub i128 %add, 1
  %add25 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub26 = sub i128 %add25, 1
  %add29 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub30 = sub i128 %add29, 1
  %add33 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub34 = sub i128 %add33, 1
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch46, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add48, %loop.latch46 ]
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add40, %loop.latch ]
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %prod_val38 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i.0, i128 %j.0
  store i128 0, i128* %prod_val38, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body35
  %add40 = add i128 %j.0, 1
  %add44 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub45 = sub i128 %add44, 1
  %slt = icmp slt i128 %add40, %sub45
  br i1 %slt, label %loop.body35, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.exit
  %add48 = add i128 %i.0, 1
  %add52 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub53 = sub i128 %add52, 1
  %slt54 = icmp slt i128 %add48, %sub53
  br i1 %slt54, label %loop.body, label %loop.exit55

loop.exit55:                                      ; preds = %loop.latch46
  br label %loop.body56

loop.body56:                                      ; preds = %loop.latch104, %loop.exit55
  %i1.0 = phi i128 [ 0, %loop.exit55 ], [ %add106, %loop.latch104 ]
  br label %loop.body57

loop.body57:                                      ; preds = %loop.latch97, %loop.body56
  %i2.0 = phi i128 [ 0, %loop.body56 ], [ %add99, %loop.latch97 ]
  br label %loop.body58

loop.body58:                                      ; preds = %loop.latch90, %loop.body57
  %j1.0 = phi i128 [ 0, %loop.body57 ], [ %add92, %loop.latch90 ]
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch83, %loop.body58
  %j2.0 = phi i128 [ 0, %loop.body58 ], [ %add85, %loop.latch83 ]
  %add62 = add i128 %i1.0, %i2.0
  %add65 = add i128 %j1.0, %j2.0
  %prod_val66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val66, i128 0, i128 %add62, i128 %add65
  %prod_val69 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %array_getter72 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i1.0, i128 %j1.0
  %a73 = load i128, i128* %array_getter72, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %array_getter76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i2.0, i128 %j2.0
  %b77 = load i128, i128* %array_getter76, align 4
  %mul = mul i128 %a73, %b77
  %add78 = add i128 %prod_val69, %mul
  %ptr_getter79 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %prod_val82 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter79, i128 0, i128 %add62, i128 %add65
  store i128 %add78, i128* %prod_val82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body59
  %add85 = add i128 %j2.0, 1
  %slt88 = icmp slt i128 %add85, %bigmultshortlong2dunequal.kb.read_arg_inner
  br i1 %slt88, label %loop.body59, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  br label %loop.latch90

loop.latch90:                                     ; preds = %loop.exit89
  %add92 = add i128 %j1.0, 1
  %slt95 = icmp slt i128 %add92, %bigmultshortlong2dunequal.ka.read_arg_inner
  br i1 %slt95, label %loop.body58, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch90
  br label %loop.latch97

loop.latch97:                                     ; preds = %loop.exit96
  %add99 = add i128 %i2.0, 1
  %slt102 = icmp slt i128 %add99, %bigmultshortlong2dunequal.lb.read_arg_inner
  br i1 %slt102, label %loop.body57, label %loop.exit103

loop.exit103:                                     ; preds = %loop.latch97
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.exit103
  %add106 = add i128 %i1.0, 1
  %slt109 = icmp slt i128 %add106, %bigmultshortlong2dunequal.la.read_arg_inner
  br i1 %slt109, label %loop.body56, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch104
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch132, %loop.exit110
  %i.1 = phi i128 [ 0, %loop.exit110 ], [ %add134, %loop.latch132 ]
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch122, %loop.body111
  %j.1 = phi i128 [ 0, %loop.body111 ], [ %add124, %loop.latch122 ]
  %prod_val113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %array_getter116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val113, i128 0, i128 %i.1, i128 %j.1
  %prod_val117 = load i128, i128* %array_getter116, align 4
  %ptr_getter118 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %out121 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter118, i128 0, i128 %i.1, i128 %j.1
  store i128 %prod_val117, i128* %out121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body112
  %add124 = add i128 %j.1, 1
  %add128 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub129 = sub i128 %add128, 1
  %slt130 = icmp slt i128 %add124, %sub129
  br i1 %slt130, label %loop.body112, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch122
  br label %loop.latch132

loop.latch132:                                    ; preds = %loop.exit131
  %add134 = add i128 %i.1, 1
  %add138 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub139 = sub i128 %add138, 1
  %slt140 = icmp slt i128 %add134, %sub139
  br i1 %slt140, label %loop.body111, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch132
  %add144 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub145 = sub i128 %add144, 1
  %add148 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub149 = sub i128 %add148, 1
  %sgt = icmp sgt i128 %sub145, %sub149
  %add152 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub153 = sub i128 %add152, 1
  %add156 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub157 = sub i128 %add156, 1
  %utils_switch = call i128 @fn_intrinsic_utils_switch(i1 %sgt, i128 %sub153, i128 %sub157)
  %uniform_array160 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array160, [256 x [256 x i128]]** %pow, align 8
  br label %loop.body161

loop.body161:                                     ; preds = %loop.latch178, %loop.exit141
  %i.2 = phi i128 [ 0, %loop.exit141 ], [ %add180, %loop.latch178 ]
  br label %loop.body162

loop.body162:                                     ; preds = %loop.latch170, %loop.body161
  %j.2 = phi i128 [ 0, %loop.body161 ], [ %add173, %loop.latch170 ]
  %pow165 = call i128 @fn_intrinsic_utils_powi(i128 %i.2, i128 %j.2)
  %ptr_getter166 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %pow169 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter166, i128 0, i128 %i.2, i128 %j.2
  store i128 %pow165, i128* %pow169, align 4
  br label %loop.latch170

loop.latch170:                                    ; preds = %loop.body162
  %add173 = add i128 %j.2, 1
  %slt176 = icmp slt i128 %add173, %utils_switch
  br i1 %slt176, label %loop.body162, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch170
  br label %loop.latch178

loop.latch178:                                    ; preds = %loop.exit177
  %add180 = add i128 %i.2, 1
  %slt183 = icmp slt i128 %add180, %utils_switch
  br i1 %slt183, label %loop.body161, label %loop.exit184

loop.exit184:                                     ; preds = %loop.latch178
  %add187 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub188 = sub i128 %add187, 1
  %add191 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub192 = sub i128 %add191, 1
  %uniform_array193 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array193, [256 x [256 x i128]]** %a_poly, align 8
  %add196 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub197 = sub i128 %add196, 1
  %add200 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub201 = sub i128 %add200, 1
  %uniform_array202 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array202, [256 x [256 x i128]]** %b_poly, align 8
  %add205 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub206 = sub i128 %add205, 1
  %add209 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub210 = sub i128 %add209, 1
  %uniform_array211 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array211, [256 x [256 x i128]]** %out_poly, align 8
  br label %loop.body212

loop.body212:                                     ; preds = %loop.latch365, %loop.exit184
  %i.3 = phi i128 [ 0, %loop.exit184 ], [ %add367, %loop.latch365 ]
  br label %loop.body213

loop.body213:                                     ; preds = %loop.latch355, %loop.body212
  %j.3 = phi i128 [ 0, %loop.body212 ], [ %add357, %loop.latch355 ]
  %ptr_getter214 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %a_poly218 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter214, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %a_poly218, align 4
  %ptr_getter219 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %b_poly222 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter219, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %b_poly222, align 4
  %ptr_getter223 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %out_poly226 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter223, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %out_poly226, align 4
  br label %loop.body227

loop.body227:                                     ; preds = %loop.latch345, %loop.body213
  %deg1.0 = phi i128 [ 0, %loop.body213 ], [ %add347, %loop.latch345 ]
  %slt230 = icmp slt i128 %deg1.0, %bigmultshortlong2dunequal.la.read_arg_inner
  br i1 %slt230, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body227
  br label %loop.body231

if.false:                                         ; preds = %loop.body227
  br label %if.exit

loop.body231:                                     ; preds = %loop.latch259, %if.true
  %deg2.0 = phi i128 [ 0, %if.true ], [ %add261, %loop.latch259 ]
  %a_poly232 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %array_getter235 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly232, i128 0, i128 %i.3, i128 %j.3
  %a_poly236 = load i128, i128* %array_getter235, align 4
  %a237 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input, align 8
  %array_getter240 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a237, i128 0, i128 %deg1.0, i128 %deg2.0
  %a241 = load i128, i128* %array_getter240, align 4
  %pow242 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow242, i128 0, i128 %i.3, i128 %deg1.0
  %pow246 = load i128, i128* %array_getter245, align 4
  %mul247 = mul i128 %a241, %pow246
  %pow248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter251 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow248, i128 0, i128 %j.3, i128 %deg2.0
  %pow252 = load i128, i128* %array_getter251, align 4
  %mul253 = mul i128 %mul247, %pow252
  %add254 = add i128 %a_poly236, %mul253
  %ptr_getter255 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %a_poly258 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter255, i128 0, i128 %i.3, i128 %j.3
  store i128 %add254, i128* %a_poly258, align 4
  br label %loop.latch259

loop.latch259:                                    ; preds = %loop.body231
  %add261 = add i128 %deg2.0, 1
  %slt264 = icmp slt i128 %add261, %bigmultshortlong2dunequal.ka.read_arg_inner
  br i1 %slt264, label %loop.body231, label %loop.exit265

loop.exit265:                                     ; preds = %loop.latch259
  br label %if.exit

if.exit:                                          ; preds = %loop.exit265, %if.false
  %slt270 = icmp slt i128 %deg1.0, %bigmultshortlong2dunequal.lb.read_arg_inner
  br i1 %slt270, label %if.true266, label %if.false267

if.true266:                                       ; preds = %if.exit
  br label %loop.body271

if.false267:                                      ; preds = %if.exit
  br label %if.exit306

loop.body271:                                     ; preds = %loop.latch299, %if.true266
  %deg2.1 = phi i128 [ 0, %if.true266 ], [ %add301, %loop.latch299 ]
  %b_poly272 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %array_getter275 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly272, i128 0, i128 %i.3, i128 %j.3
  %b_poly276 = load i128, i128* %array_getter275, align 4
  %b277 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input, align 8
  %array_getter280 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b277, i128 0, i128 %deg1.0, i128 %deg2.1
  %b281 = load i128, i128* %array_getter280, align 4
  %pow282 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter285 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow282, i128 0, i128 %i.3, i128 %deg1.0
  %pow286 = load i128, i128* %array_getter285, align 4
  %mul287 = mul i128 %b281, %pow286
  %pow288 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter291 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow288, i128 0, i128 %j.3, i128 %deg2.1
  %pow292 = load i128, i128* %array_getter291, align 4
  %mul293 = mul i128 %mul287, %pow292
  %add294 = add i128 %b_poly276, %mul293
  %ptr_getter295 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %b_poly298 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter295, i128 0, i128 %i.3, i128 %j.3
  store i128 %add294, i128* %b_poly298, align 4
  br label %loop.latch299

loop.latch299:                                    ; preds = %loop.body271
  %add301 = add i128 %deg2.1, 1
  %slt304 = icmp slt i128 %add301, %bigmultshortlong2dunequal.kb.read_arg_inner
  br i1 %slt304, label %loop.body271, label %loop.exit305

loop.exit305:                                     ; preds = %loop.latch299
  br label %if.exit306

if.exit306:                                       ; preds = %loop.exit305, %if.false267
  br label %loop.body307

loop.body307:                                     ; preds = %loop.latch335, %if.exit306
  %deg2.2 = phi i128 [ 0, %if.exit306 ], [ %add337, %loop.latch335 ]
  %out_poly308 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %array_getter311 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly308, i128 0, i128 %i.3, i128 %j.3
  %out_poly312 = load i128, i128* %array_getter311, align 4
  %out313 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %array_getter316 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out313, i128 0, i128 %deg1.0, i128 %deg2.2
  %out317 = load i128, i128* %array_getter316, align 4
  %pow318 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter321 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow318, i128 0, i128 %i.3, i128 %deg1.0
  %pow322 = load i128, i128* %array_getter321, align 4
  %mul323 = mul i128 %out317, %pow322
  %pow324 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %array_getter327 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow324, i128 0, i128 %j.3, i128 %deg2.2
  %pow328 = load i128, i128* %array_getter327, align 4
  %mul329 = mul i128 %mul323, %pow328
  %add330 = add i128 %out_poly312, %mul329
  %ptr_getter331 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %out_poly334 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter331, i128 0, i128 %i.3, i128 %j.3
  store i128 %add330, i128* %out_poly334, align 4
  br label %loop.latch335

loop.latch335:                                    ; preds = %loop.body307
  %add337 = add i128 %deg2.2, 1
  %add341 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub342 = sub i128 %add341, 1
  %slt343 = icmp slt i128 %add337, %sub342
  br i1 %slt343, label %loop.body307, label %loop.exit344

loop.exit344:                                     ; preds = %loop.latch335
  br label %loop.latch345

loop.latch345:                                    ; preds = %loop.exit344
  %add347 = add i128 %deg1.0, 1
  %add351 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub352 = sub i128 %add351, 1
  %slt353 = icmp slt i128 %add347, %sub352
  br i1 %slt353, label %loop.body227, label %loop.exit354

loop.exit354:                                     ; preds = %loop.latch345
  br label %loop.latch355

loop.latch355:                                    ; preds = %loop.exit354
  %add357 = add i128 %j.3, 1
  %add361 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub362 = sub i128 %add361, 1
  %slt363 = icmp slt i128 %add357, %sub362
  br i1 %slt363, label %loop.body213, label %loop.exit364

loop.exit364:                                     ; preds = %loop.latch355
  br label %loop.latch365

loop.latch365:                                    ; preds = %loop.exit364
  %add367 = add i128 %i.3, 1
  %add371 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub372 = sub i128 %add371, 1
  %slt373 = icmp slt i128 %add367, %sub372
  br i1 %slt373, label %loop.body212, label %loop.exit374

loop.exit374:                                     ; preds = %loop.latch365
  br label %loop.body375

loop.body375:                                     ; preds = %loop.latch403, %loop.exit374
  %i.4 = phi i128 [ 0, %loop.exit374 ], [ %add405, %loop.latch403 ]
  br label %loop.body376

loop.body376:                                     ; preds = %loop.latch393, %loop.body375
  %j.4 = phi i128 [ 0, %loop.body375 ], [ %add395, %loop.latch393 ]
  %out_poly377 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %array_getter380 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly377, i128 0, i128 %i.4, i128 %j.4
  %out_poly381 = load i128, i128* %array_getter380, align 4
  %a_poly382 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %array_getter385 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly382, i128 0, i128 %i.4, i128 %j.4
  %a_poly386 = load i128, i128* %array_getter385, align 4
  %b_poly387 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %array_getter390 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly387, i128 0, i128 %i.4, i128 %j.4
  %b_poly391 = load i128, i128* %array_getter390, align 4
  %mul392 = mul i128 %a_poly386, %b_poly391
  call void @fn_intrinsic_utils_constraint(i128 %out_poly381, i128 %mul392, i1* @constraint.25)
  br label %loop.latch393

loop.latch393:                                    ; preds = %loop.body376
  %add395 = add i128 %j.4, 1
  %add399 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub400 = sub i128 %add399, 1
  %slt401 = icmp slt i128 %add395, %sub400
  br i1 %slt401, label %loop.body376, label %loop.exit402

loop.exit402:                                     ; preds = %loop.latch393
  br label %loop.latch403

loop.latch403:                                    ; preds = %loop.exit402
  %add405 = add i128 %i.4, 1
  %add409 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub410 = sub i128 %add409, 1
  %slt411 = icmp slt i128 %add405, %sub410
  br i1 %slt411, label %loop.body375, label %loop.exit412

loop.exit412:                                     ; preds = %loop.latch403
  br label %arraydim

arraydim:                                         ; preds = %loop.exit412
  %ptr_cast = bitcast [256 x [256 x i128]]** %pow to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %utils_switch, i128 %utils_switch)
  %ptr_cast413 = bitcast [256 x [256 x i128]]** %a_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast413, i128 %sub188, i128 %sub192)
  %ptr_cast414 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast414, i128 %sub, i128 %sub26)
  %ptr_cast415 = bitcast [256 x [256 x i128]]** %prod_val to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast415, i128 %sub30, i128 %sub34)
  %ptr_cast416 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast416, i128 %bigmultshortlong2dunequal.la.read_arg_inner, i128 %bigmultshortlong2dunequal.ka.read_arg_inner)
  %ptr_cast417 = bitcast [256 x [256 x i128]]** %out_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast417, i128 %sub206, i128 %sub210)
  %ptr_cast418 = bitcast [256 x [256 x i128]]** %bigmultshortlong2dunequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast418, i128 %bigmultshortlong2dunequal.lb.read_arg_inner, i128 %bigmultshortlong2dunequal.kb.read_arg_inner)
  %ptr_cast419 = bitcast [256 x [256 x i128]]** %b_poly to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast419, i128 %sub197, i128 %sub201)
  br label %exit

exit:                                             ; preds = %arraydim
  %out420 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.declare_output, align 8
  %bigmultshortlong2dunequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 7
  store [256 x [256 x i128]]* %out420, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.write_output_inner, align 8
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

define void @fn_template_init_modsumthree(%struct_template_circuit_modsumthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 0
  %modsumthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 1
  %modsumthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 2
  %modsumthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 3
  %modsumthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %sum = call i128 @fn_intrinsic_utils_init()
  %carry = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %modsumthree.n.read_arg_inner, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add5 = add i128 %modsumthree.n.read_arg_inner, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add5)
  %add6 = add i128 %modsumthree.a.read_input_inner, %modsumthree.b.read_input_inner
  %add7 = add i128 %add6, %modsumthree.c.read_input_inner
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add7, i1* @constraint.26)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add7, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsumthree.n.read_arg_inner
  %n2b13 = load i128, i128* %array_getter, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %add18 = add i128 %modsumthree.n.read_arg_inner, 1
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter16, i128 0, i128 %add18
  %n2b20 = load i128, i128* %array_getter19, align 4
  %mul = mul i128 2, %n2b20
  %add21 = add i128 %n2b13, %mul
  call void @fn_intrinsic_utils_constraint(i128 %carry, i128 %add21, i1* @constraint.27)
  %modsumthree.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %add21, i128* %modsumthree.carry.write_output_inner, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  %modsumthree.carry.read_output_inner = load i128, i128* %struct_getter25, align 4
  %add28 = add i128 %modsumthree.a.read_input_inner, %modsumthree.b.read_input_inner
  %add30 = add i128 %add28, %modsumthree.c.read_input_inner
  %lshift = shl i128 1, %modsumthree.n.read_arg_inner
  %mul33 = mul i128 %modsumthree.carry.read_output_inner, %lshift
  %sub = sub i128 %add30, %mul33
  call void @fn_intrinsic_utils_constraint(i128 %sum, i128 %sub, i1* @constraint.28)
  %modsumthree.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %sub, i128* %modsumthree.sum.write_output_inner, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  %modsumthree.sum.read_output_inner = load i128, i128* %struct_getter37, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %modsumthree.sum.write_output_inner39 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %modsumthree.sum.read_output_inner, i128* %modsumthree.sum.write_output_inner39, align 4
  %modsumthree.carry.write_output_inner41 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %modsumthree.carry.read_output_inner, i128* %modsumthree.carry.write_output_inner41, align 4
  ret void
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
  %struct_template_circuit_modsumthree = alloca %struct_template_circuit_modsumthree, align 8
  %modsumthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree, i32 0, i32 0
  store i128 %0, i128* %modsumthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %idx2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch13, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add15, %loop.latch13 ]
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %idx.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0, i128 %idx.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0, i128 %idx.0
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
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.exit
  %add15 = add i128 %i.0, 1
  %slt17 = icmp slt i128 %add15, 2
  br i1 %slt17, label %loop.body, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  ret i128 1
}

define [256 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %var_inline_array = alloca [256 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %add = add i128 %1, %2
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %0, %lshift11
  %lshift13 = shl i128 1, %3
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [256 x i128], [256 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [256 x i128]* %var_inline_array
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %sgt = icmp sgt i128 %0, %1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %carry3 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry28, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %5, i128 0, i128 %i.0
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %add19 = add i128 %add17, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add19, i128 %0, i128 %0)
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add30 = add i128 %i.0, 1
  %slt = icmp slt i128 %add30, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry28, i128* %sum35, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %temp1 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add35, %loop.latch33 ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %out11 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.1
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %2, %b14
  %add15 = add i128 %out11, %mul
  %lshift = shl i128 1, %0
  %mod = srem i128 %add15, %lshift
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 %mod, i128* %out19, align 4
  %add22 = add i128 %i.1, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %lshift27 = shl i128 1, %0
  %sdiv = sdiv i128 %add15, %lshift27
  %add28 = add i128 %out24, %sdiv
  %add31 = add i128 %i.1, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %add35 = add i128 %i.1, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  ret [256 x i128]* %uniform_array
}

define i128 @log_ceil(i128 %0) {
entry:
  %n_temp1 = call i128 @fn_intrinsic_utils_init()
  %i2 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp.0 = phi i128 [ %0, %entry ], [ %sdiv, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %eq = icmp eq i128 %n_temp.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 %i.0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %sdiv = sdiv i128 %n_temp.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a4 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %a4, %2
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %mul, %a8
  %out10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.0
  store i128 %sub, i128* %out10, align 4
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a14 = load i128, i128* %array_getter13, align 4
  %array_getter17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a18 = load i128, i128* %array_getter17, align 4
  %mul20 = mul i128 %a18, %2
  %add = add i128 %a14, %mul20
  %out23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.0
  store i128 %add, i128* %out23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add25 = add i128 %i.0, 1
  %slt = icmp slt i128 %add25, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_splitthree(%struct_template_circuit_splitthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 0
  %splitthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 1
  %splitthree.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 2
  %splitthree.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 3
  %splitthree.in.read_input_inner = load i128, i128* %struct_getter3, align 4
  %small = call i128 @fn_intrinsic_utils_init()
  %medium = call i128 @fn_intrinsic_utils_init()
  %big = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %splitthree.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %lshift = shl i128 1, %splitthree.n.read_arg_inner
  %mod = srem i128 %splitthree.in.read_input_inner, %lshift
  %splitthree.small.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %mod, i128* %splitthree.small.write_output_inner, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  %splitthree.small.read_output_inner = load i128, i128* %struct_getter6, align 4
  %lshift9 = shl i128 1, %splitthree.n.read_arg_inner
  %sdiv = sdiv i128 %splitthree.in.read_input_inner, %lshift9
  %lshift10 = shl i128 1, %splitthree.m.read_arg_inner
  %mod11 = srem i128 %sdiv, %lshift10
  %splitthree.medium.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %mod11, i128* %splitthree.medium.write_output_inner, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  %splitthree.medium.read_output_inner = load i128, i128* %struct_getter14, align 4
  %add = add i128 %splitthree.n.read_arg_inner, %splitthree.m.read_arg_inner
  %lshift18 = shl i128 1, %add
  %sdiv19 = sdiv i128 %splitthree.in.read_input_inner, %lshift18
  %splitthree.big.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %sdiv19, i128* %splitthree.big.write_output_inner, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  %splitthree.big.read_output_inner = load i128, i128* %struct_getter22, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.n.read_arg_inner)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %splitthree.small.read_output_inner, i1* @constraint.29)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %splitthree.small.read_output_inner, i128* %num2bits.in.write_input_outter, align 4
  %call29 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.m.read_arg_inner)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call29, i32 0, i32 1
  %num2bits.in.read_input_outter33 = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter33, i128 %splitthree.medium.read_output_inner, i1* @constraint.30)
  %num2bits.in.write_input_outter35 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call29, i32 0, i32 1
  store i128 %splitthree.medium.read_output_inner, i128* %num2bits.in.write_input_outter35, align 4
  %call36 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.k.read_arg_inner)
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call36, i32 0, i32 1
  %num2bits.in.read_input_outter40 = load i128, i128* %struct_getter39, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter40, i128 %splitthree.big.read_output_inner, i1* @constraint.31)
  %num2bits.in.write_input_outter42 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call36, i32 0, i32 1
  store i128 %splitthree.big.read_output_inner, i128* %num2bits.in.write_input_outter42, align 4
  %lshift47 = shl i128 1, %splitthree.n.read_arg_inner
  %mul = mul i128 %splitthree.medium.read_output_inner, %lshift47
  %add48 = add i128 %splitthree.small.read_output_inner, %mul
  %add52 = add i128 %splitthree.n.read_arg_inner, %splitthree.m.read_arg_inner
  %lshift53 = shl i128 1, %add52
  %mul54 = mul i128 %splitthree.big.read_output_inner, %lshift53
  %add55 = add i128 %add48, %mul54
  call void @fn_intrinsic_utils_constraint(i128 %splitthree.in.read_input_inner, i128 %add55, i1* @constraint.32)
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %splitthree.small.write_output_inner57 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %splitthree.small.read_output_inner, i128* %splitthree.small.write_output_inner57, align 4
  %splitthree.medium.write_output_inner59 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %splitthree.medium.read_output_inner, i128* %splitthree.medium.write_output_inner59, align 4
  %splitthree.big.write_output_inner61 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %splitthree.big.read_output_inner, i128* %splitthree.big.write_output_inner61, align 4
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

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %lc12 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %num2bitsneg.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %neg4 = call i128 @fn_intrinsic_utils_init()
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
  %ptr_getter = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %out10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %and, i128* %out10, align 4
  %out11 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out11, i128 0, i128 %i.0
  %out13 = load i128, i128* %array_getter, align 4
  %out14 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %out14, i128 0, i128 %i.0
  %out17 = load i128, i128* %array_getter16, align 4
  %sub18 = sub i128 %out17, 1
  %mul = mul i128 %out13, %sub18
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.33)
  %out20 = load [256 x i128]*, [256 x i128]** %num2bitsneg.out.declare_output, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %out20, i128 0, i128 %i.0
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
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.34)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter37, align 4
  %pow39 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul40 = mul i128 %iszero.out.read_output_outter, %pow39
  %add41 = add i128 %add, %mul40
  %pow43 = call i128 @fn_intrinsic_utils_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub45 = sub i128 %pow43, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %add41, i128 %sub45, i1* @constraint.35)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %num2bitsneg.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %num2bitsneg.n.read_arg_inner)
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

define void @fn_template_init_modprod(%struct_template_circuit_modprod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 0
  %modprod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 1
  %modprod.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 2
  %modprod.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %prod = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %carry = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %modprod.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %mul = mul i128 2, %modprod.n.read_arg_inner
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %mul)
  %mul5 = mul i128 %modprod.a.read_input_inner, %modprod.b.read_input_inner
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %mul5, i1* @constraint.36)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %mul5, i128* %num2bits.in.write_input_outter, align 4
  %call9 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %modprod.n.read_arg_inner)
  %call11 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %modprod.n.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add45, %loop.latch ]
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b15 = load i128, i128* %array_getter, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call9, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n120 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n120, i128 %n2b15, i1* @constraint.37)
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call9, i32 0, i32 1
  %bits2num.in.read_input_outter23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %b2n125 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter23, i128 0, i128 %i.0
  store i128 %n2b15, i128* %b2n125, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %add = add i128 %i.0, %modprod.n.read_arg_inner
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter28, i128 0, i128 %add
  %n2b32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call11, i32 0, i32 1
  %bits2num.in.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter35, i128 0, i128 %i.0
  %b2n238 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n238, i128 %n2b32, i1* @constraint.38)
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call11, i32 0, i32 1
  %bits2num.in.read_input_outter41 = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %b2n243 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter41, i128 0, i128 %i.0
  store i128 %n2b32, i128* %b2n243, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add45 = add i128 %i.0, 1
  %slt = icmp slt i128 %add45, %modprod.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call9, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter49, align 4
  call void @fn_intrinsic_utils_constraint(i128 %prod, i128 %bits2num.out.read_output_outter, i1* @constraint.39)
  %modprod.prod.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %bits2num.out.read_output_outter, i128* %modprod.prod.write_output_inner, align 4
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  %modprod.prod.read_output_inner = load i128, i128* %struct_getter53, align 4
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call11, i32 0, i32 2
  %bits2num.out.read_output_outter56 = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry, i128 %bits2num.out.read_output_outter56, i1* @constraint.40)
  %modprod.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %bits2num.out.read_output_outter56, i128* %modprod.carry.write_output_inner, align 4
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  %modprod.carry.read_output_inner = load i128, i128* %struct_getter60, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  br label %exit

exit:                                             ; preds = %arraydim
  %modprod.prod.write_output_inner62 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %modprod.prod.read_output_inner, i128* %modprod.prod.write_output_inner62, align 4
  %modprod.carry.write_output_inner64 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %modprod.carry.read_output_inner, i128* %modprod.carry.write_output_inner64, align 4
  ret void
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
  %struct_template_circuit_modprod = alloca %struct_template_circuit_modprod, align 8
  %modprod.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %struct_template_circuit_modprod, i32 0, i32 0
  store i128 %0, i128* %modprod.n.write_arg_inner, align 4
  ret %struct_template_circuit_modprod* %struct_template_circuit_modprod
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %and.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 1
  %and.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %mul = mul i128 %and.a.read_input_inner, %and.b.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %mul, i1* @constraint.41)
  %and.out.write_output_inner = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %mul, i128* %and.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  %and.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %and.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %and.out.read_output_inner, i128* %and.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and() {
entry:
  %struct_template_circuit_and = alloca %struct_template_circuit_and, align 8
  ret %struct_template_circuit_and* %struct_template_circuit_and
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %idx1 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %1, i128 0, i128 %idx.0
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
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array4 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add106, %loop.latch ]
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a46 = load i128, i128* %array_getter45, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b50 = load i128, i128* %array_getter49, align 4
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter15, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub, i128* %diff22, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %lshift = shl i128 1, %0
  %add = add i128 %sub34, %lshift
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %diff37, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a61 = load i128, i128* %array_getter60, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %sub69 = sub i128 %i.0, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub72, i128* %diff75, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %lshift80 = shl i128 1, %0
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %sub93 = sub i128 %i.0, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub96, i128* %diff99, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %add106 = add i128 %i.0, 1
  %slt = icmp slt i128 %add106, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 0
  %xor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 1
  %xor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %xor.a.read_input_inner, %xor.b.read_input_inner
  %mul = mul i128 2, %xor.a.read_input_inner
  %mul4 = mul i128 %mul, %xor.b.read_input_inner
  %sub = sub i128 %add, %mul4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub, i1* @constraint.42)
  %xor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %sub, i128* %xor.out.write_output_inner, align 4
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  %xor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %xor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %xor.out.read_output_inner, i128* %xor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor() {
entry:
  %struct_template_circuit_xor = alloca %struct_template_circuit_xor, align 8
  ret %struct_template_circuit_xor* %struct_template_circuit_xor
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %carry4 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add41, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %carry.1, %loop.latch ]
  %slt = icmp slt i128 %i.0, %2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %add12 = add i128 %add, %carry.0
  %call = call [256 x i128]* @SplitFn(i128 %add12, i128 %0, i128 %0)
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a25 = load i128, i128* %array_getter24, align 4
  %add27 = add i128 %a25, %carry.0
  %call30 = call [256 x i128]* @SplitFn(i128 %add27, i128 %0, i128 %0)
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %call30, i128 0, i128 0
  %sumAndCarry33 = load i128, i128* %array_getter32, align 4
  %sum36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry33, i128* %sum36, align 4
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %call30, i128 0, i128 1
  %sumAndCarry39 = load i128, i128* %array_getter38, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry.1 = phi i128 [ %sumAndCarry21, %if.true ], [ %sumAndCarry39, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add41 = add i128 %i.0, 1
  %slt43 = icmp slt i128 %add41, %1
  br i1 %slt43, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum47 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %carry.1, i128* %sum47, align 4
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %isequal.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %isequal.in.read_input_inner, [256 x i128]** %isequal.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %in = load [256 x i128]*, [256 x i128]** %isequal.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [256 x i128]*, [256 x i128]** %isequal.in.declare_input, align 8
  %array_getter3 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.43)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.44)
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %isequal.in.declare_input to i128*
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

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %forceequalifenabled.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %forceequalifenabled.in.read_input_inner, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %in = load [256 x i128]*, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [256 x i128]*, [256 x i128]** %forceequalifenabled.in.declare_input, align 8
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %in3, i128 0, i128 0
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

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %j12 = call i128 @fn_intrinsic_utils_init()
  %i14 = call i128 @fn_intrinsic_utils_init()
  %i27 = call i128 @fn_intrinsic_utils_init()
  %j8 = call i128 @fn_intrinsic_utils_init()
  %i9 = call i128 @fn_intrinsic_utils_init()
  %j211 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch19, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add21, %loop.latch19 ]
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.0, i128 %i.0
  store i128 0, i128* %prod_val16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.exit
  %add21 = add i128 %i.0, 1
  %mul23 = mul i128 2, %1
  %sub24 = sub i128 %mul23, 1
  %slt25 = icmp slt i128 %add21, %sub24
  br i1 %slt25, label %loop.body, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch19
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch78, %loop.exit26
  %i1.0 = phi i128 [ 0, %loop.exit26 ], [ %add80, %loop.latch78 ]
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch71, %loop.body27
  %i2.0 = phi i128 [ 0, %loop.body27 ], [ %add73, %loop.latch71 ]
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch64, %loop.body28
  %j1.0 = phi i128 [ 0, %loop.body28 ], [ %add66, %loop.latch64 ]
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch57, %loop.body29
  %j2.0 = phi i128 [ 0, %loop.body29 ], [ %add59, %loop.latch57 ]
  %add34 = add i128 %j1.0, %j2.0
  %add37 = add i128 %i1.0, %i2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add34, i128 %add37
  %prod_val38 = load i128, i128* %array_getter, align 4
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j1.0, i128 %i1.0
  %a42 = load i128, i128* %array_getter41, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %4, i128 0, i128 %j2.0, i128 %i2.0
  %b46 = load i128, i128* %array_getter45, align 4
  %mul47 = mul i128 %a42, %b46
  %add48 = add i128 %prod_val38, %mul47
  %add52 = add i128 %j1.0, %j2.0
  %add55 = add i128 %i1.0, %i2.0
  %prod_val56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add52, i128 %add55
  store i128 %add48, i128* %prod_val56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body30
  %add59 = add i128 %j2.0, 1
  %slt62 = icmp slt i128 %add59, %2
  br i1 %slt62, label %loop.body30, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %add66 = add i128 %j1.0, 1
  %slt69 = icmp slt i128 %add66, %2
  br i1 %slt69, label %loop.body29, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %add73 = add i128 %i2.0, 1
  %slt76 = icmp slt i128 %add73, %1
  br i1 %slt76, label %loop.body28, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit77
  %add80 = add i128 %i1.0, 1
  %slt83 = icmp slt i128 %add80, %1
  br i1 %slt83, label %loop.body27, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %uniform_array85 = alloca [256 x [256 x i128]], align 8
  %uniform_array86 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch109, %loop.exit84
  %j.1 = phi i128 [ 0, %loop.exit84 ], [ %add111, %loop.latch109 ]
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch100, %loop.body87
  %i.1 = phi i128 [ 0, %loop.body87 ], [ %add102, %loop.latch100 ]
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.1, i128 %i.1
  %prod_val93 = load i128, i128* %array_getter92, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val93, i128 %0, i128 %0, i128 %0)
  %split99 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.1, i128 %i.1
  %5 = bitcast [256 x i128]* %split99 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body88
  %add102 = add i128 %i.1, 1
  %mul105 = mul i128 2, %1
  %sub106 = sub i128 %mul105, 1
  %slt107 = icmp slt i128 %add102, %sub106
  br i1 %slt107, label %loop.body88, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch100
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.exit108
  %add111 = add i128 %j.1, 1
  %mul114 = mul i128 2, %2
  %sub115 = sub i128 %mul114, 1
  %slt116 = icmp slt i128 %add111, %sub115
  br i1 %slt116, label %loop.body87, label %loop.exit117

loop.exit117:                                     ; preds = %loop.latch109
  %uniform_array118 = alloca [256 x [256 x i128]], align 8
  %uniform_array119 = alloca [256 x [256 x i128]], align 8
  br label %loop.body120

loop.body120:                                     ; preds = %loop.latch258, %loop.exit117
  %j.2 = phi i128 [ 0, %loop.exit117 ], [ %add260, %loop.latch258 ]
  %carry123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 0
  store i128 0, i128* %carry123, align 4
  %array_getter126 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 0
  %split127 = load i128, i128* %array_getter126, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 0
  store i128 %split127, i128* %out130, align 4
  %mul132 = mul i128 2, %1
  %sub133 = sub i128 %mul132, 1
  %sgt = icmp sgt i128 %sub133, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body120
  %array_getter136 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 1
  %split137 = load i128, i128* %array_getter136, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 1, i128 0
  %split142 = load i128, i128* %array_getter141, align 4
  %add143 = add i128 %split137, %split142
  %call146 = call [256 x i128]* @SplitFn(i128 %add143, i128 %0, i128 %0)
  %sumAndCarry149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2
  %7 = bitcast [256 x i128]* %sumAndCarry149 to i8*
  %8 = bitcast [256 x i128]* %call146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 0
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %out156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry153, i128* %out156, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 1
  %sumAndCarry160 = load i128, i128* %array_getter159, align 4
  %carry163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry160, i128* %carry163, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body120
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %mul167 = mul i128 2, %1
  %sub168 = sub i128 %mul167, 1
  %sgt169 = icmp sgt i128 %sub168, 2
  br i1 %sgt169, label %if.true164, label %if.false165

if.true164:                                       ; preds = %if.exit
  br label %loop.body170

if.false165:                                      ; preds = %if.exit
  br label %if.exit257

loop.body170:                                     ; preds = %loop.latch219, %if.true164
  %i.2 = phi i128 [ 2, %if.true164 ], [ %add221, %loop.latch219 ]
  %array_getter174 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %i.2, i128 0
  %split175 = load i128, i128* %array_getter174, align 4
  %sub179 = sub i128 %i.2, 1
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %split175, %split181
  %sub186 = sub i128 %i.2, 2
  %array_getter187 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %split188
  %sub193 = sub i128 %i.2, 1
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %call199 = call [256 x i128]* @SplitFn(i128 %add196, i128 %0, i128 %0)
  %sumAndCarry202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2
  %9 = bitcast [256 x i128]* %sumAndCarry202 to i8*
  %10 = bitcast [256 x i128]* %call199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 0
  %sumAndCarry206 = load i128, i128* %array_getter205, align 4
  %out210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry206, i128* %out210, align 4
  %array_getter213 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 1
  %sumAndCarry214 = load i128, i128* %array_getter213, align 4
  %carry218 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry214, i128* %carry218, align 4
  br label %loop.latch219

loop.latch219:                                    ; preds = %loop.body170
  %add221 = add i128 %i.2, 1
  %mul224 = mul i128 2, %1
  %sub225 = sub i128 %mul224, 1
  %slt226 = icmp slt i128 %add221, %sub225
  br i1 %slt226, label %loop.body170, label %loop.exit227

loop.exit227:                                     ; preds = %loop.latch219
  %mul231 = mul i128 2, %1
  %sub232 = sub i128 %mul231, 2
  %array_getter233 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub232, i128 1
  %split234 = load i128, i128* %array_getter233, align 4
  %mul238 = mul i128 2, %1
  %sub239 = sub i128 %mul238, 3
  %array_getter240 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub239, i128 2
  %split241 = load i128, i128* %array_getter240, align 4
  %add242 = add i128 %split234, %split241
  %mul246 = mul i128 2, %1
  %sub247 = sub i128 %mul246, 2
  %array_getter248 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array118, i128 0, i128 %j.2, i128 %sub247
  %carry249 = load i128, i128* %array_getter248, align 4
  %add250 = add i128 %add242, %carry249
  %mul254 = mul i128 2, %1
  %sub255 = sub i128 %mul254, 1
  %out256 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub255
  store i128 %add250, i128* %out256, align 4
  br label %if.exit257

if.exit257:                                       ; preds = %loop.exit227, %if.false165
  br label %loop.latch258

loop.latch258:                                    ; preds = %if.exit257
  %add260 = add i128 %j.2, 1
  %mul263 = mul i128 2, %2
  %sub264 = sub i128 %mul263, 1
  %slt265 = icmp slt i128 %add260, %sub264
  br i1 %slt265, label %loop.body120, label %loop.exit266

loop.exit266:                                     ; preds = %loop.latch258
  ret [256 x [256 x i128]]* %uniform_array85
}

define void @fn_template_init_checkcarrytozero(%struct_template_circuit_checkcarrytozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 0
  %checkcarrytozero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 1
  %checkcarrytozero.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 2
  %checkcarrytozero.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 3
  %checkcarrytozero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %checkcarrytozero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %checkcarrytozero.in.read_input_inner, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %EPSILON4 = call i128 @fn_intrinsic_utils_init()
  %checkcarrytozero.carry.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %carry, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %carryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %carryRangeChecks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks5, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  %sge = icmp sge i128 %checkcarrytozero.k.read_arg_inner, 2
  call void @fn_intrinsic_utils_assert(i1 %sge)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add85, %loop.latch ]
  %add = add i128 %checkcarrytozero.m.read_arg_inner, 1
  %sub = sub i128 %add, %checkcarrytozero.n.read_arg_inner
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %sub)
  %ptr_getter = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %carryRangeChecks12 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %carryRangeChecks12, align 8
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %in = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in15 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %sdiv = sdiv i128 %in15, %lshift
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %carry19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i.0
  store i128 %sdiv, i128* %carry19, align 4
  %in20 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %in20, i128 0, i128 %i.0
  %in23 = load i128, i128* %array_getter22, align 4
  %carry24 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %carry24, i128 0, i128 %i.0
  %carry27 = load i128, i128* %array_getter26, align 4
  %lshift29 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %mul = mul i128 %carry27, %lshift29
  call void @fn_intrinsic_utils_constraint(i128 %in23, i128 %mul, i1* @constraint.47)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in30 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %in30, i128 0, i128 %i.0
  %in33 = load i128, i128* %array_getter32, align 4
  %carry34 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %sub36 = sub i128 %i.0, 1
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %carry34, i128 0, i128 %sub36
  %carry38 = load i128, i128* %array_getter37, align 4
  %add39 = add i128 %in33, %carry38
  %lshift41 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %sdiv42 = sdiv i128 %add39, %lshift41
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %carry45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %i.0
  store i128 %sdiv42, i128* %carry45, align 4
  %in46 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %in46, i128 0, i128 %i.0
  %in49 = load i128, i128* %array_getter48, align 4
  %carry50 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %sub52 = sub i128 %i.0, 1
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %carry50, i128 0, i128 %sub52
  %carry54 = load i128, i128* %array_getter53, align 4
  %add55 = add i128 %in49, %carry54
  %carry56 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %carry56, i128 0, i128 %i.0
  %carry59 = load i128, i128* %array_getter58, align 4
  %lshift61 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %mul62 = mul i128 %carry59, %lshift61
  call void @fn_intrinsic_utils_constraint(i128 %add55, i128 %mul62, i1* @constraint.48)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry63 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %carry63, i128 0, i128 %i.0
  %carry66 = load i128, i128* %array_getter65, align 4
  %add69 = add i128 %checkcarrytozero.m.read_arg_inner, 1
  %sub71 = sub i128 %add69, %checkcarrytozero.n.read_arg_inner
  %sub72 = sub i128 %sub71, 1
  %lshift73 = shl i128 1, %sub72
  %add74 = add i128 %carry66, %lshift73
  %carryRangeChecks75 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %array_getter77 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks75, i128 0, i128 %i.0
  %carryRangeChecks78 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter77, align 8
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks78, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter79, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add74, i1* @constraint.49)
  %ptr_getter80 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter80, i128 0, i128 %i.0
  %carryRangeChecks83 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter82, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks83, i32 0, i32 1
  store i128 %add74, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add85 = add i128 %i.0, 1
  %sub88 = sub i128 %checkcarrytozero.k.read_arg_inner, 1
  %slt = icmp slt i128 %add85, %sub88
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in89 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.in.declare_input, align 8
  %sub91 = sub i128 %checkcarrytozero.k.read_arg_inner, 1
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %in89, i128 0, i128 %sub91
  %in93 = load i128, i128* %array_getter92, align 4
  %carry94 = load [256 x i128]*, [256 x i128]** %checkcarrytozero.carry.declare_inter, align 8
  %sub96 = sub i128 %checkcarrytozero.k.read_arg_inner, 2
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %carry94, i128 0, i128 %sub96
  %carry98 = load i128, i128* %array_getter97, align 4
  %add99 = add i128 %in93, %carry98
  call void @fn_intrinsic_utils_constraint(i128 %add99, i128 0, i1* @constraint.50)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %checkcarrytozero.carry.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %checkcarrytozero.k.read_arg_inner)
  %ptr_cast100 = bitcast [256 x i128]** %checkcarrytozero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast100, i128 %checkcarrytozero.k.read_arg_inner)
  %ptr_cast101 = bitcast [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast101, i128 %checkcarrytozero.k.read_arg_inner)
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

define void @fn_template_init_multiand(%struct_template_circuit_multiand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 0
  %multiand.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 1
  %multiand.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %multiand.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %multiand.in.read_input_inner, [256 x i128]** %multiand.in.declare_input, align 8
  %i2 = call i128 @fn_intrinsic_utils_init()
  %n13 = call i128 @fn_intrinsic_utils_init()
  %ands = alloca [256 x %struct_template_circuit_multiand*]*, align 8
  %ands4 = alloca [256 x %struct_template_circuit_multiand*], align 8
  store [256 x %struct_template_circuit_multiand*]* %ands4, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %n25 = call i128 @fn_intrinsic_utils_init()
  %eq = icmp eq i128 %multiand.n.read_arg_inner, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %in = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in7 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %in7, i1* @constraint.51)
  %multiand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %in7, i128* %multiand.out.write_output_inner, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner = load i128, i128* %struct_getter10, align 4
  br label %if.exit134

if.false:                                         ; preds = %entry
  %eq15 = icmp eq i128 %multiand.n.read_arg_inner, 2
  br i1 %eq15, label %if.true11, label %if.false12

if.true11:                                        ; preds = %if.false
  %call = call %struct_template_circuit_and* @fn_template_build_and()
  %in16 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %in16, i128 0, i128 0
  %in18 = load i128, i128* %array_getter17, align 4
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter, i128 %in18, i1* @constraint.52)
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 0
  store i128 %in18, i128* %and.a.write_input_outter, align 4
  %in22 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %in22, i128 0, i128 1
  %in24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter, i128 %in24, i1* @constraint.53)
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 1
  store i128 %in24, i128* %and.b.write_input_outter, align 4
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter29, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %and.out.read_output_outter, i1* @constraint.54)
  %multiand.out.write_output_inner32 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %and.out.read_output_outter, i128* %multiand.out.write_output_inner32, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner35 = load i128, i128* %struct_getter34, align 4
  br label %if.exit

if.false12:                                       ; preds = %if.false
  %call36 = call %struct_template_circuit_and* @fn_template_build_and()
  %sdiv = sdiv i128 %multiand.n.read_arg_inner, 2
  %sdiv40 = sdiv i128 %multiand.n.read_arg_inner, 2
  %sub = sub i128 %multiand.n.read_arg_inner, %sdiv40
  %call42 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %sdiv)
  %ptr_getter43 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands44 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter43, i128 0, i128 0
  store %struct_template_circuit_multiand* %call42, %struct_template_circuit_multiand** %ands44, align 8
  %call46 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %sub)
  %ptr_getter47 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands48 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter47, i128 0, i128 1
  store %struct_template_circuit_multiand* %call46, %struct_template_circuit_multiand** %ands48, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false12
  %i.0 = phi i128 [ 0, %if.false12 ], [ %add, %loop.latch ]
  %in49 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %in49, i128 0, i128 %i.0
  %in52 = load i128, i128* %array_getter51, align 4
  %ands53 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter54 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands53, i128 0, i128 0
  %ands55 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter54, align 8
  %ptr_cast = bitcast %struct_template_circuit_multiand* %ands55 to %struct_template_circuit_multiand*
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast, i32 0, i32 1
  %multiand.in.read_input_inner57 = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner57, i128 0, i128 %i.0
  %ands60 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ands60, i128 %in52, i1* @constraint.55)
  %ptr_getter61 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter61, i128 0, i128 0
  %ands63 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter62, align 8
  %ptr_cast64 = bitcast %struct_template_circuit_multiand* %ands63 to %struct_template_circuit_multiand*
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast64, i32 0, i32 1
  %multiand.in.read_input_inner66 = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %ands68 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner66, i128 0, i128 %i.0
  store i128 %in52, i128* %ands68, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sdiv
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body72

loop.body72:                                      ; preds = %loop.latch96, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add98, %loop.latch96 ]
  %in73 = load [256 x i128]*, [256 x i128]** %multiand.in.declare_input, align 8
  %add76 = add i128 %sdiv, %i.1
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %in73, i128 0, i128 %add76
  %in78 = load i128, i128* %array_getter77, align 4
  %ands79 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands79, i128 0, i128 1
  %ands81 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter80, align 8
  %ptr_cast82 = bitcast %struct_template_circuit_multiand* %ands81 to %struct_template_circuit_multiand*
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast82, i32 0, i32 1
  %multiand.in.read_input_inner84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner84, i128 0, i128 %i.1
  %ands87 = load i128, i128* %array_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %ands87, i128 %in78, i1* @constraint.56)
  %ptr_getter88 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter89 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter88, i128 0, i128 1
  %ands90 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter89, align 8
  %ptr_cast91 = bitcast %struct_template_circuit_multiand* %ands90 to %struct_template_circuit_multiand*
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast91, i32 0, i32 1
  %multiand.in.read_input_inner93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %ands95 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner93, i128 0, i128 %i.1
  store i128 %in78, i128* %ands95, align 4
  br label %loop.latch96

loop.latch96:                                     ; preds = %loop.body72
  %add98 = add i128 %i.1, 1
  %slt101 = icmp slt i128 %add98, %sub
  br i1 %slt101, label %loop.body72, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch96
  %ands103 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter104 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands103, i128 0, i128 0
  %ands105 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter104, align 8
  %ptr_cast106 = bitcast %struct_template_circuit_multiand* %ands105 to %struct_template_circuit_multiand*
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast106, i32 0, i32 2
  %multiand.out.read_output_inner108 = load i128, i128* %struct_getter107, align 4
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call36, i32 0, i32 0
  %and.a.read_input_outter111 = load i128, i128* %struct_getter110, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter111, i128 %multiand.out.read_output_inner108, i1* @constraint.57)
  %and.a.write_input_outter113 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call36, i32 0, i32 0
  store i128 %multiand.out.read_output_inner108, i128* %and.a.write_input_outter113, align 4
  %ands114 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter115 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands114, i128 0, i128 1
  %ands116 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter115, align 8
  %ptr_cast117 = bitcast %struct_template_circuit_multiand* %ands116 to %struct_template_circuit_multiand*
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast117, i32 0, i32 2
  %multiand.out.read_output_inner119 = load i128, i128* %struct_getter118, align 4
  %struct_getter121 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call36, i32 0, i32 1
  %and.b.read_input_outter122 = load i128, i128* %struct_getter121, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter122, i128 %multiand.out.read_output_inner119, i1* @constraint.58)
  %and.b.write_input_outter124 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call36, i32 0, i32 1
  store i128 %multiand.out.read_output_inner119, i128* %and.b.write_input_outter124, align 4
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call36, i32 0, i32 2
  %and.out.read_output_outter127 = load i128, i128* %struct_getter126, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %and.out.read_output_outter127, i1* @constraint.59)
  %multiand.out.write_output_inner130 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %and.out.read_output_outter127, i128* %multiand.out.write_output_inner130, align 4
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner133 = load i128, i128* %struct_getter132, align 4
  br label %if.exit

if.exit:                                          ; preds = %loop.exit102, %if.true11
  %multiand.out.declare_output.0 = phi i128 [ %multiand.out.read_output_inner35, %if.true11 ], [ %multiand.out.read_output_inner133, %loop.exit102 ]
  br label %if.exit134

if.exit134:                                       ; preds = %if.exit, %if.true
  %multiand.out.declare_output.1 = phi i128 [ %multiand.out.read_output_inner, %if.true ], [ %multiand.out.declare_output.0, %if.exit ]
  br label %arraydim

arraydim:                                         ; preds = %if.exit134
  %ptr_cast135 = bitcast [256 x %struct_template_circuit_multiand*]** %ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast135, i128 2)
  %ptr_cast136 = bitcast [256 x i128]** %multiand.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast136, i128 %multiand.n.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %multiand.out.write_output_inner138 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %multiand.out.declare_output.1, i128* %multiand.out.write_output_inner138, align 4
  ret void
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
  %struct_template_circuit_multiand = alloca %struct_template_circuit_multiand, align 8
  %multiand.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %struct_template_circuit_multiand, i32 0, i32 0
  store i128 %0, i128* %multiand.n.write_arg_inner, align 4
  ret %struct_template_circuit_multiand* %struct_template_circuit_multiand
}

define void @fn_template_init_longtoshortnoendcarry(%struct_template_circuit_longtoshortnoendcarry* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 0
  %longtoshortnoendcarry.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 1
  %longtoshortnoendcarry.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %longtoshortnoendcarry.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %longtoshortnoendcarry.runningcarry.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %runningCarry = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %runningCarry, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %longtoshortnoendcarry.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall3 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry4 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry4, [256 x i128]** %sumAndCarry, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry5 = alloca [256 x i128], align 8
  store [256 x i128]* %carry5, [256 x i128]** %carry, align 8
  %outRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %outRangeChecks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %outRangeChecks6, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split7, [256 x [256 x i128]]** %split, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  %runningCarryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %runningCarryRangeChecks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks9, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %sle = icmp sle i128 %longtoshortnoendcarry.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %split, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in13 = load i128, i128* %array_getter, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %in13, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %split18 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i.0
  %1 = bitcast [256 x i128]* %split18 to i8*
  %2 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add20 = add i128 %i.0, 1
  %slt = icmp slt i128 %add20, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
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
  %sgt = icmp sgt i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %split33 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split33, i128 0, i128 0, i128 1
  %split35 = load i128, i128* %array_getter34, align 4
  %split36 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split36, i128 0, i128 1, i128 0
  %split38 = load i128, i128* %array_getter37, align 4
  %add39 = add i128 %split35, %split38
  %call42 = call [256 x i128]* @SplitFn(i128 %add39, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
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
  %sgt56 = icmp sgt i128 %longtoshortnoendcarry.k.read_arg_inner, 2
  br i1 %sgt56, label %if.true53, label %if.false54

if.true53:                                        ; preds = %if.exit
  br label %loop.body57

if.false54:                                       ; preds = %if.exit
  br label %if.exit121

loop.body57:                                      ; preds = %loop.latch94, %if.true53
  %i.1 = phi i128 [ 2, %if.true53 ], [ %add96, %loop.latch94 ]
  %split58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split58, i128 0, i128 %i.1, i128 0
  %split61 = load i128, i128* %array_getter60, align 4
  %split62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %sub = sub i128 %i.1, 1
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split62, i128 0, i128 %sub, i128 1
  %split65 = load i128, i128* %array_getter64, align 4
  %add66 = add i128 %split61, %split65
  %split67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %sub69 = sub i128 %i.1, 2
  %array_getter70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split67, i128 0, i128 %sub69, i128 2
  %split71 = load i128, i128* %array_getter70, align 4
  %add72 = add i128 %add66, %split71
  %carry73 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %sub75 = sub i128 %i.1, 1
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %carry73, i128 0, i128 %sub75
  %carry77 = load i128, i128* %array_getter76, align 4
  %add78 = add i128 %add72, %carry77
  %call81 = call [256 x i128]* @SplitFn(i128 %add78, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
  store [256 x i128]* %call81, [256 x i128]** %sumAndCarry, align 8
  %sumAndCarry82 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry82, i128 0, i128 0
  %sumAndCarry84 = load i128, i128* %array_getter83, align 4
  %ptr_getter85 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %out87 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter85, i128 0, i128 %i.1
  store i128 %sumAndCarry84, i128* %out87, align 4
  %sumAndCarry88 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry88, i128 0, i128 1
  %sumAndCarry90 = load i128, i128* %array_getter89, align 4
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry93 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %i.1
  store i128 %sumAndCarry90, i128* %carry93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body57
  %add96 = add i128 %i.1, 1
  %slt99 = icmp slt i128 %add96, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt99, label %loop.body57, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch94
  %split101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %sub103 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split101, i128 0, i128 %sub103, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %split106 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %sub108 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 2
  %array_getter109 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split106, i128 0, i128 %sub108, i128 2
  %split110 = load i128, i128* %array_getter109, align 4
  %add111 = add i128 %split105, %split110
  %carry112 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %sub114 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %carry112, i128 0, i128 %sub114
  %carry116 = load i128, i128* %array_getter115, align 4
  %add117 = add i128 %add111, %carry116
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %out120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %longtoshortnoendcarry.k.read_arg_inner
  store i128 %add117, i128* %out120, align 4
  br label %if.exit121

if.exit121:                                       ; preds = %loop.exit100, %if.false54
  %add123 = add i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch143, %if.exit121
  %i.2 = phi i128 [ 0, %if.exit121 ], [ %add145, %loop.latch143 ]
  %call126 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %longtoshortnoendcarry.n.read_arg_inner)
  %ptr_getter127 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %outRangeChecks129 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter127, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call126, %struct_template_circuit_num2bits** %outRangeChecks129, align 8
  %out130 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter132 = getelementptr inbounds [256 x i128], [256 x i128]* %out130, i128 0, i128 %i.2
  %out133 = load i128, i128* %array_getter132, align 4
  %outRangeChecks134 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %array_getter136 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks134, i128 0, i128 %i.2
  %outRangeChecks137 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter136, align 8
  %struct_getter138 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks137, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter138, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %out133, i1* @constraint.60)
  %ptr_getter139 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %array_getter141 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter139, i128 0, i128 %i.2
  %outRangeChecks142 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter141, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks142, i32 0, i32 1
  store i128 %out133, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch143

loop.latch143:                                    ; preds = %loop.body124
  %add145 = add i128 %i.2, 1
  %add148 = add i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %slt149 = icmp slt i128 %add145, %add148
  br i1 %slt149, label %loop.body124, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch143
  %in153 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %in153, i128 0, i128 0
  %in155 = load i128, i128* %array_getter154, align 4
  %out156 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %out156, i128 0, i128 0
  %out158 = load i128, i128* %array_getter157, align 4
  %sub159 = sub i128 %in155, %out158
  %lshift = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %sdiv = sdiv i128 %sub159, %lshift
  %ptr_getter161 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %runningCarry162 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter161, i128 0, i128 0
  store i128 %sdiv, i128* %runningCarry162, align 4
  %call165 = call i128 @log_ceil(i128 %longtoshortnoendcarry.k.read_arg_inner)
  %add166 = add i128 %longtoshortnoendcarry.n.read_arg_inner, %call165
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
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter177, i128 %runningCarry172, i1* @constraint.61)
  %ptr_getter178 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter179 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter178, i128 0, i128 0
  %runningCarryRangeChecks180 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter179, align 8
  %num2bits.in.write_input_outter181 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks180, i32 0, i32 1
  store i128 %runningCarry172, i128* %num2bits.in.write_input_outter181, align 4
  %runningCarry182 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry182, i128 0, i128 0
  %runningCarry184 = load i128, i128* %array_getter183, align 4
  %lshift186 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %mul = mul i128 %runningCarry184, %lshift186
  %in187 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %in187, i128 0, i128 0
  %in189 = load i128, i128* %array_getter188, align 4
  %out190 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %out190, i128 0, i128 0
  %out192 = load i128, i128* %array_getter191, align 4
  %sub193 = sub i128 %in189, %out192
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 %sub193, i1* @constraint.62)
  br label %loop.body194

loop.body194:                                     ; preds = %loop.latch261, %loop.exit150
  %i.3 = phi i128 [ 1, %loop.exit150 ], [ %add263, %loop.latch261 ]
  %in195 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %in195, i128 0, i128 %i.3
  %in198 = load i128, i128* %array_getter197, align 4
  %out199 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter201 = getelementptr inbounds [256 x i128], [256 x i128]* %out199, i128 0, i128 %i.3
  %out202 = load i128, i128* %array_getter201, align 4
  %sub203 = sub i128 %in198, %out202
  %runningCarry204 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %sub206 = sub i128 %i.3, 1
  %array_getter207 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry204, i128 0, i128 %sub206
  %runningCarry208 = load i128, i128* %array_getter207, align 4
  %add209 = add i128 %sub203, %runningCarry208
  %lshift211 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %sdiv212 = sdiv i128 %add209, %lshift211
  %ptr_getter213 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %runningCarry215 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter213, i128 0, i128 %i.3
  store i128 %sdiv212, i128* %runningCarry215, align 4
  %call218 = call i128 @log_ceil(i128 %longtoshortnoendcarry.k.read_arg_inner)
  %add219 = add i128 %longtoshortnoendcarry.n.read_arg_inner, %call218
  %call220 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add219)
  %ptr_getter221 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %runningCarryRangeChecks223 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter221, i128 0, i128 %i.3
  store %struct_template_circuit_num2bits* %call220, %struct_template_circuit_num2bits** %runningCarryRangeChecks223, align 8
  %runningCarry224 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %array_getter226 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry224, i128 0, i128 %i.3
  %runningCarry227 = load i128, i128* %array_getter226, align 4
  %runningCarryRangeChecks228 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter230 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks228, i128 0, i128 %i.3
  %runningCarryRangeChecks231 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter230, align 8
  %struct_getter232 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks231, i32 0, i32 1
  %num2bits.in.read_input_outter233 = load i128, i128* %struct_getter232, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter233, i128 %runningCarry227, i1* @constraint.63)
  %ptr_getter234 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter236 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter234, i128 0, i128 %i.3
  %runningCarryRangeChecks237 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter236, align 8
  %num2bits.in.write_input_outter238 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks237, i32 0, i32 1
  store i128 %runningCarry227, i128* %num2bits.in.write_input_outter238, align 4
  %runningCarry239 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %array_getter241 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry239, i128 0, i128 %i.3
  %runningCarry242 = load i128, i128* %array_getter241, align 4
  %lshift244 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %mul245 = mul i128 %runningCarry242, %lshift244
  %in246 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.in.declare_input, align 8
  %array_getter248 = getelementptr inbounds [256 x i128], [256 x i128]* %in246, i128 0, i128 %i.3
  %in249 = load i128, i128* %array_getter248, align 4
  %out250 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter252 = getelementptr inbounds [256 x i128], [256 x i128]* %out250, i128 0, i128 %i.3
  %out253 = load i128, i128* %array_getter252, align 4
  %sub254 = sub i128 %in249, %out253
  %runningCarry255 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %sub257 = sub i128 %i.3, 1
  %array_getter258 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry255, i128 0, i128 %sub257
  %runningCarry259 = load i128, i128* %array_getter258, align 4
  %add260 = add i128 %sub254, %runningCarry259
  call void @fn_intrinsic_utils_constraint(i128 %mul245, i128 %add260, i1* @constraint.64)
  br label %loop.latch261

loop.latch261:                                    ; preds = %loop.body194
  %add263 = add i128 %i.3, 1
  %slt266 = icmp slt i128 %add263, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt266, label %loop.body194, label %loop.exit267

loop.exit267:                                     ; preds = %loop.latch261
  %runningCarry268 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter, align 8
  %sub270 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter271 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry268, i128 0, i128 %sub270
  %runningCarry272 = load i128, i128* %array_getter271, align 4
  %out273 = load [256 x i128]*, [256 x i128]** %longtoshortnoendcarry.out.declare_output, align 8
  %array_getter275 = getelementptr inbounds [256 x i128], [256 x i128]* %out273, i128 0, i128 %longtoshortnoendcarry.k.read_arg_inner
  %out276 = load i128, i128* %array_getter275, align 4
  call void @fn_intrinsic_utils_constraint(i128 %runningCarry272, i128 %out276, i1* @constraint.65)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit267
  %ptr_cast = bitcast [256 x i128]** %longtoshortnoendcarry.runningcarry.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %longtoshortnoendcarry.k.read_arg_inner)
  %ptr_cast277 = bitcast [256 x %struct_template_circuit_num2bits*]** %outRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast277, i128 %add123)
  %ptr_cast278 = bitcast [256 x i128]** %carry to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast278, i128 %longtoshortnoendcarry.k.read_arg_inner)
  %ptr_cast279 = bitcast [256 x [256 x i128]]** %split to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast279, i128 %longtoshortnoendcarry.k.read_arg_inner, i128 3)
  %ptr_cast280 = bitcast [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast280, i128 %longtoshortnoendcarry.k.read_arg_inner)
  %ptr_cast281 = bitcast [256 x i128]** %longtoshortnoendcarry.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast281, i128 %add)
  %ptr_cast282 = bitcast [256 x i128]** %longtoshortnoendcarry.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast282, i128 %longtoshortnoendcarry.k.read_arg_inner)
  %ptr_cast283 = bitcast [256 x i128]** %sumAndCarry to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast283, i128 2)
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

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %sub = sub i128 %1, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ %sub, %entry ], [ %sub19, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a3 = load i128, i128* %array_getter, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter11, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
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
  %sub19 = sub i128 %i.0, 1
  %sge = icmp sge i128 %sub19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %carry1 = call i128 @fn_intrinsic_utils_init()
  %MAXL2 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %X5 = call i128 @fn_intrinsic_utils_init()
  %borrow7 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %i.1 = phi i128 [ %1, %loop.exit ], [ %add22, %loop.latch20 ]
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.1
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %add22 = add i128 %i.1, 1
  %sle = icmp sle i128 %add22, 50
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %lshift = shl i128 1, %0
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %i.2 = phi i128 [ 0, %loop.exit25 ], [ %add85, %loop.latch83 ]
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp34 = load i128, i128* %array_getter33, align 4
  %mod = srem i128 %temp34, %lshift
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %mod, i128* %out38, align 4
  %add41 = add i128 %i.2, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp47 = load i128, i128* %array_getter46, align 4
  %sdiv = sdiv i128 %temp47, %lshift
  %add49 = add i128 %temp43, %sdiv
  %add52 = add i128 %i.2, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %add59 = add i128 %neg, %lshift
  %sub = sub i128 %add59, 1
  %sdiv61 = sdiv i128 %sub, %lshift
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp65 = load i128, i128* %array_getter64, align 4
  %mul = mul i128 %sdiv61, %lshift
  %add68 = add i128 %temp65, %mul
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %add68, i128* %out71, align 4
  %add74 = add i128 %i.2, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %sub78 = sub i128 %temp76, %sdiv61
  %add81 = add i128 %i.2, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %add85 = add i128 %i.2, 1
  %slt88 = icmp slt i128 %add85, 50
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp100 = load i128, i128* %array_getter99, align 4
  %eq = icmp eq i128 %temp100, 0
  call void @fn_intrinsic_utils_assert(i1 %eq)
  %out103 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 0, i128* %out103, align 4
  ret [256 x i128]* %uniform_array

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit105

if.exit105:                                       ; preds = %if.false91
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch114, %if.exit105
  %i.3 = phi i128 [ 0, %if.exit105 ], [ %add116, %loop.latch114 ]
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.3
  %a110 = load i128, i128* %array_getter109, align 4
  %temp113 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.3
  store i128 %a110, i128* %temp113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body106
  %add116 = add i128 %i.3, 1
  %slt119 = icmp slt i128 %add116, %1
  br i1 %slt119, label %loop.body106, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch126, %loop.exit120
  %i.4 = phi i128 [ %1, %loop.exit120 ], [ %add128, %loop.latch126 ]
  %temp125 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.4
  store i128 0, i128* %temp125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body122
  %add128 = add i128 %i.4, 1
  %sle131 = icmp sle i128 %add128, 50
  br i1 %sle131, label %loop.body122, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch202, %loop.exit132
  %i.5 = phi i128 [ 0, %loop.exit132 ], [ %add204, %loop.latch202 ]
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp139 = load i128, i128* %array_getter138, align 4
  %slt140 = icmp slt i128 %temp139, 0
  br i1 %slt140, label %if.true134, label %if.false135

if.true134:                                       ; preds = %loop.body133
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp144 = load i128, i128* %array_getter143, align 4
  %neg145 = sub i128 0, %temp144
  %sdiv147 = sdiv i128 %neg145, %lshift
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp151 = load i128, i128* %array_getter150, align 4
  %mul154 = mul i128 %sdiv147, %lshift
  %add155 = add i128 %temp151, %mul154
  %out158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %add155, i128* %out158, align 4
  %add161 = add i128 %i.5, 1
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add161
  %temp163 = load i128, i128* %array_getter162, align 4
  %sub165 = sub i128 %temp163, %sdiv147
  %add168 = add i128 %i.5, 1
  %temp169 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add168
  store i128 %sub165, i128* %temp169, align 4
  br label %if.exit201

if.false135:                                      ; preds = %loop.body133
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp173 = load i128, i128* %array_getter172, align 4
  %add175 = add i128 %temp173, %lshift
  %sub176 = sub i128 %add175, 1
  %sdiv178 = sdiv i128 %sub176, %lshift
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp182 = load i128, i128* %array_getter181, align 4
  %mul185 = mul i128 %sdiv178, %lshift
  %sub186 = sub i128 %temp182, %mul185
  %out189 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %sub186, i128* %out189, align 4
  %add192 = add i128 %i.5, 1
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add192
  %temp194 = load i128, i128* %array_getter193, align 4
  %add196 = add i128 %temp194, %sdiv178
  %add199 = add i128 %i.5, 1
  %temp200 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add199
  store i128 %add196, i128* %temp200, align 4
  br label %if.exit201

if.exit201:                                       ; preds = %if.false135, %if.true134
  br label %loop.latch202

loop.latch202:                                    ; preds = %if.exit201
  %add204 = add i128 %i.5, 1
  %slt207 = icmp slt i128 %add204, 50
  br i1 %slt207, label %loop.body133, label %loop.exit208

loop.exit208:                                     ; preds = %loop.latch202
  %array_getter211 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp212 = load i128, i128* %array_getter211, align 4
  %eq213 = icmp eq i128 %temp212, 0
  call void @fn_intrinsic_utils_assert(i1 %eq213)
  %out216 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 1, i128* %out216, align 4
  ret [256 x i128]* %uniform_array
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

define void @fn_template_init_modsum(%struct_template_circuit_modsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 0
  %modsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 1
  %modsum.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 2
  %modsum.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %carry = call i128 @fn_intrinsic_utils_init()
  %sum = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %modsum.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %modsum.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %add4 = add i128 %modsum.a.read_input_inner, %modsum.b.read_input_inner
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add4, i1* @constraint.66)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add4, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsum.n.read_arg_inner
  %n2b10 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry, i128 %n2b10, i1* @constraint.67)
  %modsum.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %n2b10, i128* %modsum.carry.write_output_inner, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  %modsum.carry.read_output_inner = load i128, i128* %struct_getter14, align 4
  %add17 = add i128 %modsum.a.read_input_inner, %modsum.b.read_input_inner
  %lshift = shl i128 1, %modsum.n.read_arg_inner
  %mul = mul i128 %modsum.carry.read_output_inner, %lshift
  %sub = sub i128 %add17, %mul
  call void @fn_intrinsic_utils_constraint(i128 %sum, i128 %sub, i1* @constraint.68)
  %modsum.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %sub, i128* %modsum.sum.write_output_inner, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  %modsum.sum.read_output_inner = load i128, i128* %struct_getter23, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %modsum.sum.write_output_inner25 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %modsum.sum.read_output_inner, i128* %modsum.sum.write_output_inner25, align 4
  %modsum.carry.write_output_inner27 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %modsum.carry.read_output_inner, i128* %modsum.carry.write_output_inner27, align 4
  ret void
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
  %struct_template_circuit_modsum = alloca %struct_template_circuit_modsum, align 8
  %modsum.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %struct_template_circuit_modsum, i32 0, i32 0
  store i128 %0, i128* %modsum.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsum* %struct_template_circuit_modsum
}

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %sgn01 = call i128 @fn_intrinsic_utils_init()
  %z2 = call i128 @fn_intrinsic_utils_init()
  %sgn13 = call i128 @fn_intrinsic_utils_init()
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 0
  %a4 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a4, 2
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 0
  %a7 = load i128, i128* %array_getter6, align 4
  %mod8 = srem i128 %a7, 2
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %0, [256 x i128]* %spice_inline_array)
  %and = and i128 %call, %mod8
  %or = or i128 %mod, %and
  ret i128 %or
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %qhat1 = call i128 @fn_intrinsic_utils_init()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %1
  %a3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %0
  %mul = mul i128 %a3, %lshift
  %sub = sub i128 %1, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %sub9 = sub i128 %1, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  %lshift14 = shl i128 1, %0
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %sdiv, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %lshift17 = shl i128 1, %0
  %sub18 = sub i128 %lshift17, 1
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %qhat.0 = phi i128 [ %sub18, %if.true ], [ %sdiv, %if.false ]
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %qhat.0, [256 x i128]* %3)
  %add27 = add i128 %1, 1
  %call30 = call i128 @long_gt(i128 %0, i128 %add27, [256 x i128]* %call, [256 x i128]* %2)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %add33 = add i128 %1, 1
  %call36 = call [256 x i128]* @long_sub(i128 %0, i128 %add33, [256 x i128]* %call, [256 x i128]* %3)
  %add41 = add i128 %1, 1
  %call44 = call i128 @long_gt(i128 %0, i128 %add41, [256 x i128]* %call36, [256 x i128]* %2)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  ret i128 %qhat.0

if.true37:                                        ; preds = %if.true23
  %sub47 = sub i128 %qhat.0, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %sub49 = sub i128 %qhat.0, 1
  ret i128 %sub49
}

define void @fn_template_init_checkcarrymodp(%struct_template_circuit_checkcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 0
  %checkcarrymodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 1
  %checkcarrymodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 2
  %checkcarrymodp.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 3
  %checkcarrymodp.overflow.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 4
  %checkcarrymodp.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 5
  %checkcarrymodp.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %checkcarrymodp.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %checkcarrymodp.in.read_input_inner, [256 x i128]** %checkcarrymodp.in.declare_input, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 6
  %checkcarrymodp.x.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %checkcarrymodp.x.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %checkcarrymodp.x.read_input_inner, [256 x i128]** %checkcarrymodp.x.declare_input, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 7
  %checkcarrymodp.y.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %checkcarrymodp.y.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %checkcarrymodp.y.read_input_inner, [256 x i128]** %checkcarrymodp.y.declare_input, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  %slt = icmp slt i128 %checkcarrymodp.overflow.read_arg_inner, 251
  call void @fn_intrinsic_utils_assert(i1 %slt)
  %sub = sub i128 %checkcarrymodp.overflow.read_arg_inner, 1
  %sle = icmp sle i128 %checkcarrymodp.n.read_arg_inner, %sub
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %checkcarrymodp.n.read_arg_inner, i128 %checkcarrymodp.k.read_arg_inner, i128 %checkcarrymodp.m.read_arg_inner, i128 %checkcarrymodp.overflow.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.p.read_arg_inner, i128 0, i128 %i.0
  %p16 = load i128, i128* %array_getter, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_outter, i128 0, i128 %i.0
  %pX21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %pX21, i128 %p16, i1* @constraint.69)
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_outter23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %pX25 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_outter23, i128 0, i128 %i.0
  store i128 %p16, i128* %pX25, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt29 = icmp slt i128 %add, %checkcarrymodp.k.read_arg_inner
  br i1 %slt29, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch44, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add46, %loop.latch44 ]
  %X = load [256 x i128]*, [256 x i128]** %checkcarrymodp.x.declare_input, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.1
  %X33 = load i128, i128* %array_getter32, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_outter, i128 0, i128 %i.1
  %pX38 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_utils_constraint(i128 %pX38, i128 %X33, i1* @constraint.70)
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_outter41 = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %pX43 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_outter41, i128 0, i128 %i.1
  store i128 %X33, i128* %pX43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body30
  %add46 = add i128 %i.1, 1
  %slt49 = icmp slt i128 %add46, %checkcarrymodp.m.read_arg_inner
  br i1 %slt49, label %loop.body30, label %loop.exit50

loop.exit50:                                      ; preds = %loop.latch44
  %add53 = add i128 %checkcarrymodp.overflow.read_arg_inner, 1
  %add56 = add i128 %checkcarrymodp.k.read_arg_inner, %checkcarrymodp.m.read_arg_inner
  %sub57 = sub i128 %add56, 1
  %call58 = call %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %checkcarrymodp.n.read_arg_inner, i128 %add53, i128 %sub57)
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch83, %loop.exit50
  %i.2 = phi i128 [ 0, %loop.exit50 ], [ %add85, %loop.latch83 ]
  %in = load [256 x i128]*, [256 x i128]** %checkcarrymodp.in.declare_input, align 8
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.2
  %in62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 6
  %bigmultshortlongunequal.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.out.read_output_outter, i128 0, i128 %i.2
  %pX67 = load i128, i128* %array_getter66, align 4
  %sub68 = sub i128 %in62, %pX67
  %Y = load [256 x i128]*, [256 x i128]** %checkcarrymodp.y.declare_input, align 8
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %Y, i128 0, i128 %i.2
  %Y71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub68, %Y71
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call58, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter, i128 0, i128 %i.2
  %carry_check77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry_check77, i128 %sub72, i1* @constraint.71)
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call58, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter80 = load [256 x i128]*, [256 x i128]** %struct_getter79, align 8
  %carry_check82 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter80, i128 0, i128 %i.2
  store i128 %sub72, i128* %carry_check82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body59
  %add85 = add i128 %i.2, 1
  %slt88 = icmp slt i128 %add85, %checkcarrymodp.k.read_arg_inner
  br i1 %slt88, label %loop.body59, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  br label %loop.body91

loop.body91:                                      ; preds = %loop.latch109, %loop.exit89
  %i.3 = phi i128 [ %checkcarrymodp.k.read_arg_inner, %loop.exit89 ], [ %add111, %loop.latch109 ]
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 6
  %bigmultshortlongunequal.out.read_output_outter94 = load [256 x i128]*, [256 x i128]** %struct_getter93, align 8
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.out.read_output_outter94, i128 0, i128 %i.3
  %pX97 = load i128, i128* %array_getter96, align 4
  %neg = sub i128 0, %pX97
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call58, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter100 = load [256 x i128]*, [256 x i128]** %struct_getter99, align 8
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter100, i128 0, i128 %i.3
  %carry_check103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_utils_constraint(i128 %carry_check103, i128 %neg, i1* @constraint.72)
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call58, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter106 = load [256 x i128]*, [256 x i128]** %struct_getter105, align 8
  %carry_check108 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter106, i128 0, i128 %i.3
  store i128 %neg, i128* %carry_check108, align 4
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.body91
  %add111 = add i128 %i.3, 1
  %add115 = add i128 %checkcarrymodp.k.read_arg_inner, %checkcarrymodp.m.read_arg_inner
  %sub116 = sub i128 %add115, 1
  %slt117 = icmp slt i128 %add111, %sub116
  br i1 %slt117, label %loop.body91, label %loop.exit118

loop.exit118:                                     ; preds = %loop.latch109
  br label %arraydim

arraydim:                                         ; preds = %loop.exit118
  %ptr_cast = bitcast [256 x i128]** %checkcarrymodp.x.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %checkcarrymodp.m.read_arg_inner)
  %ptr_cast119 = bitcast [256 x i128]** %checkcarrymodp.y.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast119, i128 %checkcarrymodp.k.read_arg_inner)
  %ptr_cast120 = bitcast [256 x i128]** %checkcarrymodp.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast120, i128 %checkcarrymodp.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  ret void
}

define %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
  %struct_template_circuit_checkcarrymodp = alloca %struct_template_circuit_checkcarrymodp, align 8
  %checkcarrymodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 0
  store i128 %0, i128* %checkcarrymodp.n.write_arg_inner, align 4
  %checkcarrymodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 1
  store i128 %1, i128* %checkcarrymodp.k.write_arg_inner, align 4
  %checkcarrymodp.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 2
  store i128 %2, i128* %checkcarrymodp.m.write_arg_inner, align 4
  %checkcarrymodp.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 3
  store i128 %3, i128* %checkcarrymodp.overflow.write_arg_inner, align 4
  %checkcarrymodp.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 4
  store [256 x i128]* %4, [256 x i128]** %checkcarrymodp.p.write_arg_inner, align 8
  ret %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %lessthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %lessthan.in.read_input_inner, [256 x i128]** %lessthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %lessthan.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %lessthan.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %in = load [256 x i128]*, [256 x i128]** %lessthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %lessthan.n.read_arg_inner
  %add5 = add i128 %in3, %lshift
  %in6 = load [256 x i128]*, [256 x i128]** %lessthan.in.declare_input, align 8
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %in6, i128 0, i128 1
  %in8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %add5, %in8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.73)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b15 = load i128, i128* %array_getter14, align 4
  %sub16 = sub i128 1, %n2b15
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub16, i1* @constraint.74)
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %sub16, i128* %lessthan.out.write_output_inner, align 4
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter20, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %lessthan.in.declare_input to i128*
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

define void @fn_template_init_modsubthree(%struct_template_circuit_modsubthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 0
  %modsubthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 1
  %modsubthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 2
  %modsubthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 3
  %modsubthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %out = call i128 @fn_intrinsic_utils_init()
  %b_plus_c = call i128 @fn_intrinsic_utils_init()
  %borrow = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %modsubthree.n.read_arg_inner, 2
  %sle = icmp sle i128 %add, 253
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %sub = sub i128 %modsubthree.a.read_input_inner, %modsubthree.b.read_input_inner
  %sub4 = sub i128 %sub, %modsubthree.c.read_input_inner
  %lshift = shl i128 1, %modsubthree.n.read_arg_inner
  %add6 = add i128 %sub4, %lshift
  %sge = icmp sge i128 %add6, 0
  call void @fn_intrinsic_utils_assert(i1 %sge)
  %add9 = add i128 %modsubthree.b.read_input_inner, %modsubthree.c.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %b_plus_c, i128 %add9, i1* @constraint.75)
  %modsubthree.b_plus_c.write_inter_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %add9, i128* %modsubthree.b_plus_c.write_inter_inner, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  %modsubthree.b_plus_c.read_inter_inner = load i128, i128* %struct_getter12, align 4
  %add14 = add i128 %modsubthree.n.read_arg_inner, 1
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %add14)
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt18 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt18, i128 %modsubthree.a.read_input_inner, i1* @constraint.76)
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter21 = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %lt22 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter21, i128 0, i128 0
  store i128 %modsubthree.a.read_input_inner, i128* %lt22, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter26 = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter26, i128 0, i128 1
  %lt28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt28, i128 %modsubthree.b_plus_c.read_inter_inner, i1* @constraint.77)
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %lt32 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter31, i128 0, i128 1
  store i128 %modsubthree.b_plus_c.read_inter_inner, i128* %lt32, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter34, align 4
  call void @fn_intrinsic_utils_constraint(i128 %borrow, i128 %lessthan.out.read_output_outter, i1* @constraint.78)
  %modsubthree.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  store i128 %lessthan.out.read_output_outter, i128* %modsubthree.borrow.write_output_inner, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  %modsubthree.borrow.read_output_inner = load i128, i128* %struct_getter38, align 4
  %lshift41 = shl i128 1, %modsubthree.n.read_arg_inner
  %mul = mul i128 %modsubthree.borrow.read_output_inner, %lshift41
  %add43 = add i128 %mul, %modsubthree.a.read_input_inner
  %sub45 = sub i128 %add43, %modsubthree.b_plus_c.read_inter_inner
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub45, i1* @constraint.79)
  %modsubthree.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %sub45, i128* %modsubthree.out.write_output_inner, align 4
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  %modsubthree.out.read_output_inner = load i128, i128* %struct_getter49, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %modsubthree.b_plus_c.write_inter_inner51 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %modsubthree.b_plus_c.read_inter_inner, i128* %modsubthree.b_plus_c.write_inter_inner51, align 4
  %modsubthree.out.write_output_inner53 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %modsubthree.out.read_output_inner, i128* %modsubthree.out.write_output_inner53, align 4
  %modsubthree.borrow.write_output_inner55 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  store i128 %modsubthree.borrow.read_output_inner, i128* %modsubthree.borrow.write_output_inner55, align 4
  ret void
}

define %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %0) {
entry:
  %struct_template_circuit_modsubthree = alloca %struct_template_circuit_modsubthree, align 8
  %modsubthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree, i32 0, i32 0
  store i128 %0, i128* %modsubthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter2, align 8
  %binsum.in.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %binsum.in.read_input_inner, [256 x [256 x i128]]** %binsum.in.declare_input, align 8
  %nout3 = call i128 @fn_intrinsic_utils_init()
  %lout4 = call i128 @fn_intrinsic_utils_init()
  %j5 = call i128 @fn_intrinsic_utils_init()
  %e26 = call i128 @fn_intrinsic_utils_init()
  %binsum.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %binsum.out.declare_output, align 8
  %lin7 = call i128 @fn_intrinsic_utils_init()
  %k8 = call i128 @fn_intrinsic_utils_init()
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
  %j.0 = phi i128 [ 0, %loop.body ], [ %add20, %loop.latch ]
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %binsum.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %j.0, i128 %k.0
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
  %lout.0 = phi i128 [ 0, %loop.exit32 ], [ %add55, %loop.latch59 ]
  %e2.1 = phi i128 [ 1, %loop.exit32 ], [ %add58, %loop.latch59 ]
  %k.1 = phi i128 [ 0, %loop.exit32 ], [ %add61, %loop.latch59 ]
  %rshift = lshr i128 %add, %k.1
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %out37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %k.1
  store i128 %and, i128* %out37, align 4
  %out38 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %out38, i128 0, i128 %k.1
  %out41 = load i128, i128* %array_getter40, align 4
  %out42 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %out42, i128 0, i128 %k.1
  %out45 = load i128, i128* %array_getter44, align 4
  %sub46 = sub i128 %out45, 1
  %mul47 = mul i128 %out41, %sub46
  call void @fn_intrinsic_utils_constraint(i128 %mul47, i128 0, i1* @constraint.80)
  %out49 = load [256 x i128]*, [256 x i128]** %binsum.out.declare_output, align 8
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %out49, i128 0, i128 %k.1
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
  call void @fn_intrinsic_utils_constraint(i128 %add, i128 %add55, i1* @constraint.81)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit65
  %ptr_cast = bitcast [256 x i128]** %binsum.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %call)
  %ptr_cast68 = bitcast [256 x [256 x i128]]** %binsum.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast68, i128 %binsum.ops.read_arg_inner, i128 %binsum.n.read_arg_inner)
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

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %2)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call7 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %3)
  %call8 = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %call13 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x i128]* %call13
}

define void @fn_template_init_bigiszero(%struct_template_circuit_bigiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 0
  %bigiszero.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 1
  %bigiszero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bigiszero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigiszero.in.read_input_inner, [256 x i128]** %bigiszero.in.declare_input, align 8
  %isZeros = alloca [256 x %struct_template_circuit_iszero*]*, align 8
  %isZeros2 = alloca [256 x %struct_template_circuit_iszero*], align 8
  store [256 x %struct_template_circuit_iszero*]* %isZeros2, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %total3 = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %total.0 = phi i128 [ %bigiszero.k.read_arg_inner, %entry ], [ %sub, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %ptr_getter = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %isZeros8 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZeros8, align 8
  %in = load [256 x i128]*, [256 x i128]** %bigiszero.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in10 = load i128, i128* %array_getter, align 4
  %isZeros11 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %array_getter13 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros11, i128 0, i128 %i.0
  %isZeros14 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter13, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros14, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %in10, i1* @constraint.82)
  %ptr_getter16 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %array_getter18 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter16, i128 0, i128 %i.0
  %isZeros19 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter18, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros19, i32 0, i32 0
  store i128 %in10, i128* %iszero.in.write_input_outter, align 4
  %isZeros21 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %array_getter23 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros21, i128 0, i128 %i.0
  %isZeros24 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter23, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros24, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter25, align 4
  %sub = sub i128 %total.0, %iszero.out.read_output_outter
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigiszero.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call29 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call29, i32 0, i32 0
  %iszero.in.read_input_outter33 = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter33, i128 %sub, i1* @constraint.83)
  %iszero.in.write_input_outter35 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call29, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter35, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call29, i32 0, i32 2
  %iszero.out.read_output_outter38 = load i128, i128* %struct_getter37, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %iszero.out.read_output_outter38, i1* @constraint.84)
  %bigiszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %iszero.out.read_output_outter38, i128* %bigiszero.out.write_output_inner, align 4
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  %bigiszero.out.read_output_inner = load i128, i128* %struct_getter42, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bigiszero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigiszero.k.read_arg_inner)
  %ptr_cast43 = bitcast [256 x %struct_template_circuit_iszero*]** %isZeros to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast43, i128 %bigiszero.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %bigiszero.out.write_output_inner45 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %bigiszero.out.read_output_inner, i128* %bigiszero.out.write_output_inner45, align 4
  ret void
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
  %struct_template_circuit_bigiszero = alloca %struct_template_circuit_bigiszero, align 8
  %bigiszero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero, i32 0, i32 0
  store i128 %0, i128* %bigiszero.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %aliascheck.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %aliascheck.in.read_input_inner, [256 x i128]** %aliascheck.in.declare_input, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %aliascheck.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in3 = load i128, i128* %array_getter, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i.0
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_utils_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.85)
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %compConstant12 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i.0
  store i128 %in3, i128* %compConstant12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 4
  %compconstant.out.read_output_outter = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.86)
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

define void @fn_template_init_bigmult(%struct_template_circuit_bigmult* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 0
  %bigmult.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 1
  %bigmult.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 2
  %bigmult.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmult.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmult.a.read_input_inner, [256 x i128]** %bigmult.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 3
  %bigmult.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmult.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmult.b.read_input_inner, [256 x i128]** %bigmult.b.declare_input, align 8
  %bigmult.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmult.out.declare_output, align 8
  %LOGK4 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  %mul = mul i128 2, %bigmult.k.read_arg_inner
  %call = call i128 @log_ceil(i128 %bigmult.k.read_arg_inner)
  %mul11 = mul i128 2, %bigmult.n.read_arg_inner
  %add = add i128 %mul11, %call
  %call13 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %bigmult.n.read_arg_inner, i128 %bigmult.k.read_arg_inner, i128 %add)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add39, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %bigmult.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a15 = load i128, i128* %array_getter, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call13, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter, i128 0, i128 %i.0
  %mult20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult20, i128 %a15, i1* @constraint.87)
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call13, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter22 = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %mult24 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter22, i128 0, i128 %i.0
  store i128 %a15, i128* %mult24, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmult.b.declare_input, align 8
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b27 = load i128, i128* %array_getter26, align 4
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call13, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter, i128 0, i128 %i.0
  %mult32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult32, i128 %b27, i1* @constraint.88)
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call13, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %mult37 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter35, i128 0, i128 %i.0
  store i128 %b27, i128* %mult37, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add39 = add i128 %i.0, 1
  %slt = icmp slt i128 %add39, %bigmult.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %mul44 = mul i128 2, %bigmult.k.read_arg_inner
  %sub = sub i128 %mul44, 1
  %call45 = call %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %bigmult.n.read_arg_inner, i128 %sub)
  br label %loop.body46

loop.body46:                                      ; preds = %loop.latch62, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add64, %loop.latch62 ]
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call13, i32 0, i32 5
  %bigmultshortlong.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.out.read_output_outter, i128 0, i128 %i.1
  %mult51 = load i128, i128* %array_getter50, align 4
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call45, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter53, align 8
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter, i128 0, i128 %i.1
  %longshort56 = load i128, i128* %array_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %longshort56, i128 %mult51, i1* @constraint.89)
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call45, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter59 = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %longshort61 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter59, i128 0, i128 %i.1
  store i128 %mult51, i128* %longshort61, align 4
  br label %loop.latch62

loop.latch62:                                     ; preds = %loop.body46
  %add64 = add i128 %i.1, 1
  %mul67 = mul i128 2, %bigmult.k.read_arg_inner
  %sub68 = sub i128 %mul67, 1
  %slt69 = icmp slt i128 %add64, %sub68
  br i1 %slt69, label %loop.body46, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch62
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch84, %loop.exit70
  %i.2 = phi i128 [ 0, %loop.exit70 ], [ %add86, %loop.latch84 ]
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call45, i32 0, i32 4
  %longtoshortnoendcarry.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter73, align 8
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.out.read_output_outter, i128 0, i128 %i.2
  %longshort76 = load i128, i128* %array_getter75, align 4
  %out77 = load [256 x i128]*, [256 x i128]** %bigmult.out.declare_output, align 8
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %out77, i128 0, i128 %i.2
  %out80 = load i128, i128* %array_getter79, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out80, i128 %longshort76, i1* @constraint.90)
  %ptr_getter81 = load [256 x i128]*, [256 x i128]** %bigmult.out.declare_output, align 8
  %out83 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter81, i128 0, i128 %i.2
  store i128 %longshort76, i128* %out83, align 4
  br label %loop.latch84

loop.latch84:                                     ; preds = %loop.body71
  %add86 = add i128 %i.2, 1
  %mul89 = mul i128 2, %bigmult.k.read_arg_inner
  %slt90 = icmp slt i128 %add86, %mul89
  br i1 %slt90, label %loop.body71, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch84
  br label %arraydim

arraydim:                                         ; preds = %loop.exit91
  %ptr_cast = bitcast [256 x i128]** %bigmult.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %mul)
  %ptr_cast92 = bitcast [256 x i128]** %bigmult.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast92, i128 %bigmult.k.read_arg_inner)
  %ptr_cast93 = bitcast [256 x i128]** %bigmult.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast93, i128 %bigmult.k.read_arg_inner)
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

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_modsub(%struct_template_circuit_modsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 0
  %modsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 1
  %modsub.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 2
  %modsub.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %borrow = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %modsub.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %modsub.n.read_arg_inner)
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %modsub.a.read_input_inner, i1* @constraint.91)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %modsub.a.read_input_inner, i128* %lt9, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter12 = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter12, i128 0, i128 1
  %lt14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt14, i128 %modsub.b.read_input_inner, i1* @constraint.92)
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter17, i128 0, i128 1
  store i128 %modsub.b.read_input_inner, i128* %lt18, align 4
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %borrow, i128 %lessthan.out.read_output_outter, i1* @constraint.93)
  %modsub.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %lessthan.out.read_output_outter, i128* %modsub.borrow.write_output_inner, align 4
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  %modsub.borrow.read_output_inner = load i128, i128* %struct_getter24, align 4
  %lshift = shl i128 1, %modsub.n.read_arg_inner
  %mul = mul i128 %modsub.borrow.read_output_inner, %lshift
  %add = add i128 %mul, %modsub.a.read_input_inner
  %sub = sub i128 %add, %modsub.b.read_input_inner
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %sub, i1* @constraint.94)
  %modsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %sub, i128* %modsub.out.write_output_inner, align 4
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  %modsub.out.read_output_inner = load i128, i128* %struct_getter32, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %arraydim
  %modsub.out.write_output_inner34 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %modsub.out.read_output_inner, i128* %modsub.out.write_output_inner34, align 4
  %modsub.borrow.write_output_inner36 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %modsub.borrow.read_output_inner, i128* %modsub.borrow.write_output_inner36, align 4
  ret void
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
  %struct_template_circuit_modsub = alloca %struct_template_circuit_modsub, align 8
  %modsub.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %struct_template_circuit_modsub, i32 0, i32 0
  store i128 %0, i128* %modsub.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsub* %struct_template_circuit_modsub
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %a_idx2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add62, %loop.latch60 ]
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val9, align 4
  %slt = icmp slt i128 %i.0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %sub31 = sub i128 %i.0, %1
  %add32 = add i128 %sub31, 1
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add26, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val14 = load i128, i128* %array_getter, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.0
  %a17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %i.0, %a_idx.0
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %add26 = add i128 %a_idx.0, 1
  %sle = icmp sle i128 %add26, %i.0
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %a_idx.1 = phi i128 [ %add32, %if.false ], [ %add55, %loop.latch53 ]
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.1
  %a41 = load i128, i128* %array_getter40, align 4
  %sub45 = sub i128 %i.0, %a_idx.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %add55 = add i128 %a_idx.1, 1
  %slt58 = icmp slt i128 %add55, %1
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %add62 = add i128 %i.0, 1
  %mul65 = mul i128 2, %1
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %add62, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %i.1 = phi i128 [ 0, %loop.exit68 ], [ %add83, %loop.latch81 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %call = call [256 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %0, i128 %0, i128 %0)
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.1
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %add83 = add i128 %i.1, 1
  %mul86 = mul i128 2, %1
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %add83, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %mul101 = mul i128 2, %1
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %call112 = call [256 x i128]* @SplitFn(i128 %add109, i128 %0, i128 %0)
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %call112, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %call112, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %mul127 = mul i128 2, %1
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit202

loop.body130:                                     ; preds = %loop.latch168, %if.true124
  %i.2 = phi i128 [ 2, %if.true124 ], [ %add170, %loop.latch168 ]
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.2, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %sub137 = sub i128 %i.2, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %sub143 = sub i128 %i.2, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %sub149 = sub i128 %i.2, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %call155 = call [256 x i128]* @SplitFn(i128 %add152, i128 %0, i128 %0)
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %call155, i128 0, i128 0
  %sumAndCarry158 = load i128, i128* %array_getter157, align 4
  %out161 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %i.2
  store i128 %sumAndCarry158, i128* %out161, align 4
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %call155, i128 0, i128 1
  %sumAndCarry164 = load i128, i128* %array_getter163, align 4
  %carry167 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %i.2
  store i128 %sumAndCarry164, i128* %carry167, align 4
  br label %loop.latch168

loop.latch168:                                    ; preds = %loop.body130
  %add170 = add i128 %i.2, 1
  %mul173 = mul i128 2, %1
  %sub174 = sub i128 %mul173, 1
  %slt175 = icmp slt i128 %add170, %sub174
  br i1 %slt175, label %loop.body130, label %loop.exit176

loop.exit176:                                     ; preds = %loop.latch168
  %mul179 = mul i128 2, %1
  %sub180 = sub i128 %mul179, 2
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub180, i128 1
  %split182 = load i128, i128* %array_getter181, align 4
  %mul185 = mul i128 2, %1
  %sub186 = sub i128 %mul185, 3
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %split182, %split188
  %mul192 = mul i128 2, %1
  %sub193 = sub i128 %mul192, 2
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %mul199 = mul i128 2, %1
  %sub200 = sub i128 %mul199, 1
  %out201 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %sub200
  store i128 %add196, i128* %out201, align 4
  br label %if.exit202

if.exit202:                                       ; preds = %loop.exit176, %if.false125
  ret [256 x i128]* %uniform_array69
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %scale2 = call i128 @fn_intrinsic_utils_init()
  %ret4 = call i128 @fn_intrinsic_utils_init()
  %lshift = shl i128 1, %0
  %sub = sub i128 %1, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  %add8 = add i128 %1, 1
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %add8, i128 %sdiv, [256 x i128]* %2)
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %sdiv, [256 x i128]* %3)
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call14, i128 0, i128 %1
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add21 = add i128 %1, 1
  %call24 = call i128 @short_div_norm(i128 %0, i128 %add21, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.false:                                         ; preds = %entry
  %call29 = call i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret.0 = phi i128 [ %call24, %if.true ], [ %call29, %if.false ]
  ret i128 %ret.0
}

define void @fn_template_init_bigisequal(%struct_template_circuit_bigisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 0
  %bigisequal.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 1
  %bigisequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %bigisequal.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigisequal.a.read_input_inner, [256 x i128]** %bigisequal.a.declare_input, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 2
  %bigisequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigisequal.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigisequal.b.read_input_inner, [256 x i128]** %bigisequal.b.declare_input, align 8
  %isEquals = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %isEquals3 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %isEquals3, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %total4 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %total.0 = phi i128 [ %bigisequal.k.read_arg_inner, %entry ], [ %sub, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %isEquals10 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_isequal* %call, %struct_template_circuit_isequal** %isEquals10, align 8
  %a = load [256 x i128]*, [256 x i128]** %bigisequal.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter, align 4
  %isEquals13 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %array_getter15 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals13, i128 0, i128 %i.0
  %isEquals16 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter15, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals16, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %isEquals19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEquals19, i128 %a12, i1* @constraint.95)
  %ptr_getter20 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %array_getter22 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter20, i128 0, i128 %i.0
  %isEquals23 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals23, i32 0, i32 0
  %isequal.in.read_input_outter25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %isEquals26 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter25, i128 0, i128 0
  store i128 %a12, i128* %isEquals26, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigisequal.b.declare_input, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b29 = load i128, i128* %array_getter28, align 4
  %isEquals30 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals30, i128 0, i128 %i.0
  %isEquals33 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals33, i32 0, i32 0
  %isequal.in.read_input_outter35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter35, i128 0, i128 1
  %isEquals37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEquals37, i128 %b29, i1* @constraint.96)
  %ptr_getter38 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %array_getter40 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter38, i128 0, i128 %i.0
  %isEquals41 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter40, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals41, i32 0, i32 0
  %isequal.in.read_input_outter43 = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %isEquals44 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter43, i128 0, i128 1
  store i128 %b29, i128* %isEquals44, align 4
  %isEquals46 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals46, i128 0, i128 %i.0
  %isEquals49 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter48, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals49, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter50, align 4
  %sub = sub i128 %total.0, %isequal.out.read_output_outter
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigisequal.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call54 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call54, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.97)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call54, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call54, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter60, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.98)
  %bigisequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %iszero.out.read_output_outter, i128* %bigisequal.out.write_output_inner, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  %bigisequal.out.read_output_inner = load i128, i128* %struct_getter64, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bigisequal.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigisequal.k.read_arg_inner)
  %ptr_cast65 = bitcast [256 x i128]** %bigisequal.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast65, i128 %bigisequal.k.read_arg_inner)
  %ptr_cast66 = bitcast [256 x %struct_template_circuit_isequal*]** %isEquals to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast66, i128 %bigisequal.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %bigisequal.out.write_output_inner68 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %bigisequal.out.read_output_inner, i128* %bigisequal.out.write_output_inner68, align 4
  ret void
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
  %struct_template_circuit_bigisequal = alloca %struct_template_circuit_bigisequal, align 8
  %bigisequal.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal, i32 0, i32 0
  store i128 %0, i128* %bigisequal.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %greaterthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %greaterthan.in.read_input_inner, [256 x i128]** %greaterthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greaterthan.n.read_arg_inner)
  %in = load [256 x i128]*, [256 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.99)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %greaterthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %in12, i1* @constraint.100)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.101)
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %greaterthan.in.declare_input to i128*
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

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %bits2num_strict.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bits2num_strict.in.read_input_inner, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in4 = load i128, i128* %array_getter, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_utils_constraint(i128 %b2n9, i128 %in4, i1* @constraint.102)
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %b2n13 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i.0
  store i128 %in4, i128* %b2n13, align 4
  %in14 = load [256 x i128]*, [256 x i128]** %bits2num_strict.in.declare_input, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %in14, i128 0, i128 %i.0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.103)
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %aliasCheck27 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i.0
  store i128 %in17, i128* %aliasCheck27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.104)
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bits2num_strict.in.declare_input to i128*
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

define void @fn_template_init_bigadd(%struct_template_circuit_bigadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 0
  %bigadd.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 1
  %bigadd.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 2
  %bigadd.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigadd.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigadd.a.read_input_inner, [256 x i128]** %bigadd.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 3
  %bigadd.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigadd.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigadd.b.read_input_inner, [256 x i128]** %bigadd.b.declare_input, align 8
  %unit = alloca [256 x %struct_template_circuit_modsumthree*]*, align 8
  %unit4 = alloca [256 x %struct_template_circuit_modsumthree*], align 8
  store [256 x %struct_template_circuit_modsumthree*]* %unit4, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %bigadd.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigadd.out.declare_output, align 8
  %sle = icmp sle i128 %bigadd.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %add = add i128 %bigadd.k.read_arg_inner, 1
  %call = call %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %bigadd.n.read_arg_inner)
  %a = load [256 x i128]*, [256 x i128]** %bigadd.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 1
  %modsum.a.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsum.a.read_input_outter, i128 %a9, i1* @constraint.105)
  %modsum.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 1
  store i128 %a9, i128* %modsum.a.write_input_outter, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigadd.b.declare_input, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b13 = load i128, i128* %array_getter12, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 2
  %modsum.b.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsum.b.read_input_outter, i128 %b13, i1* @constraint.106)
  %modsum.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 2
  store i128 %b13, i128* %modsum.b.write_input_outter, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 3
  %modsum.sum.read_output_outter = load i128, i128* %struct_getter18, align 4
  %out19 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out19, i128 0, i128 0
  %out21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out21, i128 %modsum.sum.read_output_outter, i1* @constraint.107)
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %out23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 0
  store i128 %modsum.sum.read_output_outter, i128* %out23, align 4
  %sub = sub i128 %bigadd.k.read_arg_inner, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add108, %loop.latch ]
  %call26 = call %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %bigadd.n.read_arg_inner)
  %ptr_getter27 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub29 = sub i128 %i.0, 1
  %unit30 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter27, i128 0, i128 %sub29
  store %struct_template_circuit_modsumthree* %call26, %struct_template_circuit_modsumthree** %unit30, align 8
  %a31 = load [256 x i128]*, [256 x i128]** %bigadd.a.declare_input, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %i.0
  %a34 = load i128, i128* %array_getter33, align 4
  %unit35 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub37 = sub i128 %i.0, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit39, i32 0, i32 1
  %modsumthree.a.read_input_outter = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.a.read_input_outter, i128 %a34, i1* @constraint.108)
  %ptr_getter41 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub43 = sub i128 %i.0, 1
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter41, i128 0, i128 %sub43
  %unit45 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter44, align 8
  %modsumthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit45, i32 0, i32 1
  store i128 %a34, i128* %modsumthree.a.write_input_outter, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %bigadd.b.declare_input, align 8
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i.0
  %b49 = load i128, i128* %array_getter48, align 4
  %unit50 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub52 = sub i128 %i.0, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit54, i32 0, i32 2
  %modsumthree.b.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.b.read_input_outter, i128 %b49, i1* @constraint.109)
  %ptr_getter56 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub58 = sub i128 %i.0, 1
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter56, i128 0, i128 %sub58
  %unit60 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter59, align 8
  %modsumthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit60, i32 0, i32 2
  store i128 %b49, i128* %modsumthree.b.write_input_outter, align 4
  %eq = icmp eq i128 %i.0, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 4
  %modsum.carry.read_output_outter = load i128, i128* %struct_getter63, align 4
  %unit64 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub66 = sub i128 %i.0, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit68, i32 0, i32 3
  %modsumthree.c.read_input_outter = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.c.read_input_outter, i128 %modsum.carry.read_output_outter, i1* @constraint.110)
  %ptr_getter70 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub72 = sub i128 %i.0, 1
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter73, align 8
  %modsumthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit74, i32 0, i32 3
  store i128 %modsum.carry.read_output_outter, i128* %modsumthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit75 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub77 = sub i128 %i.0, 2
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit75, i128 0, i128 %sub77
  %unit79 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit79, i32 0, i32 5
  %modsumthree.carry.read_output_outter = load i128, i128* %struct_getter80, align 4
  %unit81 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub83 = sub i128 %i.0, 1
  %array_getter84 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit81, i128 0, i128 %sub83
  %unit85 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter84, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit85, i32 0, i32 3
  %modsumthree.c.read_input_outter87 = load i128, i128* %struct_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsumthree.c.read_input_outter87, i128 %modsumthree.carry.read_output_outter, i1* @constraint.111)
  %ptr_getter88 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub90 = sub i128 %i.0, 1
  %array_getter91 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter88, i128 0, i128 %sub90
  %unit92 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter91, align 8
  %modsumthree.c.write_input_outter93 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit92, i32 0, i32 3
  store i128 %modsumthree.carry.read_output_outter, i128* %modsumthree.c.write_input_outter93, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit94 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub96 = sub i128 %i.0, 1
  %array_getter97 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit94, i128 0, i128 %sub96
  %unit98 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter97, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit98, i32 0, i32 4
  %modsumthree.sum.read_output_outter = load i128, i128* %struct_getter99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %out100, i128 0, i128 %i.0
  %out103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out103, i128 %modsumthree.sum.read_output_outter, i1* @constraint.112)
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %out106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i.0
  store i128 %modsumthree.sum.read_output_outter, i128* %out106, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add108 = add i128 %i.0, 1
  %slt = icmp slt i128 %add108, %bigadd.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit111 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %sub113 = sub i128 %bigadd.k.read_arg_inner, 2
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit111, i128 0, i128 %sub113
  %unit115 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit115, i32 0, i32 5
  %modsumthree.carry.read_output_outter117 = load i128, i128* %struct_getter116, align 4
  %out118 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %out118, i128 0, i128 %bigadd.k.read_arg_inner
  %out121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out121, i128 %modsumthree.carry.read_output_outter117, i1* @constraint.113)
  %ptr_getter122 = load [256 x i128]*, [256 x i128]** %bigadd.out.declare_output, align 8
  %out124 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter122, i128 0, i128 %bigadd.k.read_arg_inner
  store i128 %modsumthree.carry.read_output_outter117, i128* %out124, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bigadd.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigadd.k.read_arg_inner)
  %ptr_cast125 = bitcast [256 x i128]** %bigadd.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast125, i128 %add)
  %ptr_cast126 = bitcast [256 x i128]** %bigadd.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast126, i128 %bigadd.k.read_arg_inner)
  %ptr_cast127 = bitcast [256 x %struct_template_circuit_modsumthree*]** %unit to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast127, i128 %sub)
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

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %lesseqthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %lesseqthan.in.read_input_inner, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %lesseqthan.n.read_arg_inner)
  %in = load [256 x i128]*, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.114)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %lesseqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.115)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.116)
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %lesseqthan.in.declare_input to i128*
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

define void @fn_template_init_biglessthan(%struct_template_circuit_biglessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 0
  %biglessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 1
  %biglessthan.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 2
  %biglessthan.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %biglessthan.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %biglessthan.a.read_input_inner, [256 x i128]** %biglessthan.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 3
  %biglessthan.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %biglessthan.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %biglessthan.b.read_input_inner, [256 x i128]** %biglessthan.b.declare_input, align 8
  %lt = alloca [256 x %struct_template_circuit_lessthan*]*, align 8
  %lt4 = alloca [256 x %struct_template_circuit_lessthan*], align 8
  store [256 x %struct_template_circuit_lessthan*]* %lt4, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %ors = alloca [256 x %struct_template_circuit_or*]*, align 8
  %ors6 = alloca [256 x %struct_template_circuit_or*], align 8
  store [256 x %struct_template_circuit_or*]* %ors6, [256 x %struct_template_circuit_or*]** %ors, align 8
  %eq = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %eq7 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %eq7, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %ands8 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %ands8, [256 x %struct_template_circuit_and*]** %ands, align 8
  %eq_ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %eq_ands9 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %eq_ands9, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %biglessthan.n.read_arg_inner)
  %ptr_getter = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %lt14 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt14, align 8
  %a = load [256 x i128]*, [256 x i128]** %biglessthan.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter, align 4
  %lt17 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %array_getter19 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt17, i128 0, i128 %i.0
  %lt20 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter19, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt20, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt23, i128 %a16, i1* @constraint.117)
  %ptr_getter24 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %array_getter26 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter24, i128 0, i128 %i.0
  %lt27 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter26, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt27, i32 0, i32 1
  %lessthan.in.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %lt30 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter29, i128 0, i128 0
  store i128 %a16, i128* %lt30, align 4
  %b = load [256 x i128]*, [256 x i128]** %biglessthan.b.declare_input, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b33 = load i128, i128* %array_getter32, align 4
  %lt34 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt34, i128 0, i128 %i.0
  %lt37 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter36, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt37, i32 0, i32 1
  %lessthan.in.read_input_outter39 = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter39, i128 0, i128 1
  %lt41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt41, i128 %b33, i1* @constraint.118)
  %ptr_getter42 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter42, i128 0, i128 %i.0
  %lt45 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter44, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt45, i32 0, i32 1
  %lessthan.in.read_input_outter47 = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %lt48 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter47, i128 0, i128 1
  store i128 %b33, i128* %lt48, align 4
  %call49 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter50 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %eq52 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter50, i128 0, i128 %i.0
  store %struct_template_circuit_isequal* %call49, %struct_template_circuit_isequal** %eq52, align 8
  %a53 = load [256 x i128]*, [256 x i128]** %biglessthan.a.declare_input, align 8
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %a53, i128 0, i128 %i.0
  %a56 = load i128, i128* %array_getter55, align 4
  %eq57 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq57, i128 0, i128 %i.0
  %eq60 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter59, align 8
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq60, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter61, align 8
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %eq63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_utils_constraint(i128 %eq63, i128 %a56, i1* @constraint.119)
  %ptr_getter64 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %array_getter66 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter64, i128 0, i128 %i.0
  %eq67 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter66, align 8
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq67, i32 0, i32 0
  %isequal.in.read_input_outter69 = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %eq70 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter69, i128 0, i128 0
  store i128 %a56, i128* %eq70, align 4
  %b71 = load [256 x i128]*, [256 x i128]** %biglessthan.b.declare_input, align 8
  %array_getter73 = getelementptr inbounds [256 x i128], [256 x i128]* %b71, i128 0, i128 %i.0
  %b74 = load i128, i128* %array_getter73, align 4
  %eq75 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %array_getter77 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq75, i128 0, i128 %i.0
  %eq78 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter77, align 8
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq78, i32 0, i32 0
  %isequal.in.read_input_outter80 = load [256 x i128]*, [256 x i128]** %struct_getter79, align 8
  %array_getter81 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter80, i128 0, i128 1
  %eq82 = load i128, i128* %array_getter81, align 4
  call void @fn_intrinsic_utils_constraint(i128 %eq82, i128 %b74, i1* @constraint.120)
  %ptr_getter83 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter83, i128 0, i128 %i.0
  %eq86 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter85, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq86, i32 0, i32 0
  %isequal.in.read_input_outter88 = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %eq89 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter88, i128 0, i128 1
  store i128 %b74, i128* %eq89, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %biglessthan.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub = sub i128 %biglessthan.k.read_arg_inner, 1
  %sub95 = sub i128 %biglessthan.k.read_arg_inner, 1
  %sub97 = sub i128 %biglessthan.k.read_arg_inner, 1
  %sub99 = sub i128 %biglessthan.k.read_arg_inner, 2
  br label %loop.body100

loop.body100:                                     ; preds = %loop.latch317, %loop.exit
  %i.1 = phi i128 [ %sub99, %loop.exit ], [ %sub319, %loop.latch317 ]
  %call101 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter102 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %ands104 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter102, i128 0, i128 %i.1
  store %struct_template_circuit_and* %call101, %struct_template_circuit_and** %ands104, align 8
  %call105 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter106 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %eq_ands108 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter106, i128 0, i128 %i.1
  store %struct_template_circuit_and* %call105, %struct_template_circuit_and** %eq_ands108, align 8
  %call109 = call %struct_template_circuit_or* @fn_template_build_or()
  %ptr_getter110 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %ors112 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter110, i128 0, i128 %i.1
  store %struct_template_circuit_or* %call109, %struct_template_circuit_or** %ors112, align 8
  %sub115 = sub i128 %biglessthan.k.read_arg_inner, 2
  %eq116 = icmp eq i128 %i.1, %sub115
  br i1 %eq116, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body100
  %eq117 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %sub119 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter120 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq117, i128 0, i128 %sub119
  %eq121 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter120, align 8
  %struct_getter122 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq121, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter122, align 4
  %ands123 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter125 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands123, i128 0, i128 %i.1
  %ands126 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter125, align 8
  %struct_getter127 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands126, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter127, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter, i128 %isequal.out.read_output_outter, i1* @constraint.121)
  %ptr_getter128 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter130 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter128, i128 0, i128 %i.1
  %ands131 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter130, align 8
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands131, i32 0, i32 0
  store i128 %isequal.out.read_output_outter, i128* %and.a.write_input_outter, align 4
  %lt132 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %sub134 = sub i128 %biglessthan.k.read_arg_inner, 2
  %array_getter135 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt132, i128 0, i128 %sub134
  %lt136 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter135, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt136, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter137, align 4
  %ands138 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter140 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands138, i128 0, i128 %i.1
  %ands141 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter140, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands141, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter142, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter, i128 %lessthan.out.read_output_outter, i1* @constraint.122)
  %ptr_getter143 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter145 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter143, i128 0, i128 %i.1
  %ands146 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter145, align 8
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands146, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter, i128* %and.b.write_input_outter, align 4
  %eq147 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %sub149 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter150 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq147, i128 0, i128 %sub149
  %eq151 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter150, align 8
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq151, i32 0, i32 1
  %isequal.out.read_output_outter153 = load i128, i128* %struct_getter152, align 4
  %eq_ands154 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter156 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands154, i128 0, i128 %i.1
  %eq_ands157 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter156, align 8
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands157, i32 0, i32 0
  %and.a.read_input_outter159 = load i128, i128* %struct_getter158, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter159, i128 %isequal.out.read_output_outter153, i1* @constraint.123)
  %ptr_getter160 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter162 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter160, i128 0, i128 %i.1
  %eq_ands163 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter162, align 8
  %and.a.write_input_outter164 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands163, i32 0, i32 0
  store i128 %isequal.out.read_output_outter153, i128* %and.a.write_input_outter164, align 4
  %eq165 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %sub167 = sub i128 %biglessthan.k.read_arg_inner, 2
  %array_getter168 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq165, i128 0, i128 %sub167
  %eq169 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter168, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq169, i32 0, i32 1
  %isequal.out.read_output_outter171 = load i128, i128* %struct_getter170, align 4
  %eq_ands172 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter174 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands172, i128 0, i128 %i.1
  %eq_ands175 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands175, i32 0, i32 1
  %and.b.read_input_outter177 = load i128, i128* %struct_getter176, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter177, i128 %isequal.out.read_output_outter171, i1* @constraint.124)
  %ptr_getter178 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter180 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter178, i128 0, i128 %i.1
  %eq_ands181 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter180, align 8
  %and.b.write_input_outter182 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands181, i32 0, i32 1
  store i128 %isequal.out.read_output_outter171, i128* %and.b.write_input_outter182, align 4
  %lt183 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %sub185 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter186 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt183, i128 0, i128 %sub185
  %lt187 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter186, align 8
  %struct_getter188 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt187, i32 0, i32 2
  %lessthan.out.read_output_outter189 = load i128, i128* %struct_getter188, align 4
  %ors190 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter192 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors190, i128 0, i128 %i.1
  %ors193 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter192, align 8
  %struct_getter194 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors193, i32 0, i32 0
  %or.a.read_input_outter = load i128, i128* %struct_getter194, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.a.read_input_outter, i128 %lessthan.out.read_output_outter189, i1* @constraint.125)
  %ptr_getter195 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter197 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter195, i128 0, i128 %i.1
  %ors198 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter197, align 8
  %or.a.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors198, i32 0, i32 0
  store i128 %lessthan.out.read_output_outter189, i128* %or.a.write_input_outter, align 4
  %ands199 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter201 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands199, i128 0, i128 %i.1
  %ands202 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter201, align 8
  %struct_getter203 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands202, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter203, align 4
  %ors204 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter206 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors204, i128 0, i128 %i.1
  %ors207 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter206, align 8
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors207, i32 0, i32 1
  %or.b.read_input_outter = load i128, i128* %struct_getter208, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.b.read_input_outter, i128 %and.out.read_output_outter, i1* @constraint.126)
  %ptr_getter209 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter211 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter209, i128 0, i128 %i.1
  %ors212 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter211, align 8
  %or.b.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors212, i32 0, i32 1
  store i128 %and.out.read_output_outter, i128* %or.b.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body100
  %eq_ands213 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %add215 = add i128 %i.1, 1
  %array_getter216 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands213, i128 0, i128 %add215
  %eq_ands217 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter216, align 8
  %struct_getter218 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands217, i32 0, i32 2
  %and.out.read_output_outter219 = load i128, i128* %struct_getter218, align 4
  %ands220 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter222 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands220, i128 0, i128 %i.1
  %ands223 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter222, align 8
  %struct_getter224 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands223, i32 0, i32 0
  %and.a.read_input_outter225 = load i128, i128* %struct_getter224, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter225, i128 %and.out.read_output_outter219, i1* @constraint.127)
  %ptr_getter226 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter228 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter226, i128 0, i128 %i.1
  %ands229 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter228, align 8
  %and.a.write_input_outter230 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands229, i32 0, i32 0
  store i128 %and.out.read_output_outter219, i128* %and.a.write_input_outter230, align 4
  %lt231 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %array_getter233 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt231, i128 0, i128 %i.1
  %lt234 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter233, align 8
  %struct_getter235 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt234, i32 0, i32 2
  %lessthan.out.read_output_outter236 = load i128, i128* %struct_getter235, align 4
  %ands237 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter239 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands237, i128 0, i128 %i.1
  %ands240 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands240, i32 0, i32 1
  %and.b.read_input_outter242 = load i128, i128* %struct_getter241, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter242, i128 %lessthan.out.read_output_outter236, i1* @constraint.128)
  %ptr_getter243 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter245 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter243, i128 0, i128 %i.1
  %ands246 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter245, align 8
  %and.b.write_input_outter247 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands246, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter236, i128* %and.b.write_input_outter247, align 4
  %eq_ands248 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %add250 = add i128 %i.1, 1
  %array_getter251 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands248, i128 0, i128 %add250
  %eq_ands252 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter251, align 8
  %struct_getter253 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands252, i32 0, i32 2
  %and.out.read_output_outter254 = load i128, i128* %struct_getter253, align 4
  %eq_ands255 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter257 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands255, i128 0, i128 %i.1
  %eq_ands258 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter257, align 8
  %struct_getter259 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands258, i32 0, i32 0
  %and.a.read_input_outter260 = load i128, i128* %struct_getter259, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.a.read_input_outter260, i128 %and.out.read_output_outter254, i1* @constraint.129)
  %ptr_getter261 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter263 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter261, i128 0, i128 %i.1
  %eq_ands264 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter263, align 8
  %and.a.write_input_outter265 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands264, i32 0, i32 0
  store i128 %and.out.read_output_outter254, i128* %and.a.write_input_outter265, align 4
  %eq266 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %array_getter268 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq266, i128 0, i128 %i.1
  %eq269 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter268, align 8
  %struct_getter270 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq269, i32 0, i32 1
  %isequal.out.read_output_outter271 = load i128, i128* %struct_getter270, align 4
  %eq_ands272 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter274 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands272, i128 0, i128 %i.1
  %eq_ands275 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter274, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands275, i32 0, i32 1
  %and.b.read_input_outter277 = load i128, i128* %struct_getter276, align 4
  call void @fn_intrinsic_utils_constraint(i128 %and.b.read_input_outter277, i128 %isequal.out.read_output_outter271, i1* @constraint.130)
  %ptr_getter278 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %array_getter280 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter278, i128 0, i128 %i.1
  %eq_ands281 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter280, align 8
  %and.b.write_input_outter282 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands281, i32 0, i32 1
  store i128 %isequal.out.read_output_outter271, i128* %and.b.write_input_outter282, align 4
  %ors283 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %add285 = add i128 %i.1, 1
  %array_getter286 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors283, i128 0, i128 %add285
  %ors287 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter286, align 8
  %struct_getter288 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors287, i32 0, i32 2
  %or.out.read_output_outter = load i128, i128* %struct_getter288, align 4
  %ors289 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter291 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors289, i128 0, i128 %i.1
  %ors292 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors292, i32 0, i32 0
  %or.a.read_input_outter294 = load i128, i128* %struct_getter293, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.a.read_input_outter294, i128 %or.out.read_output_outter, i1* @constraint.131)
  %ptr_getter295 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter297 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter295, i128 0, i128 %i.1
  %ors298 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter297, align 8
  %or.a.write_input_outter299 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors298, i32 0, i32 0
  store i128 %or.out.read_output_outter, i128* %or.a.write_input_outter299, align 4
  %ands300 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %array_getter302 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands300, i128 0, i128 %i.1
  %ands303 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter302, align 8
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands303, i32 0, i32 2
  %and.out.read_output_outter305 = load i128, i128* %struct_getter304, align 4
  %ors306 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter308 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors306, i128 0, i128 %i.1
  %ors309 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter308, align 8
  %struct_getter310 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors309, i32 0, i32 1
  %or.b.read_input_outter311 = load i128, i128* %struct_getter310, align 4
  call void @fn_intrinsic_utils_constraint(i128 %or.b.read_input_outter311, i128 %and.out.read_output_outter305, i1* @constraint.132)
  %ptr_getter312 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter314 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter312, i128 0, i128 %i.1
  %ors315 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter314, align 8
  %or.b.write_input_outter316 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors315, i32 0, i32 1
  store i128 %and.out.read_output_outter305, i128* %or.b.write_input_outter316, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch317

loop.latch317:                                    ; preds = %if.exit
  %sub319 = sub i128 %i.1, 1
  %sge = icmp sge i128 %sub319, 0
  br i1 %sge, label %loop.body100, label %loop.exit321

loop.exit321:                                     ; preds = %loop.latch317
  %ors322 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter323 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors322, i128 0, i128 0
  %ors324 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter323, align 8
  %struct_getter325 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors324, i32 0, i32 2
  %or.out.read_output_outter326 = load i128, i128* %struct_getter325, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %or.out.read_output_outter326, i1* @constraint.133)
  %biglessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %or.out.read_output_outter326, i128* %biglessthan.out.write_output_inner, align 4
  %struct_getter330 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  %biglessthan.out.read_output_inner = load i128, i128* %struct_getter330, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit321
  %ptr_cast = bitcast [256 x %struct_template_circuit_and*]** %ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sub95)
  %ptr_cast331 = bitcast [256 x %struct_template_circuit_isequal*]** %eq to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast331, i128 %biglessthan.k.read_arg_inner)
  %ptr_cast332 = bitcast [256 x %struct_template_circuit_lessthan*]** %lt to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast332, i128 %biglessthan.k.read_arg_inner)
  %ptr_cast333 = bitcast [256 x i128]** %biglessthan.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast333, i128 %biglessthan.k.read_arg_inner)
  %ptr_cast334 = bitcast [256 x i128]** %biglessthan.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast334, i128 %biglessthan.k.read_arg_inner)
  %ptr_cast335 = bitcast [256 x %struct_template_circuit_or*]** %ors to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast335, i128 %sub)
  %ptr_cast336 = bitcast [256 x %struct_template_circuit_and*]** %eq_ands to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast336, i128 %sub97)
  br label %exit

exit:                                             ; preds = %arraydim
  %biglessthan.out.write_output_inner338 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %biglessthan.out.read_output_inner, i128* %biglessthan.out.write_output_inner338, align 4
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

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %num2bits_strict.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %i1 = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.134)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b8 = load i128, i128* %array_getter, align 4
  %out9 = load [256 x i128]*, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %out9, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out12, i128 %n2b8, i1* @constraint.135)
  %ptr_getter13 = load [256 x i128]*, [256 x i128]** %num2bits_strict.out.declare_output, align 8
  %out15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter13, i128 0, i128 %i.0
  store i128 %n2b8, i128* %out15, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i.0
  %n2b21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.136)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %aliasCheck31 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i.0
  store i128 %n2b21, i128* %aliasCheck31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
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

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %greatereqthan.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %greatereqthan.in.read_input_inner, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greatereqthan.n.read_arg_inner)
  %in = load [256 x i128]*, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt6, i128 %in2, i1* @constraint.137)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %greatereqthan.in.declare_input, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt17, i128 %add, i1* @constraint.138)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.139)
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %arraydim

arraydim:                                         ; preds = %entry
  %ptr_cast = bitcast [256 x i128]** %greatereqthan.in.declare_input to i128*
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

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %j4 = call i128 @fn_intrinsic_utils_init()
  %i5 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add15 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %remainder.0 = phi [256 x i128]* [ %uniform_array8, %loop.exit ], [ %call116, %loop.latch117 ]
  %i.1 = phi i128 [ %2, %loop.exit ], [ %sub119, %loop.latch117 ]
  %eq = icmp eq i128 %i.1, %2
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %1
  store i128 0, i128* %dividend23, align 4
  %sub = sub i128 %1, 1
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %j.0 = phi i128 [ %sub, %if.true ], [ %sub37, %loop.latch35 ]
  %add29 = add i128 %j.0, %2
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.0
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %sub37 = sub i128 %j.0, 1
  %sge = icmp sge i128 %sub37, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %j.1 = phi i128 [ %1, %if.false ], [ %sub53, %loop.latch51 ]
  %add45 = add i128 %j.1, %i.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.1
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %sub53 = sub i128 %j.1, 1
  %sge55 = icmp sge i128 %sub53, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %call = call i128 @short_div(i128 %0, i128 %1, [256 x i128]* %uniform_array16, [256 x i128]* %4)
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  store i128 %call, i128* %out61, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  %out67 = load i128, i128* %array_getter66, align 4
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %out67, [256 x i128]* %4)
  %uniform_array70 = alloca [256 x i128], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %j.2 = phi i128 [ 0, %if.exit ], [ %add77, %loop.latch75 ]
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %j.2
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %add77 = add i128 %j.2, 1
  %add81 = add i128 %2, %1
  %slt82 = icmp slt i128 %add77, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %j.3 = phi i128 [ 0, %loop.exit83 ], [ %add106, %loop.latch104 ]
  %add89 = add i128 %i.1, %j.3
  %add92 = add i128 %2, %1
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %call69, i128 0, i128 %j.3
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %add101 = add i128 %i.1, %j.3
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %add106 = add i128 %j.3, 1
  %sle = icmp sle i128 %add106, %1
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %add113 = add i128 %2, %1
  %call116 = call [256 x i128]* @long_sub(i128 %0, i128 %add113, [256 x i128]* %remainder.0, [256 x i128]* %uniform_array70)
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %sub119 = sub i128 %i.1, 1
  %sge121 = icmp sge i128 %sub119, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %i.2 = phi i128 [ 0, %loop.exit122 ], [ %add133, %loop.latch131 ]
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %call116, i128 0, i128 %i.2
  %remainder127 = load i128, i128* %array_getter126, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.2
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %add133 = add i128 %i.2, 1
  %slt136 = icmp slt i128 %add133, %1
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out140, align 4
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_fpsgn0(%struct_template_circuit_fpsgn0* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 0
  %fpsgn0.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 1
  %fpsgn0.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 2
  %fpsgn0.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 3
  %fpsgn0.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpsgn0.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpsgn0.in.read_input_inner, [256 x i128]** %fpsgn0.in.declare_input, align 8
  %div = call i128 @fn_intrinsic_utils_init()
  %i4 = call i128 @fn_intrinsic_utils_init()
  %r5 = call i128 @fn_intrinsic_utils_init()
  %q6 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpsgn0.n.read_arg_inner, i128 %fpsgn0.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %fpsgn0.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.0
  %lt14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt14, i128 %in9, i1* @constraint.140)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter16, i128 0, i128 %i.0
  store i128 %in9, i128* %lt18, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.p.read_arg_inner, i128 0, i128 %i.0
  %p21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.0
  %lt26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt26, i128 %p21, i1* @constraint.141)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %lt31 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter29, i128 0, i128 %i.0
  store i128 %p21, i128* %lt31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %fpsgn0.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter36, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.142)
  %in37 = load [256 x i128]*, [256 x i128]** %fpsgn0.in.declare_input, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %in37, i128 0, i128 0
  %in39 = load i128, i128* %array_getter38, align 4
  %mod = srem i128 %in39, 2
  %in40 = load [256 x i128]*, [256 x i128]** %fpsgn0.in.declare_input, align 8
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %in40, i128 0, i128 0
  %in42 = load i128, i128* %array_getter41, align 4
  %sub = sub i128 %in42, %mod
  %sdiv = sdiv i128 %sub, 2
  %fpsgn0.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  store i128 %mod, i128* %fpsgn0.out.write_output_inner, align 4
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  %fpsgn0.out.read_output_inner = load i128, i128* %struct_getter47, align 4
  %fpsgn0.div.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %sdiv, i128* %fpsgn0.div.write_inter_inner, align 4
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  %fpsgn0.div.read_inter_inner = load i128, i128* %struct_getter51, align 4
  %sub54 = sub i128 1, %fpsgn0.out.read_output_inner
  %mul = mul i128 %fpsgn0.out.read_output_inner, %sub54
  call void @fn_intrinsic_utils_constraint(i128 %mul, i128 0, i1* @constraint.143)
  %in55 = load [256 x i128]*, [256 x i128]** %fpsgn0.in.declare_input, align 8
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %in55, i128 0, i128 0
  %in57 = load i128, i128* %array_getter56, align 4
  %mul59 = mul i128 2, %fpsgn0.div.read_inter_inner
  %add61 = add i128 %mul59, %fpsgn0.out.read_output_inner
  call void @fn_intrinsic_utils_constraint(i128 %in57, i128 %add61, i1* @constraint.144)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %fpsgn0.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpsgn0.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %fpsgn0.div.write_inter_inner63 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %fpsgn0.div.read_inter_inner, i128* %fpsgn0.div.write_inter_inner63, align 4
  %fpsgn0.out.write_output_inner65 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  store i128 %fpsgn0.out.read_output_inner, i128* %fpsgn0.out.write_output_inner65, align 4
  ret void
}

define %struct_template_circuit_fpsgn0* @fn_template_build_fpsgn0(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsgn0 = alloca %struct_template_circuit_fpsgn0, align 8
  %fpsgn0.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 0
  store i128 %0, i128* %fpsgn0.n.write_arg_inner, align 4
  %fpsgn0.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 1
  store i128 %1, i128* %fpsgn0.k.write_arg_inner, align 4
  %fpsgn0.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpsgn0.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0
}

define void @fn_template_init_bigsub(%struct_template_circuit_bigsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 0
  %bigsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 1
  %bigsub.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 2
  %bigsub.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigsub.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsub.a.read_input_inner, [256 x i128]** %bigsub.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 3
  %bigsub.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigsub.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigsub.b.read_input_inner, [256 x i128]** %bigsub.b.declare_input, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  %unit = alloca [256 x %struct_template_circuit_modsubthree*]*, align 8
  %unit5 = alloca [256 x %struct_template_circuit_modsubthree*], align 8
  store [256 x %struct_template_circuit_modsubthree*]* %unit5, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %underflow = call i128 @fn_intrinsic_utils_init()
  %bigsub.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigsub.out.declare_output, align 8
  %sle = icmp sle i128 %bigsub.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %bigsub.n.read_arg_inner)
  %a = load [256 x i128]*, [256 x i128]** %bigsub.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 1
  %modsub.a.read_input_outter = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsub.a.read_input_outter, i128 %a9, i1* @constraint.145)
  %modsub.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 1
  store i128 %a9, i128* %modsub.a.write_input_outter, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigsub.b.declare_input, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b13 = load i128, i128* %array_getter12, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 2
  %modsub.b.read_input_outter = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsub.b.read_input_outter, i128 %b13, i1* @constraint.146)
  %modsub.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 2
  store i128 %b13, i128* %modsub.b.write_input_outter, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 3
  %modsub.out.read_output_outter = load i128, i128* %struct_getter18, align 4
  %out19 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out19, i128 0, i128 0
  %out21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out21, i128 %modsub.out.read_output_outter, i1* @constraint.147)
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %out23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 0
  store i128 %modsub.out.read_output_outter, i128* %out23, align 4
  %sub = sub i128 %bigsub.k.read_arg_inner, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add, %loop.latch ]
  %call26 = call %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %bigsub.n.read_arg_inner)
  %ptr_getter27 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub29 = sub i128 %i.0, 1
  %unit30 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter27, i128 0, i128 %sub29
  store %struct_template_circuit_modsubthree* %call26, %struct_template_circuit_modsubthree** %unit30, align 8
  %a31 = load [256 x i128]*, [256 x i128]** %bigsub.a.declare_input, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %i.0
  %a34 = load i128, i128* %array_getter33, align 4
  %unit35 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub37 = sub i128 %i.0, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit39, i32 0, i32 1
  %modsubthree.a.read_input_outter = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.a.read_input_outter, i128 %a34, i1* @constraint.148)
  %ptr_getter41 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub43 = sub i128 %i.0, 1
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter41, i128 0, i128 %sub43
  %unit45 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter44, align 8
  %modsubthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit45, i32 0, i32 1
  store i128 %a34, i128* %modsubthree.a.write_input_outter, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %bigsub.b.declare_input, align 8
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i.0
  %b49 = load i128, i128* %array_getter48, align 4
  %unit50 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub52 = sub i128 %i.0, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit54, i32 0, i32 2
  %modsubthree.b.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.b.read_input_outter, i128 %b49, i1* @constraint.149)
  %ptr_getter56 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub58 = sub i128 %i.0, 1
  %array_getter59 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter56, i128 0, i128 %sub58
  %unit60 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter59, align 8
  %modsubthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit60, i32 0, i32 2
  store i128 %b49, i128* %modsubthree.b.write_input_outter, align 4
  %eq = icmp eq i128 %i.0, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 4
  %modsub.borrow.read_output_outter = load i128, i128* %struct_getter63, align 4
  %unit64 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub66 = sub i128 %i.0, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit68, i32 0, i32 3
  %modsubthree.c.read_input_outter = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.c.read_input_outter, i128 %modsub.borrow.read_output_outter, i1* @constraint.150)
  %ptr_getter70 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub72 = sub i128 %i.0, 1
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter73, align 8
  %modsubthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit74, i32 0, i32 3
  store i128 %modsub.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit75 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub77 = sub i128 %i.0, 2
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit75, i128 0, i128 %sub77
  %unit79 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit79, i32 0, i32 6
  %modsubthree.borrow.read_output_outter = load i128, i128* %struct_getter80, align 4
  %unit81 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub83 = sub i128 %i.0, 1
  %array_getter84 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit81, i128 0, i128 %sub83
  %unit85 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter84, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit85, i32 0, i32 3
  %modsubthree.c.read_input_outter87 = load i128, i128* %struct_getter86, align 4
  call void @fn_intrinsic_utils_constraint(i128 %modsubthree.c.read_input_outter87, i128 %modsubthree.borrow.read_output_outter, i1* @constraint.151)
  %ptr_getter88 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub90 = sub i128 %i.0, 1
  %array_getter91 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter88, i128 0, i128 %sub90
  %unit92 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter91, align 8
  %modsubthree.c.write_input_outter93 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit92, i32 0, i32 3
  store i128 %modsubthree.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter93, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit94 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub96 = sub i128 %i.0, 1
  %array_getter97 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit94, i128 0, i128 %sub96
  %unit98 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter97, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit98, i32 0, i32 5
  %modsubthree.out.read_output_outter = load i128, i128* %struct_getter99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %out100, i128 0, i128 %i.0
  %out103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out103, i128 %modsubthree.out.read_output_outter, i1* @constraint.152)
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %out106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i.0
  store i128 %modsubthree.out.read_output_outter, i128* %out106, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigsub.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit110 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %sub112 = sub i128 %bigsub.k.read_arg_inner, 2
  %array_getter113 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit110, i128 0, i128 %sub112
  %unit114 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter113, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit114, i32 0, i32 6
  %modsubthree.borrow.read_output_outter116 = load i128, i128* %struct_getter115, align 4
  call void @fn_intrinsic_utils_constraint(i128 %underflow, i128 %modsubthree.borrow.read_output_outter116, i1* @constraint.153)
  %bigsub.underflow.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %modsubthree.borrow.read_output_outter116, i128* %bigsub.underflow.write_output_inner, align 4
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  %bigsub.underflow.read_output_inner = load i128, i128* %struct_getter120, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %bigsub.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigsub.k.read_arg_inner)
  %ptr_cast121 = bitcast [256 x i128]** %bigsub.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast121, i128 %bigsub.k.read_arg_inner)
  %ptr_cast122 = bitcast [256 x %struct_template_circuit_modsubthree*]** %unit to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast122, i128 %sub)
  %ptr_cast123 = bitcast [256 x i128]** %bigsub.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast123, i128 %bigsub.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out124 = load [256 x i128]*, [256 x i128]** %bigsub.out.declare_output, align 8
  %bigsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 4
  store [256 x i128]* %out124, [256 x i128]** %bigsub.out.write_output_inner, align 8
  %bigsub.underflow.write_output_inner126 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_inner, i128* %bigsub.underflow.write_output_inner126, align 4
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

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x [256 x i128]]* %call
}

define void @fn_template_init_fpisequal(%struct_template_circuit_fpisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 0
  %fpisequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 1
  %fpisequal.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 2
  %fpisequal.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 3
  %fpisequal.in.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %fpisequal.in.declare_input = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %fpisequal.in.read_input_inner, [256 x [256 x i128]]** %fpisequal.in.declare_input, align 8
  %idx4 = call i128 @fn_intrinsic_utils_init()
  %lt = alloca [256 x %struct_template_circuit_biglessthan*]*, align 8
  %lt5 = alloca [256 x %struct_template_circuit_biglessthan*], align 8
  store [256 x %struct_template_circuit_biglessthan*]* %lt5, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %sum6 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %i7 = call i128 @fn_intrinsic_utils_init()
  %isEqual = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %isEqual8 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %isEqual8, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch59, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add61, %loop.latch59 ]
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpisequal.n.read_arg_inner, i128 %fpisequal.k.read_arg_inner)
  %ptr_getter = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %lt11 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter, i128 0, i128 %i.0
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt11, align 8
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %idx.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %fpisequal.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %i.0, i128 %idx.0
  %in15 = load i128, i128* %array_getter, align 4
  %lt16 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %array_getter18 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt16, i128 0, i128 %i.0
  %lt19 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter18, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt19, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %idx.0
  %lt23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt23, i128 %in15, i1* @constraint.154)
  %ptr_getter24 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %array_getter26 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter24, i128 0, i128 %i.0
  %lt27 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter26, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt27, i32 0, i32 2
  %biglessthan.a.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %lt31 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter29, i128 0, i128 %idx.0
  store i128 %in15, i128* %lt31, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %fpisequal.p.read_arg_inner, i128 0, i128 %idx.0
  %p34 = load i128, i128* %array_getter33, align 4
  %lt35 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %array_getter37 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt35, i128 0, i128 %i.0
  %lt38 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter37, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt38, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter39, align 8
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %idx.0
  %lt42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt42, i128 %p34, i1* @constraint.155)
  %ptr_getter43 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %array_getter45 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter43, i128 0, i128 %i.0
  %lt46 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter45, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt46, i32 0, i32 3
  %biglessthan.b.read_input_outter48 = load [256 x i128]*, [256 x i128]** %struct_getter47, align 8
  %lt50 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter48, i128 0, i128 %idx.0
  store i128 %p34, i128* %lt50, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %fpisequal.k.read_arg_inner
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt54 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %array_getter56 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt54, i128 0, i128 %i.0
  %lt57 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter56, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt57, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter58, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.156)
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.exit
  %add61 = add i128 %i.0, 1
  %slt63 = icmp slt i128 %add61, 2
  br i1 %slt63, label %loop.body, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch59
  %add66 = add i128 %fpisequal.k.read_arg_inner, 1
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch116, %loop.exit64
  %sum.0 = phi i128 [ 0, %loop.exit64 ], [ %add115, %loop.latch116 ]
  %i.1 = phi i128 [ 0, %loop.exit64 ], [ %add118, %loop.latch116 ]
  %call68 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter69 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %isEqual71 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter69, i128 0, i128 %i.1
  store %struct_template_circuit_isequal* %call68, %struct_template_circuit_isequal** %isEqual71, align 8
  %in72 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %fpisequal.in.declare_input, align 8
  %array_getter74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in72, i128 0, i128 0, i128 %i.1
  %in75 = load i128, i128* %array_getter74, align 4
  %isEqual76 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual76, i128 0, i128 %i.1
  %isEqual79 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual79, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter80, align 8
  %array_getter81 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %isEqual82 = load i128, i128* %array_getter81, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEqual82, i128 %in75, i1* @constraint.157)
  %ptr_getter83 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter83, i128 0, i128 %i.1
  %isEqual86 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter85, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual86, i32 0, i32 0
  %isequal.in.read_input_outter88 = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %isEqual89 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter88, i128 0, i128 0
  store i128 %in75, i128* %isEqual89, align 4
  %in90 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %fpisequal.in.declare_input, align 8
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in90, i128 0, i128 1, i128 %i.1
  %in93 = load i128, i128* %array_getter92, align 4
  %isEqual94 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter96 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual94, i128 0, i128 %i.1
  %isEqual97 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter96, align 8
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual97, i32 0, i32 0
  %isequal.in.read_input_outter99 = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter99, i128 0, i128 1
  %isEqual101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEqual101, i128 %in93, i1* @constraint.158)
  %ptr_getter102 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter104 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter102, i128 0, i128 %i.1
  %isEqual105 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter104, align 8
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual105, i32 0, i32 0
  %isequal.in.read_input_outter107 = load [256 x i128]*, [256 x i128]** %struct_getter106, align 8
  %isEqual108 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter107, i128 0, i128 1
  store i128 %in93, i128* %isEqual108, align 4
  %isEqual110 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter112 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual110, i128 0, i128 %i.1
  %isEqual113 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter112, align 8
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual113, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter114, align 4
  %add115 = add i128 %sum.0, %isequal.out.read_output_outter
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body67
  %add118 = add i128 %i.1, 1
  %slt121 = icmp slt i128 %add118, %fpisequal.k.read_arg_inner
  br i1 %slt121, label %loop.body67, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch116
  %call123 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter124 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %isEqual126 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter124, i128 0, i128 %fpisequal.k.read_arg_inner
  store %struct_template_circuit_isequal* %call123, %struct_template_circuit_isequal** %isEqual126, align 8
  %isEqual128 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter130 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual128, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual131 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter130, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual131, i32 0, i32 0
  %isequal.in.read_input_outter133 = load [256 x i128]*, [256 x i128]** %struct_getter132, align 8
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter133, i128 0, i128 0
  %isEqual135 = load i128, i128* %array_getter134, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEqual135, i128 %add115, i1* @constraint.159)
  %ptr_getter136 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter138 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter136, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual139 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter138, align 8
  %struct_getter140 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual139, i32 0, i32 0
  %isequal.in.read_input_outter141 = load [256 x i128]*, [256 x i128]** %struct_getter140, align 8
  %isEqual142 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter141, i128 0, i128 0
  store i128 %add115, i128* %isEqual142, align 4
  %isEqual144 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter146 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual144, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual147 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter146, align 8
  %struct_getter148 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual147, i32 0, i32 0
  %isequal.in.read_input_outter149 = load [256 x i128]*, [256 x i128]** %struct_getter148, align 8
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter149, i128 0, i128 1
  %isEqual151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isEqual151, i128 %fpisequal.k.read_arg_inner, i1* @constraint.160)
  %ptr_getter152 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter154 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter152, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual155 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter154, align 8
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual155, i32 0, i32 0
  %isequal.in.read_input_outter157 = load [256 x i128]*, [256 x i128]** %struct_getter156, align 8
  %isEqual158 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter157, i128 0, i128 1
  store i128 %fpisequal.k.read_arg_inner, i128* %isEqual158, align 4
  %isEqual159 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %array_getter161 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual159, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual162 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter161, align 8
  %struct_getter163 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual162, i32 0, i32 1
  %isequal.out.read_output_outter164 = load i128, i128* %struct_getter163, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %isequal.out.read_output_outter164, i1* @constraint.161)
  %fpisequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %isequal.out.read_output_outter164, i128* %fpisequal.out.write_output_inner, align 4
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  %fpisequal.out.read_output_inner = load i128, i128* %struct_getter168, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit122
  %ptr_cast = bitcast [256 x [256 x i128]]** %fpisequal.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2, i128 %fpisequal.k.read_arg_inner)
  %ptr_cast169 = bitcast [256 x %struct_template_circuit_biglessthan*]** %lt to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast169, i128 2)
  %ptr_cast170 = bitcast [256 x %struct_template_circuit_isequal*]** %isEqual to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast170, i128 %add66)
  br label %exit

exit:                                             ; preds = %arraydim
  %fpisequal.out.write_output_inner172 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %fpisequal.out.read_output_inner, i128* %fpisequal.out.write_output_inner172, align 4
  ret void
}

define %struct_template_circuit_fpisequal* @fn_template_build_fpisequal(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpisequal = alloca %struct_template_circuit_fpisequal, align 8
  %fpisequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 0
  store i128 %0, i128* %fpisequal.n.write_arg_inner, align 4
  %fpisequal.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 1
  store i128 %1, i128* %fpisequal.k.write_arg_inner, align 4
  %fpisequal.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpisequal.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal
}

define void @fn_template_init_fpnegate(%struct_template_circuit_fpnegate* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 0
  %fpnegate.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 1
  %fpnegate.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 2
  %fpnegate.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 3
  %fpnegate.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpnegate.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpnegate.in.read_input_inner, [256 x i128]** %fpnegate.in.declare_input, align 8
  %idx4 = call i128 @fn_intrinsic_utils_init()
  %fpnegate.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %fpnegate.out.declare_output, align 8
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpnegate.n.read_arg_inner, i128 %fpnegate.k.read_arg_inner)
  %call8 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %fpnegate.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpnegate.p.read_arg_inner, i128 0, i128 %idx.0
  %p10 = load i128, i128* %array_getter, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %idx.0
  %neg15 = load i128, i128* %array_getter14, align 4
  call void @fn_intrinsic_utils_constraint(i128 %neg15, i128 %p10, i1* @constraint.162)
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %neg19 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter17, i128 0, i128 %idx.0
  store i128 %p10, i128* %neg19, align 4
  %in = load [256 x i128]*, [256 x i128]** %fpnegate.in.declare_input, align 8
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %idx.0
  %in22 = load i128, i128* %array_getter21, align 4
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %idx.0
  %neg27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_utils_constraint(i128 %neg27, i128 %in22, i1* @constraint.163)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter30 = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %neg32 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter30, i128 0, i128 %idx.0
  store i128 %in22, i128* %neg32, align 4
  %in33 = load [256 x i128]*, [256 x i128]** %fpnegate.in.declare_input, align 8
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %in33, i128 0, i128 %idx.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call8, i32 0, i32 1
  %bigiszero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter, i128 0, i128 %idx.0
  %is_zero41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %is_zero41, i128 %in36, i1* @constraint.164)
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call8, i32 0, i32 1
  %bigiszero.in.read_input_outter44 = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %is_zero46 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter44, i128 0, i128 %idx.0
  store i128 %in36, i128* %is_zero46, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %fpnegate.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter51, align 4
  call void @fn_intrinsic_utils_constraint(i128 %bigsub.underflow.read_output_outter, i128 0, i1* @constraint.165)
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch67, %loop.exit
  %idx.1 = phi i128 [ 0, %loop.exit ], [ %add69, %loop.latch67 ]
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call8, i32 0, i32 2
  %bigiszero.out.read_output_outter = load i128, i128* %struct_getter54, align 4
  %sub = sub i128 1, %bigiszero.out.read_output_outter
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %idx.1
  %neg59 = load i128, i128* %array_getter58, align 4
  %mul = mul i128 %sub, %neg59
  %out60 = load [256 x i128]*, [256 x i128]** %fpnegate.out.declare_output, align 8
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %out60, i128 0, i128 %idx.1
  %out63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out63, i128 %mul, i1* @constraint.166)
  %ptr_getter64 = load [256 x i128]*, [256 x i128]** %fpnegate.out.declare_output, align 8
  %out66 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter64, i128 0, i128 %idx.1
  store i128 %mul, i128* %out66, align 4
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.body52
  %add69 = add i128 %idx.1, 1
  %slt72 = icmp slt i128 %add69, %fpnegate.k.read_arg_inner
  br i1 %slt72, label %loop.body52, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  br label %arraydim

arraydim:                                         ; preds = %loop.exit73
  %ptr_cast = bitcast [256 x i128]** %fpnegate.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpnegate.k.read_arg_inner)
  %ptr_cast74 = bitcast [256 x i128]** %fpnegate.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast74, i128 %fpnegate.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out75 = load [256 x i128]*, [256 x i128]** %fpnegate.out.declare_output, align 8
  %fpnegate.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 4
  store [256 x i128]* %out75, [256 x i128]** %fpnegate.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpnegate* @fn_template_build_fpnegate(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpnegate = alloca %struct_template_circuit_fpnegate, align 8
  %fpnegate.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 0
  store i128 %0, i128* %fpnegate.n.write_arg_inner, align 4
  %fpnegate.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 1
  store i128 %1, i128* %fpnegate.k.write_arg_inner, align 4
  %fpnegate.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpnegate.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate
}

define void @fn_template_init_fpiszero(%struct_template_circuit_fpiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 0
  %fpiszero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 1
  %fpiszero.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 2
  %fpiszero.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 3
  %fpiszero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpiszero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpiszero.in.read_input_inner, [256 x i128]** %fpiszero.in.declare_input, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  %out = call i128 @fn_intrinsic_utils_init()
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpiszero.n.read_arg_inner, i128 %fpiszero.k.read_arg_inner)
  %call7 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %fpiszero.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %in = load [256 x i128]*, [256 x i128]** %fpiszero.in.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.0
  %in9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.0
  %lt14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt14, i128 %in9, i1* @constraint.167)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter16, i128 0, i128 %i.0
  store i128 %in9, i128* %lt18, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %fpiszero.p.read_arg_inner, i128 0, i128 %i.0
  %p21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.0
  %lt26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt26, i128 %p21, i1* @constraint.168)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %lt31 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter29, i128 0, i128 %i.0
  store i128 %p21, i128* %lt31, align 4
  %in32 = load [256 x i128]*, [256 x i128]** %fpiszero.in.declare_input, align 8
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %in32, i128 0, i128 %i.0
  %in35 = load i128, i128* %array_getter34, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call7, i32 0, i32 1
  %bigiszero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter, i128 0, i128 %i.0
  %isZero40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_utils_constraint(i128 %isZero40, i128 %in35, i1* @constraint.169)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call7, i32 0, i32 1
  %bigiszero.in.read_input_outter43 = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %isZero45 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter43, i128 0, i128 %i.0
  store i128 %in35, i128* %isZero45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %fpiszero.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.170)
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call7, i32 0, i32 2
  %bigiszero.out.read_output_outter = load i128, i128* %struct_getter52, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out, i128 %bigiszero.out.read_output_outter, i1* @constraint.171)
  %fpiszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %bigiszero.out.read_output_outter, i128* %fpiszero.out.write_output_inner, align 4
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  %fpiszero.out.read_output_inner = load i128, i128* %struct_getter56, align 4
  br label %arraydim

arraydim:                                         ; preds = %loop.exit
  %ptr_cast = bitcast [256 x i128]** %fpiszero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpiszero.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %fpiszero.out.write_output_inner58 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %fpiszero.out.read_output_inner, i128* %fpiszero.out.write_output_inner58, align 4
  ret void
}

define %struct_template_circuit_fpiszero* @fn_template_build_fpiszero(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpiszero = alloca %struct_template_circuit_fpiszero, align 8
  %fpiszero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 0
  store i128 %0, i128* %fpiszero.n.write_arg_inner, align 4
  %fpiszero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 1
  store i128 %1, i128* %fpiszero.k.write_arg_inner, align 4
  %fpiszero.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpiszero.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero
}

define void @fn_template_init_bigmod2(%struct_template_circuit_bigmod2* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 0
  %bigmod2.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 1
  %bigmod2.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 2
  %bigmod2.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 3
  %bigmod2.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmod2.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod2.a.read_input_inner, [256 x i128]** %bigmod2.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 4
  %bigmod2.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %bigmod2.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod2.b.read_input_inner, [256 x i128]** %bigmod2.b.declare_input, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv5, [256 x [256 x i128]]** %longdiv, align 8
  %bigmod2.div.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %div, [256 x i128]** %bigmod2.div.declare_output, align 8
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks6, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i7 = call i128 @fn_intrinsic_utils_init()
  %bigmod2.mod.declare_output = alloca [256 x i128]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall8 to [256 x i128]*
  store [256 x i128]* %mod, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks9, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %sle = icmp sle i128 %bigmod2.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %sub = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %add12 = add i128 %sub, 1
  %sub18 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %a = load [256 x i128]*, [256 x i128]** %bigmod2.a.declare_input, align 8
  %b = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.k.read_arg_inner, i128 %sub18, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch ]
  %longdiv19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv19, i128 0, i128 1, i128 %i.0
  %longdiv21 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %mod23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %longdiv21, i128* %mod23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add25 = add i128 %i.0, 1
  %slt = icmp slt i128 %add25, %bigmod2.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch36, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add38, %loop.latch36 ]
  %longdiv29 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %array_getter31 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv29, i128 0, i128 0, i128 %i.1
  %longdiv32 = load i128, i128* %array_getter31, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %div35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i.1
  store i128 %longdiv32, i128* %div35, align 4
  br label %loop.latch36

loop.latch36:                                     ; preds = %loop.body28
  %add38 = add i128 %i.1, 1
  %sub42 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle43 = icmp sle i128 %add38, %sub42
  br i1 %sle43, label %loop.body28, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch36
  %sub47 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %add48 = add i128 %sub47, 1
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch68, %loop.exit44
  %i.2 = phi i128 [ 0, %loop.exit44 ], [ %add70, %loop.latch68 ]
  %call51 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod2.n.read_arg_inner)
  %ptr_getter52 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %div_range_checks54 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter52, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call51, %struct_template_circuit_num2bits** %div_range_checks54, align 8
  %div55 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %div55, i128 0, i128 %i.2
  %div58 = load i128, i128* %array_getter57, align 4
  %div_range_checks59 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %array_getter61 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks59, i128 0, i128 %i.2
  %div_range_checks62 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter61, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks62, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter63, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %div58, i1* @constraint.172)
  %ptr_getter64 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %array_getter66 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter64, i128 0, i128 %i.2
  %div_range_checks67 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter66, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks67, i32 0, i32 1
  store i128 %div58, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body49
  %add70 = add i128 %i.2, 1
  %sub74 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle75 = icmp sle i128 %add70, %sub74
  br i1 %sle75, label %loop.body49, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch68
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch99, %loop.exit76
  %i.3 = phi i128 [ 0, %loop.exit76 ], [ %add101, %loop.latch99 ]
  %call80 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod2.n.read_arg_inner)
  %ptr_getter81 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %mod_range_checks83 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter81, i128 0, i128 %i.3
  store %struct_template_circuit_num2bits* %call80, %struct_template_circuit_num2bits** %mod_range_checks83, align 8
  %mod84 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %mod84, i128 0, i128 %i.3
  %mod87 = load i128, i128* %array_getter86, align 4
  %mod_range_checks88 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %array_getter90 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks88, i128 0, i128 %i.3
  %mod_range_checks91 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks91, i32 0, i32 1
  %num2bits.in.read_input_outter93 = load i128, i128* %struct_getter92, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter93, i128 %mod87, i1* @constraint.173)
  %ptr_getter94 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %array_getter96 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter94, i128 0, i128 %i.3
  %mod_range_checks97 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter96, align 8
  %num2bits.in.write_input_outter98 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks97, i32 0, i32 1
  store i128 %mod87, i128* %num2bits.in.write_input_outter98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body78
  %add101 = add i128 %i.3, 1
  %slt104 = icmp slt i128 %add101, %bigmod2.k.read_arg_inner
  br i1 %slt104, label %loop.body78, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch99
  %sub109 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %add110 = add i128 %sub109, 1
  %call111 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmod2.n.read_arg_inner, i128 %add110)
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch141, %loop.exit105
  %i.4 = phi i128 [ 0, %loop.exit105 ], [ %add143, %loop.latch141 ]
  %div113 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %div113, i128 0, i128 %i.4
  %div116 = load i128, i128* %array_getter115, align 4
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter118, align 8
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.4
  %mul121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul121, i128 %div116, i1* @constraint.174)
  %struct_getter123 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 2
  %bigmult.a.read_input_outter124 = load [256 x i128]*, [256 x i128]** %struct_getter123, align 8
  %mul126 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter124, i128 0, i128 %i.4
  store i128 %div116, i128* %mul126, align 4
  %b127 = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %b127, i128 0, i128 %i.4
  %b130 = load i128, i128* %array_getter129, align 4
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter132, align 8
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.4
  %mul135 = load i128, i128* %array_getter134, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul135, i128 %b130, i1* @constraint.175)
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 3
  %bigmult.b.read_input_outter138 = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %mul140 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter138, i128 0, i128 %i.4
  store i128 %b130, i128* %mul140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body112
  %add143 = add i128 %i.4, 1
  %slt146 = icmp slt i128 %add143, %bigmod2.k.read_arg_inner
  br i1 %slt146, label %loop.body112, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch141
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch176, %loop.exit147
  %i.5 = phi i128 [ %bigmod2.k.read_arg_inner, %loop.exit147 ], [ %add178, %loop.latch176 ]
  %div150 = load [256 x i128]*, [256 x i128]** %bigmod2.div.declare_output, align 8
  %array_getter152 = getelementptr inbounds [256 x i128], [256 x i128]* %div150, i128 0, i128 %i.5
  %div153 = load i128, i128* %array_getter152, align 4
  %struct_getter155 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 2
  %bigmult.a.read_input_outter156 = load [256 x i128]*, [256 x i128]** %struct_getter155, align 8
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter156, i128 0, i128 %i.5
  %mul159 = load i128, i128* %array_getter158, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul159, i128 %div153, i1* @constraint.176)
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 2
  %bigmult.a.read_input_outter162 = load [256 x i128]*, [256 x i128]** %struct_getter161, align 8
  %mul164 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter162, i128 0, i128 %i.5
  store i128 %div153, i128* %mul164, align 4
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 3
  %bigmult.b.read_input_outter167 = load [256 x i128]*, [256 x i128]** %struct_getter166, align 8
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter167, i128 0, i128 %i.5
  %mul170 = load i128, i128* %array_getter169, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul170, i128 0, i1* @constraint.177)
  %struct_getter172 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 3
  %bigmult.b.read_input_outter173 = load [256 x i128]*, [256 x i128]** %struct_getter172, align 8
  %mul175 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter173, i128 0, i128 %i.5
  store i128 0, i128* %mul175, align 4
  br label %loop.latch176

loop.latch176:                                    ; preds = %loop.body149
  %add178 = add i128 %i.5, 1
  %sub182 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle183 = icmp sle i128 %add178, %sub182
  br i1 %sle183, label %loop.body149, label %loop.exit184

loop.exit184:                                     ; preds = %loop.latch176
  br label %loop.body186

loop.body186:                                     ; preds = %loop.latch192, %loop.exit184
  %i.6 = phi i128 [ %bigmod2.m.read_arg_inner, %loop.exit184 ], [ %add194, %loop.latch192 ]
  %struct_getter188 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter188, align 8
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.6
  %mul191 = load i128, i128* %array_getter190, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul191, i128 0, i1* @constraint.178)
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.body186
  %add194 = add i128 %i.6, 1
  %sub198 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %mul199 = mul i128 2, %sub198
  %add200 = add i128 %mul199, 2
  %slt201 = icmp slt i128 %add194, %add200
  br i1 %slt201, label %loop.body186, label %loop.exit202

loop.exit202:                                     ; preds = %loop.latch192
  %call205 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.m.read_arg_inner)
  br label %loop.body206

loop.body206:                                     ; preds = %loop.latch251, %loop.exit202
  %i.7 = phi i128 [ 0, %loop.exit202 ], [ %add253, %loop.latch251 ]
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call111, i32 0, i32 4
  %bigmult.out.read_output_outter209 = load [256 x i128]*, [256 x i128]** %struct_getter208, align 8
  %array_getter211 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter209, i128 0, i128 %i.7
  %mul212 = load i128, i128* %array_getter211, align 4
  %struct_getter214 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter214, align 8
  %array_getter216 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.7
  %add217 = load i128, i128* %array_getter216, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add217, i128 %mul212, i1* @constraint.179)
  %struct_getter219 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 2
  %bigadd.a.read_input_outter220 = load [256 x i128]*, [256 x i128]** %struct_getter219, align 8
  %add222 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter220, i128 0, i128 %i.7
  store i128 %mul212, i128* %add222, align 4
  %slt225 = icmp slt i128 %i.7, %bigmod2.k.read_arg_inner
  br i1 %slt225, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body206
  %mod226 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %array_getter228 = getelementptr inbounds [256 x i128], [256 x i128]* %mod226, i128 0, i128 %i.7
  %mod229 = load i128, i128* %array_getter228, align 4
  %struct_getter231 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter231, align 8
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.7
  %add234 = load i128, i128* %array_getter233, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add234, i128 %mod229, i1* @constraint.180)
  %struct_getter236 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 3
  %bigadd.b.read_input_outter237 = load [256 x i128]*, [256 x i128]** %struct_getter236, align 8
  %add239 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter237, i128 0, i128 %i.7
  store i128 %mod229, i128* %add239, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body206
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 3
  %bigadd.b.read_input_outter242 = load [256 x i128]*, [256 x i128]** %struct_getter241, align 8
  %array_getter244 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter242, i128 0, i128 %i.7
  %add245 = load i128, i128* %array_getter244, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add245, i128 0, i1* @constraint.181)
  %struct_getter247 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 3
  %bigadd.b.read_input_outter248 = load [256 x i128]*, [256 x i128]** %struct_getter247, align 8
  %add250 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter248, i128 0, i128 %i.7
  store i128 0, i128* %add250, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch251

loop.latch251:                                    ; preds = %if.exit
  %add253 = add i128 %i.7, 1
  %slt256 = icmp slt i128 %add253, %bigmod2.m.read_arg_inner
  br i1 %slt256, label %loop.body206, label %loop.exit257

loop.exit257:                                     ; preds = %loop.latch251
  br label %loop.body258

loop.body258:                                     ; preds = %loop.latch268, %loop.exit257
  %i.8 = phi i128 [ 0, %loop.exit257 ], [ %add270, %loop.latch268 ]
  %struct_getter260 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter260, align 8
  %array_getter262 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.8
  %add263 = load i128, i128* %array_getter262, align 4
  %a264 = load [256 x i128]*, [256 x i128]** %bigmod2.a.declare_input, align 8
  %array_getter266 = getelementptr inbounds [256 x i128], [256 x i128]* %a264, i128 0, i128 %i.8
  %a267 = load i128, i128* %array_getter266, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add263, i128 %a267, i1* @constraint.182)
  br label %loop.latch268

loop.latch268:                                    ; preds = %loop.body258
  %add270 = add i128 %i.8, 1
  %slt273 = icmp slt i128 %add270, %bigmod2.m.read_arg_inner
  br i1 %slt273, label %loop.body258, label %loop.exit274

loop.exit274:                                     ; preds = %loop.latch268
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call205, i32 0, i32 4
  %bigadd.out.read_output_outter277 = load [256 x i128]*, [256 x i128]** %struct_getter276, align 8
  %array_getter279 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter277, i128 0, i128 %bigmod2.m.read_arg_inner
  %add280 = load i128, i128* %array_getter279, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add280, i128 0, i1* @constraint.183)
  %call283 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.k.read_arg_inner)
  br label %loop.body284

loop.body284:                                     ; preds = %loop.latch313, %loop.exit274
  %i.9 = phi i128 [ 0, %loop.exit274 ], [ %add315, %loop.latch313 ]
  %mod285 = load [256 x i128]*, [256 x i128]** %bigmod2.mod.declare_output, align 8
  %array_getter287 = getelementptr inbounds [256 x i128], [256 x i128]* %mod285, i128 0, i128 %i.9
  %mod288 = load i128, i128* %array_getter287, align 4
  %struct_getter290 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call283, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter290, align 8
  %array_getter292 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.9
  %lt293 = load i128, i128* %array_getter292, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt293, i128 %mod288, i1* @constraint.184)
  %struct_getter295 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call283, i32 0, i32 2
  %biglessthan.a.read_input_outter296 = load [256 x i128]*, [256 x i128]** %struct_getter295, align 8
  %lt298 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter296, i128 0, i128 %i.9
  store i128 %mod288, i128* %lt298, align 4
  %b299 = load [256 x i128]*, [256 x i128]** %bigmod2.b.declare_input, align 8
  %array_getter301 = getelementptr inbounds [256 x i128], [256 x i128]* %b299, i128 0, i128 %i.9
  %b302 = load i128, i128* %array_getter301, align 4
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call283, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter304, align 8
  %array_getter306 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.9
  %lt307 = load i128, i128* %array_getter306, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt307, i128 %b302, i1* @constraint.185)
  %struct_getter309 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call283, i32 0, i32 3
  %biglessthan.b.read_input_outter310 = load [256 x i128]*, [256 x i128]** %struct_getter309, align 8
  %lt312 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter310, i128 0, i128 %i.9
  store i128 %b302, i128* %lt312, align 4
  br label %loop.latch313

loop.latch313:                                    ; preds = %loop.body284
  %add315 = add i128 %i.9, 1
  %slt318 = icmp slt i128 %add315, %bigmod2.k.read_arg_inner
  br i1 %slt318, label %loop.body284, label %loop.exit319

loop.exit319:                                     ; preds = %loop.latch313
  %struct_getter321 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call283, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter321, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.186)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit319
  %ptr_cast = bitcast [256 x [256 x i128]]** %longdiv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 2, i128 50)
  %ptr_cast322 = bitcast [256 x i128]** %bigmod2.mod.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast322, i128 %bigmod2.k.read_arg_inner)
  %ptr_cast323 = bitcast [256 x %struct_template_circuit_num2bits*]** %mod_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast323, i128 %bigmod2.k.read_arg_inner)
  %ptr_cast324 = bitcast [256 x %struct_template_circuit_num2bits*]** %div_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast324, i128 %add48)
  %ptr_cast325 = bitcast [256 x i128]** %bigmod2.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast325, i128 %bigmod2.m.read_arg_inner)
  %ptr_cast326 = bitcast [256 x i128]** %bigmod2.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast326, i128 %bigmod2.k.read_arg_inner)
  %ptr_cast327 = bitcast [256 x i128]** %bigmod2.div.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast327, i128 %add12)
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
  %bitlength4 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
  %j7 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  %bitlength.0 = phi i128 [ 0, %entry ], [ %bitlength.2, %loop.latch33 ]
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch33 ]
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %bitlength.1 = phi i128 [ %bitlength.0, %loop.body ], [ %bitlength.2, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e10 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e10, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %mul19 = mul i128 %0, %i.0
  %add20 = add i128 %j.0, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %mul26 = mul i128 %0, %i.0
  %add27 = add i128 %j.0, %mul26
  %add28 = add i128 %add27, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitlength.2 = phi i128 [ %add28, %if.true ], [ %bitlength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add30 = add i128 %j.0, 1
  %slt = icmp slt i128 %add30, %0
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %add35 = add i128 %i.0, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %i.1 = phi i128 [ 0, %loop.exit38 ], [ %add46, %loop.latch44 ]
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 %i.1
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %add46 = add i128 %i.1, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %sub = sub i128 %bitlength.2, 1
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %out.0 = phi [256 x i128]* [ %uniform_array39, %loop.exit49 ], [ %out.2, %loop.latch94 ]
  %i.2 = phi i128 [ %sub, %loop.exit49 ], [ %sub96, %loop.latch94 ]
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.0, [256 x i128]* %2)
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %3)
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call69, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %out.1 = phi [256 x i128]* [ %spice_inline_array, %if.true54 ], [ %out.0, %if.false55 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  %call82 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.1, [256 x i128]* %out.1)
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call82, [256 x i128]* %3)
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call88, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  %out.2 = phi [256 x i128]* [ %spice_inline_array92, %if.true74 ], [ %out.1, %if.false75 ]
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %sub96 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub96, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  ret [256 x i128]* %out.2
}

define void @fn_template_init_bigmod(%struct_template_circuit_bigmod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 0
  %bigmod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 1
  %bigmod.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 2
  %bigmod.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmod.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod.a.read_input_inner, [256 x i128]** %bigmod.a.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 3
  %bigmod.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmod.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmod.b.read_input_inner, [256 x i128]** %bigmod.b.declare_input, align 8
  %bigmod.div.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %div, [256 x i128]** %bigmod.div.declare_output, align 8
  %bigmod.mod.declare_output = alloca [256 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall4 to [256 x i128]*
  store [256 x i128]* %mod, [256 x i128]** %bigmod.mod.declare_output, align 8
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks5, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks6, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv7, [256 x [256 x i128]]** %longdiv, align 8
  %i8 = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %bigmod.n.read_arg_inner, 126
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %mul9 = mul i128 2, %bigmod.k.read_arg_inner
  %add12 = add i128 %bigmod.k.read_arg_inner, 1
  %a = load [256 x i128]*, [256 x i128]** %bigmod.a.declare_input, align 8
  %b = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %call = call [256 x [256 x i128]]* @long_div(i128 %bigmod.n.read_arg_inner, i128 %bigmod.k.read_arg_inner, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add29, %loop.latch ]
  %longdiv16 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv16, i128 0, i128 0, i128 %i.0
  %longdiv18 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %div20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %longdiv18, i128* %div20, align 4
  %longdiv21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %array_getter23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv21, i128 0, i128 1, i128 %i.0
  %longdiv24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %mod27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %i.0
  store i128 %longdiv24, i128* %mod27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add29 = add i128 %i.0, 1
  %slt = icmp slt i128 %add29, %bigmod.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %longdiv32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv32, i128 0, i128 0, i128 %bigmod.k.read_arg_inner
  %longdiv35 = load i128, i128* %array_getter34, align 4
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %div38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 %longdiv35, i128* %div38, align 4
  %add40 = add i128 %bigmod.k.read_arg_inner, 1
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch60, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add62, %loop.latch60 ]
  %call43 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod.n.read_arg_inner)
  %ptr_getter44 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %div_range_checks46 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter44, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call43, %struct_template_circuit_num2bits** %div_range_checks46, align 8
  %div47 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %div47, i128 0, i128 %i.1
  %div50 = load i128, i128* %array_getter49, align 4
  %div_range_checks51 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks51, i128 0, i128 %i.1
  %div_range_checks54 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks54, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %div50, i1* @constraint.187)
  %ptr_getter56 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %array_getter58 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter56, i128 0, i128 %i.1
  %div_range_checks59 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter58, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks59, i32 0, i32 1
  store i128 %div50, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.body41
  %add62 = add i128 %i.1, 1
  %sle65 = icmp sle i128 %add62, %bigmod.k.read_arg_inner
  br i1 %sle65, label %loop.body41, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch60
  br label %loop.body68

loop.body68:                                      ; preds = %loop.latch89, %loop.exit66
  %i.2 = phi i128 [ 0, %loop.exit66 ], [ %add91, %loop.latch89 ]
  %call70 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod.n.read_arg_inner)
  %ptr_getter71 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %mod_range_checks73 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter71, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call70, %struct_template_circuit_num2bits** %mod_range_checks73, align 8
  %mod74 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %mod74, i128 0, i128 %i.2
  %mod77 = load i128, i128* %array_getter76, align 4
  %mod_range_checks78 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks78, i128 0, i128 %i.2
  %mod_range_checks81 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks81, i32 0, i32 1
  %num2bits.in.read_input_outter83 = load i128, i128* %struct_getter82, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter83, i128 %mod77, i1* @constraint.188)
  %ptr_getter84 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %array_getter86 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter84, i128 0, i128 %i.2
  %mod_range_checks87 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter86, align 8
  %num2bits.in.write_input_outter88 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks87, i32 0, i32 1
  store i128 %mod77, i128* %num2bits.in.write_input_outter88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body68
  %add91 = add i128 %i.2, 1
  %slt94 = icmp slt i128 %add91, %bigmod.k.read_arg_inner
  br i1 %slt94, label %loop.body68, label %loop.exit95

loop.exit95:                                      ; preds = %loop.latch89
  %add98 = add i128 %bigmod.k.read_arg_inner, 1
  %call99 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmod.n.read_arg_inner, i128 %add98)
  br label %loop.body100

loop.body100:                                     ; preds = %loop.latch129, %loop.exit95
  %i.3 = phi i128 [ 0, %loop.exit95 ], [ %add131, %loop.latch129 ]
  %div101 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %div101, i128 0, i128 %i.3
  %div104 = load i128, i128* %array_getter103, align 4
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter106, align 8
  %array_getter108 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.3
  %mul109 = load i128, i128* %array_getter108, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul109, i128 %div104, i1* @constraint.189)
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 2
  %bigmult.a.read_input_outter112 = load [256 x i128]*, [256 x i128]** %struct_getter111, align 8
  %mul114 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter112, i128 0, i128 %i.3
  store i128 %div104, i128* %mul114, align 4
  %b115 = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %b115, i128 0, i128 %i.3
  %b118 = load i128, i128* %array_getter117, align 4
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %array_getter122 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.3
  %mul123 = load i128, i128* %array_getter122, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul123, i128 %b118, i1* @constraint.190)
  %struct_getter125 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 3
  %bigmult.b.read_input_outter126 = load [256 x i128]*, [256 x i128]** %struct_getter125, align 8
  %mul128 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter126, i128 0, i128 %i.3
  store i128 %b118, i128* %mul128, align 4
  br label %loop.latch129

loop.latch129:                                    ; preds = %loop.body100
  %add131 = add i128 %i.3, 1
  %slt134 = icmp slt i128 %add131, %bigmod.k.read_arg_inner
  br i1 %slt134, label %loop.body100, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  %div136 = load [256 x i128]*, [256 x i128]** %bigmod.div.declare_output, align 8
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %div136, i128 0, i128 %bigmod.k.read_arg_inner
  %div139 = load i128, i128* %array_getter138, align 4
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 2
  %bigmult.a.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter142, i128 0, i128 %bigmod.k.read_arg_inner
  %mul145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul145, i128 %div139, i1* @constraint.191)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 2
  %bigmult.a.read_input_outter148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %mul150 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter148, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 %div139, i128* %mul150, align 4
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 3
  %bigmult.b.read_input_outter153 = load [256 x i128]*, [256 x i128]** %struct_getter152, align 8
  %array_getter155 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter153, i128 0, i128 %bigmod.k.read_arg_inner
  %mul156 = load i128, i128* %array_getter155, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mul156, i128 0, i1* @constraint.192)
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 3
  %bigmult.b.read_input_outter159 = load [256 x i128]*, [256 x i128]** %struct_getter158, align 8
  %mul161 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter159, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 0, i128* %mul161, align 4
  br label %loop.body162

loop.body162:                                     ; preds = %loop.latch163, %loop.exit135
  %i.4 = phi i128 [ 0, %loop.exit135 ], [ %add165, %loop.latch163 ]
  br label %loop.latch163

loop.latch163:                                    ; preds = %loop.body162
  %add165 = add i128 %i.4, 1
  %mul168 = mul i128 2, %bigmod.k.read_arg_inner
  %add169 = add i128 %mul168, 2
  %slt170 = icmp slt i128 %add165, %add169
  br i1 %slt170, label %loop.body162, label %loop.exit171

loop.exit171:                                     ; preds = %loop.latch163
  %mul174 = mul i128 2, %bigmod.k.read_arg_inner
  %add175 = add i128 %mul174, 2
  %call176 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigmod.n.read_arg_inner, i128 %add175)
  br label %loop.body177

loop.body177:                                     ; preds = %loop.latch221, %loop.exit171
  %i.5 = phi i128 [ 0, %loop.exit171 ], [ %add223, %loop.latch221 ]
  %struct_getter179 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter179, align 8
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.5
  %mul182 = load i128, i128* %array_getter181, align 4
  %struct_getter184 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter184, align 8
  %array_getter186 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.5
  %add187 = load i128, i128* %array_getter186, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add187, i128 %mul182, i1* @constraint.193)
  %struct_getter189 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter190 = load [256 x i128]*, [256 x i128]** %struct_getter189, align 8
  %add192 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter190, i128 0, i128 %i.5
  store i128 %mul182, i128* %add192, align 4
  %slt195 = icmp slt i128 %i.5, %bigmod.k.read_arg_inner
  br i1 %slt195, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body177
  %mod196 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %mod196, i128 0, i128 %i.5
  %mod199 = load i128, i128* %array_getter198, align 4
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter201, align 8
  %array_getter203 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.5
  %add204 = load i128, i128* %array_getter203, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add204, i128 %mod199, i1* @constraint.194)
  %struct_getter206 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter207 = load [256 x i128]*, [256 x i128]** %struct_getter206, align 8
  %add209 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter207, i128 0, i128 %i.5
  store i128 %mod199, i128* %add209, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body177
  %struct_getter211 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter212 = load [256 x i128]*, [256 x i128]** %struct_getter211, align 8
  %array_getter214 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter212, i128 0, i128 %i.5
  %add215 = load i128, i128* %array_getter214, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add215, i128 0, i1* @constraint.195)
  %struct_getter217 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter218 = load [256 x i128]*, [256 x i128]** %struct_getter217, align 8
  %add220 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter218, i128 0, i128 %i.5
  store i128 0, i128* %add220, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch221

loop.latch221:                                    ; preds = %if.exit
  %add223 = add i128 %i.5, 1
  %mul226 = mul i128 2, %bigmod.k.read_arg_inner
  %slt227 = icmp slt i128 %add223, %mul226
  br i1 %slt227, label %loop.body177, label %loop.exit228

loop.exit228:                                     ; preds = %loop.latch221
  %struct_getter230 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 4
  %bigmult.out.read_output_outter231 = load [256 x i128]*, [256 x i128]** %struct_getter230, align 8
  %mul233 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter234 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter231, i128 0, i128 %mul233
  %mul235 = load i128, i128* %array_getter234, align 4
  %struct_getter237 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter238 = load [256 x i128]*, [256 x i128]** %struct_getter237, align 8
  %mul240 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter241 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter238, i128 0, i128 %mul240
  %add242 = load i128, i128* %array_getter241, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add242, i128 %mul235, i1* @constraint.196)
  %struct_getter244 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter245 = load [256 x i128]*, [256 x i128]** %struct_getter244, align 8
  %mul247 = mul i128 2, %bigmod.k.read_arg_inner
  %add248 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter245, i128 0, i128 %mul247
  store i128 %mul235, i128* %add248, align 4
  %struct_getter250 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call99, i32 0, i32 4
  %bigmult.out.read_output_outter251 = load [256 x i128]*, [256 x i128]** %struct_getter250, align 8
  %mul253 = mul i128 2, %bigmod.k.read_arg_inner
  %add254 = add i128 %mul253, 1
  %array_getter255 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter251, i128 0, i128 %add254
  %mul256 = load i128, i128* %array_getter255, align 4
  %struct_getter258 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter259 = load [256 x i128]*, [256 x i128]** %struct_getter258, align 8
  %mul261 = mul i128 2, %bigmod.k.read_arg_inner
  %add262 = add i128 %mul261, 1
  %array_getter263 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter259, i128 0, i128 %add262
  %add264 = load i128, i128* %array_getter263, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add264, i128 %mul256, i1* @constraint.197)
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 2
  %bigadd.a.read_input_outter267 = load [256 x i128]*, [256 x i128]** %struct_getter266, align 8
  %mul269 = mul i128 2, %bigmod.k.read_arg_inner
  %add270 = add i128 %mul269, 1
  %add271 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter267, i128 0, i128 %add270
  store i128 %mul256, i128* %add271, align 4
  %struct_getter273 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter274 = load [256 x i128]*, [256 x i128]** %struct_getter273, align 8
  %mul276 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter277 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter274, i128 0, i128 %mul276
  %add278 = load i128, i128* %array_getter277, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add278, i128 0, i1* @constraint.198)
  %struct_getter280 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter281 = load [256 x i128]*, [256 x i128]** %struct_getter280, align 8
  %mul283 = mul i128 2, %bigmod.k.read_arg_inner
  %add284 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter281, i128 0, i128 %mul283
  store i128 0, i128* %add284, align 4
  %struct_getter286 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter287 = load [256 x i128]*, [256 x i128]** %struct_getter286, align 8
  %mul289 = mul i128 2, %bigmod.k.read_arg_inner
  %add290 = add i128 %mul289, 1
  %array_getter291 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter287, i128 0, i128 %add290
  %add292 = load i128, i128* %array_getter291, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add292, i128 0, i1* @constraint.199)
  %struct_getter294 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 3
  %bigadd.b.read_input_outter295 = load [256 x i128]*, [256 x i128]** %struct_getter294, align 8
  %mul297 = mul i128 2, %bigmod.k.read_arg_inner
  %add298 = add i128 %mul297, 1
  %add299 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter295, i128 0, i128 %add298
  store i128 0, i128* %add299, align 4
  br label %loop.body300

loop.body300:                                     ; preds = %loop.latch301, %loop.exit228
  %i.6 = phi i128 [ 0, %loop.exit228 ], [ %add303, %loop.latch301 ]
  br label %loop.latch301

loop.latch301:                                    ; preds = %loop.body300
  %add303 = add i128 %i.6, 1
  %mul306 = mul i128 2, %bigmod.k.read_arg_inner
  %add307 = add i128 %mul306, 2
  %slt308 = icmp slt i128 %add303, %add307
  br i1 %slt308, label %loop.body300, label %loop.exit309

loop.exit309:                                     ; preds = %loop.latch301
  br label %loop.body310

loop.body310:                                     ; preds = %loop.latch320, %loop.exit309
  %i.7 = phi i128 [ 0, %loop.exit309 ], [ %add322, %loop.latch320 ]
  %struct_getter312 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter312, align 8
  %array_getter314 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.7
  %add315 = load i128, i128* %array_getter314, align 4
  %a316 = load [256 x i128]*, [256 x i128]** %bigmod.a.declare_input, align 8
  %array_getter318 = getelementptr inbounds [256 x i128], [256 x i128]* %a316, i128 0, i128 %i.7
  %a319 = load i128, i128* %array_getter318, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add315, i128 %a319, i1* @constraint.200)
  br label %loop.latch320

loop.latch320:                                    ; preds = %loop.body310
  %add322 = add i128 %i.7, 1
  %mul325 = mul i128 2, %bigmod.k.read_arg_inner
  %slt326 = icmp slt i128 %add322, %mul325
  br i1 %slt326, label %loop.body310, label %loop.exit327

loop.exit327:                                     ; preds = %loop.latch320
  %struct_getter329 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 4
  %bigadd.out.read_output_outter330 = load [256 x i128]*, [256 x i128]** %struct_getter329, align 8
  %mul332 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter333 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter330, i128 0, i128 %mul332
  %add334 = load i128, i128* %array_getter333, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add334, i128 0, i1* @constraint.201)
  %struct_getter336 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call176, i32 0, i32 4
  %bigadd.out.read_output_outter337 = load [256 x i128]*, [256 x i128]** %struct_getter336, align 8
  %mul339 = mul i128 2, %bigmod.k.read_arg_inner
  %add340 = add i128 %mul339, 1
  %array_getter341 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter337, i128 0, i128 %add340
  %add342 = load i128, i128* %array_getter341, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add342, i128 0, i1* @constraint.202)
  %call345 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigmod.n.read_arg_inner, i128 %bigmod.k.read_arg_inner)
  br label %loop.body346

loop.body346:                                     ; preds = %loop.latch375, %loop.exit327
  %i.8 = phi i128 [ 0, %loop.exit327 ], [ %add377, %loop.latch375 ]
  %mod347 = load [256 x i128]*, [256 x i128]** %bigmod.mod.declare_output, align 8
  %array_getter349 = getelementptr inbounds [256 x i128], [256 x i128]* %mod347, i128 0, i128 %i.8
  %mod350 = load i128, i128* %array_getter349, align 4
  %struct_getter352 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call345, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter352, align 8
  %array_getter354 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.8
  %lt355 = load i128, i128* %array_getter354, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt355, i128 %mod350, i1* @constraint.203)
  %struct_getter357 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call345, i32 0, i32 2
  %biglessthan.a.read_input_outter358 = load [256 x i128]*, [256 x i128]** %struct_getter357, align 8
  %lt360 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter358, i128 0, i128 %i.8
  store i128 %mod350, i128* %lt360, align 4
  %b361 = load [256 x i128]*, [256 x i128]** %bigmod.b.declare_input, align 8
  %array_getter363 = getelementptr inbounds [256 x i128], [256 x i128]* %b361, i128 0, i128 %i.8
  %b364 = load i128, i128* %array_getter363, align 4
  %struct_getter366 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call345, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter366, align 8
  %array_getter368 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.8
  %lt369 = load i128, i128* %array_getter368, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt369, i128 %b364, i1* @constraint.204)
  %struct_getter371 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call345, i32 0, i32 3
  %biglessthan.b.read_input_outter372 = load [256 x i128]*, [256 x i128]** %struct_getter371, align 8
  %lt374 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter372, i128 0, i128 %i.8
  store i128 %b364, i128* %lt374, align 4
  br label %loop.latch375

loop.latch375:                                    ; preds = %loop.body346
  %add377 = add i128 %i.8, 1
  %slt380 = icmp slt i128 %add377, %bigmod.k.read_arg_inner
  br i1 %slt380, label %loop.body346, label %loop.exit381

loop.exit381:                                     ; preds = %loop.latch375
  %struct_getter383 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call345, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter383, align 4
  call void @fn_intrinsic_utils_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.205)
  br label %arraydim

arraydim:                                         ; preds = %loop.exit381
  %ptr_cast = bitcast [256 x %struct_template_circuit_num2bits*]** %div_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %add40)
  %ptr_cast384 = bitcast [256 x i128]** %bigmod.div.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast384, i128 %add12)
  %ptr_cast385 = bitcast [256 x i128]** %bigmod.mod.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast385, i128 %bigmod.k.read_arg_inner)
  %ptr_cast386 = bitcast [256 x i128]** %bigmod.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast386, i128 %mul9)
  %ptr_cast387 = bitcast [256 x %struct_template_circuit_num2bits*]** %mod_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast387, i128 %bigmod.k.read_arg_inner)
  %ptr_cast388 = bitcast [256 x [256 x i128]]** %longdiv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast388, i128 2, i128 50)
  %ptr_cast389 = bitcast [256 x i128]** %bigmod.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast389, i128 %bigmod.k.read_arg_inner)
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

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define void @fn_template_init_fpsubtract(%struct_template_circuit_fpsubtract* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 0
  %fpsubtract.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 1
  %fpsubtract.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 2
  %fpsubtract.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 3
  %fpsubtract.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpsubtract.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpsubtract.a.read_input_inner, [256 x i128]** %fpsubtract.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 4
  %fpsubtract.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %fpsubtract.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpsubtract.b.read_input_inner, [256 x i128]** %fpsubtract.b.declare_input, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %fpsubtract.tmp.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %tmp, [256 x i128]** %fpsubtract.tmp.declare_inter, align 8
  %fpsubtract.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %fpsubtract.out.declare_output, align 8
  %flag = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %fpsubtract.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpsubtract.n.read_arg_inner, i128 %fpsubtract.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add36, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %fpsubtract.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.0
  %sub17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub17, i128 %a12, i1* @constraint.206)
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %sub21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter19, i128 0, i128 %i.0
  store i128 %a12, i128* %sub21, align 4
  %b = load [256 x i128]*, [256 x i128]** %fpsubtract.b.declare_input, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.0
  %sub29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub29, i128 %b24, i1* @constraint.207)
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %sub34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter32, i128 0, i128 %i.0
  store i128 %b24, i128* %sub34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add36 = add i128 %i.0, 1
  %slt = icmp slt i128 %add36, %fpsubtract.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_utils_constraint(i128 %flag, i128 %bigsub.underflow.read_output_outter, i1* @constraint.208)
  %fpsubtract.flag.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_outter, i128* %fpsubtract.flag.write_inter_inner, align 4
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  %fpsubtract.flag.read_inter_inner = load i128, i128* %struct_getter44, align 4
  %call47 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %fpsubtract.n.read_arg_inner, i128 %fpsubtract.k.read_arg_inner)
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch77, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add79, %loop.latch77 ]
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %i.1
  %sub53 = load i128, i128* %array_getter52, align 4
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call47, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.1
  %add58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add58, i128 %sub53, i1* @constraint.209)
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call47, i32 0, i32 2
  %bigadd.a.read_input_outter61 = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %add63 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter61, i128 0, i128 %i.1
  store i128 %sub53, i128* %add63, align 4
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsubtract.p.read_arg_inner, i128 0, i128 %i.1
  %p66 = load i128, i128* %array_getter65, align 4
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call47, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.1
  %add71 = load i128, i128* %array_getter70, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add71, i128 %p66, i1* @constraint.210)
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call47, i32 0, i32 3
  %bigadd.b.read_input_outter74 = load [256 x i128]*, [256 x i128]** %struct_getter73, align 8
  %add76 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter74, i128 0, i128 %i.1
  store i128 %p66, i128* %add76, align 4
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.body48
  %add79 = add i128 %i.1, 1
  %slt82 = icmp slt i128 %add79, %fpsubtract.k.read_arg_inner
  br i1 %slt82, label %loop.body48, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch120, %loop.exit83
  %i.2 = phi i128 [ 0, %loop.exit83 ], [ %add122, %loop.latch120 ]
  %sub87 = sub i128 1, %fpsubtract.flag.read_inter_inner
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter90 = load [256 x i128]*, [256 x i128]** %struct_getter89, align 8
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter90, i128 0, i128 %i.2
  %sub93 = load i128, i128* %array_getter92, align 4
  %mul = mul i128 %sub87, %sub93
  %tmp94 = load [256 x i128]*, [256 x i128]** %fpsubtract.tmp.declare_inter, align 8
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp94, i128 0, i128 %i.2
  %tmp97 = load i128, i128* %array_getter96, align 4
  call void @fn_intrinsic_utils_constraint(i128 %tmp97, i128 %mul, i1* @constraint.211)
  %ptr_getter98 = load [256 x i128]*, [256 x i128]** %fpsubtract.tmp.declare_inter, align 8
  %tmp100 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter98, i128 0, i128 %i.2
  store i128 %mul, i128* %tmp100, align 4
  %tmp101 = load [256 x i128]*, [256 x i128]** %fpsubtract.tmp.declare_inter, align 8
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp101, i128 0, i128 %i.2
  %tmp104 = load i128, i128* %array_getter103, align 4
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call47, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter107, align 8
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.2
  %add110 = load i128, i128* %array_getter109, align 4
  %mul111 = mul i128 %fpsubtract.flag.read_inter_inner, %add110
  %add112 = add i128 %tmp104, %mul111
  %out113 = load [256 x i128]*, [256 x i128]** %fpsubtract.out.declare_output, align 8
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %out113, i128 0, i128 %i.2
  %out116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out116, i128 %add112, i1* @constraint.212)
  %ptr_getter117 = load [256 x i128]*, [256 x i128]** %fpsubtract.out.declare_output, align 8
  %out119 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter117, i128 0, i128 %i.2
  store i128 %add112, i128* %out119, align 4
  br label %loop.latch120

loop.latch120:                                    ; preds = %loop.body85
  %add122 = add i128 %i.2, 1
  %slt125 = icmp slt i128 %add122, %fpsubtract.k.read_arg_inner
  br i1 %slt125, label %loop.body85, label %loop.exit126

loop.exit126:                                     ; preds = %loop.latch120
  br label %arraydim

arraydim:                                         ; preds = %loop.exit126
  %ptr_cast = bitcast [256 x i128]** %fpsubtract.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpsubtract.k.read_arg_inner)
  %ptr_cast127 = bitcast [256 x i128]** %fpsubtract.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast127, i128 %fpsubtract.k.read_arg_inner)
  %ptr_cast128 = bitcast [256 x i128]** %fpsubtract.tmp.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast128, i128 %fpsubtract.k.read_arg_inner)
  %ptr_cast129 = bitcast [256 x i128]** %fpsubtract.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast129, i128 %fpsubtract.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %fpsubtract.flag.write_inter_inner131 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store i128 %fpsubtract.flag.read_inter_inner, i128* %fpsubtract.flag.write_inter_inner131, align 4
  %tmp132 = load [256 x i128]*, [256 x i128]** %fpsubtract.tmp.declare_inter, align 8
  %fpsubtract.tmp.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 6
  store [256 x i128]* %tmp132, [256 x i128]** %fpsubtract.tmp.write_inter_inner, align 8
  %out133 = load [256 x i128]*, [256 x i128]** %fpsubtract.out.declare_output, align 8
  %fpsubtract.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 7
  store [256 x i128]* %out133, [256 x i128]** %fpsubtract.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpsubtract* @fn_template_build_fpsubtract(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsubtract = alloca %struct_template_circuit_fpsubtract, align 8
  %fpsubtract.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 0
  store i128 %0, i128* %fpsubtract.n.write_arg_inner, align 4
  %fpsubtract.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 1
  store i128 %1, i128* %fpsubtract.k.write_arg_inner, align 4
  %fpsubtract.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpsubtract.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract
}

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %l2 = call i128 @fn_intrinsic_utils_init()
  %ka13 = call i128 @fn_intrinsic_utils_init()
  %i14 = call i128 @fn_intrinsic_utils_init()
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 0, [256 x i128]* %2, [256 x i128]* %3)
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array16 = alloca [256 x i128], align 8
  %uniform_array17 = alloca [256 x i128], align 8
  %uniform_array18 = alloca [256 x i128], align 8
  %uniform_array19 = alloca [256 x i128], align 8
  %uniform_array20 = alloca [256 x i128], align 8
  %uniform_array21 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %amodp24 = load i128, i128* %array_getter, align 4
  %a26 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %amodp24, i128* %a26, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %p30 = load i128, i128* %array_getter29, align 4
  %b33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.0
  store i128 %p30, i128* %b33, align 4
  %x36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.0
  store i128 0, i128* %x36, align 4
  %y39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.0
  store i128 0, i128* %y39, align 4
  %u42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.0
  store i128 0, i128* %u42, align 4
  %v45 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.0
  store i128 0, i128* %v45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %y50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 0
  store i128 1, i128* %y50, align 4
  %u52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 0
  store i128 1, i128* %u52, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch210, %loop.exit
  %l.0 = phi i128 [ 0, %loop.exit ], [ %add212, %loop.latch210 ]
  br label %loop.body54

loop.body54:                                      ; preds = %loop.latch61, %loop.body53
  %ka.0 = phi i128 [ 0, %loop.body53 ], [ %ka.1, %loop.latch61 ]
  %i.1 = phi i128 [ 0, %loop.body53 ], [ %add63, %loop.latch61 ]
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %a58 = load i128, i128* %array_getter57, align 4
  %ne = icmp ne i128 %a58, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body54
  %add60 = add i128 %i.1, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body54
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ka.1 = phi i128 [ %add60, %if.true ], [ %ka.0, %if.false ]
  br label %loop.latch61

loop.latch61:                                     ; preds = %if.exit
  %add63 = add i128 %i.1, 1
  %slt66 = icmp slt i128 %add63, %1
  br i1 %slt66, label %loop.body54, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  %eq = icmp eq i128 %ka.1, 0
  br i1 %eq, label %if.true68, label %if.false69

if.true68:                                        ; preds = %loop.exit67
  br label %loop.body71

if.false69:                                       ; preds = %loop.exit67
  br label %if.exit87

loop.body71:                                      ; preds = %loop.latch79, %if.true68
  %i.2 = phi i128 [ 0, %if.true68 ], [ %add81, %loop.latch79 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.2
  %x75 = load i128, i128* %array_getter74, align 4
  %ret78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array21, i128 0, i128 %i.2
  store i128 %x75, i128* %ret78, align 4
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body71
  %add81 = add i128 %i.2, 1
  %slt84 = icmp slt i128 %add81, %1
  br i1 %slt84, label %loop.body71, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  ret [256 x i128]* %uniform_array21

if.exit87:                                        ; preds = %if.false69
  %sub = sub i128 %1, %ka.1
  %call94 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %ka.1, i128 %sub, [256 x i128]* %uniform_array16, [256 x i128]* %uniform_array)
  %uniform_array95 = alloca [256 x i128], align 8
  br label %loop.body96

loop.body96:                                      ; preds = %loop.latch104, %if.exit87
  %i.3 = phi i128 [ 0, %if.exit87 ], [ %add106, %loop.latch104 ]
  %array_getter99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 0, i128 %i.3
  %r100 = load i128, i128* %array_getter99, align 4
  %q103 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.3
  store i128 %r100, i128* %q103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body96
  %add106 = add i128 %i.3, 1
  %sub110 = sub i128 %1, %ka.1
  %add111 = add i128 %sub110, 1
  %slt112 = icmp slt i128 %add106, %add111
  br i1 %slt112, label %loop.body96, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch104
  %sub116 = sub i128 %1, %ka.1
  %add117 = add i128 %sub116, 1
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit113
  %i.4 = phi i128 [ %add117, %loop.exit113 ], [ %add124, %loop.latch122 ]
  %q121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.4
  store i128 0, i128* %q121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %add124 = add i128 %i.4, 1
  %slt127 = icmp slt i128 %add124, %1
  br i1 %slt127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  %call137 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array19, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call139 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array17, [256 x i128]* %call137, [256 x i128]* %3)
  %call148 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array20, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call150 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array18, [256 x i128]* %call148, [256 x i128]* %3)
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch203, %loop.exit128
  %i.5 = phi i128 [ 0, %loop.exit128 ], [ %add205, %loop.latch203 ]
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  %a155 = load i128, i128* %array_getter154, align 4
  %b158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.5
  store i128 %a155, i128* %b158, align 4
  %slt163 = icmp slt i128 %i.5, %ka.1
  br i1 %slt163, label %if.true159, label %if.false160

if.true159:                                       ; preds = %loop.body151
  %array_getter166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 1, i128 %i.5
  %r167 = load i128, i128* %array_getter166, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %r167, i128* %a170, align 4
  br label %if.exit174

if.false160:                                      ; preds = %loop.body151
  %a173 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 0, i128* %a173, align 4
  br label %if.exit174

if.exit174:                                       ; preds = %if.false160, %if.true159
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  %u178 = load i128, i128* %array_getter177, align 4
  %x181 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.5
  store i128 %u178, i128* %x181, align 4
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  %v185 = load i128, i128* %array_getter184, align 4
  %y188 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.5
  store i128 %v185, i128* %y188, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %call139, i128 0, i128 %i.5
  %newu192 = load i128, i128* %array_getter191, align 4
  %u195 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  store i128 %newu192, i128* %u195, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %call150, i128 0, i128 %i.5
  %newv199 = load i128, i128* %array_getter198, align 4
  %v202 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  store i128 %newv199, i128* %v202, align 4
  br label %loop.latch203

loop.latch203:                                    ; preds = %if.exit174
  %add205 = add i128 %i.5, 1
  %slt208 = icmp slt i128 %add205, %1
  br i1 %slt208, label %loop.body151, label %loop.exit209

loop.exit209:                                     ; preds = %loop.latch203
  br label %loop.latch210

loop.latch210:                                    ; preds = %loop.exit209
  %add212 = add i128 %l.0, 1
  %slt214 = icmp slt i128 %add212, 1000
  br i1 %slt214, label %loop.body53, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch210
  call void @fn_intrinsic_utils_assert(i1 false)
  ret [256 x i128]* %uniform_array21
}

define void @fn_template_init_bigaddmodp(%struct_template_circuit_bigaddmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 0
  %bigaddmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 1
  %bigaddmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
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
  %bigaddmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %bigaddmodp.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigaddmodp.n.read_arg_inner, i128 %bigaddmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add36, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %bigaddmodp.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.0
  %add17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add17, i128 %a12, i1* @constraint.213)
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %add21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter19, i128 0, i128 %i.0
  store i128 %a12, i128* %add21, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigaddmodp.b.declare_input, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.0
  %add29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add29, i128 %b24, i1* @constraint.214)
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %add34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter32, i128 0, i128 %i.0
  store i128 %b24, i128* %add34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add36 = add i128 %i.0, 1
  %slt = icmp slt i128 %add36, %bigaddmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add41 = add i128 %bigaddmodp.k.read_arg_inner, 1
  %call42 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigaddmodp.n.read_arg_inner, i128 %add41)
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch72, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add74, %loop.latch72 ]
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.1
  %add48 = load i128, i128* %array_getter47, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.1
  %lt53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt53, i128 %add48, i1* @constraint.215)
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 2
  %biglessthan.a.read_input_outter56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %lt58 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter56, i128 0, i128 %i.1
  store i128 %add48, i128* %lt58, align 4
  %p = load [256 x i128]*, [256 x i128]** %bigaddmodp.p.declare_input, align 8
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i.1
  %p61 = load i128, i128* %array_getter60, align 4
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.1
  %lt66 = load i128, i128* %array_getter65, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt66, i128 %p61, i1* @constraint.216)
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 3
  %biglessthan.b.read_input_outter69 = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %lt71 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter69, i128 0, i128 %i.1
  store i128 %p61, i128* %lt71, align 4
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.body43
  %add74 = add i128 %i.1, 1
  %slt77 = icmp slt i128 %add74, %bigaddmodp.k.read_arg_inner
  br i1 %slt77, label %loop.body43, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter81 = load [256 x i128]*, [256 x i128]** %struct_getter80, align 8
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter81, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %add84 = load i128, i128* %array_getter83, align 4
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 2
  %biglessthan.a.read_input_outter87 = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter87, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %lt90 = load i128, i128* %array_getter89, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt90, i128 %add84, i1* @constraint.217)
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 2
  %biglessthan.a.read_input_outter93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %lt95 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter93, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 %add84, i128* %lt95, align 4
  %struct_getter97 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 3
  %biglessthan.b.read_input_outter98 = load [256 x i128]*, [256 x i128]** %struct_getter97, align 8
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter98, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %lt101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt101, i128 0, i1* @constraint.218)
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 3
  %biglessthan.b.read_input_outter104 = load [256 x i128]*, [256 x i128]** %struct_getter103, align 8
  %lt106 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter104, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 0, i128* %lt106, align 4
  %add109 = add i128 %bigaddmodp.k.read_arg_inner, 1
  %call110 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %bigaddmodp.n.read_arg_inner, i128 %add109)
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch145, %loop.exit78
  %i.2 = phi i128 [ 0, %loop.exit78 ], [ %add147, %loop.latch145 ]
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter114 = load [256 x i128]*, [256 x i128]** %struct_getter113, align 8
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter114, i128 0, i128 %i.2
  %add117 = load i128, i128* %array_getter116, align 4
  %struct_getter119 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter119, align 8
  %array_getter121 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.2
  %sub122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub122, i128 %add117, i1* @constraint.219)
  %struct_getter124 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 2
  %bigsub.a.read_input_outter125 = load [256 x i128]*, [256 x i128]** %struct_getter124, align 8
  %sub127 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter125, i128 0, i128 %i.2
  store i128 %add117, i128* %sub127, align 4
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call42, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter129, align 4
  %sub130 = sub i128 1, %biglessthan.out.read_output_outter
  %p131 = load [256 x i128]*, [256 x i128]** %bigaddmodp.p.declare_input, align 8
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %p131, i128 0, i128 %i.2
  %p134 = load i128, i128* %array_getter133, align 4
  %mul = mul i128 %sub130, %p134
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.2
  %sub139 = load i128, i128* %array_getter138, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub139, i128 %mul, i1* @constraint.220)
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 3
  %bigsub.b.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %sub144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter142, i128 0, i128 %i.2
  store i128 %mul, i128* %sub144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body111
  %add147 = add i128 %i.2, 1
  %slt150 = icmp slt i128 %add147, %bigaddmodp.k.read_arg_inner
  br i1 %slt150, label %loop.body111, label %loop.exit151

loop.exit151:                                     ; preds = %loop.latch145
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter154 = load [256 x i128]*, [256 x i128]** %struct_getter153, align 8
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter154, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %add157 = load i128, i128* %array_getter156, align 4
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 2
  %bigsub.a.read_input_outter160 = load [256 x i128]*, [256 x i128]** %struct_getter159, align 8
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter160, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub163 = load i128, i128* %array_getter162, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub163, i128 %add157, i1* @constraint.221)
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 2
  %bigsub.a.read_input_outter166 = load [256 x i128]*, [256 x i128]** %struct_getter165, align 8
  %sub168 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter166, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 %add157, i128* %sub168, align 4
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 3
  %bigsub.b.read_input_outter171 = load [256 x i128]*, [256 x i128]** %struct_getter170, align 8
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter171, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub174 = load i128, i128* %array_getter173, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub174, i128 0, i1* @constraint.222)
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 3
  %bigsub.b.read_input_outter177 = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %sub179 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter177, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 0, i128* %sub179, align 4
  %struct_getter181 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter181, align 8
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub184 = load i128, i128* %array_getter183, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub184, i128 0, i1* @constraint.223)
  br label %loop.body185

loop.body185:                                     ; preds = %loop.latch199, %loop.exit151
  %i.3 = phi i128 [ 0, %loop.exit151 ], [ %add201, %loop.latch199 ]
  %struct_getter187 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call110, i32 0, i32 4
  %bigsub.out.read_output_outter188 = load [256 x i128]*, [256 x i128]** %struct_getter187, align 8
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter188, i128 0, i128 %i.3
  %sub191 = load i128, i128* %array_getter190, align 4
  %out192 = load [256 x i128]*, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %out192, i128 0, i128 %i.3
  %out195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out195, i128 %sub191, i1* @constraint.224)
  %ptr_getter196 = load [256 x i128]*, [256 x i128]** %bigaddmodp.out.declare_output, align 8
  %out198 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter196, i128 0, i128 %i.3
  store i128 %sub191, i128* %out198, align 4
  br label %loop.latch199

loop.latch199:                                    ; preds = %loop.body185
  %add201 = add i128 %i.3, 1
  %slt204 = icmp slt i128 %add201, %bigaddmodp.k.read_arg_inner
  br i1 %slt204, label %loop.body185, label %loop.exit205

loop.exit205:                                     ; preds = %loop.latch199
  br label %arraydim

arraydim:                                         ; preds = %loop.exit205
  %ptr_cast = bitcast [256 x i128]** %bigaddmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigaddmodp.k.read_arg_inner)
  %ptr_cast206 = bitcast [256 x i128]** %bigaddmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast206, i128 %bigaddmodp.k.read_arg_inner)
  %ptr_cast207 = bitcast [256 x i128]** %bigaddmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast207, i128 %bigaddmodp.k.read_arg_inner)
  %ptr_cast208 = bitcast [256 x i128]** %bigaddmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast208, i128 %bigaddmodp.k.read_arg_inner)
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

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %isZero4 = call i128 @fn_intrinsic_utils_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %isZero.0 = phi i128 [ 1, %entry ], [ %isZero.1, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %isZero.1 = phi i128 [ 0, %if.true ], [ %isZero.0, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %eq = icmp eq i128 %isZero.1, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %i.1 = phi i128 [ 0, %if.true12 ], [ %add20, %loop.latch18 ]
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %add20 = add i128 %i.1, 1
  %slt23 = icmp slt i128 %add20, %1
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  ret [256 x i128]* %uniform_array

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i.2 = phi i128 [ 0, %if.exit26 ], [ %add46, %loop.latch44 ]
  %slt33 = icmp slt i128 %i.2, %1
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.2
  %p36 = load i128, i128* %array_getter35, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %add46 = add i128 %i.2, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %i.3 = phi i128 [ 0, %loop.exit49 ], [ %add57, %loop.latch55 ]
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 %i.3
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %add57 = add i128 %i.3, 1
  %slt59 = icmp slt i128 %add57, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %uniform_array27, [256 x i128]* %uniform_array50)
  %uniform_array67 = alloca [256 x i128], align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %uniform_array27, [256 x i128]* %call)
  ret [256 x i128]* %call73
}

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %carry3 = call i128 @fn_intrinsic_utils_init()
  %Y_is_zero5 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %3)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 50
  %a_short9 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short9, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call13 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %call, [256 x i128]* %4)
  br label %if.exit139

if.false:                                         ; preds = %entry
  %uniform_array14 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %i.0 = phi i128 [ 0, %if.false ], [ %add, %loop.latch ]
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 %i.0
  %a_short18 = load i128, i128* %array_getter17, align 4
  %neg = sub i128 0, %a_short18
  %a_pos20 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 %i.0
  store i128 %neg, i128* %a_pos20, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add25 = add i128 %1, %2
  %slt = icmp slt i128 %add, %add25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call31 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %uniform_array14, [256 x i128]* %4)
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch39, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add41, %loop.latch39 ]
  %Y_is_zero.0 = phi i128 [ 1, %loop.exit ], [ %Y_is_zero.1, %loop.latch39 ]
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1, i128 %i.1
  %X38 = load i128, i128* %array_getter37, align 4
  %ne = icmp ne i128 %X38, 0
  br i1 %ne, label %if.true33, label %if.false34

if.true33:                                        ; preds = %loop.body32
  br label %if.exit

if.false34:                                       ; preds = %loop.body32
  br label %if.exit

if.exit:                                          ; preds = %if.false34, %if.true33
  %Y_is_zero.1 = phi i128 [ 0, %if.true33 ], [ %Y_is_zero.0, %if.false34 ]
  br label %loop.latch39

loop.latch39:                                     ; preds = %if.exit
  %add41 = add i128 %i.1, 1
  %slt44 = icmp slt i128 %add41, %1
  br i1 %slt44, label %loop.body32, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %eq49 = icmp eq i128 %Y_is_zero.1, 1
  br i1 %eq49, label %if.true46, label %if.false47

if.true46:                                        ; preds = %loop.exit45
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X52 = load [256 x i128], [256 x i128]* %array_getter51, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X52, [256 x i128]* %spice_inline_array, align 4
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out54 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit122

if.false47:                                       ; preds = %loop.exit45
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X60 = load [256 x i128], [256 x i128]* %array_getter59, align 4
  %spice_inline_array61 = alloca [256 x i128], align 8
  store [256 x i128] %X60, [256 x i128]* %spice_inline_array61, align 4
  %call62 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %spice_inline_array61)
  %out64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out64 to i8*
  %8 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X67 = load i128, i128* %array_getter66, align 4
  %add68 = add i128 %X67, 1
  %X70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  store i128 %add68, i128* %X70, align 4
  %array_getter74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X75 = load i128, i128* %array_getter74, align 4
  %lshift = shl i128 1, %0
  %sge = icmp sge i128 %X75, %lshift
  br i1 %sge, label %if.true71, label %if.false72

if.true71:                                        ; preds = %if.false47
  br label %loop.body77

if.false72:                                       ; preds = %if.false47
  br label %if.exit121

loop.body77:                                      ; preds = %loop.latch105, %if.true71
  %i.2 = phi i128 [ 0, %if.true71 ], [ %add107, %loop.latch105 ]
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X81 = load i128, i128* %array_getter80, align 4
  %lshift83 = shl i128 1, %0
  %sdiv = sdiv i128 %X81, %lshift83
  %add86 = add i128 %i.2, 1
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add86
  %X88 = load i128, i128* %array_getter87, align 4
  %add90 = add i128 %X88, %sdiv
  %add93 = add i128 %i.2, 1
  %X94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add93
  store i128 %add90, i128* %X94, align 4
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X98 = load i128, i128* %array_getter97, align 4
  %lshift101 = shl i128 1, %0
  %mul = mul i128 %sdiv, %lshift101
  %sub = sub i128 %X98, %mul
  %X104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  store i128 %sub, i128* %X104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body77
  %add107 = add i128 %i.2, 1
  %sub110 = sub i128 %2, 1
  %slt111 = icmp slt i128 %add107, %sub110
  br i1 %slt111, label %loop.body77, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch105
  %sub115 = sub i128 %2, 1
  %array_getter116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %sub115
  %X117 = load i128, i128* %array_getter116, align 4
  %lshift119 = shl i128 1, %0
  %slt120 = icmp slt i128 %X117, %lshift119
  call void @fn_intrinsic_utils_assert(i1 %slt120)
  br label %if.exit121

if.exit121:                                       ; preds = %loop.exit112, %if.false72
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true46
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch132, %if.exit122
  %i.3 = phi i128 [ 0, %if.exit122 ], [ %add134, %loop.latch132 ]
  %array_getter126 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.3
  %X127 = load i128, i128* %array_getter126, align 4
  %neg128 = sub i128 0, %X127
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.3
  store i128 %neg128, i128* %out131, align 4
  br label %loop.latch132

loop.latch132:                                    ; preds = %loop.body123
  %add134 = add i128 %i.3, 1
  %slt137 = icmp slt i128 %add134, %2
  br i1 %slt137, label %loop.body123, label %loop.exit138

loop.exit138:                                     ; preds = %loop.latch132
  br label %if.exit139

if.exit139:                                       ; preds = %loop.exit138, %if.true
  %out.0 = phi [256 x [256 x i128]]* [ %call13, %if.true ], [ %uniform_array, %loop.exit138 ]
  ret [256 x [256 x i128]]* %out.0
}

define void @fn_template_init_bigsubmodp(%struct_template_circuit_bigsubmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 0
  %bigsubmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 1
  %bigsubmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
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
  %flag = call i128 @fn_intrinsic_utils_init()
  %bigsubmodp.tmp.declare_inter = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %tmp, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %bigsubmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %sle = icmp sle i128 %bigsubmodp.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %bigsubmodp.n.read_arg_inner, i128 %bigsubmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add37, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %bigsubmodp.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a13 = load i128, i128* %array_getter, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.0
  %sub18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub18, i128 %a13, i1* @constraint.225)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %sub22 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter20, i128 0, i128 %i.0
  store i128 %a13, i128* %sub22, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigsubmodp.b.declare_input, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b25 = load i128, i128* %array_getter24, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.0
  %sub30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub30, i128 %b25, i1* @constraint.226)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter33 = load [256 x i128]*, [256 x i128]** %struct_getter32, align 8
  %sub35 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter33, i128 0, i128 %i.0
  store i128 %b25, i128* %sub35, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add37 = add i128 %i.0, 1
  %slt = icmp slt i128 %add37, %bigsubmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter41, align 4
  call void @fn_intrinsic_utils_constraint(i128 %flag, i128 %bigsub.underflow.read_output_outter, i1* @constraint.227)
  %bigsubmodp.flag.write_inter_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_outter, i128* %bigsubmodp.flag.write_inter_inner, align 4
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  %bigsubmodp.flag.read_inter_inner = load i128, i128* %struct_getter45, align 4
  %call48 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigsubmodp.n.read_arg_inner, i128 %bigsubmodp.k.read_arg_inner)
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch78, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add80, %loop.latch78 ]
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %i.1
  %sub54 = load i128, i128* %array_getter53, align 4
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call48, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.1
  %add59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add59, i128 %sub54, i1* @constraint.228)
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call48, i32 0, i32 2
  %bigadd.a.read_input_outter62 = load [256 x i128]*, [256 x i128]** %struct_getter61, align 8
  %add64 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter62, i128 0, i128 %i.1
  store i128 %sub54, i128* %add64, align 4
  %p = load [256 x i128]*, [256 x i128]** %bigsubmodp.p.declare_input, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i.1
  %p67 = load i128, i128* %array_getter66, align 4
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call48, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.1
  %add72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add72, i128 %p67, i1* @constraint.229)
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call48, i32 0, i32 3
  %bigadd.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %add77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter75, i128 0, i128 %i.1
  store i128 %p67, i128* %add77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body49
  %add80 = add i128 %i.1, 1
  %slt83 = icmp slt i128 %add80, %bigsubmodp.k.read_arg_inner
  br i1 %slt83, label %loop.body49, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch121, %loop.exit84
  %i.2 = phi i128 [ 0, %loop.exit84 ], [ %add123, %loop.latch121 ]
  %sub88 = sub i128 1, %bigsubmodp.flag.read_inter_inner
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter91 = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter91, i128 0, i128 %i.2
  %sub94 = load i128, i128* %array_getter93, align 4
  %mul = mul i128 %sub88, %sub94
  %tmp95 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp95, i128 0, i128 %i.2
  %tmp98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_utils_constraint(i128 %tmp98, i128 %mul, i1* @constraint.230)
  %ptr_getter99 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %tmp101 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter99, i128 0, i128 %i.2
  store i128 %mul, i128* %tmp101, align 4
  %tmp102 = load [256 x i128]*, [256 x i128]** %bigsubmodp.tmp.declare_inter, align 8
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp102, i128 0, i128 %i.2
  %tmp105 = load i128, i128* %array_getter104, align 4
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call48, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter108, align 8
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.2
  %add111 = load i128, i128* %array_getter110, align 4
  %mul112 = mul i128 %bigsubmodp.flag.read_inter_inner, %add111
  %add113 = add i128 %tmp105, %mul112
  %out114 = load [256 x i128]*, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %out114, i128 0, i128 %i.2
  %out117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out117, i128 %add113, i1* @constraint.231)
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %bigsubmodp.out.declare_output, align 8
  %out120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %i.2
  store i128 %add113, i128* %out120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body86
  %add123 = add i128 %i.2, 1
  %slt126 = icmp slt i128 %add123, %bigsubmodp.k.read_arg_inner
  br i1 %slt126, label %loop.body86, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  br label %arraydim

arraydim:                                         ; preds = %loop.exit127
  %ptr_cast = bitcast [256 x i128]** %bigsubmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigsubmodp.k.read_arg_inner)
  %ptr_cast128 = bitcast [256 x i128]** %bigsubmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast128, i128 %bigsubmodp.k.read_arg_inner)
  %ptr_cast129 = bitcast [256 x i128]** %bigsubmodp.tmp.declare_inter to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast129, i128 %bigsubmodp.k.read_arg_inner)
  %ptr_cast130 = bitcast [256 x i128]** %bigsubmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast130, i128 %bigsubmodp.k.read_arg_inner)
  %ptr_cast131 = bitcast [256 x i128]** %bigsubmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast131, i128 %bigsubmodp.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %bigsubmodp.flag.write_inter_inner133 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store i128 %bigsubmodp.flag.read_inter_inner, i128* %bigsubmodp.flag.write_inter_inner133, align 4
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

define void @fn_template_init_fpadd(%struct_template_circuit_fpadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 0
  %fpadd.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 1
  %fpadd.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 2
  %fpadd.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 3
  %fpadd.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpadd.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpadd.a.read_input_inner, [256 x i128]** %fpadd.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 4
  %fpadd.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %fpadd.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpadd.b.read_input_inner, [256 x i128]** %fpadd.b.declare_input, align 8
  %fpadd.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %fpadd.out.declare_output, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %fpadd.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %fpadd.n.read_arg_inner, i128 %fpadd.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %fpadd.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a11 = load i128, i128* %array_getter, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.0
  %add16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add16, i128 %a11, i1* @constraint.232)
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %add20 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter18, i128 0, i128 %i.0
  store i128 %a11, i128* %add20, align 4
  %b = load [256 x i128]*, [256 x i128]** %fpadd.b.declare_input, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b23 = load i128, i128* %array_getter22, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.0
  %add28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_utils_constraint(i128 %add28, i128 %b23, i1* @constraint.233)
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %add33 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter31, i128 0, i128 %i.0
  store i128 %b23, i128* %add33, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add35 = add i128 %i.0, 1
  %slt = icmp slt i128 %add35, %fpadd.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add40 = add i128 %fpadd.k.read_arg_inner, 1
  %call41 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpadd.n.read_arg_inner, i128 %add40)
  br label %loop.body42

loop.body42:                                      ; preds = %loop.latch71, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add73, %loop.latch71 ]
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.1
  %add47 = load i128, i128* %array_getter46, align 4
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.1
  %lt52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt52, i128 %add47, i1* @constraint.234)
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 2
  %biglessthan.a.read_input_outter55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %lt57 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter55, i128 0, i128 %i.1
  store i128 %add47, i128* %lt57, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.1
  %p60 = load i128, i128* %array_getter59, align 4
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter62, align 8
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.1
  %lt65 = load i128, i128* %array_getter64, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt65, i128 %p60, i1* @constraint.235)
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 3
  %biglessthan.b.read_input_outter68 = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %lt70 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter68, i128 0, i128 %i.1
  store i128 %p60, i128* %lt70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body42
  %add73 = add i128 %i.1, 1
  %slt76 = icmp slt i128 %add73, %fpadd.k.read_arg_inner
  br i1 %slt76, label %loop.body42, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter80 = load [256 x i128]*, [256 x i128]** %struct_getter79, align 8
  %array_getter82 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter80, i128 0, i128 %fpadd.k.read_arg_inner
  %add83 = load i128, i128* %array_getter82, align 4
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 2
  %biglessthan.a.read_input_outter86 = load [256 x i128]*, [256 x i128]** %struct_getter85, align 8
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter86, i128 0, i128 %fpadd.k.read_arg_inner
  %lt89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt89, i128 %add83, i1* @constraint.236)
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 2
  %biglessthan.a.read_input_outter92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %lt94 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter92, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 %add83, i128* %lt94, align 4
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 3
  %biglessthan.b.read_input_outter97 = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter97, i128 0, i128 %fpadd.k.read_arg_inner
  %lt100 = load i128, i128* %array_getter99, align 4
  call void @fn_intrinsic_utils_constraint(i128 %lt100, i128 0, i1* @constraint.237)
  %struct_getter102 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 3
  %biglessthan.b.read_input_outter103 = load [256 x i128]*, [256 x i128]** %struct_getter102, align 8
  %lt105 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter103, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 0, i128* %lt105, align 4
  %add108 = add i128 %fpadd.k.read_arg_inner, 1
  %call109 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpadd.n.read_arg_inner, i128 %add108)
  br label %loop.body110

loop.body110:                                     ; preds = %loop.latch148, %loop.exit77
  %i.2 = phi i128 [ 0, %loop.exit77 ], [ %add150, %loop.latch148 ]
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter113 = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter113, i128 0, i128 %i.2
  %add116 = load i128, i128* %array_getter115, align 4
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter118, align 8
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.2
  %sub121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub121, i128 %add116, i1* @constraint.238)
  %struct_getter123 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 2
  %bigsub.a.read_input_outter124 = load [256 x i128]*, [256 x i128]** %struct_getter123, align 8
  %sub126 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter124, i128 0, i128 %i.2
  store i128 %add116, i128* %sub126, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.2
  %p130 = load i128, i128* %array_getter129, align 4
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call41, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter132, align 4
  %array_getter135 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.2
  %p136 = load i128, i128* %array_getter135, align 4
  %mul = mul i128 %biglessthan.out.read_output_outter, %p136
  %sub137 = sub i128 %p130, %mul
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %array_getter141 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.2
  %sub142 = load i128, i128* %array_getter141, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub142, i128 %sub137, i1* @constraint.239)
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 3
  %bigsub.b.read_input_outter145 = load [256 x i128]*, [256 x i128]** %struct_getter144, align 8
  %sub147 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter145, i128 0, i128 %i.2
  store i128 %sub137, i128* %sub147, align 4
  br label %loop.latch148

loop.latch148:                                    ; preds = %loop.body110
  %add150 = add i128 %i.2, 1
  %slt153 = icmp slt i128 %add150, %fpadd.k.read_arg_inner
  br i1 %slt153, label %loop.body110, label %loop.exit154

loop.exit154:                                     ; preds = %loop.latch148
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter157 = load [256 x i128]*, [256 x i128]** %struct_getter156, align 8
  %array_getter159 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter157, i128 0, i128 %fpadd.k.read_arg_inner
  %add160 = load i128, i128* %array_getter159, align 4
  %struct_getter162 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 2
  %bigsub.a.read_input_outter163 = load [256 x i128]*, [256 x i128]** %struct_getter162, align 8
  %array_getter165 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter163, i128 0, i128 %fpadd.k.read_arg_inner
  %sub166 = load i128, i128* %array_getter165, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub166, i128 %add160, i1* @constraint.240)
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 2
  %bigsub.a.read_input_outter169 = load [256 x i128]*, [256 x i128]** %struct_getter168, align 8
  %sub171 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter169, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 %add160, i128* %sub171, align 4
  %struct_getter173 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 3
  %bigsub.b.read_input_outter174 = load [256 x i128]*, [256 x i128]** %struct_getter173, align 8
  %array_getter176 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter174, i128 0, i128 %fpadd.k.read_arg_inner
  %sub177 = load i128, i128* %array_getter176, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub177, i128 0, i1* @constraint.241)
  %struct_getter179 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 3
  %bigsub.b.read_input_outter180 = load [256 x i128]*, [256 x i128]** %struct_getter179, align 8
  %sub182 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter180, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 0, i128* %sub182, align 4
  %struct_getter184 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter184, align 8
  %array_getter186 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %fpadd.k.read_arg_inner
  %sub187 = load i128, i128* %array_getter186, align 4
  call void @fn_intrinsic_utils_constraint(i128 %sub187, i128 0, i1* @constraint.242)
  br label %loop.body188

loop.body188:                                     ; preds = %loop.latch202, %loop.exit154
  %i.3 = phi i128 [ 0, %loop.exit154 ], [ %add204, %loop.latch202 ]
  %struct_getter190 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call109, i32 0, i32 4
  %bigsub.out.read_output_outter191 = load [256 x i128]*, [256 x i128]** %struct_getter190, align 8
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter191, i128 0, i128 %i.3
  %sub194 = load i128, i128* %array_getter193, align 4
  %out195 = load [256 x i128]*, [256 x i128]** %fpadd.out.declare_output, align 8
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %out195, i128 0, i128 %i.3
  %out198 = load i128, i128* %array_getter197, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out198, i128 %sub194, i1* @constraint.243)
  %ptr_getter199 = load [256 x i128]*, [256 x i128]** %fpadd.out.declare_output, align 8
  %out201 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter199, i128 0, i128 %i.3
  store i128 %sub194, i128* %out201, align 4
  br label %loop.latch202

loop.latch202:                                    ; preds = %loop.body188
  %add204 = add i128 %i.3, 1
  %slt207 = icmp slt i128 %add204, %fpadd.k.read_arg_inner
  br i1 %slt207, label %loop.body188, label %loop.exit208

loop.exit208:                                     ; preds = %loop.latch202
  br label %arraydim

arraydim:                                         ; preds = %loop.exit208
  %ptr_cast = bitcast [256 x i128]** %fpadd.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpadd.k.read_arg_inner)
  %ptr_cast209 = bitcast [256 x i128]** %fpadd.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast209, i128 %fpadd.k.read_arg_inner)
  %ptr_cast210 = bitcast [256 x i128]** %fpadd.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast210, i128 %fpadd.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out211 = load [256 x i128]*, [256 x i128]** %fpadd.out.declare_output, align 8
  %fpadd.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 5
  store [256 x i128]* %out211, [256 x i128]** %fpadd.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpadd* @fn_template_build_fpadd(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpadd = alloca %struct_template_circuit_fpadd, align 8
  %fpadd.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 0
  store i128 %0, i128* %fpadd.n.write_arg_inner, align 4
  %fpadd.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 1
  store i128 %1, i128* %fpadd.k.write_arg_inner, align 4
  %fpadd.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpadd.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpadd* %struct_template_circuit_fpadd
}

define void @fn_template_init_primereduce(%struct_template_circuit_primereduce* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 0
  %primereduce.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 1
  %primereduce.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 2
  %primereduce.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 3
  %primereduce.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 4
  %primereduce.m_out.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 5
  %primereduce.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %primereduce.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %primereduce.in.read_input_inner, [256 x i128]** %primereduce.in.declare_input, align 8
  %two = alloca [256 x i128]*, align 8
  %two6 = alloca [256 x i128], align 8
  store [256 x i128]* %two6, [256 x i128]** %two, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %r7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r7, [256 x [256 x i128]]** %r, align 8
  %j8 = call i128 @fn_intrinsic_utils_init()
  %pow2n = alloca [256 x i128]*, align 8
  %pow2n9 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2n9, [256 x i128]** %pow2n, align 8
  %pow2nk = alloca [256 x i128]*, align 8
  %pow2nk10 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2nk10, [256 x i128]** %pow2nk, align 8
  %i11 = call i128 @fn_intrinsic_utils_init()
  %e = alloca [256 x i128]*, align 8
  %e12 = alloca [256 x i128], align 8
  store [256 x i128]* %e12, [256 x i128]** %e, align 8
  %out_sum = alloca [256 x i128]*, align 8
  %out_sum13 = alloca [256 x i128], align 8
  store [256 x i128]* %out_sum13, [256 x i128]** %out_sum, align 8
  %primereduce.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %primereduce.out.declare_output, align 8
  %add = add i128 %primereduce.m.read_arg_inner, %primereduce.k.read_arg_inner
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %two, align 8
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %e, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %ptr_getter = load [256 x i128]*, [256 x i128]** %two, align 8
  %two19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 0, i128* %two19, align 4
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i.0
  store i128 0, i128* %e22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add24 = add i128 %i.0, 1
  %slt = icmp slt i128 %add24, %primereduce.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter27 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two28 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter27, i128 0, i128 0
  store i128 2, i128* %two28, align 4
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 0
  store i128 %primereduce.n.read_arg_inner, i128* %e30, align 4
  %two33 = load [256 x i128]*, [256 x i128]** %two, align 8
  %e34 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call = call [256 x i128]* @mod_exp(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %two33, [256 x i128]* %primereduce.p.read_arg_inner, [256 x i128]* %e34)
  store [256 x i128]* %call, [256 x i128]** %pow2n, align 8
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 0
  store i128 %primereduce.k.read_arg_inner, i128* %e37, align 4
  %lshift = shl i128 1, %primereduce.n.read_arg_inner
  %slt40 = icmp slt i128 %primereduce.k.read_arg_inner, %lshift
  call void @fn_intrinsic_utils_assert(i1 %slt40)
  %pow2n43 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %e45 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call46 = call [256 x i128]* @mod_exp(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %pow2n43, [256 x i128]* %primereduce.p.read_arg_inner, [256 x i128]* %e45)
  store [256 x i128]* %call46, [256 x i128]** %pow2nk, align 8
  %uniform_array48 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array48, [256 x [256 x i128]]** %r, align 8
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch66, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add68, %loop.latch66 ]
  %eq = icmp eq i128 %i.1, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body49
  %pow2nk51 = load [256 x i128]*, [256 x i128]** %pow2nk, align 8
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %r54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 %i.1
  %1 = bitcast [256 x i128]* %r54 to i8*
  %2 = bitcast [256 x i128]* %pow2nk51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body49
  %r57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %sub = sub i128 %i.1, 1
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r57, i128 0, i128 %sub
  %r59 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %r59, [256 x i128]* %spice_inline_array, align 4
  %pow2n60 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %call62 = call [256 x i128]* @prod_mod(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %spice_inline_array, [256 x i128]* %pow2n60, [256 x i128]* %primereduce.p.read_arg_inner)
  %ptr_getter63 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %r65 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter63, i128 0, i128 %i.1
  %3 = bitcast [256 x i128]* %r65 to i8*
  %4 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch66

loop.latch66:                                     ; preds = %if.exit
  %add68 = add i128 %i.1, 1
  %slt71 = icmp slt i128 %add68, %primereduce.m.read_arg_inner
  br i1 %slt71, label %loop.body49, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch66
  %uniform_array74 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array74, [256 x i128]** %out_sum, align 8
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch82, %loop.exit72
  %i.2 = phi i128 [ 0, %loop.exit72 ], [ %add84, %loop.latch82 ]
  %in = load [256 x i128]*, [256 x i128]** %primereduce.in.declare_input, align 8
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i.2
  %in78 = load i128, i128* %array_getter77, align 4
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %out_sum81 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %i.2
  store i128 %in78, i128* %out_sum81, align 4
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.body75
  %add84 = add i128 %i.2, 1
  %slt87 = icmp slt i128 %add84, %primereduce.k.read_arg_inner
  br i1 %slt87, label %loop.body75, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch82
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch117, %loop.exit88
  %i.3 = phi i128 [ 0, %loop.exit88 ], [ %add119, %loop.latch117 ]
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch110, %loop.body89
  %j.0 = phi i128 [ 0, %loop.body89 ], [ %add112, %loop.latch110 ]
  %out_sum91 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum91, i128 0, i128 %j.0
  %out_sum94 = load i128, i128* %array_getter93, align 4
  %in95 = load [256 x i128]*, [256 x i128]** %primereduce.in.declare_input, align 8
  %add98 = add i128 %i.3, %primereduce.k.read_arg_inner
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %in95, i128 0, i128 %add98
  %in100 = load i128, i128* %array_getter99, align 4
  %r101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r101, i128 0, i128 %i.3, i128 %j.0
  %r105 = load i128, i128* %array_getter104, align 4
  %mul = mul i128 %in100, %r105
  %add106 = add i128 %out_sum94, %mul
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %out_sum109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %j.0
  store i128 %add106, i128* %out_sum109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body90
  %add112 = add i128 %j.0, 1
  %slt115 = icmp slt i128 %add112, %primereduce.k.read_arg_inner
  br i1 %slt115, label %loop.body90, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit116
  %add119 = add i128 %i.3, 1
  %slt122 = icmp slt i128 %add119, %primereduce.m.read_arg_inner
  br i1 %slt122, label %loop.body89, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch136, %loop.exit123
  %i.4 = phi i128 [ 0, %loop.exit123 ], [ %add138, %loop.latch136 ]
  %out_sum125 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum125, i128 0, i128 %i.4
  %out_sum128 = load i128, i128* %array_getter127, align 4
  %out129 = load [256 x i128]*, [256 x i128]** %primereduce.out.declare_output, align 8
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %out129, i128 0, i128 %i.4
  %out132 = load i128, i128* %array_getter131, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out132, i128 %out_sum128, i1* @constraint.244)
  %ptr_getter133 = load [256 x i128]*, [256 x i128]** %primereduce.out.declare_output, align 8
  %out135 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter133, i128 0, i128 %i.4
  store i128 %out_sum128, i128* %out135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body124
  %add138 = add i128 %i.4, 1
  %slt141 = icmp slt i128 %add138, %primereduce.k.read_arg_inner
  br i1 %slt141, label %loop.body124, label %loop.exit142

loop.exit142:                                     ; preds = %loop.latch136
  br label %arraydim

arraydim:                                         ; preds = %loop.exit142
  %ptr_cast = bitcast [256 x i128]** %pow2n to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 50)
  %ptr_cast143 = bitcast [256 x i128]** %primereduce.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast143, i128 %primereduce.k.read_arg_inner)
  %ptr_cast144 = bitcast [256 x i128]** %e to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast144, i128 %primereduce.k.read_arg_inner)
  %ptr_cast145 = bitcast [256 x i128]** %out_sum to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast145, i128 %primereduce.k.read_arg_inner)
  %ptr_cast146 = bitcast [256 x i128]** %primereduce.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast146, i128 %add)
  %ptr_cast147 = bitcast [256 x i128]** %pow2nk to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast147, i128 50)
  %ptr_cast148 = bitcast [256 x [256 x i128]]** %r to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast148, i128 %primereduce.m.read_arg_inner, i128 50)
  %ptr_cast149 = bitcast [256 x i128]** %two to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast149, i128 %primereduce.k.read_arg_inner)
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

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  %mul = mul i128 2, %1
  %call32 = call [256 x i128]* @long_add(i128 %0, i128 %mul, [256 x i128]* %call, [256 x i128]* %call27)
  %add = add i128 %1, 1
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %add, [256 x i128]* %call32, [256 x i128]* %3)
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call37, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %call45 = call [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %3)
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %spice_inline_array52)
  %call58 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call53, [256 x i128]* %3)
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call58, i128 0, i128 1
  %out0_div61 = load [256 x i128], [256 x i128]* %array_getter60, align 4
  %spice_inline_array62 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div61, [256 x i128]* %spice_inline_array62, align 4
  %out63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out63 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %spice_inline_array70)
  %call76 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %call71)
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call76, [256 x i128]* %3)
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call81, i128 0, i128 1
  %out1_div84 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div84, [256 x i128]* %spice_inline_array85, align 4
  %out87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out87 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_bigmultmodp(%struct_template_circuit_bigmultmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 0
  %bigmultmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 1
  %bigmultmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
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
  %bigmultmodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %i5 = call i128 @fn_intrinsic_utils_init()
  %sle = icmp sle i128 %bigmultmodp.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmultmodp.n.read_arg_inner, i128 %bigmultmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %bigmultmodp.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.0
  %big_mult17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mult17, i128 %a12, i1* @constraint.245)
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 2
  %bigmult.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %big_mult21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter19, i128 0, i128 %i.0
  store i128 %a12, i128* %big_mult21, align 4
  %b = load [256 x i128]*, [256 x i128]** %bigmultmodp.b.declare_input, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.0
  %big_mult29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mult29, i128 %b24, i1* @constraint.246)
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 3
  %bigmult.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %big_mult34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter32, i128 0, i128 %i.0
  store i128 %b24, i128* %big_mult34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigmultmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call40 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %bigmultmodp.n.read_arg_inner, i128 %bigmultmodp.k.read_arg_inner)
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch57, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add59, %loop.latch57 ]
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.1
  %big_mult46 = load i128, i128* %array_getter45, align 4
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call40, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i.1
  %big_mod51 = load i128, i128* %array_getter50, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mod51, i128 %big_mult46, i1* @constraint.247)
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call40, i32 0, i32 2
  %bigmod.a.read_input_outter54 = load [256 x i128]*, [256 x i128]** %struct_getter53, align 8
  %big_mod56 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter54, i128 0, i128 %i.1
  store i128 %big_mult46, i128* %big_mod56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body41
  %add59 = add i128 %i.1, 1
  %mul = mul i128 2, %bigmultmodp.k.read_arg_inner
  %slt62 = icmp slt i128 %add59, %mul
  br i1 %slt62, label %loop.body41, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch78, %loop.exit63
  %i.2 = phi i128 [ 0, %loop.exit63 ], [ %add80, %loop.latch78 ]
  %p = load [256 x i128]*, [256 x i128]** %bigmultmodp.p.declare_input, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i.2
  %p67 = load i128, i128* %array_getter66, align 4
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call40, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i.2
  %big_mod72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mod72, i128 %p67, i1* @constraint.248)
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call40, i32 0, i32 3
  %bigmod.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %big_mod77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter75, i128 0, i128 %i.2
  store i128 %p67, i128* %big_mod77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body64
  %add80 = add i128 %i.2, 1
  %slt83 = icmp slt i128 %add80, %bigmultmodp.k.read_arg_inner
  br i1 %slt83, label %loop.body64, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch98, %loop.exit84
  %i.3 = phi i128 [ 0, %loop.exit84 ], [ %add100, %loop.latch98 ]
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call40, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 %i.3
  %big_mod90 = load i128, i128* %array_getter89, align 4
  %out91 = load [256 x i128]*, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %out91, i128 0, i128 %i.3
  %out94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out94, i128 %big_mod90, i1* @constraint.249)
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %bigmultmodp.out.declare_output, align 8
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %i.3
  store i128 %big_mod90, i128* %out97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body85
  %add100 = add i128 %i.3, 1
  %slt103 = icmp slt i128 %add100, %bigmultmodp.k.read_arg_inner
  br i1 %slt103, label %loop.body85, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  br label %arraydim

arraydim:                                         ; preds = %loop.exit104
  %ptr_cast = bitcast [256 x i128]** %bigmultmodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %bigmultmodp.k.read_arg_inner)
  %ptr_cast105 = bitcast [256 x i128]** %bigmultmodp.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast105, i128 %bigmultmodp.k.read_arg_inner)
  %ptr_cast106 = bitcast [256 x i128]** %bigmultmodp.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast106, i128 %bigmultmodp.k.read_arg_inner)
  %ptr_cast107 = bitcast [256 x i128]** %bigmultmodp.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast107, i128 %bigmultmodp.k.read_arg_inner)
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

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_signedfpcarrymodp(%struct_template_circuit_signedfpcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 0
  %signedfpcarrymodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 1
  %signedfpcarrymodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 2
  %signedfpcarrymodp.overflow.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 3
  %signedfpcarrymodp.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %signedfpcarrymodp.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %signedfpcarrymodp.in.read_input_inner, [256 x i128]** %signedfpcarrymodp.in.declare_input, align 8
  %m5 = call i128 @fn_intrinsic_utils_init()
  %X_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %X_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %X_range_checks6, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %Xvar = alloca [256 x [256 x i128]]*, align 8
  %Xvar7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %Xvar7, [256 x [256 x i128]]** %Xvar, align 8
  %range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %range_checks8 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %range_checks8, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i9 = call i128 @fn_intrinsic_utils_init()
  %signedfpcarrymodp.x.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %X, [256 x i128]** %signedfpcarrymodp.x.declare_output, align 8
  %signedfpcarrymodp.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall10 to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %signedfpcarrymodp.out.declare_output, align 8
  %add = add i128 %signedfpcarrymodp.overflow.read_arg_inner, %signedfpcarrymodp.n.read_arg_inner
  %sub = sub i128 %add, 1
  %sdiv = sdiv i128 %sub, %signedfpcarrymodp.n.read_arg_inner
  %slt = icmp slt i128 %signedfpcarrymodp.overflow.read_arg_inner, 251
  call void @fn_intrinsic_utils_assert(i1 %slt)
  %in = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.in.declare_input, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %signedfpcarrymodp.n.read_arg_inner, i128 %signedfpcarrymodp.k.read_arg_inner, i128 %sdiv, [256 x i128]* %in, [256 x i128]* %signedfpcarrymodp.p.read_arg_inner)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %Xvar, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add44, %loop.latch ]
  %Xvar20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar20, i128 0, i128 1, i128 %i.0
  %Xvar22 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.out.declare_output, align 8
  %out24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %Xvar22, i128* %out24, align 4
  %call26 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %signedfpcarrymodp.n.read_arg_inner)
  %ptr_getter27 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %range_checks29 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter27, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call26, %struct_template_circuit_num2bits** %range_checks29, align 8
  %out30 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.out.declare_output, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %out30, i128 0, i128 %i.0
  %out33 = load i128, i128* %array_getter32, align 4
  %range_checks34 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks34, i128 0, i128 %i.0
  %range_checks37 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter36, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks37, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter38, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %out33, i1* @constraint.250)
  %ptr_getter39 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %array_getter41 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter39, i128 0, i128 %i.0
  %range_checks42 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter41, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks42, i32 0, i32 1
  store i128 %out33, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add44 = add i128 %i.0, 1
  %slt47 = icmp slt i128 %add44, %signedfpcarrymodp.k.read_arg_inner
  br i1 %slt47, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch79, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add81, %loop.latch79 ]
  %Xvar49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar49, i128 0, i128 0, i128 %i.1
  %Xvar52 = load i128, i128* %array_getter51, align 4
  %ptr_getter53 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.x.declare_output, align 8
  %X55 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter53, i128 0, i128 %i.1
  store i128 %Xvar52, i128* %X55, align 4
  %add57 = add i128 %signedfpcarrymodp.n.read_arg_inner, 1
  %call58 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add57)
  %ptr_getter59 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %X_range_checks61 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter59, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call58, %struct_template_circuit_num2bits** %X_range_checks61, align 8
  %X62 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.x.declare_output, align 8
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %X62, i128 0, i128 %i.1
  %X65 = load i128, i128* %array_getter64, align 4
  %lshift = shl i128 1, %signedfpcarrymodp.n.read_arg_inner
  %add67 = add i128 %X65, %lshift
  %X_range_checks68 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %array_getter70 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks68, i128 0, i128 %i.1
  %X_range_checks71 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter70, align 8
  %struct_getter72 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks71, i32 0, i32 1
  %num2bits.in.read_input_outter73 = load i128, i128* %struct_getter72, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter73, i128 %add67, i1* @constraint.251)
  %ptr_getter74 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %array_getter76 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter74, i128 0, i128 %i.1
  %X_range_checks77 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter76, align 8
  %num2bits.in.write_input_outter78 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks77, i32 0, i32 1
  store i128 %add67, i128* %num2bits.in.write_input_outter78, align 4
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body48
  %add81 = add i128 %i.1, 1
  %slt84 = icmp slt i128 %add81, %sdiv
  br i1 %slt84, label %loop.body48, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  %call91 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %signedfpcarrymodp.n.read_arg_inner, i128 %signedfpcarrymodp.k.read_arg_inner, i128 %sdiv, i128 %signedfpcarrymodp.overflow.read_arg_inner, [256 x i128]* %signedfpcarrymodp.p.read_arg_inner)
  br label %loop.body92

loop.body92:                                      ; preds = %loop.latch121, %loop.exit85
  %i.2 = phi i128 [ 0, %loop.exit85 ], [ %add123, %loop.latch121 ]
  %in93 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.in.declare_input, align 8
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %in93, i128 0, i128 %i.2
  %in96 = load i128, i128* %array_getter95, align 4
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter, i128 0, i128 %i.2
  %mod_check101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check101, i128 %in96, i1* @constraint.252)
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter104 = load [256 x i128]*, [256 x i128]** %struct_getter103, align 8
  %mod_check106 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter104, i128 0, i128 %i.2
  store i128 %in96, i128* %mod_check106, align 4
  %out107 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.out.declare_output, align 8
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %out107, i128 0, i128 %i.2
  %out110 = load i128, i128* %array_getter109, align 4
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter, i128 0, i128 %i.2
  %mod_check115 = load i128, i128* %array_getter114, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check115, i128 %out110, i1* @constraint.253)
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter118 = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %mod_check120 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter118, i128 0, i128 %i.2
  store i128 %out110, i128* %mod_check120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body92
  %add123 = add i128 %i.2, 1
  %slt126 = icmp slt i128 %add123, %signedfpcarrymodp.k.read_arg_inner
  br i1 %slt126, label %loop.body92, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  br label %loop.body128

loop.body128:                                     ; preds = %loop.latch143, %loop.exit127
  %i.3 = phi i128 [ 0, %loop.exit127 ], [ %add145, %loop.latch143 ]
  %X129 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.x.declare_output, align 8
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %X129, i128 0, i128 %i.3
  %X132 = load i128, i128* %array_getter131, align 4
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %array_getter136 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter, i128 0, i128 %i.3
  %mod_check137 = load i128, i128* %array_getter136, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check137, i128 %X132, i1* @constraint.254)
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call91, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter140 = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %mod_check142 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter140, i128 0, i128 %i.3
  store i128 %X132, i128* %mod_check142, align 4
  br label %loop.latch143

loop.latch143:                                    ; preds = %loop.body128
  %add145 = add i128 %i.3, 1
  %slt148 = icmp slt i128 %add145, %sdiv
  br i1 %slt148, label %loop.body128, label %loop.exit149

loop.exit149:                                     ; preds = %loop.latch143
  br label %arraydim

arraydim:                                         ; preds = %loop.exit149
  %ptr_cast = bitcast [256 x i128]** %signedfpcarrymodp.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %signedfpcarrymodp.k.read_arg_inner)
  %ptr_cast150 = bitcast [256 x %struct_template_circuit_num2bits*]** %X_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast150, i128 %sdiv)
  %ptr_cast151 = bitcast [256 x i128]** %signedfpcarrymodp.x.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast151, i128 %sdiv)
  %ptr_cast152 = bitcast [256 x [256 x i128]]** %Xvar to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast152, i128 2, i128 50)
  %ptr_cast153 = bitcast [256 x i128]** %signedfpcarrymodp.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast153, i128 %signedfpcarrymodp.k.read_arg_inner)
  %ptr_cast154 = bitcast [256 x %struct_template_circuit_num2bits*]** %range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast154, i128 %signedfpcarrymodp.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %X155 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.x.declare_output, align 8
  %signedfpcarrymodp.x.write_output_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 5
  store [256 x i128]* %X155, [256 x i128]** %signedfpcarrymodp.x.write_output_inner, align 8
  %out156 = load [256 x i128]*, [256 x i128]** %signedfpcarrymodp.out.declare_output, align 8
  %signedfpcarrymodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 6
  store [256 x i128]* %out156, [256 x i128]** %signedfpcarrymodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedfpcarrymodp = alloca %struct_template_circuit_signedfpcarrymodp, align 8
  %signedfpcarrymodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 0
  store i128 %0, i128* %signedfpcarrymodp.n.write_arg_inner, align 4
  %signedfpcarrymodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 1
  store i128 %1, i128* %signedfpcarrymodp.k.write_arg_inner, align 4
  %signedfpcarrymodp.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 2
  store i128 %2, i128* %signedfpcarrymodp.overflow.write_arg_inner, align 4
  %signedfpcarrymodp.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %signedfpcarrymodp.p.write_arg_inner, align 8
  ret %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp
}

define void @fn_template_init_bigmodinv(%struct_template_circuit_bigmodinv* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 0
  %bigmodinv.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 1
  %bigmodinv.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 2
  %bigmodinv.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %bigmodinv.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmodinv.in.read_input_inner, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 3
  %bigmodinv.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %bigmodinv.p.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %bigmodinv.p.read_input_inner, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %bigmodinv.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %i4 = call i128 @fn_intrinsic_utils_init()
  %range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %range_checks5, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %inv = alloca [256 x i128]*, align 8
  %inv6 = alloca [256 x i128], align 8
  store [256 x i128]* %inv6, [256 x i128]** %inv, align 8
  %sle = icmp sle i128 %bigmodinv.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %in = load [256 x i128]*, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %p = load [256 x i128]*, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %call = call [256 x i128]* @mod_inv(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x i128]* %call, [256 x i128]** %inv, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %inv11 = load [256 x i128]*, [256 x i128]** %inv, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %inv11, i128 0, i128 %i.0
  %inv13 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %out15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %inv13, i128* %out15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigmodinv.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch39, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add41, %loop.latch39 ]
  %call22 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmodinv.n.read_arg_inner)
  %ptr_getter23 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %range_checks25 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter23, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call22, %struct_template_circuit_num2bits** %range_checks25, align 8
  %out26 = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %out26, i128 0, i128 %i.1
  %out29 = load i128, i128* %array_getter28, align 4
  %range_checks30 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks30, i128 0, i128 %i.1
  %range_checks33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks33, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter34, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %out29, i1* @constraint.255)
  %ptr_getter35 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %array_getter37 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter35, i128 0, i128 %i.1
  %range_checks38 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter37, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks38, i32 0, i32 1
  store i128 %out29, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch39

loop.latch39:                                     ; preds = %loop.body20
  %add41 = add i128 %i.1, 1
  %slt44 = icmp slt i128 %add41, %bigmodinv.k.read_arg_inner
  br i1 %slt44, label %loop.body20, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %call48 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner)
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch78, %loop.exit45
  %i.2 = phi i128 [ 0, %loop.exit45 ], [ %add80, %loop.latch78 ]
  %in50 = load [256 x i128]*, [256 x i128]** %bigmodinv.in.declare_input, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %in50, i128 0, i128 %i.2
  %in53 = load i128, i128* %array_getter52, align 4
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call48, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.2
  %mult58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult58, i128 %in53, i1* @constraint.256)
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call48, i32 0, i32 2
  %bigmult.a.read_input_outter61 = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %mult63 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter61, i128 0, i128 %i.2
  store i128 %in53, i128* %mult63, align 4
  %out64 = load [256 x i128]*, [256 x i128]** %bigmodinv.out.declare_output, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %out64, i128 0, i128 %i.2
  %out67 = load i128, i128* %array_getter66, align 4
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call48, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.2
  %mult72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mult72, i128 %out67, i1* @constraint.257)
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call48, i32 0, i32 3
  %bigmult.b.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %mult77 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter75, i128 0, i128 %i.2
  store i128 %out67, i128* %mult77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body49
  %add80 = add i128 %i.2, 1
  %slt83 = icmp slt i128 %add80, %bigmodinv.k.read_arg_inner
  br i1 %slt83, label %loop.body49, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %call87 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner)
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch104, %loop.exit84
  %i.3 = phi i128 [ 0, %loop.exit84 ], [ %add106, %loop.latch104 ]
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call48, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.3
  %mult93 = load i128, i128* %array_getter92, align 4
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i.3
  %mod98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod98, i128 %mult93, i1* @constraint.258)
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 2
  %bigmod.a.read_input_outter101 = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %mod103 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter101, i128 0, i128 %i.3
  store i128 %mult93, i128* %mod103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body88
  %add106 = add i128 %i.3, 1
  %mul = mul i128 2, %bigmodinv.k.read_arg_inner
  %slt109 = icmp slt i128 %add106, %mul
  br i1 %slt109, label %loop.body88, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch104
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch126, %loop.exit110
  %i.4 = phi i128 [ 0, %loop.exit110 ], [ %add128, %loop.latch126 ]
  %p112 = load [256 x i128]*, [256 x i128]** %bigmodinv.p.declare_input, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %p112, i128 0, i128 %i.4
  %p115 = load i128, i128* %array_getter114, align 4
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i.4
  %mod120 = load i128, i128* %array_getter119, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod120, i128 %p115, i1* @constraint.259)
  %struct_getter122 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 3
  %bigmod.b.read_input_outter123 = load [256 x i128]*, [256 x i128]** %struct_getter122, align 8
  %mod125 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter123, i128 0, i128 %i.4
  store i128 %p115, i128* %mod125, align 4
  br label %loop.latch126

loop.latch126:                                    ; preds = %loop.body111
  %add128 = add i128 %i.4, 1
  %slt131 = icmp slt i128 %add128, %bigmodinv.k.read_arg_inner
  br i1 %slt131, label %loop.body111, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch126
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %array_getter135 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 0
  %mod136 = load i128, i128* %array_getter135, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod136, i128 1, i1* @constraint.260)
  br label %loop.body137

loop.body137:                                     ; preds = %loop.latch144, %loop.exit132
  %i.5 = phi i128 [ 1, %loop.exit132 ], [ %add146, %loop.latch144 ]
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call87, i32 0, i32 5
  %bigmod.mod.read_output_outter140 = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %array_getter142 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter140, i128 0, i128 %i.5
  %mod143 = load i128, i128* %array_getter142, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod143, i128 0, i1* @constraint.261)
  br label %loop.latch144

loop.latch144:                                    ; preds = %loop.body137
  %add146 = add i128 %i.5, 1
  %slt149 = icmp slt i128 %add146, %bigmodinv.k.read_arg_inner
  br i1 %slt149, label %loop.body137, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch144
  br label %arraydim

arraydim:                                         ; preds = %loop.exit150
  %ptr_cast = bitcast [256 x i128]** %inv to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 50)
  %ptr_cast151 = bitcast [256 x i128]** %bigmodinv.p.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast151, i128 %bigmodinv.k.read_arg_inner)
  %ptr_cast152 = bitcast [256 x i128]** %bigmodinv.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast152, i128 %bigmodinv.k.read_arg_inner)
  %ptr_cast153 = bitcast [256 x i128]** %bigmodinv.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast153, i128 %bigmodinv.k.read_arg_inner)
  %ptr_cast154 = bitcast [256 x %struct_template_circuit_num2bits*]** %range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast154, i128 %bigmodinv.k.read_arg_inner)
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

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %i2 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %spice_inline_array, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.0
  %5 = bitcast [256 x [256 x i128]]* %out6 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define void @fn_template_init_fpmultiply(%struct_template_circuit_fpmultiply* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 0
  %fpmultiply.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 1
  %fpmultiply.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 2
  %fpmultiply.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 3
  %fpmultiply.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %fpmultiply.a.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpmultiply.a.read_input_inner, [256 x i128]** %fpmultiply.a.declare_input, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 4
  %fpmultiply.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %fpmultiply.b.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %fpmultiply.b.read_input_inner, [256 x i128]** %fpmultiply.b.declare_input, align 8
  %LOGK5 = call i128 @fn_intrinsic_utils_init()
  %i6 = call i128 @fn_intrinsic_utils_init()
  %fpmultiply.out.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %out, [256 x i128]** %fpmultiply.out.declare_output, align 8
  %sle = icmp sle i128 %fpmultiply.n.read_arg_inner, 252
  call void @fn_intrinsic_utils_assert(i1 %sle)
  %call = call i128 @log_ceil(i128 %fpmultiply.k.read_arg_inner)
  %mul = mul i128 2, %fpmultiply.n.read_arg_inner
  %add = add i128 %mul, %call
  %call14 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %add)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add40, %loop.latch ]
  %a = load [256 x i128]*, [256 x i128]** %fpmultiply.a.declare_input, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call14, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter, i128 0, i128 %i.0
  %nocarry21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_utils_constraint(i128 %nocarry21, i128 %a16, i1* @constraint.262)
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call14, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %nocarry25 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter23, i128 0, i128 %i.0
  store i128 %a16, i128* %nocarry25, align 4
  %b = load [256 x i128]*, [256 x i128]** %fpmultiply.b.declare_input, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i.0
  %b28 = load i128, i128* %array_getter27, align 4
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call14, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter, i128 0, i128 %i.0
  %nocarry33 = load i128, i128* %array_getter32, align 4
  call void @fn_intrinsic_utils_constraint(i128 %nocarry33, i128 %b28, i1* @constraint.263)
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call14, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter36 = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %nocarry38 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter36, i128 0, i128 %i.0
  store i128 %b28, i128* %nocarry38, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add40 = add i128 %i.0, 1
  %slt = icmp slt i128 %add40, %fpmultiply.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub = sub i128 %fpmultiply.k.read_arg_inner, 1
  %mul47 = mul i128 3, %fpmultiply.n.read_arg_inner
  %mul49 = mul i128 2, %call
  %add50 = add i128 %mul47, %mul49
  %call51 = call %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %sub, [256 x i128]* %fpmultiply.p.read_arg_inner, i128 %add50)
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch68, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add70, %loop.latch68 ]
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call14, i32 0, i32 5
  %bigmultshortlong.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.out.read_output_outter, i128 0, i128 %i.1
  %nocarry57 = load i128, i128* %array_getter56, align 4
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call51, i32 0, i32 5
  %primereduce.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_outter, i128 0, i128 %i.1
  %red62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_utils_constraint(i128 %red62, i128 %nocarry57, i1* @constraint.264)
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call51, i32 0, i32 5
  %primereduce.in.read_input_outter65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %red67 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_outter65, i128 0, i128 %i.1
  store i128 %nocarry57, i128* %red67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body52
  %add70 = add i128 %i.1, 1
  %mul73 = mul i128 2, %fpmultiply.k.read_arg_inner
  %sub74 = sub i128 %mul73, 1
  %slt75 = icmp slt i128 %add70, %sub74
  br i1 %slt75, label %loop.body52, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch68
  %mul80 = mul i128 3, %fpmultiply.n.read_arg_inner
  %mul82 = mul i128 2, %call
  %add83 = add i128 %mul80, %mul82
  %call85 = call %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %add83, [256 x i128]* %fpmultiply.p.read_arg_inner)
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch102, %loop.exit76
  %i.2 = phi i128 [ 0, %loop.exit76 ], [ %add104, %loop.latch102 ]
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call51, i32 0, i32 6
  %primereduce.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter88, align 8
  %array_getter90 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.out.read_output_outter, i128 0, i128 %i.2
  %red91 = load i128, i128* %array_getter90, align 4
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call85, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter93, align 8
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.in.read_input_outter, i128 0, i128 %i.2
  %big_mod96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_utils_constraint(i128 %big_mod96, i128 %red91, i1* @constraint.265)
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call85, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_outter99 = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %big_mod101 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.in.read_input_outter99, i128 0, i128 %i.2
  store i128 %red91, i128* %big_mod101, align 4
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body86
  %add104 = add i128 %i.2, 1
  %slt107 = icmp slt i128 %add104, %fpmultiply.k.read_arg_inner
  br i1 %slt107, label %loop.body86, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch102
  br label %loop.body109

loop.body109:                                     ; preds = %loop.latch122, %loop.exit108
  %i.3 = phi i128 [ 0, %loop.exit108 ], [ %add124, %loop.latch122 ]
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call85, i32 0, i32 6
  %signedfpcarrymodp.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter111, align 8
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.out.read_output_outter, i128 0, i128 %i.3
  %big_mod114 = load i128, i128* %array_getter113, align 4
  %out115 = load [256 x i128]*, [256 x i128]** %fpmultiply.out.declare_output, align 8
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %out115, i128 0, i128 %i.3
  %out118 = load i128, i128* %array_getter117, align 4
  call void @fn_intrinsic_utils_constraint(i128 %out118, i128 %big_mod114, i1* @constraint.266)
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %fpmultiply.out.declare_output, align 8
  %out121 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 %i.3
  store i128 %big_mod114, i128* %out121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body109
  %add124 = add i128 %i.3, 1
  %slt127 = icmp slt i128 %add124, %fpmultiply.k.read_arg_inner
  br i1 %slt127, label %loop.body109, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  br label %arraydim

arraydim:                                         ; preds = %loop.exit128
  %ptr_cast = bitcast [256 x i128]** %fpmultiply.out.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %fpmultiply.k.read_arg_inner)
  %ptr_cast129 = bitcast [256 x i128]** %fpmultiply.b.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast129, i128 %fpmultiply.k.read_arg_inner)
  %ptr_cast130 = bitcast [256 x i128]** %fpmultiply.a.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast130, i128 %fpmultiply.k.read_arg_inner)
  br label %exit

exit:                                             ; preds = %arraydim
  %out131 = load [256 x i128]*, [256 x i128]** %fpmultiply.out.declare_output, align 8
  %fpmultiply.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 5
  store [256 x i128]* %out131, [256 x i128]** %fpmultiply.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpmultiply* @fn_template_build_fpmultiply(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpmultiply = alloca %struct_template_circuit_fpmultiply, align 8
  %fpmultiply.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 0
  store i128 %0, i128* %fpmultiply.n.write_arg_inner, align 4
  %fpmultiply.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 1
  store i128 %1, i128* %fpmultiply.k.write_arg_inner, align 4
  %fpmultiply.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpmultiply.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %j2 = call i128 @fn_intrinsic_utils_init()
  %i3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array5 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch18 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0
  %a8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j.0
  %b11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %b11, [256 x i128]* %spice_inline_array12, align 4
  %call = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array12, [256 x i128]* %4)
  %ab15 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 %i.0, i128 %j.0
  %5 = bitcast [256 x i128]* %ab15 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %add = add i128 %j.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %add20 = add i128 %i.0, 1
  %slt22 = icmp slt i128 %add20, 2
  br i1 %slt22, label %loop.body, label %loop.exit23

loop.exit23:                                      ; preds = %loop.latch18
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 0
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %array_getter31 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 1
  %ab32 = load [256 x i128], [256 x i128]* %array_getter31, align 4
  %spice_inline_array33 = alloca [256 x i128], align 8
  store [256 x i128] %ab32, [256 x i128]* %spice_inline_array33, align 4
  %call35 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array29, [256 x i128]* %spice_inline_array33, [256 x i128]* %4)
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out37 to i8*
  %8 = bitcast [256 x i128]* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 1
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 0
  %ab46 = load [256 x i128], [256 x i128]* %array_getter45, align 4
  %spice_inline_array47 = alloca [256 x i128], align 8
  store [256 x i128] %ab46, [256 x i128]* %spice_inline_array47, align 4
  %call49 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %spice_inline_array47, [256 x i128]* %4)
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out51 to i8*
  %10 = bitcast [256 x i128]* %call49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_signedcheckcarrymodtozero(%struct_template_circuit_signedcheckcarrymodtozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 0
  %signedcheckcarrymodtozero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 1
  %signedcheckcarrymodtozero.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 2
  %signedcheckcarrymodtozero.overflow.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 3
  %signedcheckcarrymodtozero.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 4
  %signedcheckcarrymodtozero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %signedcheckcarrymodtozero.in.declare_input = alloca [256 x i128]*, align 8
  store [256 x i128]* %signedcheckcarrymodtozero.in.read_input_inner, [256 x i128]** %signedcheckcarrymodtozero.in.declare_input, align 8
  %signedcheckcarrymodtozero.x.declare_output = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X = bitcast i8* %malloccall to [256 x i128]*
  store [256 x i128]* %X, [256 x i128]** %signedcheckcarrymodtozero.x.declare_output, align 8
  %X_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %X_range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %X_range_checks5, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i6 = call i128 @fn_intrinsic_utils_init()
  %Xvar = alloca [256 x [256 x i128]]*, align 8
  %Xvar7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %Xvar7, [256 x [256 x i128]]** %Xvar, align 8
  %m8 = call i128 @fn_intrinsic_utils_init()
  %add = add i128 %signedcheckcarrymodtozero.overflow.read_arg_inner, %signedcheckcarrymodtozero.n.read_arg_inner
  %sub = sub i128 %add, 1
  %sdiv = sdiv i128 %sub, %signedcheckcarrymodtozero.n.read_arg_inner
  %slt = icmp slt i128 %signedcheckcarrymodtozero.overflow.read_arg_inner, 251
  call void @fn_intrinsic_utils_assert(i1 %slt)
  %in = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.in.declare_input, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %signedcheckcarrymodtozero.n.read_arg_inner, i128 %signedcheckcarrymodtozero.k.read_arg_inner, i128 %sdiv, [256 x i128]* %in, [256 x i128]* %signedcheckcarrymodtozero.p.read_arg_inner)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %Xvar, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add43, %loop.latch ]
  %Xvar16 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar16, i128 0, i128 0, i128 %i.0
  %Xvar18 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.x.declare_output, align 8
  %X20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i.0
  store i128 %Xvar18, i128* %X20, align 4
  %add22 = add i128 %signedcheckcarrymodtozero.n.read_arg_inner, 1
  %call23 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add22)
  %ptr_getter24 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %X_range_checks26 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter24, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call23, %struct_template_circuit_num2bits** %X_range_checks26, align 8
  %X27 = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.x.declare_output, align 8
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %X27, i128 0, i128 %i.0
  %X30 = load i128, i128* %array_getter29, align 4
  %lshift = shl i128 1, %signedcheckcarrymodtozero.n.read_arg_inner
  %add32 = add i128 %X30, %lshift
  %X_range_checks33 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks33, i128 0, i128 %i.0
  %X_range_checks36 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter35, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks36, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter37, align 4
  call void @fn_intrinsic_utils_constraint(i128 %num2bits.in.read_input_outter, i128 %add32, i1* @constraint.267)
  %ptr_getter38 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %array_getter40 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter38, i128 0, i128 %i.0
  %X_range_checks41 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter40, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks41, i32 0, i32 1
  store i128 %add32, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add43 = add i128 %i.0, 1
  %slt46 = icmp slt i128 %add43, %sdiv
  br i1 %slt46, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call52 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %signedcheckcarrymodtozero.n.read_arg_inner, i128 %signedcheckcarrymodtozero.k.read_arg_inner, i128 %sdiv, i128 %signedcheckcarrymodtozero.overflow.read_arg_inner, [256 x i128]* %signedcheckcarrymodtozero.p.read_arg_inner)
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch78, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add80, %loop.latch78 ]
  %in54 = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.in.declare_input, align 8
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %in54, i128 0, i128 %i.1
  %in57 = load i128, i128* %array_getter56, align 4
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter, i128 0, i128 %i.1
  %mod_check62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check62, i128 %in57, i1* @constraint.268)
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %mod_check67 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter65, i128 0, i128 %i.1
  store i128 %in57, i128* %mod_check67, align 4
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter, i128 0, i128 %i.1
  %mod_check72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check72, i128 0, i1* @constraint.269)
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter75 = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %mod_check77 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter75, i128 0, i128 %i.1
  store i128 0, i128* %mod_check77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body53
  %add80 = add i128 %i.1, 1
  %slt83 = icmp slt i128 %add80, %signedcheckcarrymodtozero.k.read_arg_inner
  br i1 %slt83, label %loop.body53, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch100, %loop.exit84
  %i.2 = phi i128 [ 0, %loop.exit84 ], [ %add102, %loop.latch100 ]
  %X86 = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.x.declare_output, align 8
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %X86, i128 0, i128 %i.2
  %X89 = load i128, i128* %array_getter88, align 4
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter, i128 0, i128 %i.2
  %mod_check94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_utils_constraint(i128 %mod_check94, i128 %X89, i1* @constraint.270)
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call52, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter97 = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %mod_check99 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter97, i128 0, i128 %i.2
  store i128 %X89, i128* %mod_check99, align 4
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body85
  %add102 = add i128 %i.2, 1
  %slt105 = icmp slt i128 %add102, %sdiv
  br i1 %slt105, label %loop.body85, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch100
  br label %arraydim

arraydim:                                         ; preds = %loop.exit106
  %ptr_cast = bitcast [256 x %struct_template_circuit_num2bits*]** %X_range_checks to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast, i128 %sdiv)
  %ptr_cast107 = bitcast [256 x [256 x i128]]** %Xvar to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast107, i128 2, i128 50)
  %ptr_cast108 = bitcast [256 x i128]** %signedcheckcarrymodtozero.in.declare_input to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast108, i128 %signedcheckcarrymodtozero.k.read_arg_inner)
  %ptr_cast109 = bitcast [256 x i128]** %signedcheckcarrymodtozero.x.declare_output to i128*
  call void (i128*, ...) @fn_intrinsic_utils_arraydim(i128* %ptr_cast109, i128 %sdiv)
  br label %exit

exit:                                             ; preds = %arraydim
  %X110 = load [256 x i128]*, [256 x i128]** %signedcheckcarrymodtozero.x.declare_output, align 8
  %signedcheckcarrymodtozero.x.write_output_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 5
  store [256 x i128]* %X110, [256 x i128]** %signedcheckcarrymodtozero.x.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_signedcheckcarrymodtozero* @fn_template_build_signedcheckcarrymodtozero(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedcheckcarrymodtozero = alloca %struct_template_circuit_signedcheckcarrymodtozero, align 8
  %signedcheckcarrymodtozero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 0
  store i128 %0, i128* %signedcheckcarrymodtozero.n.write_arg_inner, align 4
  %signedcheckcarrymodtozero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 1
  store i128 %1, i128* %signedcheckcarrymodtozero.k.write_arg_inner, align 4
  %signedcheckcarrymodtozero.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 2
  store i128 %2, i128* %signedcheckcarrymodtozero.overflow.write_arg_inner, align 4
  %signedcheckcarrymodtozero.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %signedcheckcarrymodtozero.p.write_arg_inner, align 8
  ret %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_utils_init()
  %j2 = call i128 @fn_intrinsic_utils_init()
  %bitLength3 = call i128 @fn_intrinsic_utils_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add33, %loop.latch31 ]
  %bitLength.0 = phi i128 [ 0, %entry ], [ %bitLength.2, %loop.latch31 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add28, %loop.latch ]
  %bitLength.1 = phi i128 [ %bitLength.0, %loop.body ], [ %bitLength.2, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e8 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e8, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits12, align 4
  %mul17 = mul i128 %0, %i.0
  %add18 = add i128 %j.0, %mul17
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add18
  %eBits20 = load i128, i128* %array_getter19, align 4
  %eq = icmp eq i128 %eBits20, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body6
  %mul24 = mul i128 %0, %i.0
  %add25 = add i128 %j.0, %mul24
  %add26 = add i128 %add25, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body6
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitLength.2 = phi i128 [ %add26, %if.true ], [ %bitLength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add28 = add i128 %j.0, 1
  %slt = icmp slt i128 %add28, %0
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %add33 = add i128 %i.0, 1
  %mul35 = mul i128 2, %1
  %slt36 = icmp slt i128 %add33, %mul35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  %uniform_array38 = alloca [256 x [256 x i128]], align 8
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.exit37
  %i.1 = phi i128 [ 0, %loop.exit37 ], [ %add48, %loop.latch46 ]
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 %i.1
  store i128 0, i128* %out42, align 4
  %out45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 1, i128 %i.1
  store i128 0, i128* %out45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body39
  %add48 = add i128 %i.1, 1
  %slt50 = icmp slt i128 %add48, 50
  br i1 %slt50, label %loop.body39, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch46
  %out53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 0
  store i128 1, i128* %out53, align 4
  %sub = sub i128 %bitLength.2, 1
  br label %loop.body55

loop.body55:                                      ; preds = %loop.latch77, %loop.exit51
  %i.2 = phi i128 [ %sub, %loop.exit51 ], [ %sub79, %loop.latch77 ]
  %out.0 = phi [256 x [256 x i128]]* [ %uniform_array38, %loop.exit51 ], [ %out.2, %loop.latch77 ]
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits61 = load i128, i128* %array_getter60, align 4
  %eq62 = icmp eq i128 %eBits61, 1
  br i1 %eq62, label %if.true56, label %if.false57

if.true56:                                        ; preds = %loop.body55
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.0, [256 x [256 x i128]]* %2, [256 x i128]* %3)
  br label %if.exit66

if.false57:                                       ; preds = %loop.body55
  br label %if.exit66

if.exit66:                                        ; preds = %if.false57, %if.true56
  %out.1 = phi [256 x [256 x i128]]* [ %call, %if.true56 ], [ %out.0, %if.false57 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %call75 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.1, [256 x [256 x i128]]* %out.1, [256 x i128]* %3)
  br label %if.exit76

if.false68:                                       ; preds = %if.exit66
  br label %if.exit76

if.exit76:                                        ; preds = %if.false68, %if.true67
  %out.2 = phi [256 x [256 x i128]]* [ %call75, %if.true67 ], [ %out.1, %if.false68 ]
  br label %loop.latch77

loop.latch77:                                     ; preds = %if.exit76
  %sub79 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub79, 0
  br i1 %sge, label %loop.body55, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch77
  ret [256 x [256 x i128]]* %out.2
}

declare noalias i8* @malloc(i32)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
