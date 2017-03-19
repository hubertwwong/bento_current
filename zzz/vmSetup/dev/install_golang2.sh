#!/bin/bash

# ENV.
source /vagrant/zzz/vmSetup/config/dotFiles/.env

echo ">>> INSTALL GOLANG 2 >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo $GOLANG_VER
echo $GOLANG_BITS
echo $HOME

VERSION="${GOLANG_VER}"

# SET VERSION. 32 or 64 bits.
if [ "$1" == "--32" ]; then
    DFILE="go$VERSION.linux-386.tar.gz"
elif [ "$1" == "--64" ]; then
    DFILE="go$VERSION.linux-amd64.tar.gz"
fi

echo "Cleaning up go ..."
rm -rf "$HOME/.go/"
rm -rf "$HOME/go/"
sed -i '/# GoLang/d' "$HOME/.bashrc"
sed -i '/export GOROOT/d' "$HOME/.bashrc"
sed -i '/:$GOROOT/d' "$HOME/.bashrc"
sed -i '/export GOPATH/d' "$HOME/.bashrc"
sed -i '/:$GOPATH/d' "$HOME/.bashrc"
rm -rf "/usr/local/go"
echo "Go removed."

echo "Downloading $DFILE ..."
wget https://storage.googleapis.com/golang/$DFILE -O /tmp/go.tar.gz
if [ $? -ne 0 ]; then
    echo "Download failed! Exiting."
    exit 1
fi

echo "Debug ..."
ls /tmp
#echo "tar -C ${HOME} -xzfz /tmp/go.tar.gz"
echo "tar -C /usr/local -xzfz /tmp/go.tar.gz"
whoami

echo "Extracting ..."
#tar -C "${HOME}" -xzf /tmp/go.tar.gz > 1.log
tar -C /usr/local -xzf /tmp/go.tar.gz
#mv "$HOME/go" "$HOME/.go"
touch "$HOME/.bashrc"

# Changing this from a local install to the default install location of /usr/local/go
# might need to chae this to run on sudo.