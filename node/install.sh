#!/bin/bash

# Install volta to manage node/global packages
curl https://get.volta.sh | bash

VOLTA_HOME="$HOME/.volta"
PATH="$VOLTA_HOME/bin:$PATH"

# Install latest node version
volta install node

# Install packages
PACKAGES=(
    'yarn'
    '@instructure/instui-cli'
    'hotel'
    'npm-check-updates'
    'prettier'
    'typescript'
    'create-react-app'
    'eslint'
)

for app in "${PACKAGES[@]}"; do
  volta install "$app"
done
