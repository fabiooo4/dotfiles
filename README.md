# Dotfiles

This repo contains the dotfiles for my system

## Requirements

Install all the dependencies by running `install.sh` or manually using the following commands:

<details>
<summary>Ubuntu</summary>

### Zsh

```
sudo apt install zsh
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

### Starship

```
curl -sS https://starship.rs/install.sh | sh
```

</details>

<details>
<summary>Fedora</summary>

### zsh

```
sudo dnf install zsh
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

### Starship

```
curl -sS https://starship.rs/install.sh | sh
```

</details>

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
