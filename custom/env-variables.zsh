# Navigation enviroment variables
export CORE="$HOME/Core"
export CUSTOM="$ZSH/custom"
export BIN="$CORE/bin"
export APPS="$CORE/apps"
export FUNCTIONS="$CORE/local/functions"

# basic 
export os="$(uname)" 
export CORE="$HOME/Core"

# config 
export CONFIG="$CORE/config"
export XDG_CONFIG_HOME="$CONFIG"

# local
export LOCAL="$CORE/local" 
export CARGO_HOME="$LOCAL/.cargo" 
export RUSTUP_HOME="$LOCAL/.rustup" 

# apps
export APPS="$CORE/apps" 
export ZSH="$APPS/ohmyzsh"
export PYENV_ROOT="$APPS/pyenv"

# zsh 
export UPDATE_ZSH_DAYS=1  
export ZSH_CUSTOM_AUTOUPDATE_QUIET=true 
export ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8


