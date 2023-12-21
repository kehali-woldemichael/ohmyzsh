# Rust flags 
CARGO_HOME="$HOME/.local/.cargo" # move this later

# General
# https://www.gnu.org/software/make/manual/make.html#Implicit-Variables

# Collection info
# Obtaining machine information
coreNum=$(nproc --all)
os=$(uname)
cpu=$(uname -p) # prints values such as x86_64, i686, arm, or aarch64


c_compiler_option="gcc"

if [[ $c_compiler_option = "gcc-aarch64" ]]; then
    c_compiler_path="/opt/homebrew/bin/aarch64-apple-darwin23-gcc-13"
    ar_path="/opt/homebrew/bin/aarch64-apple-darwin23-gcc-ar-13"
    nm_path="/opt/homebrew/opt/gcc/bin/aarch64-apple-darwin23-gcc-nm-13"
elif [[ $c_compiler_option = "gcc" ]]; then
    c_compiler_path="/opt/homebrew/opt/gcc/bin/gcc-13"
    ar_path="/opt/homebrew/opt/gcc/bin/gcc-ar-13"
    nm_path="/opt/homebrew/opt/gcc/bin/gcc-nm-13"
fi
LD=

export CC="$c_compiler_path"
export CPP="$c_compiler_path"
export CXX="$c_compiler_path"
export AR="$ar_path"
export NM="$nm_path"


# Setting make enviroment variables
export PREFIX="/Users/kbw29/.local"

# https://www.gnu.org/software/make/manual/html_node/Options-Summary.html
# Just using all cores
export MAKEOPTS="-j --environment-overrides --warn-undefined-variables --always-make --debug" 


# Status values
m1_cpu_all=(
	"aes asimd asimddp asimdfhm asimdhp asimdrdm atomics cpop cpuid crc crc32 crc32 crypto" 
	"csv2 csv3 dcpodp dit dotprod dpb dpb2 evtstrm fcma fcma fhm flagm flagm2 fp fp16"
	"fphp frint frintts gpi ilrcpc jscvt lrcpc lse2 neon neon-fp16 neon-hpfp paca pacg pauth" 
	"pmull sb sha1 sha2 sha256 sha3 sha512 simd ssbs uscat")
# Removed: asimd asimddp asimdfhm asimdhp asimdrdm atomics atomics cpop cpuid crc32
# csv2 csv3 dcpodp dit dpb dpb2 evtstrm fcma fhm fphp frint frintts gpi ilrcpc jscvt jscvt lrcpc lrcpc lse2 neon neon-fp16 neon-hpfp paca
# pmull sb sha1 sha256 ssbs
# ARM GCC supported CPU features
# took gcc list and input into temp.txt ... then cat temp.txt | grep "^‘" | tr -d "‘’" | sort | tr "\n" " "
gcc_arm_cpu=(
	      "aes bf16 crc crypto cssc d128 dotprod f32mm f64mm flagm fp fp16 fp16fml gcs i8mm ls64 lse memtag mops"
	      "pauth predres profile rcpc rcpc3 rdma rng sb sha2 sha3 simd sm4 sme sme-f64f64 sme-i16i64 sme2 ssbs sve"
	      "sve2 sve2-aes sve2-bitperm sve2-sha3 sve2-sm4 the tme") 

# comm -12 <(echo "${m1_cpu_all[@]}" | tr " " "\n") <(echo "${gcc_arm_cpu[@]}" | tr " " "\n") | tr "\n" " "
m1_cpu_supp="aes crc crypto dotprod flagm fp fp16 pauth sb sha2 sha3 simd ssbs"
# echo $m1_cpu_supp | tr " " "+" | sed "s/^/+/"
m1_flags_supp="+aes+crc+crypto+dotprod+flagm+fp+fp16+pauth+sb+sha2+sha3+simd+ssbs"



M1_CPU_FLAGS="${m1_instr[@]}"
M1_CPU_OPT="$(echo $M1_CPU_FLAGS | sed 's/ /+/g')"

# -flto: Link Time Optimization - optimizations done during linking (importantly inlining and code locality improvements). 
### See https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html#Optimize-Options
# https://gcc.gnu.org/onlinedocs/gcc/Instrumentation-Options.html
# No longer supported: -fmudflap -fmudflapth -fmudflapir
# -fuse-plugin-linker: not support in aarch64
SPEED="-pipe -Ofast -flto -fomit-frame-pointer -funroll-loops -fearly-inlining -fira-region=one -fsched2-use-traces -ffast-math -frename-registers -fno-signed-zeros -fno-trapping-math"

# Dumps information on optimization passes - for optimized, missed, notes, and JSON for all
# -time=time.all: Report the CPU time taken by each subprocess in the compilation sequence
INFO="-fopt-info-note=note.all -fsave-optimization-record -time=time.all"

#GRAPHITE="-floop-interchange -ftree-loop-distribution -floop-strip-mine -floop-nest-optimize -fgraphite-identity" 

#LD_COMMON="-fuse-ld=mold -Wl,-O3 -Wl,--as-needed,--threads=$coreNum -Wl,-flto -Wl,--sort-common"
LD_COMMON="-fuse-ld=mold -Wl,-O3 -Wl,-flto"
# Failed 

# COMMON flags
ARM_COMMON="-pipe -mfloat-abi=hard -mfpu=neon" # safe

# https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html
# BTW M1 is aarch64 ... not arm 
AARCH64_COMMON="-mno-track-speculation"

# Temp: X86_COMMON="-march=cpu-type -mtune=cpu-type -pipe" # safe








# GCC flags 
# https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html
# https://s-o-c.org/arm-gcc-compiler-flags-mcpu-vs-mfloat-abi-vs-mfpu-explained/
if [[ "$os" = "Darwin" ]]; then
  # For pkg-config to find util-linux
  export PKG_CONFIG_PATH="/opt/homebrew/opt/util-linux/lib/pkgconfig"
  # https://developer.apple.com/documentation/kernel/1387446-sysctlbyname/determining_instruction_set_characteristics
  # https://github.com/rust-lang/rust/issues/93889
  cpu="$(sysctl machdep.cpu.brand_string)"

  util_linux="-I/opt/homebrew/opt/util-linux/include"
  bin_utils="-I/opt/homebrew/opt/binutils/include"

  if [[ $cpu =~ "Apple M1 Max" ]]; then 
    # Base flags 
    # gcc -### -E - -march=native 2>&1 | sed -r '/cc1/!d;s/(")|(^.* - )//g'
    # https://github.com/llvm/llvm-project/blob/main/llvm/include/llvm/TargetParser/AArch64TargetParser.h
    ARM_M1="-march=armv8.5-a$m1_flags_supp -mtune=native -mabi=lp64 -mlittle-endian -fPIC" # safe

    #CPU_FLAGS_ARM=$M1_CPU_FLAGS
    export CFLAGS="$ARM_M1 $AARCH64_COMMON $SPEED $INFO $util_linux $bin_utils"
  export CXXFLAGS="$CFLAGS"
  fi


  # For compilers to find util-linux
  usr_lib="-L/usr/local/lib"
  brew_lib="-L/opt/homebrew/lib"
  util_lib="-L/opt/homebrew/opt/util-linux/lib"
  bin_utils="-L/opt/homebrew/opt/binutils/lib"

  #ld="-L/opt/homebrew/opt/mold"
  #ar="-I$ar_path"
  #nm="-I$nm_path"

  local_lib="-L$HOME/.local/lib"

  #export LDFLAGS="$LD_COMMON $CFLAGS $brew_ld $brew_lib $util_lib $ar_path"
  export LDFLAGS="$LD_COMMON $CFLAGS $user_lib $brew_lib $util_lib $bin_utils"









elif [[ "$os" = "Linux" ]]; then
  linux_cpu_flags="$(lscpu | grep -i flags | tr ' ' '\n' | egrep -v '^Flags:|^$' | tr "\n" " ")"
  cpu_opt="$(echo $linux_cpu_flags | tr " " "\n" | sed 's/^/+/' | tr "\n" " ")"
  
  # https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
  # https://gist.github.com/fm4dd/c663217935dc17f0fc73c9c81b0aa845
  # https://marcin.juszkiewicz.com.pl/2022/11/08/from-a-diary-of-aarch64-porter-arm-cpu-features-table/
  if [[ $arch = "arm" ]]; then 
    CPU_FLAGS_ARM=$M1_CPU_FLAGS
    export CFLAGS="$ARM_COMMON $M1_CPU_OPT $SPEED $INFO"
    export CPU_FLAGS_ARM="$linux_cpu_flags"
    export CXXFLAGS="$CFLAGS"
    export CPPFLAGS="$CFLAGS"

    export LDFLAGS="$LD_COMMON $CFLAGS"
  elif [[ $arch = "x86" ]]; then 
    # CPU/Venderid: Intel (GenuineIntel); AMD (AuthenticAMD)
    intel_id="GenuineIntel" 
    amd_id="AuthenticAMD"
    cpu_vendor="$(lscpu | grep -i vendor | awk '{print $3}')"
    AMD="-mveclibabi=acml"
    INTEL="-mveclibabi=svml"

    # https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
    X86_EXT="-mabi=sysv -m64 -msse3 -mno-avx -mno-avx2 -mno-fma -mavx2"
    
    if [[ "$cpu_vendor" = "$intel_id" ]]; then
      export CFLAGS="$SPEED $INFO $X86_COMMON $X86_EXT $INTEL"
    elif [[ "$cpu_vendor" = "$amd_id" ]]; then
      export CFLAGS="$SPEED $INFO $X86_COMMON $X86_EXT $AMD"
    fi

    export LDFLAGS="$LD_COMMON $CFLAGS"
    # Finding availible CPU_FLAGS and setting for x86 and ARM
    export CPU_FLAGS_X86="$linux_cpu_flags"
    # Setting C++ flags
    export CXXFLAGS="$CFLAGS"
  fi

else
  echo "Platform not supported"
fi


# Implementing PGO

pgo_dir="/tmp/pgo"
pgo_pre="-fprofile-dir=$pgo_dir -fprofile-generate=$pgo_dir -fprofile-prefix-path=$PREFIX"
pgo_post="-fprofile-dir=$pgo_dir -fprofile-use=$pgo_dir -fprofile-correction -fprofile-prefix-path=$PREFIX"
export CFLAGS_PRE="$CFLAGS $pgo_pre"
export CFLAGS_POST="$CFLAGS $pgo_post" 
export CXXFLAGS_PRE="$CXXFLAGS $pgo_pre"
export CXXFLAGS_POST="$CXXFLAGS $pgo_post"
export LDFLAGS_PRE="$LDFLAGS $pgo_pre"
export LDFLAGS_POST="$LDFLAGS $pgo_post" 




#export FCFLAGS="${ALL_FLAGS}"
#export FFLAGS="${ALL_FLAGS}"
# Target feature: rustc --target=<aarch64-apple-darwin> --print target-features
# https://medium.com/@patrickkoss/maximizing-rust-performance-a-comparative-analysis-of-compiler-optimizations-813bee3852fd
#RUST_Linker-LTO_FLAGS="-Clinker-plugin-lto -Clinker=clang -Clink-arg=-fuse-ld=lld"
#RUST_Linker-LTO_FLAGS="-Clinker-plugin-lto -Clinker=gcc -Clink-arg=-fuse-ld=lld"
RUST_COMMON="-C target-cpu=native -C opt-level=3"
RUSTFLAGS="$RUST_COMMON"
#CARGO_CACHE_RUSTC_INFO=0
