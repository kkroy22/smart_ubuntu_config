#add group
sudo addgroup compute
#sudo addgroup hpc
#sudo addgroup bdt
#sudo addgroup dbt
#add user
sudo adduser analytics
#sudo adduser bdt
#sudo adduser hpc
#sudo adduser database
#change group
sudo usermod -g compute analytics
#sudo usermod -g bdt bdt
#sudo usermod -g hpc hpc
#sudo usermod -g dbt database
#del group
sudo delgroup analytics
#sudo delgroup hadoop
#sudo delgroup spark
#sudo delgroup database
#add folder
sudo mkdir -p /opt/compute /opt/GitHub /opt/owcsx
#
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home
