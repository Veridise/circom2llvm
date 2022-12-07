# Circom2LLVM
Compile circom code to LLVM IR.

# Dependencies
## LLVM Installation
**NOTICE** Use `Ninja` as the build tool default, so you need to install one before building LLVM.
If you don't have, please follow the offcial guide from LLVM at: https://github.com/llvm/llvm-project/tree/release/13.x .

**NOTICE** The building command used by us is different from the standard one.

**NOTICE** The path/to/llvm-project should be an abstract path, such as /User/You/app/llvm-project.

**NOTICE** DLLVM_TARGETS_TO_BUILD depends on your architecture.

```bash
git clone --depth 1 --branch release/13.x git@github.com:llvm/llvm-project.git
cd ./llvm-project
cmake -S llvm -B build -G Ninja \
-DLLVM_TARGETS_TO_BUILD="{X86||ARM||RISCV}" \
-DCMAKE_BUILD_TYPE=Release \
-DLLVM_PARALLEL_LINK_JOBS=1 \
-DLLVM_OPTIMIZED_TABLEGEN=ON \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build build/
export LLVM_PATH=path/to/llvm-project/build
export PATH=$PATH:$LLVM_PATH/bin
export LLVM_SYS_130_PREFIX=$LLVM_PATH
```

## Rust & Cargo
This repo works on `rustc & cargo 1.64.0`, and all of the crates dependencies will be installed automatically.


## Compiler
### Core Idea
1. One circom File => One LLVM .ll file, with a module named `main`.
2. All functions and templates are concluded into the .ll file.
2. Circom Template(args) => Two LLVM functions:
    1.  Build(args) => Return a struct represents the template.
    2.  Initial(the struct template) => Executes the logic inside the template.
3. Circom Function => LLVM function.

### Compilation Stage
1. Dependencies collection and resolveing.
2. Type inference.
3. Function construction.
4. Instructions generation.

### Build
```bash
git clone https://github.com/Veridise/circom2llvm path/to/circom2llvm
cd path/to/circom2llvm
cargo build --bin=circom2llvm --package=circom2llvm
```

### Usage
```bash
./target/debug/circom2llvm --input path/to/circomfile_or_dir --output path/to/output
```

### Hints
1. Critical variables and functions are named in `ir_generator/src/namer.rs`.
2. The IR format is based on load-store, you could transfer it to by mem2reg pass.

### Potential Problems
1. If any problem happens during BuildGEP instruction, there is perhaps a type inferrence problem. The type inferrence system is not sound.
2. The size of every dimension of the array is limited to 256.
3. Don't define a component without initializing it.
