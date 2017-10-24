#time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

#if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run deploy to configure dependencies"
#fi

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

echo "Updating configuration"
#(cd ~/bundle/My-Sweet-Little-Sys && git pull && git submodule update --init --recursive)
source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/bash/env.sh
