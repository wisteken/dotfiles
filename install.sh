#!/bin/zsh

## .config
ln -sf "$HOME/dotfiles/.config/zsh" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/nvim" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/git" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/tmux" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/ghostty" "$HOME/.config"
if [ "$(uname -s)" = "Darwin" ]; then
  ln -sf "$HOME/dotfiles/.config/brewfile" "$HOME/.config"
fi

# Create .zshrc if it doesn't exist
if [ ! -f "$HOME/.zshrc" ]; then
  cat > "$HOME/.zshrc" << 'EOF'
source "$HOME/.config/zsh/init.zsh"
EOF
fi
