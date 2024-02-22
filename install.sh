#!/bin/bash
set -eu

# check if on ubuntu or fedora
if [ -f /etc/debian_version ]; then
    echo "Installing dependencies for Ubuntu"
    # if not installed, install curl
    sudo apt update
    sudo apt-get update
    if ! dpkg -l | grep -q curl; then
        sudo apt-get install -y curl
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
    if [ ! -d ~/.zplug ]; then
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi

    # if not installed, install starship
    if ! [ -x "$(command -v starship >/dev/null 2>&1)" ]; then
        curl -sS https://starship.rs/install.sh | sh
    fi

elif [ -f /etc/redhat-release ]; then
    echo "Installing dependencies for Fedora"
    # if not installed, install curl
    if ! rpm -q curl; then
        sudo dnf install -y curl
    fi

    # if not installed, install git
    if ! rpm -q git; then
        sudo dnf install -y git
    fi

    # if not installed, install stow
    if ! rpm -q stow; then
        sudo dnf install -y stow
    fi

    # if not installed, install zplug
    if [ ! -d ~/.zplug ]; then
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi

    # if not installed, install starship
    if ! [ -x "$(command -v starship >/dev/null 2>&1)" ]; then
        curl -sS https://starship.rs/install.sh | sh
    fi

else
    echo "Unsupported distribution"
    exit 1
fi
