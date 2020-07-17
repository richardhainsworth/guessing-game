#!/usr/bin/env bash
# File: guessinggame.sh

function guessing_game {
 echo "How many files are there in the current directory?" 
 echo "(the current directory is: $(pwd))"
 correct_answer=$(ls -la | grep -E "^\-" | wc -l | grep -Eo "[0-9]+")
 read response
}

guessing_game

  while [[ $response -ne $correct_answer ]]
	do
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