#! /bin/bash

# set time to local time
timedatectl set-local-rtc 1

# making iniatial user dir
cd 
touch envSource
mkdir -p ~/bundle/BackUp ~/bundle/GitHub ~/bundle/.dot/file

# copy for backup
#cp ~/.bash_logout ~/bundle/.dot/file
#cp ~/.bashrc ~/bundle/.dot/file
#cp ~/.dmrc ~/bundle/.dot/file
#cp ~/.ICEauthority ~/bundle/.dot/file
#cp ~/.profile ~/bundle/.dot/file
#cp ~/.Xauthority ~/bundle/.dot/file
#cp ~/.xsession-errors ~/bundle/.dot/file


# install required packages
pkgs=(  
         'chromium-browser'
         'git'
         'tmux'
         'vim'
         'curl'
         'ssh'
         'evince'
         )

echo "Installing core packages"
sudo apt update
sudo apt upgrade
for i in "${pkgs[@]}"
do
    sudo apt install $i
done

echo "Installing pathogen and slimux"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim ~/.vim/autoload/

cd ~/.vim/bundle && \
    git clone https://github.com/epeli/slimux.git

# rust-lang
curl https://sh.rustup.rs -sSf | sh

# cran.r-project
sudo apt-get install r-base
