#!/bin/bash

### Create symlinks from the home dir to any desired dotfiles
### Location of symlinks will be in ${homedir}/bashGrounds

## Symlinks

if [ "$#" -ne 1 ]; then
	echo "Usage: install.sh <home_directory>"
	exit 1
fi

homedir=$1

# Dotfiles directory
dotfiledir=${homedir}/bashGrounds

# List of files/folders to symlink in ${homedir}
# (If adding more, delimit string with spaces
files="bash_profile"

# Change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# Create symlinks (will overwrite old dotfiles)
for file in ${files}; do
	echo "Creating symlink to $file in home directory."
	ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

