#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> init_vagrant_2_nonsudo > Dev libs and oh my zsh."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# Install zsh
#echo "> Oh my zsh > Install"
#bash $VAGRANT_PATH/shell/install_zim.sh

# Install lang libs
#bash $VAGRANT_PATH/dev/install_golang.sh --remove
#bash $VAGRANT_PATH/dev/install_golang.sh --$GOLANG_BITS
#bash $VAGRANT_PATH/dev/install_golang2.sh --$GOLANG_BITS
bash $VAGRANT_PATH/dev/install_nvm.sh
bash $VAGRANT_PATH/dev/install_node.sh
bash $VAGRANT_PATH/dev/install_rvm.sh
