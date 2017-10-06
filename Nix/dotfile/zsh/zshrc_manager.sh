time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

# Run tmux if exists
if command -v tmux>/dev/null; then
	[ -z $TMUX ] && exec tmux
else 
	echo "tmux not installed. Run deploy to configure dependencies"
fi

echo "Updating configuration"
#(cd $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile && time_out 3 git pull && time_out 3 git submodule update --init --recursive)
(cd $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile && git pull && git submodule update --init --recursive)
source $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/zshrc.sh
