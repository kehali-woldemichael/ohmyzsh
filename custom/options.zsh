ZSH_THEME="kphoen" # Set name of the theme to load
zstyle ':omz:update' mode auto  # Update automatically without asking
zstyle ':omz:update' frequency 7 # How often to auto-update (in days).


CASE_SENSITIVE="true" # Use case-sensitive completion.
ENABLE_CORRECTION="true" # Enable command auto-correction.
# Display string whilst waiting for completion.
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Settting command execution time stamp shown in the history command output
HIST_STAMPS="yyyy-mmm-dd"

# Hide the prompt context info when you’re logged in as yourself on your local machine
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


# Check if nvim installed ... if not use vim
nvimStatus="$(which nvim)"
if [[ -z $nvimStatus ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi


