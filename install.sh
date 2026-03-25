#!/bin/zsh

## .config
ln -sf "$HOME/dotfiles/.config/zsh" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/nvim" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/git" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/tmux" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/ghostty" "$HOME/.config"
mkdir -p "$HOME/.config/karabiner/assets/complex_modifications"
ln -sf "$HOME/dotfiles/.config/karabiner/assets/complex_modifications/tmux_ime.json" "$HOME/.config/karabiner/assets/complex_modifications/"
if [ "$(uname -s)" = "Darwin" ]; then
  ln -sf "$HOME/dotfiles/.config/brew/Brewfile" "$HOME/.Brewfile"
fi

# Create .zshrc if it doesn't exist
if [ ! -f "$HOME/.zshrc" ]; then
  cat > "$HOME/.zshrc" << 'EOF'
source "$HOME/.config/zsh/init.zsh"
EOF
fi
