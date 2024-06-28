# Python
pyenv_version="$PYENV_ROOT/versions"
brew_python="$(brew list | grep python@ | tr -d "@")"

# General
system_bin="/bin"
global_bin="/usr/bin"
default_bin="$HOME/.local/bin"
default_sbin="$HOME/.local/sbin"
local_bin="/usr/local/bin"
typeset -U path PATH && path=($path
    $system_bin $global_bin  $default_bin 
    $default_sbin $local_bin)

# Core 
personal_bin="$HOME/Core/bin"
git_extra_bin="$HOME/Core/apps/git-extra-commands/bin"
#extract_sh="$HOME/Core/apps/Extract"
typeset -U path PATH && path=($path 
$personal_bin $git_extra_bin)

# MacOS
homebrew_bin="/opt/homebrew/bin"
ccache_bin="/opt/homebrew/opt/ccache/libexec"
binutils_bin="/opt/homebrew/opt/binutils/bin:$PATH"
ccache_path="/opt/homebrew/opt/ccache/bin/ccache"
make_path="/usr/local/opt/make/libexec/gnubin/"
libtool_path="/usr/local/opt/libtool/libexec/gnubin"
# Util-linux: keg-only, which means it was not symlinked into /opt/homebrew
# Need to explicitly add to path
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"
typeset -U path PATH && path=($path 
    $homebrew_bin $binutils_bin $ccache_bin 
    $ccache_path $make_path $libtool_path) 

# Package managers 
cargo_bin="$CARGO_HOME/bin"
pyenv_bin="$PYENV_ROOT/bin"
typeset -U path PATH && path=($path 
    $cargo_bin $pyenv_bin)



