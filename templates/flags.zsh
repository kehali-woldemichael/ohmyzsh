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
export PREFIX="/Users/kbw29/local"

# https://www.gnu.org/software/make/manual/html_node/Options-Summary.html
# Just using all cores
export MAKEOPTS="-j --environment-overrides --warn-undefined-variables --always-make --debug" 


SPEED="-pipe -Ofast"


# GCC flags 
# https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html
# https://s-o-c.org/arm-gcc-compiler-flags-mcpu-vs-mfloat-abi-vs-mfpu-explained/
if [[ "$os" = "Darwin" ]]; then
  # https://developer.apple.com/documentation/kernel/1387446-sysctlbyname/determining_instruction_set_characteristics
  # https://github.com/rust-lang/rust/issues/93889
  cpu="$(sysctl machdep.cpu.brand_string)"

  m1_flags_supp="+aes+crc+crypto+dotprod+flagm+fp+fp16+pauth+sb+sha2+sha3+simd+ssbs"

  if [[ $cpu =~ "Apple M1 Max" ]]; then 
    # Base flags 
    # gcc -### -E - -march=native 2>&1 | sed -r '/cc1/!d;s/(")|(^.* - )//g'
    # https://github.com/llvm/llvm-project/blob/main/llvm/include/llvm/TargetParser/AArch64TargetParser.h
    ARM_M1="-march=armv8.5-a$m1_flags_supp -mtune=native -mabi=lp64 -mlittle-endian -fPIC" # safe

    export CFLAGS="$ARM_M1 $SPEED"
    export CXXFLAGS="$CFLAGS"
    export LDFLAGS="$CFLAGS"
  fi

elif [[ "$os" = "Linux" ]]; then
  linux_cpu_flags="$(lscpu | grep -i flags | tr ' ' '\n' | egrep -v '^Flags:|^$' | tr "\n" " ")"
  cpu_opt="$(echo $linux_cpu_flags | tr " " "\n" | sed 's/^/+/' | tr "\n" " ")"
  
  # https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
  # https://gist.github.com/fm4dd/c663217935dc17f0fc73c9c81b0aa845
  # https://marcin.juszkiewicz.com.pl/2022/11/08/from-a-diary-of-aarch64-porter-arm-cpu-features-table/
  if [[ $arch = "arm" ]]; then 
  elif [[ $arch = "x86" ]]; then 
  fi
else
  echo "Platform not supported"
fi







