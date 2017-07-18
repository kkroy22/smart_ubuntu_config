#add group
sudo addgroup compute
#sudo addgroup hpc
#sudo addgroup bdt
#sudo addgroup dbt
echo "Done adding Groups"

#add user
sudo adduser analytics
#sudo adduser bdt
#sudo adduser hpc
#sudo adduser database
echo "Done adding Users"

#change group
sudo usermod -g compute analytics
#sudo usermod -g bdt bdt
#sudo usermod -g hpc hpc
#sudo usermod -g dbt database
echo "Done Group Change"

#del group
sudo delgroup analytics
#sudo delgroup hadoop
#sudo delgroup spark
#sudo delgroup database
echo "Done Group delete"

#
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home

echo "Done all Task !"
