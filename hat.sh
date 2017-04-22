#! /bin/bash

# set time to local time
# making iniatial user dir
cd 
touch envSource
mkdir -p ~/bundle ~/bundle/BackUp ~/bundle/GitHub ~/bundle/.dot/file

# copy for backup
echo "Installing pathogen and slimux"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim ~/.vim/autoload/

    cd ~/.vim/bundle && \
	        git clone https://github.com/epeli/slimux.git

