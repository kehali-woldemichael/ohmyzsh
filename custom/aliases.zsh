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

# Files
alias zshrc="nvim $HOME/.zshrc"
alias paths="nvim $CUSTOM/paths.zsh"
alias aliases="nvim $CUSTOM/aliases.zsh"
alias options="nvim $CUSTOM/options.zsh"
alias keybindings="nvim $CUSTOM/keybindings.zsh"

# Research
alias courses="cd $DROPBOX/Research/Neurobiology_PhD/Courses/"
alias cellreadr="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/"
alias cellcode="cd $DROPBOX/Research/Neurobiology_PhD/Huang/Projects/CellReadR/Code/"

# Commands
alias rm='echo "This is not the command you are looking for."; false'
alias ls='echo "This is not the command you are looking for."; false'
alias cdb='cd ..'
alias exa='exa -al'
alias exat='exa --tree --level=2'

# Applications
# Ranger ... remain in current directory when quitng ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
