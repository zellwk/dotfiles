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

# #########
# Functions 
# #########