# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="avit"

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  autojump
  git-flow-completion
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac
export MACHINE

# Source aliases
# For a full list of active aliases, run `alias`.
if [[ "$MACHINE" == "Linux" ]]
  then
    export cdrive='/mnt/c/Users/zellw'
    source $cdrive/projects/dotfiles/env/aliases-shared.sh
    source $cdrive/projects/dotfiles/env/aliases-linux.sh
    source $cdrive/projects/dotfiles/env/exports.sh
    source $cdrive/projects/dotfiles/env/functions.sh
elif [[ "$MACHINE" == "Mac" ]]
  then
    # Unsure if this would work... Must test
    source ../env/aliases-shared.sh
    source ../env/aliases-mac.sh
    source ../env/exports.sh
    source ../env/functions.sh
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
