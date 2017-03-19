#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> init_vagrant_ssh"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

bash init_links.sh
bash init_vagrant_1_sudo.sh
bash init_vagrant_2_non_sudo.sh 
bash init_vagrant_3_non_sudo.sh
bash init_vagrant_4_sudo.sh
bash $VAGRANT_PATH/ops/aaaUpdateAll.sh
bash init_links.sh