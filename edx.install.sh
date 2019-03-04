#!/bin/sh
cd ~/edx.scripts

sudo chmod 755 edx.platform-bootstrap-ansible.sh
sudo chmod 755 edx.platform-gen-pw.sh
sudo chmod 755 edx.platform-only-install.sh

sudo ./edx.platform-bootstrap-ansible.sh
sudo ./edx.platform-gen-pw.sh
sudo nohup ./edx.platform-only-install.sh &

