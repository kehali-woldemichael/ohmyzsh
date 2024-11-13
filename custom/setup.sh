# Adding scripts containing function set to path
FUNCTIONS="$CORE/functions"
for script in $FUNCTIONS/*;do
    source $script
done

# Check for a currently running instance of the agent
if [ -z "$SSH_AUTH_SOCK" ]; then
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> .ssh/ssh-agent
   fi
   eval `cat .ssh/ssh-agent`
fi

# Check if nvim installed ... if not use vim
if [[ $(command -v nvim) ]]; then
    export EDITOR='nvim'

    nv_dir="$HOME/neovim"
    nv_bin="$nv_dir/bin"
    typeset -U path PATH && path=($nv_dir $nv_bin $path)
else
    export EDITOR='vim'
fi
