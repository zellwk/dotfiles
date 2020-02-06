#!/usr/bin/env bash

# Install apps and binaries with Brew
source mac/brew.sh

# Set npm permissions and install global binaries
source shared/npm.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos

