# Zsh home
export ZSH=$HOME/.config/zsh

# Remove paste highlight
zle_highlight=('paste:none')

# Disable bell
setopt NO_BEEP

# Disable ctrl-s freezing the terminal
stty stop undef

# Source other configs
source $ZSH/config/exports.zsh
source $ZSH/config/history.zsh
source $ZSH/config/aliases.zsh
source $ZSH/config/plugins.zsh
_comp_options+=(globdots) # include hidden files in completions

# Autocompletions
autoload -Uz compinit && compinit

# Completion options and styling 
zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list
zmodload zsh/complist # load comp list module
