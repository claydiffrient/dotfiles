#!/bin/bash

source /usr/local/share/chruby/chruby.sh

# Check if the current ruby is our preferred
cur_ruby_path=$(which ruby)
preferred_ruby=$(cat $HOME/.ruby-version)
if [[ $cur_ruby_path =~ $preferred_ruby ]]; then
  echo "Preferred ruby is already active, skipping install"
  else
    echo 'Trying to switch to preferred ruby'
    
    if ! chruby $preferred_ruby; then
        echo 'Switching to the preferred ruby failed'
        echo 'Installing preferred ruby and activating it'
        install_string=$(echo $preferred_ruby | tr '-' ' ')
        ruby-install $install_string
        chruby $preferred_ruby
    fi
fi
echo 'Installing Bundler and System Gems'
gem install bundler
bundle install