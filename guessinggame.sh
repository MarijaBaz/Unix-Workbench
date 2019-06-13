#!/bin/bash

# Guessing Game

function check {
	if [[ $1 =~ ^[0-9]+$ ]]
	then
		echo "1"
	else
		echo "0"
	fi
}
files=$(($(ls -l | wc -l) - 1))


echo "Guess the number of files that exist in current directory: "
while read guess
do
	if [[ "$(check "$guess")" == "1" ]]
                        then
                             if [[ $guess -eq $files ]]
                             then
                                    echo "Congratulations"
				    break
                             elif [[ $guess -gt $files ]]
                                    then
                                    echo "Number is too high"
                                    echo ""
                              else
                                    echo "Number is too low"
                                    echo ""
                              fi
                          else
                                    echo "Enter an integer"
                          fi
                          
              done
  
