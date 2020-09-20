all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo '$(shell date +%Y-%m-%d:%H:%M:%S)' >>README.md
	echo " " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]" >>README.md
