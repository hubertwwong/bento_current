#!/bin/bash

echo ">>> INSTALL RVM >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 --homedir /home/vagrant/.gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#sudo command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable --ruby