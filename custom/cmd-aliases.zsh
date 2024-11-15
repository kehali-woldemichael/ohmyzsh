# Importing variables from paths.zsh
source $ZSH/custom/paths.zsh
source $HOME/Core/functions/aliases_func.zsh


# Storage/size
#alias du="print -c 'Please use dust instead' yellow"
alias dfh="sudo df -h"
alias dfa="sudo df -ah"

alias tmux="/home/kbw29/Core/apps/tmux/tmux"
alias nvim="/home/kbw29/Core/apps/neovim/build/bin/nvim"
 
# Navigation 
#alias_implement "zoxide" "zoxide" "cd"
alias_implement "bat" "bat" "cat"
#if [[ $(command -v trash) ]]; then 
#  alias t="trash"
#  alias rm='print -c "Please use t for trash instead" yellow'
#fi
ranger_alias='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`bat $HOME/.rangerdir`; z "$LASTDIR"'
alias_implement "ranger" "$ranger_alias" ""
alias_implement "eza" "eza -al" "ls,exa"
[[ $(command -v eza) ]] && alias ezat="eza --tree --level=2"

# Managing symlinks
alias symlink-ls="find . -type l"
alias symlink-dangling-ls="find -L . -type l"
alias symlink-rm="find . -type l -exec rm -- {} +"
alias symlink-dangling-rm="find -L . -type l -exec rm -- {} +"

# Github 
alias gsl="git-submodules-ls"
alias gsa="git-submodule-add"
alias gsr="git-submodule-rm"
alias gpo="git push -u origin" 
alias gpof="git push -u --force origin"

