ZSH_THEME="kphoen" # Set name of the theme to load
zstyle ':omz:update' mode auto  # Update automatically without asking
zstyle ':omz:update' frequency 7 # How often to auto-update (in days).


CASE_SENSITIVE="true" # Use case-sensitive completion.
ENABLE_CORRECTION="true" # Enable command auto-correction.
# Display string whilst waiting for completion.
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Settting command execution time stamp shown in the history command output
HIST_STAMPS="yyyy-mmm-dd"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi



