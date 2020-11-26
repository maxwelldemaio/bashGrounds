#/bin/bash

# Ask how many files are in curr directory
echo "Guess how many files are in the current directory?"

read guessNum

answer=$(ls *.* | wc -l)

# Check if the guess was correct
if (( guessNum == $answer ));
then
	echo "That's correct!"
else
	echo "Incorrect!"
fi
