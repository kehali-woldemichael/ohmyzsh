# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/kbw29/Core/apps/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/kbw29/Core/apps/fzf/bin"
fi

source <(fzf --zsh)
