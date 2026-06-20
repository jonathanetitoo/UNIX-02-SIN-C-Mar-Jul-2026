#!/bin/bash
# Runs the script using the Bash shell.

FILE="du"
# Creates a variable called FILE and stores the file name output.txt.

touch "${FILE}"
# Creates output.txt if it does not exist. If it exists, it only updates its timestamp.

until [[ -s "${FILE}" ]]; do
# Starts an until loop. It repeats while the file is empty.
# The condition [[ -s "${FILE}" ]] checks if the file exists and has content.

  echo "${FILE} is empty..."
  # Prints a message saying that the file is empty.

  echo "Checking again in 2 seconds..."
  # Prints a message saying that the script will check again in 2 seconds.

  sleep 2
  # Pauses the script for 2 seconds.

done
# Ends the until loop.

echo "${FILE} appears to have some content in it!"
# Prints this message when the file finally has some content.