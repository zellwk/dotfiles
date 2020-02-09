#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install and setup Mongodb
brew tap mongodb/brew
brew install mongodb-community
sudo mkdir -p /data/db
sudo chown -R `id -un` /data/db

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install ack
brew install autojump
brew install ffmpeg
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl

# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install 1password
brew cask install alfred
brew cask install beamer
brew cask install dash
brew cask install dropbox
brew cask install homebrew/cask-versions/firefox-nightly # Nightly
brew cask install google-chrome #Chrome
brew cask install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew cask install grammarly
brew cask install iterm2
brew cask install kap
brew cask install keycastr
brew cask install mongodb-compass
brew cask install notion
brew cask install sketch
brew cask install skitch
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install textexpander
brew cask install tower
brew cask install wechat

# Remove outdated versions from the cellar.
brew cleanup
