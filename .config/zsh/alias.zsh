OSTYPE="$(uname -s)"

# ls
if [[ "$OSTYPE" == "Darwin" ]]; then
  alias ls="ls -G"
else
  alias ls="ls --color=auto"
fi
alias ll="ls -altrF"
alias la="ls -A"

# git
alias g="git"
alias ga="g a"
alias gc="g c"
alias gd="g d"
alias gst="g st"
alias gps="g ps"
alias gpl="g pl"
alias gco="g co"
alias gf="g f"
alias gl="g l"

alias tree='tree -N'
alias vi=nvim
alias top=htop
alias cat=bat
alias catp='bat --style=plain'
alias grep='rg -uu'
