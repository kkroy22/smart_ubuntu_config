#! /bin/bash

pkgs= (
	'chromium-browser'
        'git'
	'tmux'
	'vim'
	'python3-virtualenv'
	'zsh'
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
    check_for_software $i
done
echo 

echo 'done'
