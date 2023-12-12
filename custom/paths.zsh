# Navigation
export DROPBOX="$HOME/Dropbox"
export CODE="$DROPBOX/Code"
export STORAGE="$CODE/Storage"
export SOFTWARE="$STORAGE/Software"
export CORE="$STORAGE/Core"

export CONFIG="$CORE/Home/.config"
export CUSTOM="$ZSH/custom"
export BIN="$CORE/Bin"

# Setting variables w/ paths to relevant directories
local_bin="$HOME/.local/bin"
homebrew_path="/opt/homebrew/bin"
# Adding to $PATH if not already there
typeset -U path PATH
# do not remome path variable ... stores defuals contents of path
path=($local_bin $homebrew_path $path) 

# Python
export PYENV_ROOT="$HOME/pyenv"
export POETRY_CONFIG_DIR="$HOME/.config/pypoetry"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenvGlobal="$(cat $HOME/pyenv/version)"
globalBin="$HOME/pyenv/versions/3.10.0/bin/"
export PATH="$globalBin:$PATH"
# Created by `pipx` on 2023-12-11 04:20:02
#export PATH="$PATH:/Users/kbw29/pyenv/shims/python/bin"

# Neovim
export PATH="$HOME/neovim/bin:$PATH"

# Setting up Google Cloud SDK
gcPath="$HOME/google-cloud-sdk/path.zsh.inc"
gcComp="$HOME/google-cloud-sdk/completion.zsh.inc" 
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$gcPath" ]; then . "$gcPath"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$gcCom" ]; then . "$gcComp"; fi

