# Importing variables from paths.zsh
source $ZSH/custom/paths.zsh
source $ZSH/custom/colorize.zsh

# Symlink if not exist
[[ ! -f "$CUSTOM/completion.zsh" ]] && ln -sf "$CORE/apps/fzf/shell/completion.zsh" $CUSTOM
[[ ! -f "$CUSTOM/key-bindings.zsh" ]] && ln -sf "$CORE/apps/fzf/shell/key-bindings.zsh" $CUSTOM


# Navigation
alias dropbox="cd $HOME/Dropbox"
alias code="cd $CODE"
alias storage="cd $STORAGE"
alias core="cd $CORE"
alias config="cd $CONFIG"
alias bin="cd $personal_bin"
alias apps="cd $APPS"
alias function_dir="cd $FUNCTIONS"
# onmyzsh
alias custom="cd $CUSTOM"
# neovim
alias nv="cd $nv_dir"
alias nv-lua="cd $nv_dir/lua"

# Files
# Add check to see if nvim installed
alias zshrc="$EDITOR $HOME/.zshrc"
alias zshenv="$EDITOR $HOME/.zshenv"

alias paths="$EDITOR $CUSTOM/paths.zsh"
alias aliases="$EDITOR $CUSTOM/aliases.zsh"
alias options="$EDITOR $CUSTOM/options.zsh"
alias flags="$EDITOR $CUSTOM/flags.zsh"
alias keybindings="$EDITOR $CUSTOM/keybindings.zsh"

alias nv-init="$EDITOR $nv/init.lua"

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
if [[ $(command -v eza) ]]; then alias ls='print -c "This is not the command you are looking for." red'
else echo "Please setup eza using cargo"; fi
alias exa='print -c "This is not the command you are looking for." red'

if [[ $(command -v trash) ]]; then alias rm='print -c "This is not the command you are looking for." red'
else print "Please setup trash-cli using pipx" red; fi

if [[ $(command -v ranger) ]]; then 
    # Causes ranger to remain in current directory when quitng ranger
    alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
    # modify to use cache/.rangerdir 
else print -c  "Please setup trash-cli using pipx" red; fi


# Applications


# DCC dcc
if [ $(hostname)=dcc ]; then 
    alias group="/hpc/group/zjhuanglab/kbw29"

    alias dfg="df -ah /hpc/group/zjhuanglab"
    alias dfk="df -ah /hpc/group/zjhuanglab/kbw29"
fi
