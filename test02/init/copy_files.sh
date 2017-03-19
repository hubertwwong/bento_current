#!/bin/bash

# copy the dot files to home root
#yes | cp -rf /vagrant/test02/dotFiles/. /home/vagrant
# copy the init script to root.
#yes | cp -rf /vagrant/test02/init/init.sh /home/vagrant

# copies files over...
# fix this so its only one place.
# and it uses env variables.

yes | cp --parent -rf /vagrant/test02 /home/vagrant/zzzVagrant

#mkdir -p /home/vagrant/zzzVagrant
#mkdir -p /home/vagrant/zzzVagrant/init
#mkdir -p /home/vagrant/zzzVagrant/dev
#mkdir -p /home/vagrant/zzzVagrant/shell
#mkdir -p /home/vagrant/zzzVagrant/gui
#yes | cp -rf /vagrant/test02/dev/. /home/vagrant/zzzVagrant/dev
#yes | cp -rf /vagrant/test02/init/. /home/vagrant/zzzVagrant/init
#yes | cp -rf /vagrant/test02/shell/. /home/vagrant/zzzVagrant/shell
#yes | cp -rf /vagrant/test02/gui/. /home/vagrant/zzzVagrant/gui
