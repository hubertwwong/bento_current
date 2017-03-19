#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env
source /vagrant/zzz/vmSetup/config/dotFiles/.alias

# prompt
#autoload -Uz promptinit
#prompt adam1
#setopt histignorealldups sharehistory

# Path to your ohmyzsh install
#export ZSH=$HOME/.oh-my-zsh

# plugins
#plugins=(git ruby node command-not-found)

# init rvm
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# init nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# THEME
#ZSH_THEME="candy"
# GO HERE FOR THE OH MY ZSH DEFAULT ONES
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes

# TURN ON OH MY ZSH.
# PROBABLY NEED THIS LAST.
#source $ZSH/oh-my-zsh.sh

# Do you need this?
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting