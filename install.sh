#!/usr/bin/env bash

set -e

cd $HOME
sh -c "$(wget -qO- get.chezmoi.io)"
sudo ln -s ~/bin/chezmoi /usr/local/bin/chezmoi
cd -

chezmoi init https://github.com/jdibling-io/dotfiles.git
chezmoi apply -v

