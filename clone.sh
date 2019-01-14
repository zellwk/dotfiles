function clone () {
	# CD to folder where git repos are kept
	# Change this value to your location
	cd $HOME/projects

	# Clone these reposities into the folder
	git clone git@github.com:zellwk/jsf.git
	git clone git@github.com:zellwk/mappy-breakpoints.git
	git clone git@github.com:zellwk/typi.git
	git clone git@github.com:zellwk/zellwk.com.git
	git clone git@github.com:zellwk/zl-fetch.git
	git clone git@github.com:zellwk/learnjavascript.today.git
}

clone
unset clone
