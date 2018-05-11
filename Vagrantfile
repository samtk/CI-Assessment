# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento-VAGRANTSLASH-ubuntu-16.04"
  config.vm.synced_folder "shared", "/tmp/vagrant_data"
  
	  config.vm.define "box1" do |box1|
		
		box1.vm.hostname = "basicbox1"
		box1.vm.network "public_network", ip: "192.168.1.7"
		box1.vm.provision "shell", path: "box1_script.sh"  
	    
	  end
	   
	   config.vm.define "box2" do |box2|
		
		box2.vm.hostname = "basicbox2"
		box2.vm.network "public_network", ip: "192.168.1.107"
		box2.vm.provision "shell", path: "box2_script.sh"  
		box2.vm.network "forwarded_port", guest:8080, host:8080
		  
	   
	   end
		
		config.vm.provider "virtualbox" do |vb|
			vb.gui = true
			vb.memory = "1024"
			vb.cpus = 1
		  end
   
end
