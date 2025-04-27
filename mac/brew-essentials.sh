# Install Homebrew (if not installed)
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew install 1password
brew install 1password-cli
brew install alfred
brew install brave-browser
brew install cursor
brew install discord
brew install dropbox
brew install figma
brew install google-chrome #Chrome
brew install google-drive 
brew install homebrew/cask-versions/firefox-nightly # Firefox Nightly
brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew install iterm2
brew install kap
brew install keycastr
brew install kkbox
brew install lunar
brew install mongodb-compass
brew install obsidian
brew install raycast
brew install spotify
brew install textexpander
brew install tower
brew install visual-studio-code
brew install whatsapp
brew install zoom

# Remove outdated versions from the cellar.
brew cleanup
