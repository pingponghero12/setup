#!/bin/bash

# This setup uses kickstart.nvim https://github.com/nvim-lua/kickstart.nvim
# Big thanks to authors
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim

mkdir ~/.config/nvim

cp ~/Documents/setup/init.lua ~/.config/nvim/init.lua

echo "Nvim setup is done. Now open 'nvim' and wait for plugins to install, then reopen nvim"

