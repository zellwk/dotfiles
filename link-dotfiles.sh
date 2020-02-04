#!/bin/bash 

# Run this file from the root folder. 
# Command: shared/link-dotfiles.sh
DIR="$(dirname $0)"

echo "Creating symlinks for dotfiles to $HOME"
for f in dotfiles/\.[^.]*; do 
  FILE="$(basename $f)"
 # .zshrc cannot be symlinked on WSL. ZSH will break if symlinked
  if [[ $FILE != ".zshrc" ]]
    then ln -svf "$PWD/dotfiles/$FILE" "$HOME"
  fi 
done

# Temporary fix: Copying .zshrc to $HOME. 
# Also configured .zshrc to read from dotfiles repository
# Actually I'm not sure of any of the other symlinks actually work... Have to test it out. 
echo "Copying .zshrc to $HOME"
cp "$PWD/dotfiles/.zshrc" "$HOME"

# Source .zshrc to update env
# Ignore the errors. They only appear during this quick source process. They work properly on new shell startup. 
source $HOME/.zshrc