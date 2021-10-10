#!/bin/zsh

# add submodule
git submodule update --init --recursive

# symlink dotfiles
ln -sf "$HOME/dotfiles/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/dotfiles/.zplug" "$HOME/.zplug"
ln -sf "$HOME/dotfiles/.fzf" "$HOME/.fzf"
ln -sf "$HOME/dotfiles/.vim" "$HOME/.vim"

if [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sf "$HOME/dotfiles/.zshrc_mac" "$HOME/.zshrc"
  ln -sf "$HOME/dotfiles/.tmux.conf_mac" "$HOME/.tmux.conf"
else
  ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
  ln -sf "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
fi

if [ ! -d "$HOME/.config"]; then
  mkdir "$HOME/.config"
  if [ ! -d "$HOME/.confg/nvim"]; then
    mkdir "$HOME/.config/nvim"
fi
ln -sf "$HOME/dotfiles/.vimrc"

# install
vi +PluginInstall +qall
$HOME/.fzf/install

# change shell
chsh -s $(which zsh)

source $HOME/dotfiles/.zshrc