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
  . $PWD/osx/sensible_defaults
  . $PWD/osx/homebrew
fi

# Vim - config
create_sym $PWD/vim/vimrc $HOME/.vimrc
create_sym $PWD/vim/ideavimrc $HOME/.ideavimrc
create_sym $PWD/vim $HOME/.vim

# Vimperator
create_sym $PWD/vim/vimperatorrc $HOME/.vimperatorrc
create_sym $PWD/vim $HOME/.nvim

# Vim - dirs
mkdir -p $HOME/.vim/tmp/backup
mkdir -p $HOME/.vim/tmp/swap 
mkdir -p $HOME/.vim/tmp/undo 
mkdir -p $HOME/.vim/tmp/yankring 

# Vim - vundle
vim +BundleInstall +qall

# zsh
create_sym $PWD/prezto $HOME/.zprezto
create_sym $PWD/zsh/zshrc $HOME/.zshrc
create_sym $PWD/zsh/zsh_aliases $HOME/.zsh_aliases
create_sym $PWD/zsh/zlogin $HOME/.zlogin
create_sym $PWD/zsh/zlogout $HOME/.zlogout
create_sym $PWD/zsh/zpreztorc $HOME/.zpreztorc
create_sym $PWD/zsh/zprofile $HOME/.zprofile
create_sym $PWD/zsh/zshenv $HOME/.zshenv

# tmux
create_sym $PWD/tmux/tmux.conf $HOME/.tmux.conf

# git
create_sym $PWD/git/gitconfig $HOME/.gitconfig

# ack
create_sym $PWD/ack/ackrc $HOME/.ackrc

# editorconfig
create_sym $PWD/editorconfig/editorconfig $HOME/.editorconfig
