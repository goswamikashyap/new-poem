#!/bin/bash
#creating a user with arguments and functions

function create_user {

echo "enter username: $1" 
sudo useradd -m $1
echo "==========user $1 created==========="
}
for (( i=1 ; i<=3 ; i++ ))
do 
	read -p "enter username : $i" username
       	create_user "$username"
done	

