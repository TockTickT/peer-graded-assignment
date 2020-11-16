all: README.md

README.md: guessinggame.sh
	echo "#Guessing game#" >> README.md
	echo "##Peer-graded Assignment: Bash, Make, Git, and GitHub##" >> README.md
	echo "Time of creation:" >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm README.md
