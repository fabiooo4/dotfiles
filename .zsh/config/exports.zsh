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
. "$HOME/.cargo/env"
export PATH="$PATH:/home/fabio/.spicetify"

# Command line tools
eval "$(zoxide init --cmd cd zsh)" # zoxide a cd alternative
eval "$(starship init zsh)" # starship prompt
eval "$($HOME/homebrew/bin/brew shellenv)" # homebrew


source <(fzf --zsh)
# -- Use fd instead of fzf --
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

export KEYTIMEOUT=100
source ~/fzf-git.sh/fzf-git.sh
