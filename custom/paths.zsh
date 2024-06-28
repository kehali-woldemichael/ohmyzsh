core_bin="$HOME/Core/bin"
local_bin="$HOME/.local/bin"
cargo_bin="$CARGO_HOME/bin"
pyenv_bin="$PYENV_ROOT/bin"
git_extra_bin="$HOME/Core/apps/git-extra-commands/bin"
typeset -U path PATH &&  
	path=($path $core_bin $local_bin
		  $cargo_bin $pyenv_bin
		  $git_extra_bin)
