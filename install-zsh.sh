#!/bin/bash

# Detect machine
unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     MACHINE=Linux;;
  Darwin*)    MACHINE=Mac;;
  CYGWIN*)    MACHINE=Cygwin;;
  MINGW*)     MACHINE=MinGw;;
  *)          MACHINE="UNKNOWN:${unameOut}"
esac

# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  if [[ $MACHINE == "Mac" ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # Installs Oh my ZSH with Linux
  if [[ $MACHINE == "Linux" ]]; then
    sudo apt install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
fi

# Assumes default ZSH installation
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Installs plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Source after installs
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Fix permissions
chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
