#!/bin/bash

# Strs
# =~ Matches regex
# = Equal to
# != Not equal to
# ! Not

# Check if there is a vowel in a string
[[ rhythms =~ [aeiou] ]] && echo "Match" || echo "No match in rhythms"

# Conditions for a number guess based on arg1
if [[ $1 -eq 4 ]]
then
	echo "$1 is my favorite number"
elif [[ $1 -gt 3 ]]
then
	echo "$1 is a pretty good number, bucko"
else
	echo "You entered $1, sorry champ, that's not what I was looking for"
fi

# Check if argument starts with a capital letter
if [[ $1 =~ [A-Z] ]]
then
	echo "How proper!"
fi

# Check if arg is even or odd
if (($1 % 2));
then
	echo "Odd number I see, nice choice"
else
	echo "Sweet even number, bucko"
fi

# Check if today is Friday
weekday=$(date +'%A')

if [[ $weekday = 'Friday' ]];
then
	echo "Nice, finally Friday!"
else
	echo "Too bad it's not Friday"
fi
