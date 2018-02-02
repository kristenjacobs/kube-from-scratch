# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1604-desktop"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "ubuntu1604"  
    vb.gui = false
    vb.memory = 2048
    vb.cpus = 1
  end
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.provision "shell", path: "./provision.sh"
end
