export XDG_CONFIG_HOME="$HOME/config" # changing location of config directory
export CARGO_HOME="$HOME/apps/.cargo" # move this later
export GOPATH="$HOME/apps/go"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


# Navigation enviroment variables
# Include check for operating system ... or machine?
export DROPBOX="$HOME/Dropbox"
export CODE="$DROPBOX/Code"
export STORAGE="$CODE/Storage"
export SOFTWARE="$STORAGE/Software"

#export PATH=$PATH:"$HOME/.cargo/bin"

# Core module directory 
export CORE="$HOME/Core"
export CONFIG="$CORE/Home/.config"
export CUSTOM="$ZSH/custom"
export BIN="$CORE/Bin"
export APPS="$CORE/apps"


# Macports
# puts the MacPorts paths at the front of PATH so that the MacPorts binaries will take precedence over vendor-supplied binaries
# If prior to MacPorts installation a MANPATH variable exists in a current .profile that contains 
# neither the value ${prefix}/share/man, 
# nor any empty items separated by a colon, the 
# postflight script sets the MANPATH variable as shown below. Otherwise, the MANPATH variable is omitted.
export MANPATH=$MANPATHY"/Users/kbw29/.local/libexec/macports/share/man"
export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"/Users/kbw29/.local/sbin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/bin"
#export PATH=$PATH:"$HOME/pyenv"


# Setting variables w/ paths to relevant directories
# General
global_bin="/usr/bin"
personal_bin="$HOME/Core/local/bin"
local_bin="/usr/local/bin"
go_bin="$HOME/apps/go/bin"
# MacOS
homebrew_path="/opt/homebrew/bin"
# Homerbrew
# To install symlinks for compilers that will automatically use
ccache_bin="/opt/homebrew/opt/ccache/libexec"
ccache_path="/opt/homebrew/opt/ccache/bin/ccache"

typeset -U path PATH && path=($path
		$global_bin $local_bin $personal_bin $go_bin
 	        $homebrew_path $ccache_path $ccache_bin)




