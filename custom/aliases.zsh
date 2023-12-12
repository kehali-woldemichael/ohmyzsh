# Importing variables from paths.zsh
source $ZSH/custom/paths.zsh

# Navigation
alias dropbox="cd $HOME/Dropbox"
alias code="cd $CODE"
alias storage="cd $STORAGE"
alias core="cd $CORE"
alias config="cd $CONFIG"
alias bin="cd $BIN"
alias custom="cd $CUSTOM"
alias ssh="kitty +kitten ssh" # necessary to prevent ssh from breaking

# Files
alias zshrc="nvim $HOME/.zshrc"
alias paths="nvim $CUSTOM/paths.zsh"
alias aliases="nvim $CUSTOM/aliases.zsh"
alias options="nvim $CUSTOM/options.zsh"
alias flags="nvim $CUSTOM/flags.zsh"
alias keybindings="nvim $CUSTOM/keybindings.zsh"

# Research
alias courses="cd $DROPBOX/Research/Neurobiology_PhD/Courses"
alias cellreadr="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR"
alias cellcode="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code"
alias portal="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code/CellREADR-Portal"

# Commands
alias cdb='cd ..'
alias eza='eza -al'
alias exat='eza --tree --level=2'
# h - print sizes in human readable format (e.g., 1K 234M 2G)
# D - derefence systemlinks
# D - derefence systemlinks
# d1 - show for depth=1
# --time - show time of the last modification of any file in the
#     directory, or any of its subdirectories
alias dust "dust -b -d 1 $PWD"
alias duh "dust -b -d 1 $HOME"
alias df="df -ah $PWD"
alias dfh="df -ah $HOME"
alias trash-sym="find $PWD -type l -maxdepth 1"

# Managing symlinks
alias symlink-ls="find . -type l"
alias symlink-dangling-ls="find -L . -type l"
alias symlink-rm="find . -type l -exec rm -- {} +"
alias symlink-dangling-rm="find -L . -type l -exec rm -- {} +"

alias rm='echo "This is not the command you are looking for."; false'
alias ls='echo "This is not the command you are looking for."; false'
alias exa='echo "This is not the command you are looking for."; false'

# Applications
# Ranger ... remain in current directory when quitng ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


# For checking storage usage in Duke DCC
if [ $(hostname)=dcc ]; then 
    alias group="/hpc/group/zjhuanglab/kbw29"

    alias dfg="df -ah /hpc/group/zjhuanglab"
    alias dfk="df -ah /hpc/group/zjhuanglab/kbw29"
fi
