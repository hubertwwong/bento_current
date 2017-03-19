#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> init_vagrant_4_nonsudo > Cleanup."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# if not root, run as root
if (( $EUID != 0 )); then
  sudo $VAGRANT_PATH/init/init_vagrant_4_sudo.sh
  exit
fi

#echo "> Zsh > change the default shell"
#set the default shell
#chsh -s /bin/zsh vagrant