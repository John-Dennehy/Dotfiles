#!/bin/bash

# stow all directories
# stow */ --target=${HOME}

# OR stow individual directories
stow fonts --target=${HOME}
stow git --target=${HOME}
stow github --target=${HOME}
stow neovim --target=${HOME}
stow starship --target=${HOME}
stow zsh --target=${HOME}
stow alacritty --target=${HOME}
stow kitty --target=${HOME}

# add zsh to shells list
command -v zsh | sudo tee -a /etc/shells

# set default shell
sudo chsh -s $(which zsh) $USER

# TODO: replace antibody?
# bundle zsh plugins
antibody bundle <~/.zsh_plugins.txt >~/.zsh_plugins.sh

# TODO: install nvm before running it!

# install nodejs and pnpm
# nvm install --lts
# corepack enable pnpm
