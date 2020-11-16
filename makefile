all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub\n" >> README.md
	echo "## Guessing game\n" >> README.md
	echo "**Time of creation \`README.md\`:** `date`)" >> README.md
	echo "\n**Lines of code \`guessinggame.sh\`:** `cat guessinggame.sh | wc -l`" >> README.md
###	
clean:
	rm README.md
