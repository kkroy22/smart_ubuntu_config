#! /bin/bash

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

echo 'Creating Group compute'
addgroup compute

echo 'adding user analytics to compute'
adduser --ingroup compute analytics
chsh -s /bin/zsh analytics
echo 'done.........'

#sudo usermod -g compute analytics
#sudo usermod -a -G groupName userName
#sudo delgroup analytics
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home
echo "Done all Task !"
