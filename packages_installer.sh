#!/bin/bash
#packages installer
echo "installing $1"
sudo apt-get update >/dev/null
sudo apt-get install $1 -y
echo "installation completed"
