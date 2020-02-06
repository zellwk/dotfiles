#!/bin/bash

echo "$HOME/.oh-my-zsh"

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    echo "Directory /path/to/dir DOES NOT exists."
    exit 9999 # die with error code 9999
fi
