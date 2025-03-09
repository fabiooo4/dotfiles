export WORDCHARS=${WORDCHARS//[\/]} # remove / from wordchars so that / is a seperator when deleting complete words

# Gpg agent config
export GPG_TTY=$(tty)

export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export MANWIDTH=100

# Path
export PATH="$HOME/bin":$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.cargo/bin":$PATH
export PATH="/root/.local/bin":$PATH
export PATH="/var/lib/flatpak/app/com.github.ahrm.sioyek/current/active/files/sioyek":$PATH
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/opt/nvim/"
# . "$HOME/.cargo/env"
export PATH="$PATH:/home/fabio/.spicetify"
export PATH=$PATH:/opt/gradle/gradle-8.13/bin # Java

export PKG_CONFIG_PATH="/usr/lib64/pkgconfig:/lib/x86_64-linux-gnu/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig"

# Command line tools
eval "$(zoxide init --cmd cd zsh)" # zoxide a cd alternative
eval "$(starship init zsh)" # starship prompt
export BAT_THEME="gruvbox-dark"

# fzf config
[ -f $HOME/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh

# yazi config
[ -f $HOME/.zsh/yazi.zsh ] && source ~/.zsh/yazi.zsh

# fzf-git
[ -f $HOME/.zsh/fzf-git.zsh ] && source ~/.zsh/.fzf-git.zsh

export KEYTIMEOUT=100
