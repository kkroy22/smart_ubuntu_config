#! /bin/bash


prompt_install() {
	echo -n "$1 is not installed. Would you like to install $1 (y/n) " >&2
	old_stty_cfg=$(stty -g)
	stty raw -echo
	answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
	stty $old_stty_cfg && echo
	if echo "$answer" | grep -iq "^y" ;then
		# This could def use community support
		if [ -x "$(command -v apt)" ]; then
			sudo apt install $1 -y

		elif [ -x "$(command -v brew)" ]; then
			brew install $1

		elif [ -x "$(command -v pkg)" ]; then
			sudo pkg install $1

		elif [ -x "$(command -v pacman)" ]; then
			sudo pacman -S $1

		else
			echo "I'm not sure what your package manager is:)" 
		fi 
	fi
}



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
echo "1. Check to make sure you have zsh, vim, and tmux installed"
echo "2. If not then install them from root.sh"
echo "3. We're going to check to see if your default shell is zsh"
echo "4. We'll try to change it if it's not" 
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


echo "Installing pathogen and slimux"
cd ~
mkdir -p $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/autoload $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/autoload/

cd $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/bundle && \
    git clone https://github.com/epeli/slimux.git


# oh my bash!
echo "#_________________________________" >> ~/.bashrc
echo "#my custom bash" >> ~/.bashrc
echo "echo "Welcome from Kiran Kumar Roy"" >> ~/.bashrc
echo "echo "SUDO: !! : !!  !! : !! :root"" >> ~/.bashrc
echo "source '$HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/bash/bashrc'" > ~/.bashrc
echo "echo "Loading.................Done"" >> ~/.bashrc
echo "echo "........................BASH"" >> ~/.bashrc

# oh my zsh!
echo "#_________________________________" >> ~/.zshrc
echo "#my custom bash" >> ~/.bashrc
echo "echo "Welcome from Kiran Kumar Roy"" >> ~/.zshrc
echo "echo "SUDO: !! : !!  !! : !! :root"" >> ~/.zshrc
echo "source '$HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/zshrc_manager.sh'" > ~/.zshrc
echo "echo ".........................ZSH"" >> ~/.zshrc

echo "so $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/vimrc.vim" > ~/.vimrc
echo "source-file $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/tmux/tmux.conf" > ~/.tmux.conf

echo
echo "Please log out and log back in for default shell to be initialized."
