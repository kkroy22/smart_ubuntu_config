#! /bin/bash

# set time to local time
timedatectl set-local-rtc 1

# making iniatial user dir
cd 
mkdir -p ~/bundle/launcher

# oh my bash!
cd 
touch envar
echo "#my custom bash" >> ~/.bashrc
echo "echo "Welcome from Kiran Kumar Roy"" >> ~/.bashrc
echo "echo "Group:::::::::::::::::::SUDO"" >> ~/.bashrc
echo "source ~/envar" >> ~/.bashrc
echo "echo "Loading.................Done"" >> ~/.bashrc

# install required packages
pkgs=(  
         'chromium-browser'
         'git'
         'tmux'
         'jupyter-core'
         'vim'
         'r-base'
         'curl'
         'ssh'
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

# cran.r-project
#sudo apt-get install r-base
