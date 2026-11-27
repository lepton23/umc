#!/bin/bash
# Runtime comparison of each translated Polybench kernel:
#     native C (from the same .bc the UMC translator consumed) vs UMC vs Wasm
#     each in a phis and no-phis (reg2mem) variant
# Run translate-polybench.sh first

set -euo pipefail
shopt -s nullglob

root="$HOME/PolyBenchC-4.2.1"
ir=./polybench-output
progs=./progs/translated
build=./bench-build
results_dir=./bench-results

umc_run="${UMC_RUN:-./target/release/umc-vm}"
wasm_run="${WASM_RUN:-wasmtime run}"
runs=10
warmup=2
cpu=""
precompile=0
check=1

usage() {
        cat >&2 <<EOF
Usage: $0 [options] [benchmark ...]
  benchmark   base names, e.g. gemm 2mm jacobi-2d (default: every .bc in $ir/phis)
  -r N        timed runs per configuration (default: $runs)
  -w N        warm-up runs per configuration (default: $warmup)
  -u "cmd"    command that runs a .umc file (default: \$UMC_RUN or "$umc_run")
  -W "cmd"    command that runs a .wasm file (default: \$WASM_RUN or "$wasm_run")
  -c CPU      pin every run to one CPU with taskset
  -J          AOT-precompile wasm (and not include wasmtime's compile time in the timing)
  -C          skip the output-equivalence check
EOF
        exit 1
}

while getopts ":r:w:u:W:c:JCh" opt; do
        case $opt in
                r) runs=$OPTARG ;;
                w) warmup=$OPTARG ;;
                u) umc_run=$OPTARG ;;
                W) wasm_run=$OPTARG ;;
                c) cpu=$OPTARG ;;
                J) precompile=1 ;;
                C) check=0 ;;
                h) usage;;
                :) echo "Option -$OPTARG requires an argument" >&2; usage ;;
                \?) echo "Unknown option -$OPTARG" >&2; usage ;;
        esac
done
shift $((OPTIND - 1))


# ---- preflight -----------------------------------------------------------
read -ra umc_argv  <<<"$umc_run"
read -ra wasm_argv <<<"$wasm_run"
command -v "${umc_argv[0]}" >/dev/null ||
        { echo "Error: UMC runner '${umc_argv[0]}' not found; pass -u \"/path/to/vm [args]\"" >&2; exit 1; }
command -v "${wasm_argv[0]}" >/dev/null ||
        { echo "Error: Wasm runner '${wasm_argv[0]}' not found; pass -W \"runtime [args]\"" >&2; exit 1; }

pin=""
if [[ -n $cpu ]]; then pin="taskset -c $cpu "; fi

use_wasmtime_aot=0
if (( precompile )) && [[ $(basename "${wasm_argv[0]}") == wasmtime ]]; then
use_wasmtime_aot=1; fi

have_hyperfine=0
if command -v hyperfine >/dev/null; then
        have_hyperfine=1
else
        echo "Note: hyperfine not found, using the built-in timer (install hyperfine for better statistics)" >&2
fi

if (( $# )); then
        benches=("$@")
else
        benches=()
        for f in "$ir"/phis/*.bc; do benches+=("$(basename "$f" .bc)"); done
fi
if (( ${#benches[@]} == 0 )); then
        echo "Error: no translated benchmarks in $ir/phis; run translate-polybench.sh first" >&2
        exit 1
fi

dataset=$(cat "$ir/DATASET" 2>/dev/null || echo UNKNOWN)
configs=(native-phis native-no-phis umc-phis umc-no-phis wasm-phis wasm-no-phis) # first = baseline

mkdir -p "$build"/native/{phis,no-phis} "$build"/wasm/{phis,no-phis} "$build/out" "$results_dir"
csv="$results_dir/results-$dataset-$(date +%Y%m%d-%H%M%S).csv"
echo "benchmark,config,mean_s,stddev_s,min_s,max_s,output,checksum" > "$csv"

# Native polybench runtime, same flags as the kernels
clang-19 -O2 -fno-builtin -DPOLYBENCH_DUMP_ARRAYS -I "$root/utilities" \
        -c "$root/utilities/polybench.c" -o "$build/native/polybench.o"

# ---- helpers -------------------------------------------------------------
run_cmd() { local -a argv; read -ra argv <<<"$1"; "${argv[@]}"; }

# checksum of a run's dumped arrays, comparable across runtimes:
# native/wasm write PolyBench's "%0.2lf " dump to stderr, UMC writes "reg = value" dbg lines to stdout,
# so both are reduced to one value per line rounded like PolyBench, then hashed
checksum() {
        local outd=$1 cfg=$2
        if [[ $cfg == umc-* ]]; then
                awk -F' = ' 'NF == 2 { printf "%.2f\n", $2 }' "$outd/$cfg.stdout"
        else
                awk '/dump|DUMP/ { next } { for (i = 1; i <= NF; i++) printf "%.2f\n", $i }' "$outd/$cfg.stderr"
        fi | sha256sum | cut -c1-16
}

# print command line for benchmark & config, building if needed
# returns 1 if input artifact is missing or build fails
cmd_for() {
        local b=$1 cfg=$2 kind=${2%%-*} v=${2#*-} # v = phis / no-phis
        case $kind in
        native)
                # llc, not 'clang -O2 x.bc' as re-running IR pipeline would undo reg2mem
                # PIC because ubuntu distro clang links PIE by default i think
                local bc="$ir/$v/$b.bc" obj="$build/native/$v/$b.o" exe="$build/native/$v/$b"
                [[ -f $bc ]] || return 1
                if [[ ! -x $exe || $bc -nt $exe ]]; then
                        llc-19 -O2 -relocation-model=pic -filetype=obj "$bc" -o "$obj" >&2 &&
                        clang-19 "$obj" "$build/native/polybench.o" -lm -o "$exe" >&2 || return 1
                fi
                echo "$pin$exe" ;;
        umc)
                local f="$progs/$v/$b.umc"
                [[ -f $f ]] || return 1
                echo "$pin$umc_run $f" ;;
        wasm)
                local w="$progs/wasm/$v/$b.wasm"
                [[ -f $w ]] || return 1
                if (( use_wasmtime_aot )); then
                        local cw="$build/wasm/$v/$b.cwasm"
                        if [[ ! -f $cw || $w -nt $cw ]]; then
                                "${wasm_argv[0]}" compile -o "$cw" "$w" >&2 || return 1
                        fi
                        echo "$pin$wasm_run --allow-precompiled $cw"
                else
                        echo "$pin$wasm_run $w"
                fi ;;
        esac
}

# fallback timer if no hyperfine
# uses EPOCHREALTIME so no timezone shenanigans
time_cmd() {
        local i t0 t1; local -a ts=()
        for ((i = 0; i < warmup; i++)); do run_cmd "$1" >/dev/null 2>&1 || true; done
        for ((i = 0; i < runs; i++)); do
                t0=$EPOCHREALTIME
                run_cmd "$1" >/dev/null 2>&1 || true
                t1=$EPOCHREALTIME
                ts+=($(( 10#${t1//[.,]/} - 10#${t0//[.,]/} ))) # microseconds
        done
        printf '%s\n' "${ts[@]}" | awk '
                { x = $1 / 1e6; s += x; ss += x * x; if (NR == 1 || x < mn) mn = x; if (x > mx) mx = x }
                END { m = s / NR; v = (NR > 1) ? (ss - NR * m * m) / (NR - 1) : 0; if (v < 0) v = 0
                        printf "%.6f,%.6f,%.6f,%.6f\n", m, sqrt(v), mn, mx }'
}


# ---- main loop -----------------------------------------------------------
declare -A status sum
for b in "${benches[@]}"; do
        printf '\n=== %s (%s) ===\n' "$b" "$dataset"
        outd="$build/out/$b"
        mkdir -p "$outd"
        status=(); sum=()
        names=(); cmds=()
        ref_ok=0

        for cfg in "${configs[@]}"; do
                if ! cmd=$(cmd_for "$b" "$cfg"); then
                        status[$cfg]=missing
                        echo "  $cfg: missing or failed to build" >&2
                        continue
                fi
                if (( check )); then
                        # POLYBENCH_DUMP_ARRAYS always writes to stderr
                        if ! run_cmd "$cmd" > "$outd/$cfg.stdout" 2>"$outd/$cfg.stderr"; then
                                status[$cfg]=FAIL
                                echo "  $cfg: non-zero exit (see $outd/$cfg.stderr)" >&2
                                continue
                        fi
                        sum[$cfg]=$(checksum "$outd" "$cfg")
                        printf '  %-16s checksum %s\n' "$cfg" "${sum[$cfg]}"
                        if [[ $cfg == "${configs[0]}" ]]; then
                                status[$cfg]=reference; ref_ok=1
                        elif (( ! ref_ok )); then
                                status[$cfg]=no-reference
                        elif [[ ${sum[$cfg]} == "${sum[${configs[0]}]}" ]]; then
                                status[$cfg]=match
                        else
                                status[$cfg]=diff
                                echo "  $cfg: output differs from ${configs[0]}" >&2
                        fi
                else
                        status[$cfg]=unchecked
                fi
                names+=("$cfg"); cmds+=("$cmd")
        done

        if (( ${#names[@]} )); then
                if (( have_hyperfine )); then
                        hf=(-N --warmup "$warmup" --runs "$runs" --export-csv "$outd/hyperfine.csv")
                        for i in "${!names[@]}"; do hf+=(-n "${names[i]}" "${cmds[i]}"); done
                        if hyperfine "${hf[@]}"; then
                                # hyperfine csv columns: command,mean,stddev,median,user,system,min,max
                                while IFS=, read -r name mean stddev _median _user _system min max _rest; do
                                        echo "$b,$name,$mean,$stddev,$min,$max,${status[$name]},${sum[$name]:-}" >> "$csv"
                                done < <(tail -n +2 "$outd/hyperfine.csv")
                        else
                                echo "  hyperfine failed for $b, skipping" >&2
                        fi
                else
                        for i in "${!names[@]}"; do
                                printf '  timing %-16s ' "${names[i]}"
                                stats=$(time_cmd "${cmds[i]}")
                                echo "$stats"
                                echo "$b,${names[i]},$stats,${status[${names[i]}]},${sum[${names[i]}]:-}" >> "$csv"
                        done
                fi
        fi

        # Record configurations that never got timed
        for cfg in "${configs[@]}"; do
                case ${status[$cfg]:-} in missing|FAIL) echo "$b,$cfg,,,,,${status[$cfg]}," >> "$csv" ;; esac
        done
done

# ---- summary -------------------------------------------------------------
printf '\nMean wall time; (Nx) = slowdown vs baseline %s; "!" = output differs. Dataset: %s\n\n' "${configs[0]}" "$dataset"
awk -F, -v cfgs="$(IFS=,; echo "${configs[*]}")" '
NR == 1 { next }
{ k = $1 SUBSEP $2; mean[k] = $3; out[k] = $7
  if (!($1 in seen)) { seen[$1] = 1; order[++n] = $1 } }
END {
        nc = split(cfgs, C, ",")
        printf "%-16s", "benchmark"
        for (i = 1; i <= nc; i++) printf "  %-20s", C[i]
        printf "\n"
        for (j = 1; j <= n; j++) {
                b = order[j]; base = mean[b SUBSEP C[1]]
                printf "%-16s", b
                for (i = 1; i <= nc; i++) {
                        k = b SUBSEP C[i]
                        if (!(k in out))        cell = "-"
                        else if (mean[k] == "") cell = out[k]
                        else {
                                cell = sprintf("%.4fs", mean[k])
                                if (i > 1 && base > 0) {
                                        r = mean[k] / base
                                        cell = cell sprintf(" (%.2fx)", r)
                                        lg[i] += log(r); cnt[i]++
                                }
                                if (out[k] == "diff") cell = cell "!"
                        }
                        printf "  %-20s", cell
                }
                printf "\n"
        }
        printf "%-16s  %-20s", "geomean", "1.00x"
        for (i = 2; i <= nc; i++) printf "  %-20s", cnt[i] ? sprintf("%.2fx", exp(lg[i] / cnt[i])) : "-"
        printf "\n"
}' "$csv"
 
printf '\nRaw results: %s\n' "$csv"
