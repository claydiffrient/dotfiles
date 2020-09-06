#!/bin/bash

sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
PACKAGEPATH="$(dirname "$(readlink -f "$0")")/packages.txt"
cat $PACKAGEPATH | xargs sudo apt-get -y install
