#!/bin/bash
set -euo pipefail
shopt -s globstar nullglob

root="$HOME/PolyBenchC-4.2.1"
export LLVM_SYS_191_PREFIX=/usr/lib/llvm-19

usage() {
        echo "Usage: $0 [-p path] [-d dataset]" >&2
        echo "  -p path      a .c file or a directory (absolute, relative to cwd, or relative to $root)" >&2
        echo "               default: every benchmark under $root" >&2
        echo "  -d dataset   one of MINI, SMALL, MEDIUM, LARGE, EXTRALARGE (default: MEDIUM)" >&2
        exit 1
}

# ---- argument parsing -------------------------------------------------
target="$root"
dataset="MEDIUM"

while getopts ":p:h" opt; do
        case $opt in
                p) target=$OPTARG ;;
		d) dataset=$OPTARG ;;
                h) usage ;;
                :) echo "Option -$OPTARG requires an argument" >&2; usage ;;
                \?) echo "Unknown option -$OPTARG" >&2; usage ;;
        esac
done

dataset=${dataset^^}
dataset=${dataset%_DATASET}
case $dataset in
	MINI|SMALL|MEDIUM|LARGE|EXTRALARGE) ;;
	*) echo "Error: unknown dataset '$dataset'" >&2; usage ;;
esac

# Allow "-p linear-algebra/blas/gemm/gemm.c" relative to the PolyBench root
if [[ ! -e $target && -e $root/$target ]]; then
        target="$root/$target"
fi

# ---- build list of files to process -----------------------------------
if [[ -f $target ]]; then
        files=("$target")
elif [[ -d $target ]]; then
        files=("$target"/**/*.c)
else
        echo "Error: '$target' is not a file or directory" >&2
        exit 1
fi

if (( ${#files[@]} == 0 )); then
        echo "Error: no .c files found under '$target'" >&2
        exit 1
fi

# ---- main work --------------------------------------------------------
mkdir -p ./polybench-output ./progs/translated ./polybench-output/phis ./polybench-output/no-phis ./progs/translated/phis ./progs/translated/no-phis

flags=(-O2 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -fno-builtin -DPOLYBENCH_DUMP_ARRAYS -D${dataset}_DATASET -I "$root/utilities")

RUSTFLAGS="-Aunused -Adead_code" cargo build -p umc-llvm --release

for file in "${files[@]}"; do
        # Skip the timing harness when scanning a directory, but honour
        # it if the user named that exact file with -p.
	if [[ -d $target && ($file == "$root/utilities/"* || $file == "$root/medley/nussinov/Nussinov.orig.c" ) ]]; then
                continue
        fi

        base=$(basename "$file" .c)
        printf 'Translating %s\n' "$file"

        clang-19 "${flags[@]}" -emit-llvm -c "$file" -o "./polybench-output/phis/$base.bc"
        clang-19 "${flags[@]}" -emit-llvm -S "$file" -o "./polybench-output/phis/$base.ll"

        opt-19 -passes='reg2mem' "./polybench-output/phis/$base.bc" -o "./polybench-output/no-phis/$base.bc"
        llvm-dis-19 "./polybench-output/no-phis/$base.bc" -o "./polybench-output/no-phis/$base.ll"

        RUSTFLAGS="-Aunused -Adead_code" cargo run -q -p umc-llvm --release -- "./polybench-output/phis/$base.bc" -o "./progs/translated/phis/$base.umc"
        RUSTFLAGS="-Aunused -Adead_code" cargo run -q -p umc-llvm --release -- "./polybench-output/no-phis/$base.bc" -o "./progs/translated/no-phis/$base.umc"
done
