#!/bin/bash
#checking is user exists or not
read -p "enter the username :" username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "user does not exist"
else
	echo "user exists"
fi
