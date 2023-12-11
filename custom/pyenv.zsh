# Recommended to add when installing pyenv
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
# For pyenv installation
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# For pyenv ...
eval "$(pyenv init --path)"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
