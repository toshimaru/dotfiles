#!/bin/bash -eu

# Install homebrew
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Use Ruby 2.7.x
brew update && brew bundle
eval "$(rbenv init -)"
rbenv install 2.7.6 && rbenv local 2.7.6

bundle install --path vendor/bundle --jobs 4 --retry 3
bundle exec serverkit apply serverkit.yml.erb --variables=serverkit-variables.yml
