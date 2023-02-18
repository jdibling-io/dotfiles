#!/usr/bin/env bash

set -e

sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin
sudo ln -s $HOME/.local/bin/chezmoi /usr/local/bin/chezmoi

sudo apt install -y fonts-firacode

chezmoi init https://github.com/jdibling-io/dotfiles.git
chezmoi apply -v

