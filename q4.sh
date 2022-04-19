#!/bin/bash

read string
array=($(echo $string | tr "," "\n"))
count=${#array[*]}

for (( i = 0 ; i < $count ; i++ )); do
    for (( j = $i ; j < $count; j++ )); do
        if [ ${array[$i]} -gt ${array[$j]}  ]; then
            t=${array[$i]}
            array[$i]=${array[$j]}
            array[$j]=$t
        fi
    done
done

for (( i=0 ; i < $count ; i++ )); do
    echo -n "${array[$i]} "
done
echo
