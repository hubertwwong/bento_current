# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/ubuntu-16.10"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

	# MY STUFF
	############################################################################

	# guest. This is going to try to copy the iso and install it there.
	# might be better.
	# you might want to remove the install from the bash scripts.
	config.vbguest.auto_update = true
	# do NOT download the iso file from a webserver
  config.vbguest.no_remote = false


	# run my vagrant provsion shell script.
	# i'm not sure of the path. is it internal to the vm?
  #config.vm.provision "shell", privileged: false, path: "zzz/vmSetup/config/dotFiles/.env"
  #config.vm.provision "shell", privileged: true, path: "zzz/vmSetup/init/init_links.sh"
  #config.vm.provision "shell", privileged: false, path: "ls -al zzz/vmSetup/init/init_links.sh"
	#config.vm.provision "shell", privileged: false, path: "zzz/vmSetup/init/init_links.sh"
	config.vm.provision "shell", privileged: false, path: "zzz/vmSetup/init/init_vagrant_all.sh"
	
  # gui mode.
  #config.gui = true
  #config.vm.provider "virtualbox" do |vb|
  #  vb.gui = true
  #  vg.memory "8192"
  #end

	# @see: https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html	
	config.ssh.insert_key = false
end
