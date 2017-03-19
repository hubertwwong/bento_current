#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> init_vagrant_1_sudo > Install apt libs."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# if not root, run as root
if (( $EUID != 0 )); then
  sudo $VAGRANT_PATH/init/init_vagrant_1_sudo.sh
  exit
fi

# Install libs.
bash $VAGRANT_PATH/basics/install_vm_libs.sh

# init stuff
bash $VAGRANT_PATH/dev/init_sudo.sh
bash $VAGRANT_PATH/dev/init_timezone.sh

# dev libs that need sudo.
# basically if you are apt installing packages.
bash $VAGRANT_PATH/dev/install_dev_libs.sh

# GOLANG goes into /usr/local and that needs sudo.
bash $VAGRANT_PATH/dev/install_golang2.sh --$GOLANG_BITS