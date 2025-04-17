#!/bin/bash -eux

# Install homebrew if it's not installed
if ! which brew > /dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update && brew bundle
bundle install --path vendor/bundle --jobs 4 --retry 3
bundle exec serverkit apply serverkit.yml.erb --variables=serverkit-variables.yml
