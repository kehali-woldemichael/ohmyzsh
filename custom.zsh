# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/kbw29/Dropbox/Code/Storage/Core/Git/make/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/kbw29/Dropbox/Code/Storage/Core/Git/make/fzf/bin"
fi

# Auto-completion
# ---------------
source "/Users/kbw29/Dropbox/Code/Storage/Core/Git/make/fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/Users/kbw29/Dropbox/Code/Storage/Core/Git/make/fzf/shell/key-bindings.zsh"
