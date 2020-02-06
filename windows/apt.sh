
# ########
# Binaries
# ########
sudo apt install autojump -y
sudo apt install tree -y  
sudo apt install xclip -y
sudo apt install youtube-dl -y

# Node 
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install nodejs -y

# MongoDB for Ubuntu 18.04. Check 
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update
sudo apt install -y mongodb-org

# Note: Starting MongoDB