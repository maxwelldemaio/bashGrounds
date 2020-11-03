# Define an array and index it

plagues=(sickness locusts darkness death)

echo ${plagues[0]}

# All items in the list
echo ${plagues[*]}

# Multiple items in array
echo ${plagues[*]:0:2}

# Length of list
echo ${#plagues[*]}

# Append to list
plagues+=(blood greed)
echo ${plagues[*]}

# Access arg1 index
echo ${plagues[$1]}

