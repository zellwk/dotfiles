#!/bin/bash

# Clone reposities a single folder
# ################################

# Change this value your custom location
CLONE_PATH = 'projects'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"

  # Open source projects
	git clone git@github.com:zellwk/mappy-breakpoints.git
	git clone git@github.com:zellwk/typi.git
	git clone git@github.com:zellwk/zl-fetch.git
  git clone git@github.com:zellwk/css-reset.git

  # Blog
	git clone git@github.com:zellwk/zellwk.com.git

  # Products
  git clone git@github.com:zellwk/students.zellwk.com.git

	git clone git@github.com:zellwk/learnjavascript.today.git
  git clone git@github.com:zellwk/learn-js-starter-pack.git
  git clone git@github.com:zellwk/Learnjavascript-api.git
	git clone git@github.com:zellwk/jsf.git

  git clone git@github.com:zellwk/ayw.git ayw-website
  git clone git@gitlab.com:zellwk/automating-your-workflow-book.git ayw-book

  git clone git@gitlab.com:zellwk/mrt-salespage.git
}

clone
unset clone
