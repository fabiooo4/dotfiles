# exa
alias l="eza --icons --group-directories-first -l  --no-filesize --long --git --no-time --no-user"
alias ll="eza --icons --group-directories-first -la  --no-filesize --long --git --no-time --no-user"
alias ls="eza"
alias tree="eza --tree"

# git
alias gad="git add ."
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"

# nvim (only fedora)
if [ -f /etc/fedora-release ]; then
  alias nvid="neovide --frame none"
fi
