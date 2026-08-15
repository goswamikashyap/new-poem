#!/bin/bash
# this is a shell script to create a user + deleting a user

echo "==================================create user================================="
read -p "enter username: " username
read -p "enter password: " password
sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"
echo "============================user created======================================"
sudo userdel $username
echo "============================user deleted====================================== "
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "if wordcount is 0 then the user is DELETED"
else
	echo "the user was not deleted"
fi

