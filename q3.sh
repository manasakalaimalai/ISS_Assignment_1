#!/bin/bash

#a. Size of file
mysize=$(find "$1" -printf "%s")
echo "$1 size is $mysize bytes."

#b. Count of lines
no_lines=$(wc -l < $1)
echo "$1 has $no_lines lines."

#c. Count of words
no_words=$(wc -w < $1)
echo "$1 has $no_words words."


#d. Count of words in each line
touch ibdvoihvdshs.txt
let count=1
while IFS= read -r line; do
    echo $line > ibdvoihvdshs.txt
    no_words_line=$(wc -w < ibdvoihvdshs.txt)
    echo "$count : $no_words_line"
    let count++
done < $1
rm ibdvoihvdshs.txt

#e. Count of occurence of each repeated word
egrep -o "\b[[:alpha:]]+\b" $1 | \

awk '{ count[$0]++ }
END {
for(ind in count)
{
    if ( count[ind] != 1 )
    {
        printf("%-14s:%d\n",ind,count[ind]); }
    }
}'