echo "Installing pathogen and slimux"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim ~/.vim/autoload/

cd ~/.vim/bundle && \
    git clone https://github.com/epeli/slimux.git

