# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/kbw29/Core/Git/make/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/kbw29/Core/Git/make/fzf/bin"
fi

# Auto-completion
# ---------------
source "/Users/kbw29/Core/Git/make/fzf/shell/completion.bash"

# Key bindings
# ------------
source "/Users/kbw29/Core/Git/make/fzf/shell/key-bindings.bash"
