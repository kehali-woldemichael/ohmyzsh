# Base
alias aliases-nav="$EDITOR $CUSTOM/navigation_aliases.zsh"
alias aliases-cmd="$EDITOR $CUSTOM/command_aliases.zsh"

# Setting type of cli cmd to use for navigation 
app="zoxide"
cmd="z"
# Check if chosen navigatino tool is availible 
# Defaults to cd if not  
if [[ $(command -v $app) ]]; then
  nav="$cmd"
else
  nav="cd"
fi;

alias dropbox="$nav $HOME/Dropbox"
alias code="$nav $HOME/Dropbox/Learning/Code"
alias storage="$nav $STORAGE"
alias core="$nav $HOME/Core"
alias config="$nav $HOME/Core/config/"

alias bin="$nav $HOME/Core/bin/"
alias apps="$nav $HOME/Core/apps/"
alias functions="$nav $HOME/Core/functions/"

# onmyzsh
alias custom="$nav $ZSH_CUSTOM"
# neovim
alias nv="$nav $nv_dir"
alias nv-lua="$nav $nv_dir/lua"

# Research
alias courses="$nav $DROPBOX/Research/Neurobiology_PhD/Courses"
alias cellreadr="$nav $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR"
alias cellcode="$nav $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code"
alias portal="$nav $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code/CellREADR-Portal"

# Files
# Add check to see if nvim installed
alias zshrc="$EDITOR $HOME/.zshrc"
alias zshenv="$EDITOR $HOME/.zshenv"
alias zprofile="$EDITOR $HOME/.zprofile"

alias paths="$EDITOR $CUSTOM/paths.zsh"
alias options="$EDITOR $CUSTOM/options.zsh"
alias flags="$EDITOR $CUSTOM/flags.zsh"
alias keybindings="$EDITOR $CUSTOM/keybindings.zsh"
alias setup="$EDITOR $CUSTOM/setup.zsh"

alias nv-init="$EDITOR $nv/init.lua"
