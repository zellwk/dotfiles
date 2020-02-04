#!/bin/bash

echo "Adding Linux aliases"

# Shortcuts
alias cdrive="/mnt/c"
alias dt="${cdrive}/Desktop"

# Trim new lines and copy to clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias copy="tr -d '\n' | pbcopy"
