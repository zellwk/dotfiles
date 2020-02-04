#!/bin/bash 

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ "$machine" == "Linux" ]]
  then 
    source windows/setup.sh
elif [[ "$machine" == "Mac" ]]
  then 
    source mac/setup.sh
fi