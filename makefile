all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "- README created on: **$(shell date)**" >> README.md
	echo "- Lines of code: **$(shell wc -l guessinggame.sh | egrep -o [0-9]+)**" >> README.md

clean:
	rm README.md
