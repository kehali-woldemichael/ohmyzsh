# Setting variables w/ paths to relevant directories
local_bin="$HOME/.local/bin"
homebrew_path="/opt/homebrew/bin"

# Adding to $PATH if not already there
typeset -U path PATH
# do not remome path variable ... stores defuals contents of path
path=($local_bin $homebrew_path $path) 
export PATH

# Navigation
export DROPBOX="$HOME/Dropbox"
export CODE="$DROPBOX/Code"
export STORAGE="$CODE/Storage"
export SOFTWARE="$STORAGE/Software"
export CORE="$STORAGE/Core"

export CONFIG="$CORE/Home/.config"
export CUSTOM="$ZSH/custom"
export BIN="$local_bin"

