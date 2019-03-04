#!/bin/sh
cd
sudo locale-gen en_US en_US.UTF-8
sudo dpkg-reconfigure locales
sudo dpkg --configure -a
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo reboot
git clone https://github.com/adrianrocamora/edx.scripts.git
