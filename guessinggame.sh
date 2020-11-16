#!/bin/bash
# File: guessinggame.sh


# Defining a function named guess
function guess {
    
    local num_of_files=$(ls -la | grep "^-" | wc -l)

    echo "How many files are in the current directory? Type your answer:"
    local ans
    read ans
    
    while [[ $ans =~ [^0-9] ]] || [[ $ans -ne $num_of_files ]]
    do
	if [[ $ans =~ [^0-9] ]]
	then
	    echo "*Incorrect input type, please input a non-negative integer*"
	elif [[ $ans -gt $num_of_files ]]
	then
	    echo "Unfortunately, you guessed too high."
	else
	    echo "Unfortunately, you guessed too low."
	fi
	echo "Please type in another answer:"
	read ans
    done
    
    echo "Congratulations! You guessed it right!!!"
}

# Calling the function guess
guess
