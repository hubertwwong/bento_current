#!/bin/bash

# This just create some sym links to point all of the config files in the
# correct places.

# VARIABLES
VAGRANT_PATH=/vagrant/test02

# RM the files. Install might put in actual files.
# We dont want that.
rm -f ~/.rspec
#rm -f ~/.vimrc
rm -f ~/.zshrc

# Link dot files.
ln -sf $VAGRANT_PATH/config/dotFiles/.rspec ~/.rspec
ln -sf $VAGRANT_PATH/config/dotFiles/.vimrc ~/.vimrc
ln -sf $VAGRANT_PATH/config/dotFiles/.zshrc ~/.zshrc

# i3 stuff
mkdir -p ~/.i3
ln -sf $VAGRANT_PATH/config/dotFiles/.xinitrc ~/.xinitrc
ln -sf $VAGRANT_PATH/config/i3/config ~/.i3/config
ln -sf $VAGRANT_PATH/config/i3/i3status.config ~/.i3status.config

# Init vagrant
ln -sf $VAGRANT_PATH/init/init_links.sh ~
ln -sf $VAGRANT_PATH/init/init_vagrant.sh ~

# LINK main directory.
# 1. Delete the sym link if it exist
# 2. point it to /home/zzzVagrant
rm -f ~/zzzVagrant
ln -sf $VAGRANT_PATH zzzVagrant
