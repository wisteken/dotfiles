#!/bin/zsh

## .config
ln -sf "$HOME/dotfiles/.config/zsh" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/nvim" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/git" "$HOME/.config"
ln -sf "$HOME/dotfiles/.config/tmux" "$HOME/.config"
if [ "$(uname -s)" = "Darwin" ]; then
  ln -sf "$HOME/dotfiles/.config/brewfile" "$HOME/.config"
  brew file install
  eval $(brew --prefix)/opt/fzf/install
fi

ln -sf "$HOME/dotfiles/.config/hyper/.hyper.js" "$HOME/.hyper.js"
ln -sf "$HOME/dotfiles/.zprofile" "$HOME/.zprofile"
source "$HOME/.zproile"

# vim
vi +PlugInstall +qall

# change shell
chsh -s $(which zsh)

