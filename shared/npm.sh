# Set permissions
echo "Setting npm permissions"
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading npm clis"

sudo npm i -g fast-cli
sudo npm i -g fkill-cli
sudo npm i -g http-server
sudo npm i -g nodemon
sudo npm i -g npm-check
sudo npm i -g nx
sudo npm i -g standard
sudo npm i -g svgo
sudo npm i -g trash-cli