#add group
sudo addgroup compute
sudo addgroup hpc
#add user
sudo adduser analytics
sudo adduser hadoop
sudo adduser spark
#change group
sudo usermod -g hpc hadoop
sudo usermod -g hpc spark
sudo usermod -g compute analytics
#del group
sudo delgroup analytics
sudo delgroup spark
sudo delgroup hadoop
