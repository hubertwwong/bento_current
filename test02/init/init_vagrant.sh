#!/bin/bash

echo ">>> INSTALL VAGRANT >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

VAGRANT_PATH=/home/vagrant/zzzVagrant

# Do you need the sudo?
sudo sh $VAGRANT_PATH/dev/install_vm_libs.sh
sh $VAGRANT_PATH/basics/init_timezone.sh
sh $VAGRANT_PATH/dev/install_nvm.sh
sh $VAGRANT_PATH/dev/install_node.sh
sh $VAGRANT_PATH/dev/install_rvm.sh
#sh $VAGRANT_PATH/gui/install_xfce.sh
#sh $VAGRANT_PATH/gui/install_i3.sh
sh $VAGRANT_PATH/shell/install_ohmyzsh.sh
sh $VAGRANT_PATH/basics/intial_cleanup.sh

# put this at the end.
sh $VAGRANT_PATH/basics/init_sudo.sh