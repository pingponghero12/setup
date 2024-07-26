#!/bin/bash

mkdir -p ~/.ssh

ansible-vault decrypt ~/Documents/setup/id_ed25519 --output ~/.ssh/id_ed25519

ansible-vault decrypt ~/Documents/setup/id_ed25519.pub --output ~/.ssh/id_ed25519.pub

chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

ssh -T git@github.com

# Move i3
cp ~/Documents/setup/config ~/.config/i3/config
