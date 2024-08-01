# Modifiers
#   Control = ^
#   Enter = ^M
# Default to Vim bindings, regardless of editor string
bindkey -v

# Cmd-Left
# Shortcuts
bindkey -s "^[[108;9u" '^L'
bindkey -s "^[^?" '^W' # "cmd+backward_delete" = "backward delete word"
bindkey "^[[3;3~" kill-word # "opt+forward_delete" = "forward delete word"
bindkey -s "˙" '^A' # opt+h = move to beginning of line 
bindkey -s "¬" '^E' # opt+l = move to end of line 
# CLI applications
bindkey -s "^[[115;9u" 'clear && exec $SHELL^M'
bindkey -s "^[[101;9u" 'eza^M'
bindkey -s "^[[100;9u" 'dust^M'
bindkey -s "^[[114;9u" 'ranger^M'
bindkey -s "^[[102;9u" 'fzf^M'
bindkey -s "^[[104;9u" 'htop^M'

# Tmux - have to include since tmux uses different key-codes
bindkey -s "^[l" '^L'
# CLI applications
bindkey -s "^[s" 'clear && exec $SHELL^M'
bindkey -s "^[e" 'eza^M'
bindkey -s "^[d" 'dust^M'
bindkey -s "^[r" 'ranger^M'
bindkey -s "^[f" 'fzf^M'
bindkey -s "^[h" 'htop^M'
# For tmux
bindkey -s "^X" 'tmux kill-pane^M'
bindkey -s "^[." 'tmux split-pane -h ^M'
bindkey -s "^[," 'tmux split-pane -v ^M'

