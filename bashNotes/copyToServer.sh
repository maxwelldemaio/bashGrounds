#!/bin/bash

# Copy a file to my server

# Check number of arguments is valid
if [[ $# -gt 1 || $# -lt 1 ]]; then
	echo "Usage: bash copyToServer.sh file"
	exit 1
else
	itemToCopy=$1
fi

# Check if file or folder and copy to server
# (Please note this server is shutdown now)
if [[ -f $itemToCopy ]]; then
	echo "Copying file $itemToCopy to server..."
	scp $itemToCopy root@104.248.124.34:/root/$itemToCopy
	echo "Done!"
elif [[ -d $itemToCopy ]]; then
	echo "Copying directory $itemToCopy to server..."
	scp -r $itemToCopy root@104.248.124.34:/root/$itemToCopy
	echo "Done!"
else
	echo "$itemToCopy is not valid"
	exit 2
fi

