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
  [1,2].each do |i|
    hostname = "nifi-#{i}" 
    config.vm.define hostname do |nifi|
      nifi.vm.box = "centos/7"
      nifi.vm.hostname = hostname
      nifi.vm.network "private_network", ip: "192.168.100.1#{i}"
      nifi.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
      end
      nifi.vm.provision "shell", path: "setup_commands.sh" 
    end
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
end
