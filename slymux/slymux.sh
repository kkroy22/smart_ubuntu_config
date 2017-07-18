echo "Installing pathogen and slimux"
cd
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim ~/.vim/autoload/

cd ~/.vim/bundle && \
    git clone https://github.com/epeli/slimux.git


#slymux config
echo "Slymux Congig"
touch .vimrc


echo "execute pathogen#infect()">>~/.vimrc
echo "syntax on">>~/.vimrc
echo "filetype plugin indent on">>~/.vimrc


echo "nnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>">> ~/.vimrc
echo "vnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>">> ~/.vimrc
echo "nnoremap <C-c><C-v> :SlimuxREPLConfigure<CR>">> ~/.vimrc

echo "Done all task !"
