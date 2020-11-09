#!/bin/zsh

# add submodule
git submodule update --init --recursive

# symlink dotfiles
ln -sf ~/dotfiles/.zprezto ~/.zprezto
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zplug ~/.zplug
ln -sf ~/dotfiles/.fzf ~/.fzf
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# install
vi +PluginInstall +qall
.fzf/install

# change shell
chsh -s $(which zsh)

source ~/dotfiles/.zshrc
