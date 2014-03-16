#!/bin/bash

# Exit when any of these commands fail
#set -e

# Request sudo password upfront
sudo -v

preinstall () {
    mkdir -p /media/cdrom
}

virtualbox () {
    # Install additional packages required by VirtualBox
    apt-get -y install xserver-xorg xserver-xorg-core
    # Install VirtualBox
    mount -o loop ~vagrant/VBoxGuestAdditions.iso /media/cdrom
    sudo sh /media/cdrom/VBoxLinuxAdditions.run #2> /dev/null
    umount /media/cdrom
}

vmware () {
    # Install VMware Tools
    curl -L -o /tmp/vmware.tools.linux.zip.tar --url https://softwareupdate.vmware.com/cds/vmw-desktop/fusion/6.0.2/1398658/packages/com.vmware.fusion.tools.linux.zip.tar
    unzip /tmp/vmware.tools.linux.zip.tar -d /tmp
    sudo mount -o loop /tmp/payload/linux.iso /media/cdrom
    tar -xzvf /media/cdrom/VMwareTools-9.6.1-1378637.tar.gz -C /tmp
    sudo /tmp/vmware-tools-distrib/vmware-install.pl --default
    umount /media/cdrom
    rm -f /tmp/vmware.tools.linux.zip.tar
    rm -rf /tmp/payload
}

install () {
    if lspci | grep -i vmware --silent; then
        vmware
    elif lspci | grep -i virtualbox --silent; then
        virtualbox
    else
        echo "No tools found for your hypervisor."
    fi
}

main () {
    preinstall
    install
    echo "done"
}

main
exit 0
