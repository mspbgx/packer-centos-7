# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  # Minimal.
  # $ vagrant up centos7-minimal --provider=<provider>
  config.vm.define "centos7-minimal", autostart: false do |centos7_minimal|
    centos7_minimal.vm.hostname = "centos7-minimal"
    centos7_minimal.vm.box = "file://builds/centos7-minimal_#{provider}.box"
    centos7_minimal.vm.network :private_network, ip: "192.168.3.2"

    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 1024
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    config.vm.provider :vmware_workstation do |v, override|
      v.gui = false
      v.vmx["memsize"] = 1024
      v.vmx["numvcpus"] = 1
    end

    config.vm.provider :vmware_fusion do |v, override|
      v.gui = false
      v.vmx["memsize"] = 1024
      v.vmx["numvcpus"] = 1
    end
  end

  # GNOME.
  # $ vagrant up centos7-gnome --provider=<provider>
  config.vm.define "centos7-gnome", autostart: false do |centos7_gnome|
    centos7_gnome.vm.hostname = "centos7-gnome"
    centos7_gnome.vm.box = "file://builds/centos7-minimal_#{provider}.box"
    centos7_gnome.vm.network :private_network, ip: "192.168.3.2"

    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4024
      v.cpus = 2
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    config.vm.provider :vmware_workstation do |v, override|
      v.gui = false
      v.vmx["memsize"] = 4024
      v.vmx["numvcpus"] = 2
    end

    config.vm.provider :vmware_fusion do |v, override|
      v.gui = false
      v.vmx["memsize"] = 4024
      v.vmx["numvcpus"] = 2
    end
  end

end
