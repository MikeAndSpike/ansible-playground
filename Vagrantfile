# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

#  config.hostmanager.enabled           = true
#  config.hostmanager.manage_host       = true
#  config.hostmanager.manage_guest      = true
#  config.hostmanager.ignore_private_ip = false
#  config.hostmanager.include_offline   = false

  config.vm.define 'ansible01' do |node|
    node.vm.box = "roboxes/centos8"
    node.vm.box_check_update = true
    #node.vm.synced_folder "./data", "/vagrant_data"
    node.vm.synced_folder ".", "/vagrant", disabled: false

    node.vm.hostname = 'ansible01.local'
    node.vm.network "private_network", ip: "192.168.99.102"
    #node.hostmanager.aliases = %w(www.wordpress.local cockpit.wordpress.local)
    node.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end
end
