#!/bin/bash

# Install homebrew
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

bundle install --path vendor/bundle
bundle exec serverkit apply recipe.yml.erb --variables=variables.yml
