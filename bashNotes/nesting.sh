# Nest for loops
for number in {1..3}
do
	for letter in a b
	do
		echo "number is $number, letter is $letter"
	done
done

# If statement within a for loop
for number in {1..10}
do
	if [[ $number -lt 3 ]] || [[ $number -gt 8 ]]
	then
		echo $number
	fi
done

