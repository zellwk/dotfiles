# Set permissions
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
sudo npm i -g \
	fkill-cli \
	http-server \
	npm-check \
	standard \
	svgo \
	trash-cli \
