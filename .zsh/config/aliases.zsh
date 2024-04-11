# exa
alias l="eza --icons --group-directories-first -l"
alias ll="eza --icons --group-directories-first -la"
alias ls="eza"
alias tree="eza --tree"

# git
alias gad="git add ."
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"

# nvim (only fedora)
if [ -f /etc/fedora-release ]; then
  alias nvim="neovide"
fi
