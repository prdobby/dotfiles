#!/bin/bash

echo "Bootstrapping dotfiles"

SCRIPT_SOURCE=${BASH_SOURCE[0]}
DIR_NAME=`dirname ${BASH_SOURCE[0]}`

source $DIR_NAME/git/bootstrap.sh
source $DIR_NAME/vim/bootstrap.sh
