# Clone reposities into the projects folder
function clone () {
	# CD to folder where git repos are kept
	# Change this value to your location
	cd $HOME/projects

  # Open source projects
	git clone git@github.com:zellwk/mappy-breakpoints.git
	git clone git@github.com:zellwk/typi.git
	git clone git@github.com:zellwk/zl-fetch.git

  # Blog
	git clone git@github.com:zellwk/zellwk.com.git

  # Products
	git clone git@github.com:zellwk/learnjavascript.today.git
  git clone git@github.com:zellwk/learn-js-starter-pack.git
	git clone git@github.com:zellwk/jsf.git

  git clone git@github.com:zellwk/ayw.git ayw-website
  git clone git@gitlab.com:zellwk/automating-your-workflow-book.git ayw-book

  git clone git@gitlab.com:zellwk/mrt-salespage.git
}

clone
unset clone
