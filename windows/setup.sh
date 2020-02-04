#!/bin/bash 

# Update and upgrade apt
sudo apt update && sudo apt upgrade -y

# Installs ZSH and Oh my ZSH (Should do this earlier perhaps...)
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Normalizes path to files
DIR="$(dirname $0)"

# Creates hardlinks for startup scripts
source $DIR/link-startup-scripts.sh

# Install binaries via apt
source $DIR/apt.sh

# Set npm permissions and install npm binaries
source $DIR/../shared/npm.sh

# Clone repositories
source $DIR/../shared/clone-repos.sh

# Create symlinks for dotfiles 
source $DIR/../shared/link-dotfiles.sh
