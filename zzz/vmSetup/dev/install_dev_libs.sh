#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> install_dev_libs.sh >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# if not root, run as root
if (( $EUID != 0 )); then
  sudo $VAGRANT_PATH/dev/install_dev_libs.sh
  exit
fi

sudo apt-get update
# Maybe convert this to a pyenv if you need fancy stuff.
sudo apt-get install -y python3 python3-pip python3-dev  python3-venv
sudo apt-get -y autoremove

# java silent installer.
# https://github.com/franzwong/til/blob/master/java/silent-install-oracle-jdk8-ubuntu.md
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

# C++
# Build essential was needed for the guest addition compilation
# So you probably have this installed.
# g++ to use it.

# NOTES:
# Golang. use the official installer. app packages seem broken.