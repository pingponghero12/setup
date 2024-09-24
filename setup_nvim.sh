#!/bin/bash

# Get scripts local path
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# This setup uses kickstart.nvim https://github.com/nvim-lua/kickstart.nvim
# Big thanks to authors
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y make gcc ripgrep unzip git xclip neovim

mkdir ~/.config/nvim

# Move init.lua to config
cp "${script_dir}/files/nvim_config" ~/.config/nvim/init.lua

echo "Nvim setup is done. Now open 'nvim' and wait for plugins to install, then reopen nvim"

