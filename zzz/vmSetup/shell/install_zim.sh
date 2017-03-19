#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

sudo rm -rf ${HOME}/.zim

# download ZIM
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim

# DEACTIVATE OLD ZSH INSTALL. E.G. oh my zsh
#setopt EXTENDED_GLOB
#for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
#  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
#  touch ${user_file}
#  ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
#done

# set zsh again as the default theme.
chsh -s =zsh

# source the file.
# this is just once....
source ${ZDOTDIR:-${HOME}}/.zlogin