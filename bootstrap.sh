#!/bin/bash

# Function to add a symlink. Stolen from mafro (https://github.com/mafrosis/dotfiles)
function create_sym() {
  if [ -h "$2" ]; then
    # if symlink exists, replace it
    ln -fs "$1" "$2"
  elif [ -f "$2" ]; then
    # if a file exists, ask user
    echo "Do you want to delete the existing config file '$2'? [y/N]"
    read y
    if [ y == "y" ]; then
      # replace existing file
      ln -fs "$1" "$2"
    fi
  else
    # doesnt exist, so create
    ln -s "$1" "$2"
  fi
}

#
# Bootstraps my config. Assumes it is being called from the directory where it resides
#
if [ ! -f README ]
then
  echo "You must execute this script from the root of the dotfiles repo"
  exit 1
fi

PWD=$(pwd)

# Bootstrap the vim config
create_sym $PWD/vim/vimrc $HOME/.vimrc
create_sym $PWD/vim $HOME/.vim
create_sym $PWD/vim/sparkup/bin $PWD/vim/bundle/sparkup
mkdir -p $HOME/.vim/tmp/backup
mkdir -p $HOME/.vim/tmp/swap 
mkdir -p $HOME/.vim/tmp/undo 
mkdir -p $HOME/.vim/tmp/yankring 

# Bash config
create_sym $PWD/bash_profile $HOME/.bash_profile

# ZSH
create_sym $PWD/zsh/zshrc $HOME/.zshrc
create_sym $PWD/zsh/zsh_aliases $HOME/.zsh_aliases

# TMUX
create_sym $PWD/tmux $HOME/.tmux.conf

# Git
create_sym $PWD/gitconfig $HOME/.gitconfig

# Ack
create_sym $PWD/ackrc $HOME/.ackrc
ln -s $HOME/dotfiles/ackrc $HOME/.ackrc

# OSX Lion sensible defaults
. $PWD/osx
