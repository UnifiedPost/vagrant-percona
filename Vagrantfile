# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
	config.vm.box = "centos6"
	config.vm.host_name = "vagrant-percona"
	config.vm.forward_port 80,8080
#        config.vm.forward_port "http", 80, 8080
	config.ssh.max_tries = 100
	

	config.vm.provision :puppet do |puppet|
		puppet.pp_path = "/tmp/vagrant-puppet"
		puppet.manifests_path = "manifests"
		puppet.module_path = "modules"
		puppet.manifest_file = "site.pp"
		puppet.options = "--verbose"
	end
end
