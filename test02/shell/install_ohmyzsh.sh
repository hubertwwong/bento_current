#!/bin/bash

echo ">>> INSTALL OH MY ZSH >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# path to use.
VAGRANT_PATH=/home/vagrant/zzzVagrant

# install zsh.
sudo apt-get -y update
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy the links again.
# zsh probably got crerated. I want to use my own.
sh $VAGRANT_PATH/init/init_links.sh

# init the shell.
# I don't think you actually need this.
# zsh