#!/bin/bash

echo ">>> INSTALL XFCE4 >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# install guest additions for virtualbox.
sudo apt-get update
# note that this was moved to install_vm_libs.
#sudo apt-get install -y virtualbox-guest-x11 virtualbox-guest-dkms virtualbox-guest-utils

# install xfce.
sudo apt-get install -y xfce4 xfce4-goodies
# GNOME ICONS.
# sudo apt-get install -y gnome-icon-theme-full tango-icon-theme

# permission to let anyone use xfce. not just root.
#sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

# allow all users to use.
#sudo echo "allowed_users=anybody" >> /etc/X11/Xwrapper.config
sudo rm /etc/X11/Xwrapper.config
echo 'allowed_users=anybody' | sudo tee --append /etc/X11/Xwrapper.config

# encoding
#sudo echo "LANG=en_US.UTF-8" >> /etc/environment
#sudo echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
#sudo echo "LC_ALL=en_US.UTF-8" >> /etc/environment
#sudo echo "LC_CTYPE=en_US.UTF-8" >> /etc/environment

# order of stuff.
# 1. run this script.
# 2. add this line to the vagrantfile config block.
#    vb.gui = true
#
# Link to read
#
# http://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment
# https://blog.versioneye.com/2015/05/05/setting-up-a-dev-environment-with-vagrant/
