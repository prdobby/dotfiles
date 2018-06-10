#!/bin/bash

echo "Bootstrapping git dotfiles"

SCRIPT_DIR="${0%/*}"

source $SCRIPT_DIR/git/git-completion.sh
source $SCRIPT_DIR/git/git-prompt.sh

if [ -f $HOME/.gitconfig ]; then
	echo "Replacing existing .gitconfig file"
	rm $HOME/.gitconfig
fi

ln -s $SCRIPT_DIR/git/gitconfig $HOME/.gitconfig

