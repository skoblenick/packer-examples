#!/bin/bash
# This script will clean up boxes that may have been created by this project.
#
# Note: This may also remove boxes that were not created with this script
#       if they have the same names as: saucy64, raring64, precise64

function remove_boxes () {
  rm -rf ~/.vagrant/boxes/saucy64
  rm -rf ~/.vagrant/boxes/raring64
  rm -rf ~/.vagrant/boxes/precise64
}

function main () {
  remove_boxes
}

main
exit 0
