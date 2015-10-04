# Packer Examples

Showcase of examples demonstrating building Ubuntu base boxes with Packer.

## Prerequisites

These examples have been tested on Mac OS X. The following packages should be installed:

- VirtualBox
- VMware Fusion
- Packer >= 0.8.6
- Vagrant >= 1.7.4

## Installing Packer

To install Packer 0.8.6, open Terminal and run:

```
./scripts/install_packer.sh
```

Packer will be installed to `/usr/local/packer`

The installation script will not add Packer to the PATH.

## Using Packer

```
/usr/local/packer/packer build <precise64|raring64|saucy64|trusty64>.json
```

Building for only VirtualBox:

```
/usr/local/packer/packer build -only=virtualbox <precise64|raring64|saucy64|trusty64>.json
```

Building for only VMware:

```
/usr/local/packer/packer build -only=vmware <precise64|raring64|saucy64|trusty64>.json
```

## Starting the base box using Vagrant

### With VirtualBox

```
vagrant up <precise64|raring64|saucy64|trusty64>
```

### With VMware Fusion

```
vagrant up <precise64|raring64|saucy64|trusty64> --provider=vmware_fusion
```

## Cleaning Up

To remove boxes that were created when Vagrant was launched. Open Terminal and run:

```
./scripts/cleanup.sh
```

Note! This will remove existing boxes with the same names as in these examples.
