#!/bin/bash 

# Update and upgrade apt
sudo apt update && sudo apt upgrade -y

# Installs ZSH and Oh my ZSH (Should do this earlier perhaps...)
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Creates hardlinks for startup scripts
source link-startup-scripts.sh

# Install binaries via apt
source windows/apt.sh

# Set npm permissions and install npm binaries
source shared/npm.sh

# Clone repositories
source shared/clone-repos.sh

# Create symlinks for dotfiles 
source link-dotfiles.sh
