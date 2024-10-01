# Importing variables from paths.zsh
source $ZSH/custom/paths.zsh

# CLI Commands 

# Function - alias_implement
#   1) Checks if commands are availible from comma separated list of commands
#   2) Aliases availible commands into a modified version w/ extra arguments 
#   3) Blocks comma separated list of commands to prevent use 
#   4) Generates prompt if command is not availible 
#
# Args: str $1 - initial command 
#       str $2 - output alias 
#       str $3 - comma separated list of commands to block 
# Returns: 
#   cmd - aliased version of initial command 
function alias_implement() {
	#cmd="$1"
	cmd_list=(${(@s:,:)1})
  output="$2"
	block_list=(${(@s:,:)3})

  for block in ${block_list[@]}; do
    alias "$block"='print -c "This is not the command you are looking for." red'
  done

  for cmd in ${cmd_list[@]}; do
    if [[ $(command -v $cmd) ]]; then 
      alias "$cmd"="$output"
    else 
      alias "$cmd"='print -c "Please install $cmd" yellow'
    fi
  done
}

# Package managers
function alias_simplify() {
  input=$1 
  output=$2

  if [[ $(command -v $output) ]]; then
    alias "$input"="$output"
  else 
    alias "$input"='print -c "Please install $cmd" yellow'
  fi;
}

# Storage/size
alias du="print -c 'Please use dust instead' yellow"
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

