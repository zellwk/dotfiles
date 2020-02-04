#!/bin/bash
# For a full list of active aliases, run `alias`.

# Detect Machine
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "This is a" ${machine} "machine"

# Source aliases
source ./.aliases-shared.sh
if [[ "$machine" == "Linux" ]]
  then source ./.aliases-linux.sh
elif [[ "$machine" == "Mac" ]]
  then source ./.aliases-mac.sh
fi
