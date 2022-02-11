#!/bin/bash

# Change this value your custom location
CLONE_PATH='projects'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"

  # Open source projects
	git clone git@github.com:zellwk/mappy-breakpoints.git
	git clone git@github.com:zellwk/typi.git
	git clone git@github.com:zellwk/zl-fetch.git
  git clone git@github.com:zellwk/css-reset.git
  git clone git@github.com:zellwk/javascript.git

  # Blog
	git clone git@github.com:zellwk/zellwk.com.git

  # Products
  git clone git@github.com:zellwk/students.zellwk.com.git

  # LJS
	git clone git@github.com:zellwk/learnjavascript.today.git
  git clone git@github.com:zellwk/Learnjavascript-api.git
	git clone git@github.com:zellwk/jsf.git
  git@github.com:zellwk/jsroadmap.com.git

  # AYW
  git clone git@github.com:zellwk/ayw.git ayw-website
  git clone git@gitlab.com:zellwk/automating-your-workflow-book.git ayw-book

  # MRT
  git clone git@github.com:zellwk/mastering-responsive-typography.com.git
  git clone git@github.com:zellwk/students.mastering-responsive-typography.com.git

  # UAJS
  git clone git@github.com:zellwk/uajs.git

  # Demos
  git clone git@github.com:zellwk/demos.git
}

clone
unset clone
