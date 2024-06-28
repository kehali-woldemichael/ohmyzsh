# Modifiers
#   Control: ^
#
# Default to Vim bindings, regardless of editor string
bindkey -v

# Cmd-Left
bindkey -s "^[[108;9u" '^L'
bindkey -s "^[[101;9u" 'eza^M'
bindkey -s "^[[100;9u" 'dust^M'
bindkey -s "^[[115;9u" 'exec $SHELL^M'
bindkey -s "^[[114;9u" 'ranger^M'
bindkey -s "^[[102;9u" 'fzf^M'

# Tmux - have to include since tmux uses different key-codes
bindkey -s "^[l" '^L'
bindkey -s "^[e" 'eza^M'
bindkey -s "^[d" 'dust^M'
bindkey -s "^[s" 'exec $SHELL^M'
bindkey -s "^[r" 'ranger^M'
bindkey -s "^[f" 'fzf^M'
