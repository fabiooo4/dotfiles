export WORDCHARS=${WORDCHARS//[\/]} # remove / from wordchars so that / is a seperator when deleting complete words

# Gpg agent config
export GPG_TTY=$(tty)

export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# Path
export PATH="$HOME/bin":$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.cargo/bin":$PATH
export PATH="/root/.local/bin":$PATH
export PATH="$PATH:/opt/nvim-linux64/bin"
. "$HOME/.cargo/env"

eval "$(zoxide init --cmd cd zsh)" # zoxide a cd alternative
eval "$(starship init zsh)" # starship prompt
