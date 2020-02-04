#!/bin/bash 

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac

echo "Creating symlinks for dotfiles to $HOME"

# Symlink all dotfiles on Mac
if [[ $MACHINE == "Mac" ]]; then 
  for f in dotfiles/\.[^.]*; do 
    FILE="$(basename $f)"
    ln -svf "$PWD/dotfiles/$FILE" "$HOME"
  done
fi 

# .zshrc cannot be symlinked on WSL. ZSH will break if symlinked. Copy instead. 
# This might change in WSL2
if [[ $MACHINE == "Linux" ]]; then 
  for f in dotfiles/\.[^.]*; do 
    FILE="$(basename $f)"
    if [[ $FILE == ".zshrc" ]]; then 
      echo ".zshrc cannot be symlinked. Copying instead."
      cp "$PWD/dotfiles/.zshrc" "$HOME"
    else 
      ln -svf "$PWD/dotfiles/$FILE" "$HOME"
    fi 
  done
fi 

# Source .zshrc to update env
# Ignore the errors. They only appear during this quick source process. They work properly on new shell startup. 
source $HOME/.zshrc