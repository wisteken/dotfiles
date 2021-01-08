# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias gcd='ghq look `ghq list |fzf --preview "bat --color=always --style=header,grid --line-range :80 $(ghq root)/{}/README.*"`'

source ~/.zplug/init.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# ls
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'

# git
alias g="git"
alias ga="git add"
alias gd="git diff"
alias gst="git status"
alias gp="git push"
alias gb="git bransh"
alias gco="git checkout"
alias gf="git fetch"
alias gc="git commit"

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "plugins/git",   from:oh-my-zsh
zplug "modules/prompt", from:prezto
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "b4b4r07/zsh-gomi", as:command, use:bin

# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'

# theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

# zplug
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
(( ! ${+functions[p10k]} )) || p10k finalize

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
