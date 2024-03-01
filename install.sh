#!/bin/bash
set -eu

source /etc/os-release

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 1
fi

# check if on ubuntu or fedora
if  echo $PRETTY_NAME | grep -q Ubuntu; then
    echo "Installing dependencies for Ubuntu"
    # if not installed, install curl
    sudo apt update
    sudo apt-get update
    if ! dpkg -l | grep -q curl; then
        sudo apt-get install -y curl
    fi

    # if not installed, install rust
    if ! command -v cargo &> /dev/null; then
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s
    fi

    # if not installed, install git
    if ! dpkg -l | grep -q git; then
        sudo apt install -y git
    fi

    # if not installed, install stow
    if ! dpkg -l | grep -q stow; then
        sudo apt install -y stow
    fi

    # if not installed, install zplug
    if ! command -v zplug &> /dev/null; then
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi

    # if not installed, install starship
    if ! command -v starship &> /dev/null; then
        curl -sS https://starship.rs/install.sh | sh -s -- -y
    fi

    # if not installed, install zoxide
    if ! command -v zoxide &> /dev/null; then
        curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
    fi

    # if not installed, install fzf
    if ! dpkg -l | grep -q fzf; then
        sudo apt install -y fzf
    fi

    # if not installed, install eza
    if ! command -v eza &> /dev/null; then
        source "$HOME/.cargo/env"
        cargo install eza
    fi

    # if not installed, install packer
    if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    fi


elif echo $PRETTY_NAME | grep -q Fedora; then
    echo "Installing dependencies for Fedora"
    # if not installed, install curl
    if ! rpm -qa curl; then
        sudo dnf install -y curl
    fi

    # if not installed, install rust
    if ! command -v cargo &> /dev/null; then
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s
    fi

    # if not installed, install git
    if ! rpm -qa git; then
        sudo dnf install -y git
    fi

    # if not installed, install stow
    if ! rpm -qa stow; then
        sudo dnf install -y stow
    fi

    # if not installed, install zplug
    if [ ! -d ~/.zplug ]; then
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi

    # if not installed, install starship
    if ! command -v starship &> /dev/null; then
        curl -sS https://starship.rs/install.sh | sh
    fi

    # if not installed, install zoxide
    if ! [ -x "$(command -v zoxide >/dev/null 2>&1)" ]; then
        curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
    fi

    # if not installed, install fzf
    if ! rpm -qa fzf; then
        sudo dnf install -y fzf
    fi

    # if not installed, install exa
    if ! rpm -qa eza; then
        sudo dnf install -y eza
    fi

    # if not installed, install packer
    if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    fi

else
    echo "Unsupported distribution"
    exit 1
fi
