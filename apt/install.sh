#!/bin/bash

sudo apt-get update
PACKAGEPATH="$(dirname "$(readlink -f "$0")")/packages.txt"
cat $PACKAGEPATH | xargs sudo apt-get -y install
