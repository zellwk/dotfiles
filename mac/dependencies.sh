#!/bin/bash

# Install npm dependencies for all projects
for f in $HOME/projects/*; do
  cd $f
  if [[ -f 'package.json' ]]; then
    echo $f
    npm install
  fi
done
