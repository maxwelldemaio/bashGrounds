all: toc.txt README.md

# Create table of contents for bash notes
toc.txt: bashNotes/
	ls bashNotes/*.sh > toc.txt

# Create readme dependent on number of bash notes
README.md: toc.txt
	echo "**Bash practice and testing grounds**\n" > README.md
	echo "This repository contains the following number of bash files in bashNotes/:" >> README.md
	wc -l toc.txt | egrep -o "[0-9]+" >> README.md
	echo "\nTo update the table of contents/number of bash files, run 'make'" >> README.md
	echo "\nTo setup your Github username/email, run 'git_setup.sh'" >> README.md
	echo "\nTo setup the dev toolbox, run 'install.sh'" >> README.md

clean:
	rm toc.txt
	rm README.md
