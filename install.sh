#!/bin/zsh

# add submodule
git submodule update --init --recursive

# symlink dotfiles
ln -sf "$HOME/dotfiles/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/dotfiles/.zplug" "$HOME/.zplug"
ln -sf "$HOME/dotfiles/.fzf" "$HOME/.fzf"
ln -sf "$HOME/dotfiles/.vim" "$HOME/.vim"
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

if [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sf "$HOME/dotfiles/.tmux.conf_mac" "$HOME/.tmux.conf"
else
  ln -sf "$HOME/dotfiles/.tmux" "$HOME/.tmux"
  ln -sf "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
fi

if [ ! -d "$HOME/.config"]; then
  mkdir "$HOME/.config"
  if [ ! -d "$HOME/.confg/nvim"]; then
    mkdir "$HOME/.config/nvim"
  fi
fi
ln -sf "$HOME/dotfiles/.vimrc" "$HOME/.config/nvim/init.vim"

# install
vi +PluginInstall +qall
~/.fzf/install

# change shell
chsh -s $(which zsh)

source ~/dotfiles/.zshrc
