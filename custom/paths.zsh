
# Navigation enviroment variables
# Include check for operating system ... or machine?
export DROPBOX="$HOME/Dropbox"
export CODE="$DROPBOX/Code"
export STORAGE="$CODE/Storage"
export SOFTWARE="$STORAGE/Software"

# Core module directory 
export CORE="$HOME/Core"
export CUSTOM="$ZSH/custom"
export BIN="$CORE/Bin"
export APPS="$CORE/apps"
export FUNCTIONS="$CORE/local/functions"

# Python
pyenv_bin="$PYENV_ROOT/bin"
pyenv_version="$PYENV_ROOT/versions"
brew_python="$(brew list | grep python@ | tr -d "@")"

export PATH="/opt/homebrew/opt/binutils/bin:$PATH"

# Setting variables w/ paths to relevant directories
# General
global_bin="/usr/bin"
personal_bin="$HOME/Core/local/bin"
default_bin="$HOME/.local/bin"
default_sbin="$HOME/.local/sbin"
local_bin="/usr/local/bin"
system_bin="/bin"

# external bins 
git_extra_bin="$HOME/Core/apps/git-extra-commands/bin"
extract_sh="$HOME/Core/apps/Extract"

# MacOS
homebrew_path="/opt/homebrew/bin"
# Apps
cargo_bin="$CARGO_HOME/bin"
# To install symlinks for compilers that will automatically use
ccache_bin="/opt/homebrew/opt/ccache/libexec"
ccache_path="/opt/homebrew/opt/ccache/bin/ccache"
make_path="/usr/local/opt/make/libexec/gnubin/"

typeset -U path PATH && path=($path
		$global_bin  $default_bin $system_bin $default_sbin
    $local_bin $personal_bin $cargo_bin
 	  $homebrew_path $ccache_path $ccache_bin
    $make_path 
    $git_extra_bin $extract_sh)

# Package managers 
conda_bin="/usr/local/anaconda3/condabin"
anaconda_bin="/usr/local/anaconda3/bin"
typeset -U path PATH && path=($path 
    $conda_bin $anaconda_bin)



