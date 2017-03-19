#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> INITIAL CLEANUP >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# I think this get getting corrupted on install.
# Blowing it out.
rm -f ~/.zsh_history