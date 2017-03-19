# About

This is just a dump of my current VM setup. I think it has some code that I have been trying out too. Mostly golang and some python script.

This is meant for use in virutalbox and vagrant. It uses the bento boxes which seem to not break as much as other boxies I have tried.

Most of the setup is in the zzz/vmSetup directory. This will setup an ubuntu box and uses bash scripts to fire up most of the setup.

The main thing the box setups is various programming languages.

1. Golang.
2. Python.
3. Ruby.
4. Nodejs.

Note that this repo contains a lot of random stuff other than the setup of vagrant.


# To setup

## Prerequisite

1. Virtualbox
2. Vagrant.

## Install

type in "vagrant up"




# Unsorted notes.

## Character ends on LF and not both.

On atom, you have to select LF.

## Plugins to install.

https://github.com/chef/vagrant-omnibus
This plugin ensure that chef in installed.

vagrant plugin install vagrant-berkshelf

# chef

## Blah

## Basic notes.

My cookbook is called dev.
Berksfile in the dev directory is from cookbooks from the supermarket.

## Your cookbook.

Add to cookbooks/dev/recipies/default.rb or some other place.
They seem to call them all?
I am asusming vagrant is calling the dev cookbook at some point.

## Supermarket setup

You put a line in the Berksfile for the source of apt.
You want a line in Vagrantfile to call the cookbooks in question.

## Need to remove non interactive file

on bash rc. NOt sure about this...

## NVM

NVM needs to run as user.
Tried a few things to run as chef but the command nvm dies after git
command not found...

I tried to source the stuff but that does not work..
let me try the who am i.

# Root merksfile

put cookbook command first.
meta data command after.
This is so is see the external ones first if you wnat to use in your cookbook.

# To general link

http://devopscube.com/chef-cookbook-testing-tutorial/

# Running a recipies

chef-client --local-mode hello.rb

# To run cookbook

sudo chef-client --local-mode --runlist 'recipe[learn_chef_apache2]'

# Chef tutorials

https://learn.chef.io/learn-the-basics/ubuntu/configure-a-resource/

# Install chef client in vm

basically install the vagrant onibus plugin.

http://stackoverflow.com/questions/21274437/vagrant-install-chef-client-on-top-of-base-image

# update the base box

vagrant box update

# linode guide

https://www.linode.com/docs/applications/chef/creating-your-first-chef-cookbook

# chef solo to zero guide

https://blog.chef.io/2013/10/31/chef-client-z-from-zero-to-chef-in-8-5-seconds/

# Blah

chef-client -z to run chef in local mode

https://www.packtpub.com/packtlib/book/Networking%20&%20Servers/9781785287947/1/ch01lvl1sec21/Developing%20recipes%20with%20local%20mode

# Need chef dk in vagrant

This is so you can use the full set of commands.

http://stackoverflow.com/questions/20269623/how-to-use-hand-written-cookbooks-when-using-berkshelf-in-chef

# Vagrant plugins

vagrant plugin install vagrant-berkshelf

# some instructions

http://www.swiftsoftwaregroup.com/how-to-use-berkshelf-chef-zero-vagrant-and-virtualbox/

# chef dk vs. chef onimbus

probably use chef dk
seems like it has more stuff
this is for installing in the guest...
the stuff installs in /opt/chefdk
probably need a path file.

# TODO 07/10/2016

I think the way is to not to rely on anything vagrantfile
Maybe other than update apt.
inside.
set up bashrc to do the paths
install chefdk using that bash script. (This part has to done with bash script...)
install rvm. (not sure how this works with chefdk)
install nvm
i'm guessing there is going to be some path conflict..
- short answer. don't add embeededd if you want to use rvm.
https://github.com/chef/chef-dk/issues/16
paths are probably in /home/vagrant
so thats what you are going to do....
and some clean version of this.
so one you are done playing with this configuration, you redo another one...



# BIG THING

CRLF breaks in unix. don't do it.
Windows does so you have to make sure your files are changed over.
Chef hates them.

# something about attributes

in attributes/default.rb
can access them using an arrray format

https://chefiseasy.com/tag/local-mode/

# Source rvm
source /usr/local/rvm/scripts/rvm

# To use vagrant on a super new virtual box version.

https://github.com/mitchellh/vagrant/issues/7588#issuecomment-233035591
I'm assuming the version would be differnet.

# to debug
add "-l debug" to chef client

so:
sudo chef-client -z -l debug

# default vagrant password
vagrant

# Blog about how to do XFCE

https://blog.versioneye.com/2015/05/05/setting-up-a-dev-environment-with-vagrant/

# i3 configuration

http://blog.tunnelshade.in/2014/05/making-i3-beautiful.html

# Bento boxes

These are boxes by atlas? Built by packer.

https://atlas.hashicorp.com/bento

# DEB INIT

vagrant init bento/debian-8.5; vagrant up --provider virtualbox


# Sudo line for vagrnat
vagrant ALL=(ALL) NOPASSWD:ALL

# BOX SOURCES

https://atlas.hashicorp.com/ubuntu
Ubuntu boxes by Ubuntu

https://github.com/chef/bento
https://atlas.hashicorp.com/bento
chef software makes these boxes using packer


# ABOUT GUEST ADDITIONS
ONly one that seems to work so far is the ubuntu offical 14.40 build
ALl other ones does not seem to work.

# THis might be the guest addiont things

https://github.com/dotless-de/vagrant-vbguest

# So X not starting

https://forums.opensuse.org/showthread.php/500699-xf86OpenConsole-Cannot-open-dev-tty0-(No-such-file-or-directory)

might have been a security update
startx not working as a user.
something about display manger.

# @see: https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html
config.ssh.insert_key = false

# Vagrant needs ssh.
Powershell does not have it.
Probably need instructions on how to do this...

# windows shell

git bash seems good


# TODO

next.
zsh on shell init....


# LINKS

## GOOD LINK FOR HOW TO SETUP SCRIPTS IN A CLEAN FASHION.
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.chas4675k