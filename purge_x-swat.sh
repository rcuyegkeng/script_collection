#!/bin/sh

# purge the ubuntu-x-swat repo. ubuntu-x-swat contains latest, stable mesa.
sudo ppa-purge ppa:ubuntu-x-swat/updates

# To install :
# sudo add-apt-repository ppa:ubuntu-x-swat/updates
# sudo apt update && sudo apt dist-upgrade
