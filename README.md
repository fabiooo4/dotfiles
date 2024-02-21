# Dotfiles

This repo contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

<details>
<summary>Ubuntu</summary>

### Zsh

```
sudo apt install zsh && echo "ZDOTDIR=~/.config/zsh" | sudo tee -a /etc/zsh/zshenv
```

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

### Zplug

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

</details>

<details>
<summary>Fedora</summary>

### zsh

```
sudo dnf install zsh && echo "ZDOTDIR=~/.config/zsh" | sudo tee -a /etc/zsh/zshenv
```

### Git

```
sudo dnf install git
```

### Stow

```
sudo dnf install stow
```

### Zplug

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

</details>

## Installation

First, clone the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/fabiooo4/dotfiles
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
