#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> ADD VAGRANT USER TO SUDO FILE >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#echo "Add the follow to the file that will open"
#echo "vagrant ALL=(ALL) NOPASSWD:ALL"

#sudo visudo

# Run me with superuser privileges
echo 'vagrant ALL=(ALL:ALL) ALL' >> /etc/sudoers