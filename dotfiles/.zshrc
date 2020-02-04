# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="theunraveler"

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(autojump)

source $ZSH/oh-my-zsh.sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
export machine

# Source aliases
# For a full list of active aliases, run `alias`.

# source ./.aliases-shared.sh
if [[ "$machine" == "Linux" ]]
  then 
    export cdrive='/mnt/c/Users/zellw'
    source $cdrive/projects/dotfiles/env/aliases-shared.sh
    source $cdrive/projects/dotfiles/env/aliases-linux.sh
    source $cdrive/projects/dotfiles/env/exports.sh
    source $cdrive/projects/dotfiles/env/functions.sh
elif [[ "$machine" == "Mac" ]]
  then 
    # Unsure if this would work... Must test
    source ../env/aliases-mac.sh
fi

# source ../aliases.sh
# source ../exports.sh
# source ../functions.sh

# # To allow bash complete command
# autoload bashcompinit
# bashcompinit

# # Add tab completion for many Bash commands
# if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
# 	source "$(brew --prefix)/share/bash-completion/bash_completion";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;

# # Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
# [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
