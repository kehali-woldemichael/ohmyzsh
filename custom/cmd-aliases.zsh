# Importing variables from paths.zsh
source $ZSH/custom/env-variables.zsh
source $ZSH/custom/paths.zsh
source $HOME/Core/functions/aliases.func

ranger_alias='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`bat $HOME/.rangerdir`; z "$LASTDIR"'
alias_implement "ranger" "$ranger_alias" ""
alias_implement "eza" "eza -al" "ls,exa"
[[ $(command -v eza) ]] && alias ezat="eza --tree --level=2"
