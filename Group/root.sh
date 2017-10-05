#! /bin/bash

# become root
sudo -i
echo "I am Root"

# set time to local time
timedatectl set-local-rtc 1
echo "Time set to local rtc"

# making iniatial user dir
cd ~
touch envar
mkdir -p /opt/compute /opt/tech /opt/all /opt/GitHub
echo "environment created for root user"

# oh my bash!
echo "#_________________________________" >> ~/.bashrc
echo "#my custom bash" >> ~/.bashrc
echo "echo "Welcome from Kiran Kumar Roy"" >> ~/.bashrc
echo "echo "SUDO: !! : !!  !! : !! :root"" >> ~/.bashrc
echo "source ~/envar" >> ~/.bashrc
echo "echo "Loading.................Done"" >> ~/.bashrc

# install required packages
pkgs=(  
         'chromium-browser'
         'git'
         'tmux'
         'vim'
         'curl'
         'ssh'
         'zsh'
         )

echo "Installing core packages"
sudo apt update
sudo apt upgrade
for i in "${pkgs[@]}"
do
    sudo apt install $i
done


# rust-lang
#curl https://sh.rustup.rs -sSf | sh

echo "Done all task !"
