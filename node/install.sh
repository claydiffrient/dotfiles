#!/bin/bash

# Install volta to manage node/global packages
curl https://get.volta.sh | bash
reset

VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

# Install latest node version
volta install node

# Install packages
declare -a packages=(
    'yarn'
    '@instructure/instui-cli'
    'gerrit-cli'
    'hotel'
)

for app in "${packages[@]}"; do
  volta install "$app"
done