#!/bin/bash

echo ">>> .bash_profile >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

if [ -f ~/.bashrc ]; then
	echo "sourcing bashrc"
  source ~/.bashrc
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
