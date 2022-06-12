#!/bin/bash

# Install homebrew
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

bundle install --path vendor/bundle --jobs 4 --retry 3
bundle exec serverkit apply serverkit.yml.erb --variables=serverkit-variables.yml
