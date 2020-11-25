#!/bin/bash

### Create symlinks from the home dir to any desired dotfiles
### Location of symlinks will be in ${homedir}/bashGrounds

## Symlinks

if [ "$#" -ne 1]; then
	echo "Usage: install.sh <home_directory>"
	exit 1
fi

homedir=$1

# Dotfiles directory
dotfiledir=${homedir}/bashGrounds

