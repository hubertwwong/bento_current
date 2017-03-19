#!/bin/bash

# This just create some sym links to point all of the config files in the
# correct places.

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

# DEBUG
echo "> VAGRANT PATH VAR"
echo $VAGRANT_PATH

# VARIABLES
#VAGRANT_PATH=/vagrant/zzz/vmSetup

# RM the files. Install might put in actual files.
# We dont want that.
rm -f ~/.rspec
rm -f ~/.vimrc
rm -f ~/.bashrc
rm -f ~/.bash_aliases
rm -f ~/.bash_profile
rm -f ~/.profile
rm -f ~/.tmux.conf
#rm -f ~/.zshrc
#rm -f ~/.zlogin
#rm -f ~/.zimrc

# Link dot files.
echo "> init_links > LINKING DOT FILES"
ln -sf $VAGRANT_PATH/config/dotFiles/.rspec ~/.rspec
ln -sf $VAGRANT_PATH/config/dotFiles/.vimrc ~/.vimrc
ln -sf $VAGRANT_PATH/config/dotFiles/.bashrc ~/.bashrc
ln -sf $VAGRANT_PATH/config/dotFiles/.bash_aliases ~/.bash_aliases
ln -sf $VAGRANT_PATH/config/dotFiles/.bash_profile ~/.bash_profile
ln -sf $VAGRANT_PATH/config/dotFiles/.profile ~/.profile
ln -sf $VAGRANT_PATH/config/dotFiles/.tmux.conf ~/.tmux.conf
#ln -sf $VAGRANT_PATH/config/dotFiles/.zshrc ~/.zshrc
#ln -sf $VAGRANT_PATH/config/dotFiles/.zshrc ~/.zlogin
#ln -sf $VAGRANT_PATH/config/dotFiles/.zshrc ~/.zimrc

# i3 stuff
#echo "> LINKING i3 stuff"
#mkdir -p ~/.i3
#ln -sf $VAGRANT_PATH/config/dotFiles/.xinitrc ~/.xinitrc
#ln -sf $VAGRANT_PATH/config/i3/config ~/.i3/config
#ln -sf $VAGRANT_PATH/config/i3/i3status.config ~/.i3status.config

echo "> init_links > LINKING STARTING UP FILES"
rm -f ~/init_links.sh
rm -f ~/init_vagrant_all.sh
#rm -f ~/init_vagrant_1_sudo.sh
#rm -f ~/init_vagrant_2_non_sudo.sh
#rm -f ~/init_vagrant_3_non_sudo.sh
#ln -sf $VAGRANT_PATH/init/init_sudoer.sh
#ln -sf $VAGRANT_PATH/init/switch_to_root.sh

# Init vagrant
#echo "> LINKING root sh files"
ln -sf $VAGRANT_PATH/init/init_links.sh ~
ln -sf $VAGRANT_PATH/init/init_vagrant_all.sh ~
#ln -sf $VAGRANT_PATH/init/init_vagrant_1_sudo.sh ~
#ln -sf $VAGRANT_PATH/init/init_vagrant_2_non_sudo.sh ~
#ln -sf $VAGRANT_PATH/init/init_vagrant_3_non_sudo.sh ~
#ln -sf $VAGRANT_PATH/init/init_sudoer.sh ~
#ln -sf $VAGRANT_PATH/init/switch_to_root.sh ~

echo "> init_links > debug"
ls -al ~

# LINK main directory.
# 1. Delete the sym link if it exist
# 2. point it to /home/zzz/vmSetup/

# ENV.
#source /vagrant/zzz/vmSetup/config/dotFiles/.env