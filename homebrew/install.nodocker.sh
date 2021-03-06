#!/bin/bash

# This is slightly modified from https://github.com/pbouzakis/dotfiles/blob/master/homebrew/install.sh

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

brew tap homebrew/bundle

brew bundle --file=homebrew/Brewfile.ruby
brew bundle --file=homebrew/Brewfile.dev
brew bundle --file=homebrew/Brewfile.databases
brew bundle --file=homebrew/Brewfile
