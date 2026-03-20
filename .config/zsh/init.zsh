# Enable Powerlevel10k instant prompt (must be near the top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Environment variables
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
  editor
  plugin
  history
  tmux
)

for CONFIG in $ZSH_CONFIGS; do
    source "${ZSH_CONFIG_HOME}/${CONFIG}.zsh"
done
