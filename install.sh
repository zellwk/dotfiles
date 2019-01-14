#!/usr/bin/env bash

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install apps and binaries with Brew
source ./brew.sh

# Set npm permissions and install global binaries
source ./npm.sh

# Configure MacOS defaults
source ./.macos
