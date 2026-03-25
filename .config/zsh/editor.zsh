# Editor configuration
# nvim をデフォルトエディタとして設定（Claude Code連携含む）

export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# Emacs keybindings in vi insert mode (Ctrl+A/Ctrl+E for line navigation)
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line

# Claude Code aliases
alias cc="claude"
alias ccc="claude --continue"
alias ccr="claude --resume"
