#!/bin/bash

function checkvalid {
    while [[ $guess =~ [^0-9] ]]
    do
        echo "$guess? That's not even a valid number!"
        echo Guess again
        read guess
    done
}

files=$(ls -l | egrep -c ^-)

echo Guess how many files are in this directory
read guess
checkvalid
    
while [[ $guess -ne $files ]]
do
    if [[ $guess -lt $files ]]
    then
        echo "$guess? That's not enough!"
    else
        echo "$guess? That's too many!"
    fi

    echo Guess agian
    read guess
    checkvalid
done

echo "$guess? That's right!"      
