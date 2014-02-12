#!/bin/bash
set -e

sudo -v

function install () {
    version=$1
    platform=$2

    curl -L -o "/tmp/packer-${version}" --url "https://dl.bintray.com/mitchellh/packer/${version}_${platform}_amd64.zip"
    sudo mkdir -p /usr/local/packer
    sudo unzip "/tmp/packer-${version}" -d /usr/local/packer
    rm -rf "/tmp/packer-${version}"
}

function is_installed () {
	type "${1}" >/dev/null 2>&1 || { echo >&2 "'${1}' is require and not installed. Aborting."; exit 1; }
}

function main () {
	is_installed "curl"
	is_installed "unzip"

	if [[ $OSTYPE == "darwin"* ]]; then
    	install "0.5.1" "darwin"
    elif [[ $OSTYPE == "linux"* ]]; then
    	install "0.5.1" "linux"
    else
    	echo "Unsupported OS. Aborting"
    	exit 2
    fi
}

main
exit 0