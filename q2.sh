#!/bin/bash
touch just_temp_file.txt
cat $1 > just_temp_file.txt
sed -i '/^$/d' just_temp_file.txt
touch speech.txt
temp=1
while IFS= read -r line; do
    quote=${line%~*}
    author=${line#*~}
    if [ $temp -eq 1 ]
    then
        print=$author' once said, " '$quote'"'
        echo $print > speech.txt
        let temp+=1
        continue
    fi
    print=$author' once said, " '$quote'"'
    echo $print >> speech.txt
done < just_temp_file.txt
rm just_temp_file.txt
