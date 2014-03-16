#!/bin/bash

# Exit when any of these commands fail
set -e

# Request sudo password upfront
sudo -v

# Install Puppet
install () {
    puppet_version='3.4.2'

    #$installed=$( gem query --name-matches '^puppet$' --installed --version ${puppet_version} )

    #if [ ! $? ]; then
        sudo gem install puppet -v ${puppet_version} --no-rdoc --no-ri
    #fi
}

main () {
    install
}

main
exit 0

  