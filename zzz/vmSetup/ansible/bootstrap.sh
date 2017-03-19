#!/bin/bash

# vagrant path
VMSETUP_PATH=/vagrant/zzz/vmSetup

# if not root, run as root
if (( $EUID != 0 )); then
    sudo $VMSETUP_PATH/ansible/bootstrap.sh
    exit
fi
apt-get update
apt-get -y upgrade
#apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove

# guest addtion libraries
apt-get -y install build-essential module-assistant

# install ansible.
# sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# copy the ansible host file over.
# this make the commands a lot easier.
# after this, you can just run ansible-playbook site.yml
sudo cp -rf $VMSETUP_PATH/ansible/roles/common/files/ansible/hosts /etc/ansible
