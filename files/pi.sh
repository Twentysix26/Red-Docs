#!/bin/bash

echo "THIS SCRIPT IS EXPIREMENTAL AT BEST AND WILL NUKE THE PLANET AT WORST"
echo "THERE IS NO GUARANTEE THAT THIS SCRIPT WILL WORK!"
echo "THIS SCRIPT ISN'T RESPONSIBLE FOR ANY DAMAGE CAUSED TO YOUR PI!"
echo "THIS IS THE LAST CHANGE TO PRESS 'CTRL+C'"
echo "Waiting 10 secconds"
sleep 10
echo "Estimated install time: about 45 min"

redcores=0
echo "Enter the number of cores your Pi has"
echo "As example a Pi 2 has 4 cores... So enter 4"
echo -n ">"
read redcores
echo "-----"
echo "STARTING INSTALLING OF PREREQUIREMENTS!"
echo "PLEASE WAIT WHILE I'M ARE PREPARING A CUP OF TEA,"
echo "-----"
sudo apt-get update
sudo apt-get install -y libbz2-dev libopus-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev git unzip libssl-dev tk-dev build-essential libffi-dev libav-tools
echo "-----"
echo "STARTING TO BUILD PYTHON... Somehow"
echo "DO YOU WANT SOME BISCUITS WITH THAT?"
echo "-----"
sleep 5
release=3.5.1
mkdir ~/redinstall
mkdir ~/redinstall/python3
cd ~/redinstall/python3
wget https://www.python.org/ftp/python/$release/Python-$release.tar.xz
tar xvf Python-$release.tar.xz
cd Python-$release
./configure
make -j$redcores
sudo make install -j$redcores
cd ~/redinstall
echo "-----"
echo "PYTHON IS INSTALLED! \o/"
echo "INSTALLING PIP3 AND ITS MODULES"
echo "YOU STILL DIDN'T TOUCH MY TEA YET?"
echo "DON'T YOU LIKE TEA? :("
echo "-----"
sleep 5
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
# Asuming Pip is installed, lets run this
sudo pip3 install youtube_dl
sudo pip3 install imgurpython
sudo pip3 install git+https://github.com/Rapptz/discord.py
sudo rm -rf ~/redinstall
echo "HORAAY!"
echo "You're done, you can now clone Red by following Step 3 of the installation here:"
echo "https://twentysix26.github.io/Red-Docs/red_install_raspbian/"
