#!/bin/bash

echo "Bootstrapping vim dotfiles"

SCRIPT_DIR="${0%/*}"

if [ ! -d $HOME/.vim ]; then
	echo "Creating ~/.vim directory"
	mkdir $HOME/.vim
fi

# Vim Themes
if [ -d $HOME/.vim/colors ]; then
	echo "Copying existing Vim themes to dotfiles repo"
    mv $HOME/.vim/colors/* $SCRIPT_DIR/vim/colors/
	rm -r $HOME/.vim/colors
fi
ln -s $SCRIPT_DIR/vim/colors $HOME/.vim/colors

# Autoload Directory (plugin manager)
if [ -d $HOME/.vim/autoload ]; then
    echo "Copying existing autoload files to dotfiles repo"
    mv $HOME/.vim/autoload/* $SCRIPT_DIR/vim/autoload/
    rm -r $HOME/.vim/autoload
fi
ln -s $SCRIPT_DIR/vim/autoload $HOME/.vim/autoload

if [ ! -d $HOME/.vim/plugged ]; then
    echo "Creating plugins directory at ~/.vim/plugged"
    mkdir $HOME/.vim/plugged
fi

# .vimrc
if [ -f $HOME/.vimrc ]; then
	echo "Replacing existing .vimrc file"
	rm $HOME/.vimrc
fi

ln -s $SCRIPT_DIR/vim/vimrc $HOME/.vimrc


