#/bin/bash
sudo dpkg --add-architecture i386
sudo apt-get update | echo off
wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
sudo dpkg -i skype-install.deb
sudo apt-get -f install
sudo dpkg -i skype-install.deb
rm -r skype-install.deb
