all: README.md

README.md:

	echo "Project Title: GuessingGame" > README.md
	date >> README.md
	wc -l < guessinggame.sh | egrep -o [0-9]+ >> README.md
