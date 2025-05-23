# Set permissions
echo "Setting npm permissions"
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading npm clis"

npm i -g fast-cli
npm i -g fkill-cli
npm i -g http-server
npm i -g nodemon
npm i -g npm-check
npm i -g standard
npm i -g svgo
npm i -g trash-cli
npm i -g pnpm
