#!/bin/bash
set -e

sudo -v

function install () {
    version=$1

    curl -L -o "/tmp/packer-${version}" --url "https://dl.bintray.com/mitchellh/packer/${version}_darwin_amd64.zip"
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
    install "0.5.1"
}

main
exit 0