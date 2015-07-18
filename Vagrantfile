# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define :jenkins_centos do |jenkins|
     jenkins.vm.box = "chef/centos-7.0"
     jenkins.vm.hostname = "jenkins-centos"
     jenkins.vm.synced_folder "./Shared-VB", "/vagrant"
     jenkins.vm.network "private_network", ip: "10.29.3.101"
     jenkins.vm.network "forwarded_port", guest: 80, host: 7001
     #jenkins.vm.provision :shell, path: "./Shared-VB/Shells/java-dev-env-centos.sh"
     jenkins.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
     end
   end

  config.vm.define :jenkins_ubuntu do |jenkins|
     jenkins.vm.box = "ubuntu/trusty64"
     jenkins.vm.hostname = "jenkins-ubuntu"
     jenkins.vm.synced_folder "./Shared-VB", "/vagrant"
     jenkins.vm.network "private_network", ip: "10.29.3.102"
     jenkins.vm.network "forwarded_port", guest: 80, host: 7002
     jenkins.vm.provision :shell, path: "./Shared-VB/Shells/java-dev-env-ubuntu.sh"
     jenkins.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
     end
   end

   config.vm.define :docker_centos do |docker|
     docker.vm.box = "chef/centos-7.0"
     docker.vm.hostname = "docker-centos"
     docker.vm.synced_folder "./Shared-VB", "/vagrant"
     docker.vm.network "private_network", ip: "10.29.3.103"
     docker.vm.network "forwarded_port", guest: 80, host: 7003
     docker.vm.provision :shell, path: "./Shared-VB/Shells/java-dev-env-centos.sh"
     docker.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
     end
   end

  config.vm.define :docker_ubuntu do |docker|
     docker.vm.box = "ubuntu/trusty64"
     docker.vm.hostname = "docker-ubuntu"
     docker.vm.synced_folder "./Shared-VB", "/vagrant"
     docker.vm.network "private_network", ip: "10.29.3.104"
     docker.vm.network "forwarded_port", guest: 80, host: 7004
     docker.vm.provision :shell, path: "./Shared-VB/Shells/java-dev-env-ubuntu.sh"
     docker.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
     end
   end

   
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.

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
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
