# Install Node
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

# Installs ZSH and Oh my ZSH (Should do this earlier perhaps...)
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

apt install xclip -y