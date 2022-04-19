#!/bin/bash

read word
#a. Print string in reverse
reverse_word=$(echo $word | rev)
echo $reverse_word

#b. Increment the characters of the words by 1
reverse_incremented_word=$(echo "$reverse_word" | tr "0-9a-zA-Z" "1-9a-zA-Z")
echo $reverse_incremented_word

#c. First half reversed
count=${#word}
let half=$count/2
first_half=$(echo ${word:0:half})
echo -n $first_half | rev
let second=$count-$half
echo ${word:half:second}
