all: toc.txt README.md

# Create table of contents for bash notes
toc.txt: bashNotes/
	ls bashNotes > toc.txt

# Create readme dependent on number of bash notes
README.md: toc.txt
	echo "**Bash practice and testing grounds**\n" > README.md
	echo "This repository contains the following number of bash notes:" >> README.md
	wc -l toc.txt | egrep -o "[0-9]+" >> README.md
	echo "\nTo update the number of bash notes, run 'make'" >> README.md
	echo "To setup, run 'install.sh'" >> README.md

clean:
	rm toc.txt
	rm README.md
