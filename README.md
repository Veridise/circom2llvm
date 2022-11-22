# Circom2LLVM
Compile circom code to LLVM IR and detect potential bugs.

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

### Usage
```bash
git clone this repo to $FILEDIR.
cd $FILEDIR
cargo build --bin=circom2llvm --package=circom2llvm
circom2llvm --input path/to/circomfile_or_dir --output path/to/output
```

### Hints
1. Critical variables and functions are named in `ir_generator/src/namer.rs`.
2. The IR format is based on load-store, you could transfer it to by mem2reg pass.

### Potential Problems
1. If any problem happens during BuildGEP instruction, there is perhaps a type inferrence problem. The type inferrence system is not sound.
2. The size of every dimension of the array is limited to 256.
3. Don't define a component without initializing it.


## Detector
### Description
A group of LLVM Pass to detect potential bugs in circuits.

### Build
```bash
git clone --depth 1 --branch release/13.x git@github.com:llvm/llvm-project.git
cd ./llvm-project
cmake -S llvm -B build -G Ninja \
-DLLVM_TARGETS_TO_BUILD="X86;ARM" \
-DCMAKE_BUILD_TYPE=Release \
-DLLVM_PARALLEL_LINK_JOBS=1 \
-DLLVM_OPTIMIZED_TABLEGEN=ON \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build build/
```

Then
```bash
ln -s {this-folder} ./llvm/lib/Transforms/Detectors
echo "add_subdirectory(Detectors)" >> ./llvm/lib/Transforms/CMakeLists.txt
cmake --build build/
```

### Usage
Linux
```bash
opt -f -load -enable-new-pm=0 path-to-lib/UnderConstraints.so --UnderConstraints input.ll 1> /dev/null 2> output.log
```

Mac
```bash
opt -f -load -enable-new-pm=0 path-to-lib/UnderConstraints.dylib --UnderConstraints input.ll 1> /dev/null 2> output.log
```

### Hints
1. `detectors/InfoCollector.cpp`: Provide an information collector to the generated IR file to be used.
2. `detectors/UnderConstraints.cpp`: Detect whether every output signal is under the constraint matters at least one input signal.

```
python ./detect.py --input ./auditing
```

### Debug
LLVM Pass is hard to debug because it is a dynamic lib. Thus, you could use them to print information runtimely:
```c++
std::string foo = "";
std::cerr << foo;

llvm::Value v;
v.print(errs());
```

### Known Problems
#### UnderConstraints
1. We can't track the modification on the array element, need a solution for it.
