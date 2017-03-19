#!/bin/bash
# source ~/.nvm/nvm.sh

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> INSTALL NODE >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# load node env
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# install stable version of node.
nvm install stable
nvm ls

#nvm install node --reinstall-packages-from=node