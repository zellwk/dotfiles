#!/bin/bash 

# IMPORTANT: Change this to your profile name
STARTUP="/mnt/c/Users/zellw/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
DIR="$(dirname $0)"

echo "Creating hardlinks to startup directory"

for file in $DIR/startup-scripts/*; do 
  ln -fv "$file" "$STARTUP"
done