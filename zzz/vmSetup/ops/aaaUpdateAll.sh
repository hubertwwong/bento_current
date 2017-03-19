#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> AAAUpdateAll >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# if not root, run as root
if (( $EUID != 0 )); then
  sudo bash $VAGRANT_PATH/ops/aaaUpdateAll.sh
  exit
fi

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove