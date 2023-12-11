# -mcpu: determines instructions to emit when generating assembly code (like -march) and the target processor for which to tune for performance (like -mtune)
# -pipe: no effect on the generated code, but it makes the compilation process faster ... 
## compiler uses pipes instead of temporary files during the different stages of compilation
### Increase system performance at the cost of longer compile time
# -fopt-info-missed=missed.all: outputs missed optimization report from all the passes into missed.all
# -fopt-info=opt-info.all: outputs optimization report from all the passes into opt-info.all
COMMON_FLAGS="-mcpu=native -pipe " # safe

# Dumps information on optimization passes - for optimized, missed, notes, and JSON for all
# -time=time.all: Report the CPU time taken by each subprocess in the compilation sequence
INFO_FLAGS="-fopt-info-optimized=optimized.all -fopt-info-missed=missed.all -fopt-info-note=note.all -fsave-optimization-record -time=time.all"

# -flto: Link Time Optimization - optimizations done during linking (importantly inlining and code locality improvements). 
### See https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html#Optimize-Options
FAST="-O3"
SPEED="-Ofast -flto"

GRAPHITE="-floop-interchange -ftree-loop-distribution -floop-strip-mine -floop-nest-optimize -fgraphite-identity" 

export FAST_FLAGS="${COMMON_FLAGS} ${INFO_FLAGS} ${FAST}"
export SPEED_FLAGS="${COMMON_FLAGS} ${INFO_FLAGS} ${SPEED} ${GRAPHITE}"

ALL_FLAGS="${SPEED_FLAGS}"
export CFLAGS="${ALL_FLAGS}"
export CXXFLAGS="${ALL_FLAGS}"

export FCFLAGS="${ALL_FLAGS}"
export FFLAGS="${ALL_FLAGS}"

CORES=$(nproc --all) # get number of logical cores
# Dividing number of total cores with 3/4 ... w/ floor rounding
USE=$(($(nproc)*3/4))
export MAKEOPTS="-j$USE --load-average $(($USE+2))"

#RUST_Linker-LTO_FLAGS="-Clinker-plugin-lto -Clinker=clang -Clink-arg=-fuse-ld=lld"
#RUSTFLAGS="-C target-cpu=native -C opt-level=3 lto="

# CPU flags for M1 mac
#CPU_FLAGS_ARM=""
