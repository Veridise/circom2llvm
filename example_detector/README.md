# Description
A LLVM Pass to detect potential bugs in constraints.

# Build
Assume the llvm-project locates ./llvm-project
```bash
/* Build llvm first! */
cd ./llvm-project
cp -r {this-folder} ./llvm/lib/Transforms/UnderConstraints
echo "add_subdirectory(UnderConstraints)" >> ./llvm/lib/Transforms/CMakeLists.txt
cmake --build build/
```

# Usage
```bash
opt -f -load -enable-new-pm=0 path-to-lib/UnderConstraints.so --UnderConstraints input.ll 1> /dev/null 2> output.json
```

# Compilation of LLVM
LLVM Version: 13.0.1, Commit: 75e33f71c2dae584b13a7d1186ae0a038ba98838


Do NOT compile the LLVM with this pass, instead, compile this pass after LLVM compiled.


```bash
cmake -S llvm -B build -G Ninja \
-DLLVM_ENABLE_PROJECTS='clang;lld' \
-DLLVM_TARGETS_TO_BUILD="X86" \
-DCMAKE_BUILD_TYPE=Release \
-DLLVM_ENABLE_ASSERTIONS=ON \
-DLLVM_PARALLEL_LINK_JOBS=1 \
-DLLVM_OPTIMIZED_TABLEGEN=ON \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build build/
```