# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="theunraveler"

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git autojump)

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
    source ../env/aliases-shared.sh
    source ../env/aliases-mac.sh
    source ../env/exports.sh
    source ../env/functions.sh
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
