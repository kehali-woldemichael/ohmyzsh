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
# Tmux - have to include since tmux uses different key-codes
bindkey -s "^[l" '^L'
bindkey -s "^[e" 'eza^M'
bindkey -s "^[d" 'dust^M'
bindkey -s "^[s" 'exec $SHELL^M'
bindkey -s "^[r" 'ranger^M'


# Opt-Left
#bindkey -s "^[[101;15u" 'ezat^M'
# Tmux
#bindkey -s "^[^E" 'ezat^M'


