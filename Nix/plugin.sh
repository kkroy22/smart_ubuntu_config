echo "Install oh-my-zsh"


echo "installing zsh-autosuggestions"
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/zsh-autosuggestions

echo "installing zsh syntex highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/zsh-syntax-highlighting

cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv .oh-my-zsh/ $HOME/bundle/My-Sweet-Little-Sys/Nix/dotfile/zsh/plugins/oh-my-zsh
