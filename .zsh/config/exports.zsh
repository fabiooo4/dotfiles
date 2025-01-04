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
. "$HOME/.cargo/env"
export PATH="$PATH:/home/fabio/.spicetify"

export PKG_CONFIG_PATH="/usr/lib64/pkgconfig:/lib/x86_64-linux-gnu/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig"

# Command line tools
eval "$(zoxide init --cmd cd zsh)" # zoxide a cd alternative
eval "$(starship init zsh)" # starship prompt
eval "$($HOME/homebrew/bin/brew shellenv)" # homebrew
export BAT_THEME="gruvbox-dark"

# --- fzf config ---
source <(fzf --zsh)

# Theme
# Catppuccin Mocha
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Gruvbox
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#fe8019,bg:-1,bg+:#32302f
  --color=hl:#458588,hl+:#83a598,info:#a89984,marker:#98971a
  --color=prompt:#cc241d,spinner:#b16286,pointer:#d3869b,header:#98971a
  --color=border:#928374,scrollbar:#7c6f64,label:#d5c4a1,query:#ebdbb2'

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

# Use bat to preview files and eza to preview directories
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
export FZF_COMPLETION_TRIGGER='**'
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}
# --- fzf config ---

# --- yazi config ---
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
# --- yazi config ---

source ~/fzf-git.sh/fzf-git.sh
export KEYTIMEOUT=100
