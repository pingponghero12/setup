#!/bin/bash

# Ensure .ssh exits
mkdir -p ~/.ssh

# Get local folder of setup
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup my info
git config --global user.name "Manfred Gawlas"
git config --global user.email "manfredgawlas12@gmail.com"

# Decrypt and move SSH keys
ansible-vault decrypt "${script_dir}/files/ssh_key" --output ~/.ssh/id_ed25519
ansible-vault decrypt "${script_dir}/files/ssh_key_pub" --output ~/.ssh/id_ed25519.pub

# Proper premmisions
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

eval "$(ssh-agent -s)"

# Add ssh key and check if works
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com


# Change from repo from http to ssh
git remote set-url "origin" git@github.com:pingponghero12/setup.git
