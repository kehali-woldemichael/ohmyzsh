# Modifiers
#   Control: ^
#
# Default to Vim bindings, regardless of editor string
bindkey -v

# Cmd-Left
bindkey -s "^[[108;9u" '^L' # cmd+l = ctrl+l (clear screen and reset prompt)
bindkey -s "^[^?" '^W' # cmd+backspace = ctrl+d (backward kill word)
bindkey "^[[3;3~" kill-word
bindkey -s "˙" '^A'
bindkey -s "¬" '^E'
# CLI application
bindkey -s "^[[115;9u" 'clear && exec $SHELL^M'
bindkey -s "^[[101;9u" 'eza^M'
bindkey -s "^[[100;9u" 'dust^M'
bindkey -s "^[[114;9u" 'ranger^M'
bindkey -s "^[[102;9u" 'fzf^M'
bindkey -s "^[[104;9u" 'htop^M'

# Tmux - have to include since tmux uses different key-codes
bindkey -s "^[l" '^L'
# CLI application
bindkey -s "^[s" 'clear && exec $SHELL^M'
bindkey -s "^[e" 'eza^M'
bindkey -s "^[d" 'dust^M'
bindkey -s "^[r" 'ranger^M'
bindkey -s "^[f" 'fzf^M'
bindkey -s "^[h" 'htop^M'
# Tmux
bindkey -s "^X" 'tmux kill-pane^M'
bindkey -s "^[," 'tmux split-pane -v ^M'
bindkey -s "^[." 'tmux split-pane -h ^M'

