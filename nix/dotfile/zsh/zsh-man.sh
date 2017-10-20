#time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

#if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run deploy to configure dependencies"
#fi


export ZSH=/home/test1/bundle/My-Sweet-Little-Sys/nix/dotfile/zsh/plugins/oh-my-zsh


ZSH_THEME="robbyrussell"


plugins=(git)

source $ZSH/oh-my-zsh.sh

echo "Updating configuration"
#(cd ~/bundle/My-Sweet-Little-Sys && git pull && git submodule update --init --recursive)



