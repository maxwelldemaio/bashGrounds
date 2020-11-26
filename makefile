all: toc.txt README.md

# Create table of contents for bash notes
toc.txt: bashNotes/
	ls bashNotes/*.sh > toc.txt

# Create readme dependent on number of bash notes
README.md: toc.txt
	echo "**Bash practice and testing grounds**\n" > README.md
	echo "- This repository contains the following number of bash files in bashNotes/:" >> README.md
	wc -l toc.txt | egrep -o "[0-9]+" >> README.md
	echo "\n- To update the readme/table of contents, run 'make clean' and then 'make'" >> README.md
	echo "\n- To setup your Github username/email, run 'git_setup.sh'" >> README.md
	echo "\n- To setup the dev toolbox, run 'install.sh' and '. ./source.sh'" >> README.md

clean:
	rm toc.txt
	rm README.md
