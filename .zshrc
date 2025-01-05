# Zsh home
export ZSH=$HOME/.zsh

# Remove paste highlight
zle_highlight=('paste:none')

# Disable bell
setopt NO_BEEP

# Disable ctrl-s freezing the terminal
stty stop undef

# Source other configs
source $ZSH/config/exports.zsh
source $ZSH/config/aliases.zsh
source $ZSH/config/history.zsh
source $ZSH/config/plugins.zsh
