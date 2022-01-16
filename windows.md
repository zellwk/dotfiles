# Windows installation instructions

## Enable Windows Subsystem for Linux (WSL)

Follow instructions from [this blog post]() to enable WSL.

Note: This repository is configured for Ubuntu 18.04. If you install a different version, you might need to download a different version for MongoDB in [`apt.sh`](windows/apt.sh).

## Run `setup.sh`

What this does:

1. Updates apt
2. Installs Node and other binaries. (See [`apt.sh`](windows/apt.sh))
3. Sets npm permissions
4. Installs npm clis (see [npm.sh](shared/npm.sh) for a list of installed clis)
5. Create symlinks for dotfiles
6. Create hardlinks for Auto Hot Key startup scripts. (See [this blog post]() for details)

Regarding Auto Hot Keys:

1. This blog post explains why
2. Change location of Ctrl, Alt, Win modifiers and other mappings. (See [`change-key-mappings.ahk`](windows/startup-scripts/change-key-mappings.ahk) for the changes).
3. Creates snippets. These snippets are usually used for writing and other purposes. Not for coding. See [`snippets.ahk`](windows/startup-scripts/change-key-mappings.ahk) for snippets).

## Run ./zsh-install.sh

What this does:

1. Installs ZSH
2. Installs Oh my ZSH
3. Installs Oh my ZSH plugins

Open a new shell too see the changes.

## Run ./shared/clone-repos.sh

What this does:

1. Clone repositories I use for my work. (See [clone-repos.sh](shared/clone-repos.sh) for a list of repositories cloned)
