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
			echo "I'm not sure what your package manager is!" 
		fi 
	fi
}

check_for_software() {
	echo "Checking to see if $1 is installed"
	if ! [ -x "$(command -v $1)" ]; then
		prompt_install $1
	else
		echo "$1 is installed."
	fi
}


# become root
sudo -i
echo "I am Root"

# set time to local time
timedatectl set-local-rtc 1
echo "Time set to local rtc"

apt update
apt upgrade

pkgs= (
	'chromium-browser'
        'git'
	'tmux'
	'vim'
	'virtualenv'
	'zsh'
)

for i in "${pkgs[@]}"
do
    check_for_software $i
done
echo 

echo 'done'
