# Braces allow us to create string sequences and expansions

echo {0..9}

echo {a..e}
echo {W..Z}
echo a{0..4}
echo b{0..4}c

# Combine sequences
echo {1..3}{A..C}
echo {{1..3},{a..c}}

start=4
end=8

eval echo {$start..$end}

