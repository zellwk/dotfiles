#!/bin/bash

# Shortcuts
alias cdrive="/mnt/c/Users/zellw"
alias c="$cdrive"
alias d="cd $cdrive/Dropbox"
alias dl="cd $cdrive/Downloads"
alias dt="cd $cdrive/Desktop"
alias p="cd $cdrive/projects"

# Trim new lines and copy to clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias copy="tr -d '\n' | pbcopy"

# Starts Mongodb instance
alias mongod='sudo service mongodb start'
alias mongod-status='sudo service mongodb status'
alias mongod-stop='sudo service mongodb stop'

# #########
# Functions 
# #########