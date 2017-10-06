echo "Installing pathogen and slimux"
cd ~
mkdir -p $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/autoload $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    mv pathogen.vim $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/autoload/
cd $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/vim/plugin/bundle && \
    git clone https://github.com/epeli/slimux.git

echo "Install oh-my-zsh"
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv .oh-my-zsh $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/oh-my-zsh

echo "installing zsh-autosuggestions"
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/zsh-autosuggestions

echo "installing zsh syntex highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/zsh-syntax-highlighting
