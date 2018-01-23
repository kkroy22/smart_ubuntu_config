#! /bin/bash

# https://www.bikky.space
# https://www.owcsx.science
# https://www.linkedin.com/in/kkroy22/

echo 'Creating Group compute'
echo 'Creating Group test'
addgroup compute

echo 'adding user analytics to compute'
echo 'adding user test to test1'
adduser --ingroup compute analytics
adduser --ingroup test test1

echo 'done.........'

#sudo usermod -g compute analytics
#sudo usermod -a -G groupName userName
#sudo delgroup analytics
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home
chsh -s /bin/zsh analytics

echo "Done all Task !"
