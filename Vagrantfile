# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
NUMBER_OF_SERVERS = 3
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "lb01" do |lb01|
    lb01.vm.box = "ubuntu/trusty64"
    lb01.vm.hostname = "lb01"
    lb01.vm.provision "shell", path: "init.sh" , args: "lb"
    lb01.vm.network :private_network, ip: "10.11.12.50"
  end

  (1..NUMBER_OF_SERVERS).each do |i|
      config.vm.define "web0#{i}" do |web|
      web.vm.hostname = "web0#{i}"
      web.vm.box = "ubuntu/trusty64"
      web.vm.provision "shell", path: "init.sh", args: "web#{i}"
      web.vm.network :private_network, ip: "10.11.12.5#{i}"
  end
end
end
