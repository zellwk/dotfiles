# Device installation scripts for Mac and Windows (WSL)

- [Mac instructions]()
- [Windows (WSL) instructions]() 

Here's my dotfiles repo.

## Usage

1. Clone this repo
2. If you're setting up a new Mac, run `install.sh`. This:
	1. Installs Oh-My-ZSH
	2. Switches shell to ZSH
	3. Installs useful binaries with Brew
	4. Installs useful cli tools through npm
	5. Set sensible Mac OS settings
3. Read the [notes](#notes) section below before continuing.
4. Run `link.sh` to symlink all dotfiles into the HOME folder.
5. Run `clone.sh` to clone projects you want to bring into your new computer in one swoop.

## Notes

1. I copied many things from [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles).
2. Put things you don't want to commit into the `.extra` file. Here's what my `.extra` looks like:
	```
	# npm init defaults
	npm config set init.author.name "Zell Liew"
	npm config set init.author.email "my-email"
	npm config set init.author.url "https://zellwk.com"
	npm config set init.license MIT

	# Git config
	GIT_AUTHOR_NAME="Zell Liew"
	GIT_AUTHOR_EMAIL="my-email"
	GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
	git config --global user.name "$GIT_AUTHOR_NAME"
	GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
	git config --global user.email "$GIT_AUTHOR_EMAIL"
	```
3. `link.sh` will create symlinks for every file that begins with `.`. The symlink target is your computer's home folder where most dotfiles are located.
	1. I like using symlinks because I can change the dotfiles either in this repo or in the home folder, and both versions are updated.
	2. Before you run `link.sh`, read through `.zshrc`. Make sure you `source` every file you want to run. (`source` means running a file in shell-speak).
	3. Feel free to run `link.sh` anytime you need to. It's designed to be ran as many times as you need.

## Warning

If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Feedback

Suggestions/improvements
[welcome](https://github.com/zellwk/dotfiles/issues)!
