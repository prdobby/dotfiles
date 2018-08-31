#!/bin/bash

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

ScriptDir=~/.scripts
if [[ -d "$ScriptDir" ]]; then
	for Script in "$ScriptDir"/*; do
		source "$Script"
	done
fi

