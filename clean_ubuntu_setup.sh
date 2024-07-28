#!/bin/bash

# Update apt and update system
sudo apt update && sudo apt upgrade -y

# Ensure vim installed
sudo apt install vim

# Ensure firewall enabled
sudo ufw enable

# Enable and start SSH
sudo systemctl enable ssh
sudo systemctl start ssh

# Configure proper time
sudo timedatectl set-timezone Europe/Kiev

echo "# Timezone to bash" >> ~/.bashrc
echo "export TZ='Europe/Kiev" >> ~/.bashrc

# Install packages required for i3
sudo apt install -y xorg i3 rxvt-unicode xfce4-terminal net-tools htop openssh-server

# Setup startx
echo > ~/.xinitrc "exec i3"

# Install system valuable
sudo apt install -y firefox thunar blueman

# Setup mouse Acc
mv mouse.conf /etc/X11/xorg.conf.d/99-libinput-custom-config.conf

# Setup theme color related
sudo apt install -y arc-theme qt5ct
echo > ~/.gtkrc-2.0 "gtk-theme-name="Adwaita-dark""
echo > ~/.config/gtk-3.0/settings.ini "[Settings]
gtk-theme-name=Adwaita-dark"

echo "You need to change qt5ct theme, use 'qt5ct'"

echo "Basic setup completed. Reboot and start i3 by 'startx'"
echo "Current time $(date)"

