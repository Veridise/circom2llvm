import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input", help="Input path")


def replace_source_file_to_github(log_path: str):
    with open(log_path, "r") as f:
        lines = f.readlines()
    source_file_name = lines[0]
    source_file_name = source_file_name.replace(
        "/Users/hongbo/code/circom-pairing/",
        "https://github.com/yi-sun/circom-pairing/tree/master/")
    with open(log_path, "w") as f:
        f.writelines([source_file_name, *lines[1:]])


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
        replace_source_file_to_github(log_path)


if __name__ == "__main__":
    _main()
