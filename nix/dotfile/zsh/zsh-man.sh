#time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

if command -v tmux>/dev/null; then
	[ -z $TMUX ] && exec tmux
else 
	echo "tmux not installed. Run deploy to configure dependencies"
fi


export ZSH=~/bundle/git/My-Sweet-Little-Sys/nix/dotfile/zsh/plugins/oh-my-zsh

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
(cd ~/bundle/git/My-Sweet-Little-Sys && git pull && git submodule update --init --recursive)
#pip freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs -n1 pip install -U
source ~/bundle/git/My-Sweet-Little-Sys/nix/dotfile/env.sh


