zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# Initialize completion system
autoload -Uz compinit && compinit

# oh-my-zsh plugins
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git

# prezto plugins
zinit snippet PZTM::helper
