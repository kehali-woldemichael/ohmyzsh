# Importing variables from paths.zsh
source $ZSH/custom/paths.zsh

# Navigation
alias dropbox="cd $HOME/Dropbox"
alias code="cd $CODE"
alias storage="cd $STORAGE"
alias core="cd $CORE"
alias config="cd $CONFIG"
alias bin="cd $BIN"
# onmyzsh
alias custom="cd $CUSTOM"
# neovim
alias nv="cd $nv_dir"
alias nv-lua="cd $nv_dir/lua"

# Files
# Add check to see if nvim installed
alias zshrc="nvim $HOME/.zshrc"
alias paths="nvim $CUSTOM/paths.zsh"
alias aliases="nvim $CUSTOM/aliases.zsh"
alias options="nvim $CUSTOM/options.zsh"
alias flags="nvim $CUSTOM/flags.zsh"
alias keybindings="nvim $CUSTOM/keybindings.zsh"
alias nv-init="nvim $nv/init.lua"

# Research
alias courses="cd $DROPBOX/Research/Neurobiology_PhD/Courses"
alias cellreadr="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR"
alias cellcode="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code"
alias portal="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code/CellREADR-Portal"

# Commands
alias ssh="kitty +kitten ssh" # necessary to prevent ssh from breaking
alias cdb='cd ..'
alias eza='eza -al'
alias exat='eza --tree --level=2'
# Storage/size
alias dust "dust -b -d 1 $PWD"
alias duh "dust -b -d 1 $HOME"
alias df="df -ah $PWD"
alias dfh="df -ah $HOME"

# Managing symlinks
alias symlink-ls="find . -type l"
alias symlink-dangling-ls="find -L . -type l"
alias symlink-rm="find . -type l -exec rm -- {} +"
alias symlink-dangling-rm="find -L . -type l -exec rm -- {} +"

# Blocking bad habits
alias rm='echo "This is not the command you are looking for."; false'
alias ls='echo "This is not the command you are looking for."; false'
alias exa='echo "This is not the command you are looking for."; false'

# Applications
# Causes ranger to remain in current directory when quitng ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


# DCC dcc
if [ $(hostname)=dcc ]; then 
    alias group="/hpc/group/zjhuanglab/kbw29"

    alias dfg="df -ah /hpc/group/zjhuanglab"
    alias dfk="df -ah /hpc/group/zjhuanglab/kbw29"
fi
