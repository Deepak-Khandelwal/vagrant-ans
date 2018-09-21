#!/bin/bash

apt-get install virtualbox
apt-get install vagrant

vagrant box add ubuntu/trusty64
mkdir new_vm
cd new_vm
vagrant init
cat /dev/null > Vagrant
cat > Vagrnat << EOF
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
config.vm.network "public_network" , ip: "192.168.1.169"
end
EOF
vagrnat up
