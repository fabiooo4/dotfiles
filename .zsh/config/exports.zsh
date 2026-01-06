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
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin":$PATH
export PATH="/root/.local/bin":$PATH
export PATH="/var/lib/flatpak/app/com.github.ahrm.sioyek/current/active/files/sioyek":$PATH
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/opt/nvim/"
# . "$HOME/.cargo/env"
export PATH="$PATH:/home/fabio/.spicetify"
export PATH=$PATH:/opt/gradle/gradle-8.13/bin # Java
export PATH="$HOME/flutter_sdk/flutter/bin:$PATH" # Flutter
export PATH="$HOME/flutter_sdk/android-studio/bin:$PATH" # Android studio

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/lib64/pkgconfig:/lib/x86_64-linux-gnu/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig"

export GOOGLE_CLOUD_PROJECT="phonic-scheme-464714-k7"

# Command line tools
eval "$(zoxide init --cmd cd zsh)" # zoxide a cd alternative
eval "$(starship init zsh)" # starship prompt
export BAT_THEME="gruvbox-dark"

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# fzf config
[ -f $HOME/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh

# yazi config
[ -f $HOME/.zsh/yazi.zsh ] && source ~/.zsh/yazi.zsh

# fzf-git
[ -f $HOME/.zsh/fzf-git.zsh ] && source ~/.zsh/.fzf-git.zsh

export KEYTIMEOUT=100

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fabio/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fabio/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fabio/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fabio/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

