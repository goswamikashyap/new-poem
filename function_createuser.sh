#!/bin/bash
function create_user { 

read -p "enter username :" username
sudo useradd -m $username
echo "user created"

}
for (( i=1 ; i<=3 ; i++ ))
do
	create_user
done
