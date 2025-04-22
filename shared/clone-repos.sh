#!/bin/bash

# Change this value your custom location
CLONE_PATH='projects'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"

  # Projects
	git clone git@github.com:zellwk/zl-fetch.git
	git clone git@github.com:zellwk/splendidlabz.git

  # Blog
	git clone git@github.com:zellwk/zellwk.com.git

  # Products
  git clone git@github.com:zellwk/students.zellwk.com.git

  # LJS
	git clone git@github.com:zellwk/learnjavascript.today.git
  git clone git@github.com:zellwk/Learnjavascript-api.git
	git clone git@github.com:zellwk/jsf.git
  git clone git@github.com:zellwk/jsroadmap.com.git
}

clone
unset clone
