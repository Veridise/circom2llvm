import argparse
import os
import platform

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input", help="Input path")
parser.add_argument("-uc",
                    "--underconstraint",
                    help="Detect whether every output signal is \
    under the constraint matters at least one input signal",
                    action="store_true")

LLVM_PATH = os.environ.get("LLVM_PATH", "/Users/hongbo/app/llvm-project")
SOURCE_FILEPATH = os.environ.get("SOURCE_FILEPATH",
                                 "/Users/hongbo/code/circom-pairing/")


def replace_source_file_to_github(log_path: str):
    with open(log_path, "r") as f:
        lines = f.readlines()
    source_file_name = lines[0]
    source_file_name = source_file_name.replace(
        SOURCE_FILEPATH,
        "https://github.com/yi-sun/circom-pairing/tree/master/")
    with open(log_path, "w") as f:
        f.writelines([source_file_name, *lines[1:]])


def _main():
    args = parser.parse_args()
    input_path = args.input
    file_paths = []
    lib_suffix = ".so" if platform.system() == "Linux" else ".dylib"
    opt_path = os.path.join(LLVM_PATH, "build/bin/opt")
    if not os.path.exists(opt_path):
        raise FileNotFoundError(f"Cannot find opt at: {opt_path}")
    if os.path.isdir(input_path):
        for file_name in os.listdir(input_path):
            if not file_name.endswith(".ll") or file_name.endswith(".ssa.ll"):
                continue
            file_path = os.path.join(input_path, file_name)
            file_paths.append(file_path)
    else:
        file_paths = [input_path]
    for f in file_paths:
        ssa_path = f.replace(".ll", ".ssa.ll")
        print("Generating SSA IR.")
        cmds = [
            opt_path,
            "-O0",
            "-f",
            "-S",
            "-mem2reg",
            f,
            f"1> {ssa_path}",
        ]
        cmd = " ".join(cmds)
        print(cmd)
        os.system(cmd)
        if args.underconstraint:
            print("Detecting UnderConstraint.")
            log_path = f.replace(".ll", ".uc.log")
            pass_libpath = os.path.join(
                LLVM_PATH, f"build/lib/UnderConstraints{lib_suffix}")
            if not os.path.exists(pass_libpath):
                raise FileNotFoundError(f"Cannot find lib at: {opt_path}")
            cmds = [
                opt_path,
                "-f",
                "-enable-new-pm=0",
                f"--load {pass_libpath}",
                "--UnderConstraints",
                ssa_path,
                "1> /dev/null",
                f"2> {log_path}",
            ]
            cmd = " ".join(cmds)
            print(cmd)
            os.system(cmd)
            replace_source_file_to_github(log_path)


if __name__ == "__main__":
    _main()
