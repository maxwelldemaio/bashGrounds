all: toc.txt README.md

# Create table of contents for bash files
toc.txt: bashFiles/
	ls bashFiles > toc.txt

# Create readme dependent on number of bash files
README.md: toc.txt
	echo "**Bash practice and testing grounds**\n" > README.md
	echo "This repository contains the following number of bash files:" >> README.md
	wc -l toc.txt | egrep -o "[0-9]+" >> README.md
	echo "\nTo update the number of bash files, run `make`" >> README.md

clean:
	rm toc.txt
	rm README.md
