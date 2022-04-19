#!/bin/bash

grep -v '^[[:space:]]*$' $1

echo
echo

touch ibdvoihvdshs.txt
awk '!seen[$0]++' $1 > ibdvoihvdshs.txt
cat ibdvoihvdshs.txt
rm ibdvoihvdshs.txt
