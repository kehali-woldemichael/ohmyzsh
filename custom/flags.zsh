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

# Rust
RUST_COMMON="-C target-cpu=native -C opt-level=3"
#RUST_LTO_FLAGS="-Clinker-plugin-lto -Clinker=clang -Clink-arg=-fuse-ld=lld"
export RUSTFLAGS="${RUST_COMMON}"
CARGO_CACHE_RUSTC_INFO=0


alias make="$make_path"
if [[ $os = "Darwin" ]]; then
  gcc_path="/opt/homebrew/opt/gcc"
  #gcc_path="/opt/homebrew/bin/aarch64-apple-darwin23-gcc-13"
  make_path="/opt/homebrew/bin/gmake"
  target_bin="/usr/local/bin"

  #alias gcc="$gcc_path"
  alias make="$make_path"
  #export CC="$gcc_path"

  #ln -sf "$make_path" "$target_bin"
  #ln -sf "$gcc_path" "$target_bin"

  export TCLTK_LIBS="-L/opt/homebrew/opt/tcl-tk/lib -ltcl8.6 -ltk8.6"
  export TCLTK_CFLAGS="-I/opt/homebrew/opt/tcl-tk/include"
fi






