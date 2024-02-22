# Dotfiles

This repo contains the dotfiles for my system

## Requirements

Install all the dependencies by running:

```
sudo ./install.sh
```

or manually ensure you have installed all the following dependencies:

- `curl`
- `rust`
- `git`
- `stow`
- `zplug`
- `starship`
- `zoxide`
- `fzf`
- `eza`
- `packer`

## Installation

First, clone the dotfiles repo in your $HOME directory using git

```
git clone https://github.com/fabiooo4/dotfiles
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

or if there are already some configs use the following to use them.

```
stow --adopt .
```

#### Note that this command overwrites the files in the repo, so be sure to check if the files you adopted match the files in the repo

Finally set zsh as default shell

```
chsh -s $(which zsh)
```
