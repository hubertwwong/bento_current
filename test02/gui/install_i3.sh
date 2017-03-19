#!/bin/bash

echo ">>> INSTALL i3 >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

sudo apt-get update


# install xfce.
sudo apt-get install -y xinit i3 i3status dmenu i3lock feh
#sudo apt-get install -y i3 suckless-tools i3status dmenu i3lock feh
# deb

# allow all users to use.
#sudo echo "allowed_users=anybody" >> /etc/X11/Xwrapper.config
sudo rm /etc/X11/Xwrapper.config
echo 'allowed_users=anybody' | sudo tee --append /etc/X11/Xwrapper.config