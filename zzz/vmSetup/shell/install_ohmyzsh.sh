#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> INSTALL OH MY ZSH >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# path to use.
#VAGRANT_PATH=/home/vagrant/zzz/vmSetup/

# install zsh.
# apt-get -y update
# apt-get -y install zsh
# Note. The zsh stuff should install from seperate sudo script.

# Install my oh my zsh.
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy the links again.
# zsh probably got crerated. I want to use my own.
#bash $VAGRANT_PATH/init/init_links.sh

# init the shell.
# I don't think you actually need this.
# zsh