# Uses Chocolatey to install stuff 
# ################################
# Usage steps: 
# 1. Make sure you have Chocolatey installed. 
# 2. Open Powershell as Admin 
# 3. Set Execution Policy on Powershell by running `Set-ExecutionPolicy RemoteSigned`. 
# 4. Run this file `C:\PATH_TO_FILE\chocolatey.ps1` 

# Binaries
choco install autohotkey -y
choco install cmdermini -y

# Browsers
choco install firefox-nightly --pre -y
choco install googlechrome.canary -y
choco install microsoft-edge -y

# Apps
choco install 7zip -y
choco install dropbox -y
choco install fontbase -y
choco install notion -y
choco install slack -y
choco install vscode -y
