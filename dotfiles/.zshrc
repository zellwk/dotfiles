# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Disables Insecure completion error. No harm because https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390589452
ZSH_DISABLE_COMPFIX=true

# Prompt mode reads a raw keystroke at shell start, which swallows the first
# character of anything automation types into a new terminal. Auto keeps omz
# current without ever asking. (macOS: omz guards this with GNU stty --save,
# which BSD stty lacks, so the guard never fires here.)
zstyle ':omz:update' mode auto

# Set name of the theme to load.
ZSH_THEME="avit"

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  autojump
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
if [[ "$MACHINE" == "Linux" ]];then
  PROJECT_ROOT='/mnt/c/Users/zellw/projects/@zellwk/dotfiles'
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-linux.sh"
  source "$PROJECT_ROOT/env/exports.sh"
  source "$PROJECT_ROOT/env/functions.sh"
elif [[ "$MACHINE" == "Mac" ]]; then
  PROJECT_ROOT='/Users/zellwk/projects/@zellwk/dotfiles'
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-mac.sh"
  source "$PROJECT_ROOT/env/exports.sh"
  source "$PROJECT_ROOT/env/functions.sh"
fi

# Private secrets (dotfiles-secrets repo, not public)
[ -f "$PROJECT_ROOT/../dotfiles-secrets/secrets.sh" ] && source "$PROJECT_ROOT/../dotfiles-secrets/secrets.sh"

# Allows running x86 version of Homebrew on M1 Macs
if [ "$(arch)" = "arm64" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  export PATH=/usr/local/bin:${PATH}
  eval "$(/usr/local/bin/brew shellenv)"
fi

# pnpm
export PNPM_HOME="/Users/zellwk/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export N_PREFIX="$HOME/n"; export PATH="$N_PREFIX/bin:$PATH"  # n (node version manager) — prepend so it wins over Homebrew
export PATH="$HOME/.local/bin:$PATH"
export BASH_MAX_OUTPUT_LENGTH=15000

# OpenClaw Completion — only on machines that have it
[ -f "$HOME/.openclaw/completions/openclaw.zsh" ] && source "$HOME/.openclaw/completions/openclaw.zsh"
