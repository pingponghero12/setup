This is setup of my operating system. Overall it's simple i3 with some features. Don't forget to add your shh keys and info before proceeding with `setup_git.sh`.

# Personal OS Setup

This repository contains scripts to set up my operating system. It handles installing essential tools, configuring i3 window manager, setting up Git, and personalizing Neovim.

## Usage

The setup consists of three bash scripts: `setup.sh`, `setup_git.sh`, and `setup_nvim.sh`.

To clone this repository before setting up Git, use HTTPS:

```bash
git clone https://github.com/pingponghero12/setup.git
```

### `setup.sh`

This script installs most of the tools I use, including Obsidian, VSCode, Thunar, Blueman, and others. It also sets up i3 window manager along with various quality-of-life tweaks, such as mouse configuration and appearance settings.

To run:

```bash
chmod +x setup.sh
./setup.sh
```

### `setup_git.sh`

This script configures Git with my name and email, decrypts SSH keys using Ansible Vault, and switches the repository from HTTPS to SSH.

To run:

```bash
chmod +x setup_git.sh
./setup_git.sh
```

### `setup_nvim.sh`

This script sets up Neovim using the Kickstart.nvim configuration. It installs necessary dependencies like `ripgrep`, `xclip`, and compilers. The script then copies my Neovim configuration into place.

To run:

```bash
chmod +x setup_nvim.sh
./setup_nvim.sh
```

After running, open Neovim and wait for the plugins to install, then reopen Neovim.

---

**Note:** Make sure to reboot after running `setup.sh` to start i3 with `startx` or select it in LightDM.

