#!/bin/bash

echo ">>> .profile >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

if [ -f ~/.bashrc ]; then
	echo "sourcing bashrc"
  source ~/.bashrc
fi
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
