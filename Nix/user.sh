#! /bin/bash

echo 'Creating Group compute'
addgroup compute

echo 'adding user analytics to compute'
adduser --ingroup compute analytics

echo 'done.........'


#sudo usermod -g compute analytics
#sudo delgroup analytics
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home

echo "Done all Task !"

#chsh -s /bin/zsh
                   
