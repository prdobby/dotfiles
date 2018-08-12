#!/bin/bash

echo "Bootstrapping git dotfiles"

SCRIPT_DIR="${0%/*}"

source $SCRIPT_DIR/git/git-completion.sh
source $SCRIPT_DIR/git/git-prompt.sh

if [ -L $HOME/.gitconfig ]; then
    echo "Removing symlink to existing .gitconfig file"
    unlink $HOME/.gitconfig
fi

if [ -e $HOME/.gitconfig ]; then
	echo "Replacing existing .gitconfig file"
	rm $HOME/.gitconfig
fi

ln -s $SCRIPT_DIR/git/gitconfig $HOME/.gitconfig

alias g=git

