# Navigation enviroment variables
# Include check for operating system ... or machine?
export DROPBOX="$HOME/Dropbox"
export CODE="$DROPBOX/Code"
export STORAGE="$CODE/Storage"
export SOFTWARE="$STORAGE/Software"

# Core module directory 
export CORE="$HOME/Core"
export CONFIG="$CORE/Home/.config"
export CUSTOM="$ZSH/custom"
export BIN="$CORE/Bin"

# Setting variables w/ paths to relevant directories
# General
local_bin="$HOME/.local/bin"
# MacOS
homebrew_path="/opt/homebrew/bin"

typeset -U path PATH && path=($local_bin $homebrew_path $path)




