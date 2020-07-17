README.md: guessinggame.sh
	echo "#Guessing Game" > README.md
	echo " " >> README.md
	echo "Project Title: Guessing Game" >> README.md
	echo "Make run at: " >> README.md
	date >> README.md
	echo "guessinggame.sh contains the following lines of code:" >> README.md
	cat guessinggame.sh | wc -l | grep -Eo "[0-9]+" >> README.md