#time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

#if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run deploy to configure dependencies"
#fi


export ZSH=~/bundle/My-Sweet-Little-Sys/nix/dotfile/zsh/plugins/oh-my-zsh

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

ZSH_THEME="robbyrussell"

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

plugins=(git)

source $ZSH/oh-my-zsh.sh

echo "Updating configuration"
#(cd ~/bundle/My-Sweet-Little-Sys && git pull && git submodule update --init --recursive)
source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/zsh/env.sh


