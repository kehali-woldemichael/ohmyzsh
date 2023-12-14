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

# CLI tools
if [[ "$(command -v nvim)" ]]; then  
     nv_dir="$HOME/neovim"
     nv_bin="$nv_dir/bin"
     typeset -U path PATH && path=($nv_dir $nv_bin $path) 
fi

# Python
if [[ "$(command -v pyenv)" ]]; then 
     PYENV_ROOT="$HOME/pyenv"
     pyenv_bin="$PYENV_ROOT/bin"

     eval "$(pyenv init -)"

     typeset -U path PATH
     if [[ "$(command -v python)" ]]; then
       pyenv_global="$(cat $PYENV_ROOT/version)"
       python_global_bin="$PYENV_ROOT/versions/$pyenv_global/bin"
       path=($PYENV_ROOT $pyenv_bin $python_global_bin $path) 
     else
       path=($PYENV_ROOT $pyenv_bin $path) 
     fi

fi

if [[ "$(command -v poetry)" ]]; then  
     poetry_config="$HOME/.config/pypoetry"
     export Path=$PATH:"$poetry_config"	
fi

# Setting up Google Cloud SDK
gcPath="$HOME/google-cloud-sdk/path.zsh.inc" #updates PATH for the Google Cloud SDK.
gcComp="$HOME/google-cloud-sdk/completion.zsh.inc" #enables shell command completion for gcloud.

# Adding to $PATH if not already there
typeset -U path PATH
path=($local_bin $homebrew_path 
        $gcPath $gcComp
        $path) # do not remome path variable ... stores default contents of path
