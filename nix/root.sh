#! /bin/bash

pkgs= (
	'git'
	'zsh'
	'vim'
	'tmux'	
	'virtualenv'
	'chromium-browser'
	)

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

# become root
sudo -i
echo "I am Root"

# set time to local time
timedatectl set-local-rtc 1
echo "Time set to local rtc"

apt update
apt upgrade

for i in "${pkgs[@]}"
do
    apt install $i
done
echo 

echo 'done'
