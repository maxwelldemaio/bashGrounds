#!/bin/bash

### Create symlinks from the home dir to any desired dotfiles in ${homedir}/bashGrounds
### Create a folder in the home dir called 'MyCodingFiles'

## Symlinks

if [ "$#" -ne 1]; then
	echo "Usage: install.sh <home_directory>"
	exit 1
fi

homedir=$1

# Dotfiles directory
dotfiledir=${homedir}/bashGrounds


## MyCodingFiles directory

