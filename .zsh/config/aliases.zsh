# exa
alias l="eza --icons --group-directories-first -l  --no-filesize --long --git --no-time --no-user"
alias ll="eza --icons --group-directories-first -la  --no-filesize --long --git --no-time --no-user"
alias ls="eza"
alias tree="eza --tree"

# git
alias gad="git add ."
alias gap="git add --patch"
alias gcv="git commit -v"
alias gce="git commit --amend"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gst="git status --short"
alias gds="git diff --staged"
alias gdf="git diff"
alias glg="git log --color --all --graph --pretty=format:'%C(green)%h %C(yellow) %an  %C(cyan)%ar%C(blue)  %D%n%C(white)%C(bold)%C(italic)%s%n' | tac"
alias gbr="git branch"
alias gbn="git checkout -b"
alias gcl="git clone"
alias grt="git reset"

# open
alias open="xdg-open"

# nvim (only fedora)
if [ -f /etc/fedora-release ]; then
  alias nvid="neovide --frame none"
fi

# nix develop (only nixos)
if [ -f /etc/NIXOS ]; then
  alias nix-shell='nix-shell --run $SHELL'
  nix() {
    if [[ $1 == "develop" ]]; then
      shift
      command nix develop -c $SHELL "$@"
    else
      command nix "$@"
    fi
  }
fi

# Spicetify
alias spicetify="sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/
sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps -R
spicetify"

# Hyprland config
alias hyprconf="nvim ~/.config/hypr/"

# ESP-IDF
alias get_idf='. $HOME/esp/esp-idf/export.sh'

# Nix
alias nix-shell='nix-shell --run $SHELL'
nix() {
  if [[ $1 == "develop" ]]; then
    shift
    command nix develop -c $SHELL "$@"
  else
    command nix "$@"
  fi
}
