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

# Directories
# Core
alias core="$nav $HOME/Core"
alias apps="$nav $HOME/Core/apps/"
alias bin="$nav $HOME/Core/bin/"
alias conf="$nav $HOME/Core/config/"
alias func="$nav $HOME/Core/functions/"
alias home="$nav $HOME/Core/home/"
alias loc="$nav $HOME/Core/local/"
# onmyzsh
alias custom="$nav $ZSH_CUSTOM"
# neovim
alias nv="$nav $nv_dir"
alias nv-lua="$nav $nv_dir/lua"

# Files
# ZSH
alias zshrc="$EDITOR $HOME/.zshrc"
alias zshenv="$EDITOR $HOME/.zshenv"
alias zprofile="$EDITOR $HOME/.zprofile"
# ohmyzsh   
alias nav="$EDITOR $CUSTOM/nav-aliases.zsh"
alias paths="$EDITOR $CUSTOM/paths.zsh"
alias options="$EDITOR $CUSTOM/options.zsh"
alias flags="$EDITOR $CUSTOM/flags.zsh"
alias keybindings="$EDITOR $CUSTOM/keybindings.zsh"
alias setup="$EDITOR $CUSTOM/setup.zsh"
# configs
alias nv-init="$EDITOR $nv/init.lua"

