#!/bin/bash

#
# Bootsteaps my config. Assumes it is being all from the directory where it resides
#
if [ ! -f README ]
then
  echo "You must execute this script from the root of the dotfiles repo"
  exit 1
fi

# Bootstrap the vim config
ln -s $HOME/dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/vim $HOME/.vim
ln -s $HOME/dotfiles/vim/sparkup/vim $HOME/dotfiles/vim/bundle/sparkup
mkdir -p $HOME/.vim/tmp/backup
mkdir -p $HOME/.vim/tmp/swap 
mkdir -p $HOME/.vim/tmp/yankring 

# Bash config
ln -s $HOME/dotfiles/bash_profile $HOME/.bash_profile

# Git
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig 

# Ack
ln -s $HOME/dotfiles/ackrc $HOME/.ackrc
