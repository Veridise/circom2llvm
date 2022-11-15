import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input", help="Input path")


def _main():
    args = parser.parse_args()
    input_path = args.input
    file_paths = []
    if os.path.isdir(input_path):
        for file_name in os.listdir(input_path):
            if not file_name.endswith(".ll"):
                continue
            file_path = os.path.join(input_path, file_name)
            file_paths.append(file_path)
    else:
        file_paths = [input_path]
    for f in file_paths:
        log_path = f.replace(".ll", ".log")
        cmds = [
            "~/app/llvm-project/build/bin/opt",
            "-f",
            "-enable-new-pm=0",
            "--load ~/app/llvm-project/build/lib/UnderConstraints.dylib",
            "--UnderConstraints",
            f,
            "1> /dev/null",
            f"2> {log_path}",
        ]
        cmd = " ".join(cmds)
        print(cmd)
        os.system(cmd)


if __name__ == "__main__":
    _main()
