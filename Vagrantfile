# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "chad-thompson-VAGRANTSLASH-ubuntu-trusty64-gui"
  config.vm.synced_folder "shared", "/vagrant_data"
  
	  config.vm.define "box1" do |box1|
		
		box1.vm.hostname = "basicbox"
		box1.vm.network "public_network", ip: "192.168.1.7"
		  
	   
	   end
	   
	   config.vm.define "box2" do |box2|
		
		box2.vm.hostname = "basicbox"
		box2.vm.network "public_network", ip: "192.168.1.707"
		
		  
	   
	   end
		
		config.vm.provider "virtualbox" do |vb|
			vb.gui = true
			vb.memory = "1024"
			vb.cpus = 1
		  end
   
end
