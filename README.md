# circom2llvm
Compile circom code to llvm partially

# Core Idea
1. Circom File => LLVM module.
2. Circom Template(args) => Two LLVM functions:
    1.  Build(args) => Return a struct represents the template.
    2.  Initial(the struct template) => Executes the logic inside the template.
3. Circom Function => LLVM function.

# Hints
1. The constraint is added by the function `intrinsic_add_constraint` explicitly.
2. The read/write of a input signal is defined by a variable named as `read/write_signal_input`.
3. The read/write of a output signal is defined by a variable named as `read/write_signal_output`.

# Unimplemented Features
1. The array with 2 or more dimensions.
2. The array parameters for a template.
3. The component initialization.

# Use
```bash
git clone this repo to $FILEDIR.
cd $FILEDIR
cargo build
circom2llvm --filepath path/to/circomfile
