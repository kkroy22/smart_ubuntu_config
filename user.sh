#add group
sudo addgroup compute
sudo addgroup hpc
sudo addgroup bdt
sudo addgroup dbt
#add user
sudo adduser analytics
sudo adduser hadoop
sudo adduser spark
sudo adduser database
#change group
sudo usermod -g compute analytics
sudo usermod -g bdt hadoop
sudo usermod -g bdt spark
sudo usermod -g dbt database
#del group
sudo delgroup analytics
sudo delgroup hadoop
sudo delgroup spark
sudo delgroup database
#add folder
sudo mkdir -p /opt/compute /opt/hpc /opt/bdt /opt/dbit
#
#compgen -g
#compgen -u
#groups user
#sudo deluser --remove-home
