#!/bin/bash 
#create user with arguments 
echo "=================create user=================="
read -p "enter username : $1"
read -p "enter password : $2"
sudo useradd -m "$1"
echo -e "$2\n$2" | sudo passwd "$1"
echo "=================user created================="
