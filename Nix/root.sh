#! /bin/bash

# become root
sudo -i
echo "I am Root"

# set time to local time
timedatectl set-local-rtc 1
echo "Time set to local rtc"

apt update
apt upgrade

check_for_software() {
	echo "Checking to see if $1 is installed"
	if ! [ -x "$(command -v $1)" ]; then
		prompt_install $1
	else
		echo "$1 is installed."
	fi
}


pkgs= (
	 'chromium-browser'
         'git'
         'tmux'
         'vim'
         'virtualenv'
         'zsh'
	 'curl'
)

for i in "${pkgs[@]}"
do
    check_for_software $i
done
echo 

echo 'done'
