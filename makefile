all: README.md

README.md:

	echo "Project Title: GuessingGame\n" > README.md
	echo "Date Made: " >> README.md
	date >> README.md
	echo "\nNumber of Lines: " >> README.md
	wc -l < guessinggame.sh | egrep -o [0-9]+ >> README.md
