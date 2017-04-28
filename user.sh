#add group
sudo addgroup compute
sudo addgroup hpc
sudo addgroup bdt
sudo addgroup dbt
#add user
sudo adduser analytics
sudo adduser hadoop
sudo adduser spark
#change group
sudo usermod -g compute analytics
sudo usermod -g bdt hadoop
sudo usermod -g bdt spark
#del group
sudo delgroup analytics
sudo delgroup hadoop
sudo delgroup spark
