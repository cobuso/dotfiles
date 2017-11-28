#!/bin/bash

if [ ! -f README ]
then
  echo "You must execute this script from the root of the dotfiles repo"
  exit 1
fi

PWD=$(pwd)

source $PWD/utils/functions

git submodule update --init --recursive

# osx
if [ "$(uname)" = "Darwin" ]; then
  . $PWD/osx/homebrew
fi

# Vim - config
create_sym $PWD/vim $HOME/.vim
create_sym $PWD/vim/vimrc $HOME/.vimrc

# Vim - dirs
mkdir -p $PWD/vim/tmp/backup
mkdir -p $PWD/vim/tmp/swap
mkdir -p $PWD/vim/tmp/undo
mkdir -p $PWD/vim/tmp/yankring

# Vim - vundle
vim +BundleInstall +qall

# zsh
create_sym $PWD/zsh/zshrc $HOME/.zshrc
create_sym $PWD/zsh/zsh_aliases $HOME/.zsh_aliases

# tmux
create_sym $PWD/tmux/tmux.conf $HOME/.tmux.conf

# git
create_sym $PWD/git/gitconfig $HOME/.gitconfig

# ack
create_sym $PWD/ack/ackrc $HOME/.ackrc

# editorconfig
create_sym $PWD/editorconfig/editorconfig $HOME/.editorconfig
