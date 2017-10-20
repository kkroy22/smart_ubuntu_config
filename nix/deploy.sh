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

echo "Deploy? [y,n]"

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
	mv ~/.zshrc ~/msls/.zshrc.old
	mv ~/.tmux.conf ~/msls/.tmux.conf.old
	mv ~/.vimrc ~/msls/.vimrc.old
else
	echo -e "\nNot backing up old dotfiles."
fi

echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "echo "Greetings from Kiran Kumar Roy"" >> ~/.bashrc
echo "source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/bash/bash_manager.sh" >> ~/.bashrc
echo "echo "-----------------Loading Done!"" >> ~/.bashrc
echo "G=groups" >> ~/.bashrc
echo "echo "$G ::: $USER ::: bash"" >> ~/.bashrc

echo "" >> ~/.zshrc
echo "" >> ~/.zshrc
echo "" >> ~/.zshrc
echo "echo "Greetings from Kiran Kumar Roy"" >> ~/.zshrc
echo "source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/zsh/zshrc_manager.sh" > ~/.zshrc
echo "echo "-----------------Loading Done!"" >> ~/.zshrc
echo "G=groups" >> ~/.zshrc
echo "echo "$G ::: $USER :::: zsh"" >> ~/.zshrc

#echo "so $HOME/bundle/My-Sweet-Little-Sys/nix/dotfile/vim/vimrc.vim" >> ~/.vimrc
#echo "source-file $HOME/bundle/My-Sweet-Little-Sys/nix/dotfile/tmux/tmux.conf" >> ~/.tmux.conf

echo
echo "Please log out and log back in for default shell to be initialized."
