#time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

#if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run deploy to configure dependencies"
#fi

echo "Updating configuration"
#(cd ~/bundle/My-Sweet-Little-Sys && git pull && git submodule update --init --recursive)
source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/bash/env.sh
