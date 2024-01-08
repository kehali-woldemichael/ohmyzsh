# Collection info
# Obtaining machine information
coreNum=$(nproc --all)
os=$(uname)
cpu=$(uname -p) # prints values such as x86_64, i686, arm, or aarch64


m1_flags_supp="+aes+crc+crypto+dotprod+flagm+fp+fp16+pauth+sb+sha2+sha3+simd+ssbs"
#ARM_M1="-march=armv8.5-a$m1_flags_supp -mtune=native -mabi=lp64 -mlittle-endian -fPIC" # safe
export CFLAGS="-pipe -mcpu=native -O3"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$CFLAGS"






