# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kbw29/Core/apps/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/kbw29/Core/apps/fzf/bin"
fi

source <(fzf --zsh)
