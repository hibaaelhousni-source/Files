README.md: guessinggame.sh
	echo "#Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Description" >> README.md
	echo "This project is a Bash guessing game." >> README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Lines of Code" >> README.md
	wc -l guessinggame.sh | awk '{print $$1 " lines"}' >> README.md
