#!/bin/bash

# install nix (single user)
sh <(curl -L https://nixos.org/nix/install)

# source nix (avoid need to reopon term)
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix
nix-env -iA \
  nixpkgs.antibody \
  nixpkgs.bat \
  nixpkgs.direnv \
  nixpkgs.fzf \
  nixpkgs.git \
  nixpkgs.gh \
  nixpkgs.neovim \
  nixpkgs.ripgrep \
  nixpkgs.starship \
  nixpkgs.stow \
  nixpkgs.tree \
  nixpkgs.tmux \
  nixpkgs.xsel \
  nixpkgs.yarn \
  nixpkgs.zsh

# stow
stow fonts
stow git
stow neovim
stow starship
stow zsh
stow alacritty
stow kitty

# add zsh to shells list
command -v zsh | sudo tee -a /etc/shells

# set default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

