#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> init_vagrant_3_nonsudo > Cleanup."
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# Cleanup
bash $VAGRANT_PATH/basics/initial_cleanup.sh

# links again
bash init_links.sh
