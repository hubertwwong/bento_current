#!/bin/bash

# This install the basics you need to install guest addition.
# Fetch and install basic files.

echo ">>> INSTALL VM LIBS >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

sudo apt-get update
# Install some basic stuff that you need to fetch rvm / nvm.
sudo apt-get install -y git curl vim gnupg
# Guest additions. Probably need these.
# NOTE: Vagrant might be doing a lot of this stuff for you. you might just remove this line.
sudo apt-get install -y virtualbox-guest-x11 virtualbox-guest-dkms virtualbox-guest-utils module-assistant build-essential linux-headers-server linux-headers-generic
sudo apt-get -y autoremove
