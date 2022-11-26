import argparse
import os
from collections import defaultdict

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input", help="Input directory")
parser.add_argument("-o", "--output", help="Output directory", default="")

detecting_prefix = "Detecting: "


def merge(detector_name: str, input_dir: str, output_dir: str):
    results = defaultdict(list)
    target_suffix = f"{detector_name}.log"
    output_filename = f"merge_{detector_name}.log"
    for f in os.listdir(input_dir):
        if not f.endswith(target_suffix) or f == output_filename:
            continue
        with open(os.path.join(input_dir, f), "r") as f:
            lines = f.readlines()
            name = ""
            cache = []
            for l in lines:
                if l.startswith(detecting_prefix):
                    if name != "":
                        results[name] = cache
                    cache = []
                    name = l[len(detecting_prefix):]
                else:
                    cache.append(l)
            results[name] = cache
    with open(os.path.join(output_dir, output_filename), "w") as f:
        for r, lines in results.items():
            f.write(f"{detecting_prefix}{r}")
            f.writelines(lines)


def _main():
    args = parser.parse_args()
    detectors = ["uc", "osu", "as"]
    input_dir = args.input
    output_dir = args.output
    if output_dir == "":
        output_dir = input_dir
    for d in detectors:
        merge(d, input_dir, output_dir)


if __name__ == "__main__":
    _main()
