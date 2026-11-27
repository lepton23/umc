#!/bin/bash
set -euo pipefail
shopt -s globstar nullglob

root="$HOME/PolyBenchC-4.2.1"
export LLVM_SYS_191_PREFIX=/usr/lib/llvm-19

# Wasm toolchain (apt install lld-19 wasi-libc libclang-rt-19-dev-wasm32)
wasi_sysroot="${WASI_SYSROOT:-}"
wasm_triple="${WASM_TRIPLE:-}"

usage() {
        echo "Usage: $0 [-p path] [-d dataset] [-W]" >&2
        echo "  -p path      a .c file or a directory (absolute, relative to cwd, or relative to $root)" >&2
        echo "               default: every benchmark under $root" >&2
        echo "  -d dataset   one of MINI, SMALL, MEDIUM, LARGE, EXTRALARGE (default: MEDIUM)" >&2
        echo "  -W           skip the Wasm build" >&2
        exit 1
}

# ---- argument parsing -------------------------------------------------
target="$root"
dataset="MEDIUM"
build_wasm=1

while getopts ":p:d:Wh" opt; do
        case $opt in
                p) target=$OPTARG ;;
              	d) dataset=$OPTARG ;;
              	W) build_wasm=0 ;;
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

# ---- wasm preflight ---------------------------------------------------
# Two possible layouts:
#   wasi-sdk style:  <sysroot>/include/<triple>, <sysroot>/lib/<triple>  -> needs --sysroot
#   Debian/Ubuntu:   /usr/include/<triple>,      /usr/lib/<triple>       -> clang finds it itself
sysroot_flag=()
if (( build_wasm )); then
        if [[ -z $wasi_sysroot ]]; then
                for d in /usr/share/wasi-sysroot /opt/wasi-sdk/share/wasi-sysroot; do
                        [[ -d $d ]] && { wasi_sysroot=$d; break; }
                done
        fi
        lib_base=${wasi_sysroot:+$wasi_sysroot/lib}
        lib_base=${lib_base:-/usr/lib}
 
        if [[ -z $wasm_triple ]]; then
                for t in wasm32-wasi wasm32-wasip1; do
                        [[ -f $lib_base/$t/libc.a ]] && { wasm_triple=$t; break; }
                done
        fi
        if [[ -z $wasm_triple || ! -f $lib_base/$wasm_triple/libc.a ]]; then
                echo "Error: no wasi-libc found (looked for $lib_base/wasm32-wasi{,p1}/libc.a)." >&2
                echo "       Install wasi-libc, set WASI_SYSROOT, or use -W." >&2
                exit 1
        fi
        [[ -n $wasi_sysroot ]] && sysroot_flag=(--sysroot="$wasi_sysroot")
        echo "Wasm: target $wasm_triple, libc in $lib_base/$wasm_triple" >&2
 
        if [[ ! -f $lib_base/$wasm_triple/libwasi-emulated-process-clocks.a ]]; then
                echo "Error: libwasi-emulated-process-clocks.a missing from $lib_base/$wasm_triple" >&2
                exit 1
        fi
        if ! compgen -G "/usr/lib/llvm-19/lib/clang/19/lib/*/libclang_rt.builtins-wasm32.a" >/dev/null; then
                echo "Warning: libclang_rt.builtins-wasm32.a not found; install libclang-rt-19-dev-wasm32" >&2
        fi
        if ! command -v wasm-ld-19 >/dev/null && [[ ! -x /usr/lib/llvm-19/bin/wasm-ld ]]; then
                echo "Error: wasm-ld for LLVM 19 not found (install lld-19, or use -W)" >&2
                exit 1
        fi
fi

# ---- main work --------------------------------------------------------
ir=./polybench-output
out=./progs/translated
mkdir -p "$ir"/{phis,no-phis} "$out"/{phis,no-phis}
echo "$dataset" > "$ir/DATASET" 

flags=(-O2 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -fno-builtin -DPOLYBENCH_DUMP_ARRAYS -D${dataset}_DATASET -I "$root/utilities")

# wasi-libc's <sys/resource.h> needs process clock emulation requested
wasm_cflags=(--target="$wasm_triple" --sysroot="${sysroot_flag[@]}" -D_WASI_EMULATED_PROCESS_CLOCKS)
wasm_ldflags=(--target="$wasm_triple" --sysroot="${sysroot_flag[@]}" -Wl,-z,stack-size=$((8 * 1024 * 1024)) -lm -lwasi-emulated-process-clocks)

RUSTFLAGS="-Aunused -Adead_code" cargo build -p umc-llvm --release

if (( build_wasm )); then
        mkdir -p "$ir"/wasm/{phis,no-phis} "$out"/wasm/{phis,no-phis}
        clang-19 "${flags[@]}" "${wasm_cflags[@]}" -c "$root/utilities/polybench.c" -o "$ir/wasm/polybench.o"
fi

for file in "${files[@]}"; do
        # Skip the timing harness when scanning a directory, but honour it if the user named that exact file with -p
       	if [[ -d $target && ($file == "$root/utilities/"* || $file == "$root/medley/nussinov/Nussinov.orig.c" ) ]]; then
                continue
        fi

        base=$(basename "$file" .c)
        printf 'Translating %s\n' "$file"

        # ------- host IR -> UMC ---------
        clang-19 "${flags[@]}" -emit-llvm -c "$file" -o "./polybench-output/phis/$base.bc"
        llvm-dis-19 "./polybench-output/phis/$base.bc" -o "./polybench-output/phis/$base.ll"

        opt-19 -passes='reg2mem' "./polybench-output/phis/$base.bc" -o "./polybench-output/no-phis/$base.bc"
        llvm-dis-19 "./polybench-output/no-phis/$base.bc" -o "./polybench-output/no-phis/$base.ll"

        RUSTFLAGS="-Aunused -Adead_code" cargo run -q -p umc-llvm --release -- "./polybench-output/phis/$base.bc" -o "./progs/translated/phis/$base.umc"
        RUSTFLAGS="-Aunused -Adead_code" cargo run -q -p umc-llvm --release -- "./polybench-output/no-phis/$base.bc" -o "./progs/translated/no-phis/$base.umc"

        # ------- wasm32 IR -> Wasm ------
        # Same front-end flags and same reg2mem step; only the target triple differs.
        if (( build_wasm )); then
                clang-19 "${flags[@]}" "${wasm_cflags[@]}" -emit-llvm -c "$file" -o "$ir/wasm/phis/$base.bc"
                llvm-dis-19 "$ir/wasm/phis/$base.bc" -o "$ir/wasm/phis/$base.ll"
 
                opt-19 -passes='reg2mem' "$ir/wasm/phis/$base.bc" -o "$ir/wasm/no-phis/$base.bc"
                llvm-dis-19 "$ir/wasm/no-phis/$base.bc" -o "$ir/wasm/no-phis/$base.ll"
 
                for v in phis no-phis; do
                        # llc only does codegen. Handing the .bc to 'clang -O2' would run the -O2 IR pipeline again, and SROA/mem2reg would undo reg2mem
                        llc-19 -O2 -filetype=obj "$ir/wasm/$v/$base.bc" -o "$ir/wasm/$v/$base.o"
                        clang-19 "${wasm_ldflags[@]}" "$ir/wasm/$v/$base.o" "$ir/wasm/polybench.o" \
                                -o "$out/wasm/$v/$base.wasm"
                done
        fi
done
