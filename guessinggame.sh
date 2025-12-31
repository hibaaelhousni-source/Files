#!/usr/bin/env bash

count_files() {
echo $(ls -l | wc -l)
}

correct=$(count_files)

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"

while true
do
read guess

if [[ ! $guess =~ ^[0-9]+$ ]]; then
echo "Please enter a valid number."
elif [[ $guess -lt $correct ]]; then
echo "Your guess is too low .Try again:"
elif [[ $guess -gt $correct ]]; then
echo "Your guess is too high.Try again:"
else
echo "Congratulations! You guessed the correct number of files!"
break
fi
done
