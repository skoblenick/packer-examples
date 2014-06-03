#!/bin/bash -ex

# Request sudo password upfront
sudo -v

# Install Packer
install_packer () {
    sudo mkdir -p /usr/local/packer
    if [ ! -f /usr/local/packer/packer ]; then
        curl -L -o "/tmp/packer-${1}.zip" --url "https://dl.bintray.com/mitchellh/packer/${1}_${2}_amd64.zip"
        sudo unzip "/tmp/packer-${1}.zip" -d /usr/local/packer
    fi
}

main () {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        install_packer "0.6.0" "darwin"
    elif [[ "$OSTYPE" == "linux"* ]]; then
        install_packer "0.6.0" "linux"
    else
        echo "Unsupported OS: $OSTYPE"
        exit 1
    fi
}

main
exit 0
