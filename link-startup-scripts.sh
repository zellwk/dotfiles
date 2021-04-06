#!/bin/bash 

# IMPORTANT: Change zellw to your profile name
STARTUP="/mnt/c/Users/zellw/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

echo "Creating hardlinks to startup directory"
for file in windows/startup-scripts/*; do 
  ln -fv "$file" "$STARTUP"
done