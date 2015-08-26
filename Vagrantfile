# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.synced_folder ".", "/vagrant", type: "rsync",
    rsync__exclude: [".git/", "packer_cache/", "*.box"]

  config.vm.define "trusty64", primary: true do |ubuntu|
    ubuntu.vm.box = "trusty64"
    ubuntu.vm.box_url = "trusty64-1.box"

    ubuntu.vm.provider "vmware_fusion" do |v, override|
      v.gui = false
      override.vm.box_url = "trusty64-1_vmware.box"
    end
  end

  config.vm.define "saucy64" do |ubuntu|
    ubuntu.vm.box = "saucy64"
    ubuntu.vm.box_url = "saucy64-1.box"

    ubuntu.vm.provider "vmware_fusion" do |v, override|
      v.gui = false
      override.vm.box_url = "saucy64-1_vmware.box"
    end
  end

  config.vm.define "raring64" do |ubuntu|
    ubuntu.vm.box = "raring64"
    ubuntu.vm.box_url = "raring64-1.box"

    ubuntu.vm.provider "vmware_fusion" do |v, override|
      v.gui = false
      override.vm.box_url = "raring64-1_vmware.box"
    end
  end

  config.vm.define "precise64" do |ubuntu|
    ubuntu.vm.box = "precise64"
    ubuntu.vm.box_url = "precise64-1.box"

    ubuntu.vm.provider "vmware_fusion" do |v, override|
      v.gui = false
      override.vm.box_url = "precise64-1_vmware.box"
    end
  end

end
