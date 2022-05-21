# variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Load configs
ZSH_CONFIG_HOME="$HOME/.config/zsh"
ZSH_CONFIGS=(
  zinit
  theme
  alias
  brew
  plugin
  history
  anyenv
  tmux
)

for CONFIG in $ZSH_CONFIGS; do
    source "${ZSH_CONFIG_HOME}/${CONFIG}.zsh"
done
