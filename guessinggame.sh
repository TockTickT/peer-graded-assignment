#!/bin/bash
# File: guessinggame.sh


# Defining a function named guess
function guess {
    
    local num_of_files=$(ls -l | grep "^-" | wc -l)

    echo "How many files are in the current directory? Type your answer:"
    read ans

    while [[ $ans -ne $num_of_files ]]
    do
	if [[ $ans -gt $num_of_files ]]
	then
	    echo "Unfortunately, you guessed too high."
	else
	    echo "Unfortumately, you guessed too low."
	fi
	echo "Please type in another answer:"
	read ans
    done

    echo "Congratulations! You guessed it right!!!"
}

# Calling the function guess
guess
