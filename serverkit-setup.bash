#!/bin/bash -eu

# Install homebrew if it's not installed
if ! which brew > /dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Use Ruby 2.7.x
# TODO: Bump Ruby version
brew update && brew bundle
eval "$(rbenv init -)"
rbenv install 2.7.6 && rbenv local 2.7.6

bundle install --path vendor/bundle --jobs 4 --retry 3
bundle exec serverkit apply serverkit.yml.erb --variables=serverkit-variables.yml
