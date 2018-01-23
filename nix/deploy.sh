
# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/
#mkdir ~/A ~/bundle

# copy git config
cp $HOME/bundle/My-Sweet-Little-Sys/nix/dotfile/git/.gitconfig $HOME/

touch ~/.vimrc
echo "so $HOME/bundle/My-Sweet-Little-Sys/nix/dotfile/vim/vim-man.vim" >> ~/.vimrc

touch ~/.tmux.conf
echo "source-file $HOME/bundle/My-Sweet-Little-Sys/nix/dotfile/tmux/tmux-man.conf" >> ~/.tmux.conf


# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/


echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "echo ____________________________________" >> ~/.bashrc
echo "echo ____________________________________" >> ~/.bashrc
echo "echo Greetings from Kiran Kumar Roy" >> ~/.bashrc
echo "source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/bash/bash-man.sh" >> ~/.bashrc
echo "echo ------------------Loading Done!" >> ~/.bashrc
echo "G=\$(groups)" >> ~/.bashrc
echo "U=\$(users)" >> ~/.bashrc
echo "S=\$SHELL" >> ~/.bashrc
echo "echo  \$G ::: \$U :::: \$S" >> ~/.bashrc
echo "echo ____________________________________" >> ~/.bashrc
echo "echo ____________________________________" >> ~/.bashrc


touch ~/.zshrc
echo "" >> ~/.zshrc
echo "" >> ~/.zshrc
echo "" >> ~/.zshrc
echo "echo ____________________________________" >> ~/.zshrc
echo "echo ____________________________________" >> ~/.zshrc
echo "echo Greetings from Kiran Kumar Roy" >> ~/.zshrc
echo "source ~/bundle/My-Sweet-Little-Sys/nix/dotfile/zsh/zsh-man.sh" >> ~/.zshrc
echo "echo -----------------Loading Done!" >> ~/.zshrc
echo "G=\$(groups)" >> ~/.zshrc
echo "U=\$(users)" >> ~/.zshrc
echo "S=\$SHELL" >> ~/.zshrc
echo "echo  \$G ::: \$U :::: \$S" >> ~/.zshrc
echo "echo ____________________________________" >> ~/.zshrc
echo "echo ____________________________________" >> ~/.zshrc

