#! /bin/bash

# making iniatial user dir
cd ~
touch envar
mkdir -p ~/bundle/scripts

# oh my bash!
echo "__________________________________" >> ~/.bashrc
echo "#my custom bash" >> ~/.bashrc
echo "echo "Welcome from Kiran Kumar Roy"" >> ~/.bashrc
echo "echo "COMPUTE::::::::::::analytics"" >> ~/.bashrc
echo "source ~/envar" >> ~/.bashrc
echo "echo "Loading.................Done"" >> ~/.bashrc
