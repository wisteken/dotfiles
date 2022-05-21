#!/bin/zsh

## .config
ln -sf "$HOME/dotfiles/.config/zsh" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/nvim" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/git" "$HOME/.config"
if [ "$(uname -s)" = "Darwin" ]; then
  ln -sf "$HOME/dotfiles/.config/brewfile" "$HOME/.config"
  brew file install
fi

ln -sf "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
source "$HOME/.zshrc"
