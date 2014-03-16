Packer Examples
===============

This project is a showcase of examples cases of using Packer to build Ubuntu base boxes.

Installing Packer
-----------------

To install packer open Terminal and run:

./scripts/install_packer.sh

Packer will be installed to /usr/local/packer

The installation script will not add packer to the PATH.

Using Packer
------------

```
/usr/local/packer/packer build <precise64|raring64|saucy64>.json
```

Building for only VirtualBox

```
/usr/local/packer/packer build -only=virtualbox <precise64|raring64|saucy64>.json
```

Building for only VMware

```
/usr/local/packer/packer build -only=vmware <precise64|raring64|saucy64>.json
```


Starting the base box using Vagrant
-----------------------------------

### With VirtualBox
vagrant up <precise64|raring64|saucy64>

### With VMware Fusion
vagrant up <precise64|raring64|saucy64> --provider=vmware_fusion

Cleaning Up
-----------
To remove boxes that were created when vagrant was launched. Open Terminal and run:

```
./scripts/cleanup.sh
```

Note that this will remove existing boxes by these names as well.
