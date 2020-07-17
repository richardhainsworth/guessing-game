#!/usr/bin/env bash
# File: guessinggame.sh

correct_answer=$(ls -la | awk '{print $9}' | grep -E "[^\.]|[^\.\.]" | wc -l | grep -Eo "[0-9]+")
 echo "How many files (including directories, symlinks and hidden files) are there in the current directory?" 
 echo "(the current directory is: $(pwd))"

function guessing_game {
 read response
}


guessing_game

  while [[ $response -ne $correct_answer ]]
	do
		if [[ $response =~ [^0-9]+ ]]
			then	
				echo "Please enter a number in the decimal (base 10) system"
				guessing_game
		fi

		if [[ $response -gt $correct_answer ]]
			then
				echo "You entered $response, which is too high!  Please try again!"
				guessing_game
			else
				echo "You entered $response, which is too low! Please try again!"
				guessing_game
		fi		
  done

  if [[ $response -eq $correct_answer ]]
	then
		echo "You entered $response, the total files in the directory is also $correct_answer"
		echo "Well done - you guessed correctly!"
		exit
  fi