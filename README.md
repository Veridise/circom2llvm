# circom2llvm
Compile circom code to llvm partially

# Core Idea
1. One circom File => One LLVM .ll file, with a module named `main`.
2. All functions and templates are concluded into the .ll file.
2. Circom Template(args) => Two LLVM functions:
    1.  Build(args) => Return a struct represents the template.
    2.  Initial(the struct template) => Executes the logic inside the template.
3. Circom Function => LLVM function.

# Compilation
1. Dependencies collection and resolveing.
2. Type inference.
3. Function construction.
4. Instructions generation.

# Hints
1. The constraint is added by the function `fn_intrinsic_add_constraint` explicitly.
2. The read/write of a input signal is defined by a variable named as `read/write_input_inner/outter`.
3. The read/write of a output signal is defined by a variable named as `read/write_output_inner/outter`.
4. The `inner/outter` means the read/write happens inside the template or outside.

# Use
```bash
git clone this repo to $FILEDIR.
cd $FILEDIR
cargo build --bin=circom2llvm --package=circom2llvm
circom2llvm --input path/to/circomfile --output path/to/output
```

# Potential Problems
1. If any problem happens during BuildGEP instruction, there is perhaps a type inferrence problem. The type inferrence system is not sound.
2. The size of every dimension of the array is limited to 256.
3. Don't define a component without initializing it.
