#!/bin/sh
cd
git clone https://github.com/adrianrocamora/edx.scripts.git
cd edx.scripts.git

sudo chmod 755 edx.platform-bootstrap-ansible.sh
sudo chmod 755 edx.platform-gen-pw.sh
sudo chmod 755 edx.platform-onlyinstall.sh

sudo ./edx.platform-bootstrap-ansible.sh
sudo ./edx.platform-bootstrap-gen-pw.sh
sudo nohup ./edx.platform-only-install.sh &

