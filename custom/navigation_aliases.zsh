# Navigation
if [[ $(command -v $cmd) ]]; then
  nav="z"
fi

alias dropbox="$nav $HOME/Dropbox"
alias code="$nav $HOME/Dropbox/Learning/Code"
alias storage="$nav $STORAGE"
alias core="$nav $CORE"
alias config="$nav $CONFIG"
alias bin="$nav $personal_bin"
alias apps="$nav $APPS"
alias function_dir="$nav $FUNCTIONS"
# onmyzsh
alias custom="$nav $CUSTOM"
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
alias aliases-nav="$EDITOR $CUSTOM/navigation_aliases.zsh"
alias aliases-cmd="$EDITOR $CUSTOM/command_aliases.zsh"
alias options="$EDITOR $CUSTOM/options.zsh"
alias flags="$EDITOR $CUSTOM/flags.zsh"
alias keybindings="$EDITOR $CUSTOM/keybindings.zsh"
alias setup="$EDITOR $CUSTOM/setup.zsh"

alias nv-init="$EDITOR $nv/init.lua"
