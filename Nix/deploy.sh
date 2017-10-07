#! /bin/bash

check_default_shell() {
	if [ -z "${SHELL##*zsh*}" ] ;then
			echo "Default shell is zsh."
	else
		echo -n "Default shell is not zsh. Do you want to chsh -s \$(which zsh)? (y/n)"
		old_stty_cfg=$(stty -g)
		stty raw -echo
		answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
		stty $old_stty_cfg && echo
		if echo "$answer" | grep -iq "^y" ;then
			chsh -s $(which zsh)
		else
			echo "Warning: Your configuration won't work properly. If you exec zsh, it'll exec tmux which will exec your default shell which isn't zsh."
		fi
	fi
}

echo "We're going to do the following:"

echo "1. We're going to check to see if your default shell is zsh"
echo "2. We'll try to change it if it's not" 

echo "Let's get started? (y/n)"

old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
	echo 
else
	echo "Quitting, nothing was changed."
	exit 0
fi


check_default_shell

echo
echo -n "Would you like to backup your current dotfiles? (y/n) "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
	mv ~/.zshrc ~/.zshrc.old
	mv ~/.tmux.conf ~/.tmux.conf.old
	mv ~/.vimrc ~/.vimrc.old
else
	echo -e "\nNot backing up old dotfiles."
fi

mv ~/.bashrc ~/bundle/My-Sweet-Little-Sys/Nix/dotfile/bash/bashrc.sh

echo "source ~/bundle/My-Sweet-Little-Sys/Nix/dotfile/bash/bashrc.sh" > ~/bundle/My-Sweet-Little-Sys/Nix/dotfile/bash/bash_manager.sh
echo "source ~/bundle/My-Sweet-Little-Sys/Nix/dotfile/bash/bash_manager.sh" > ~/.bashrc
echo "source ~/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/zshrc_manager.sh" > ~/.zshrc
echo "so $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/vimrc.vim" > ~/.vimrc
echo "source-file $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/tmux/tmux.conf" > ~/.tmux.conf

echo
echo "Please log out and log back in for default shell to be initialized."
