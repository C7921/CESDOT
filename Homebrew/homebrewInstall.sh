#!/usr/bin/env bash

# Checks for Homebrew and install if not found.
if test ! $(which brew); then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update
brew update
