#!/bin/bash
read -p "Enter how many flash cards you want to display:" userval
echo $userval
while ! [[ $userval =~ ^[0-9]+$ && $userval  -gt 0 ]]; do
        read -p "Not a valid number. Enter valid number" userval
done

dir=$HOME/perscholas/learnbash
 #echo $dir
 FILE=$dir/command.txt
 #echo $FILE
lines=$(wc -l <  ${FILE})
 #echo $lines
counter=1
while [ $counter -le $userval ]; do

        random_num=$((1+RANDOM % lines))
        #echo $random_num
        random_line=$(sed "${random_num}q;d" "${FILE}")
        #echo $random_line
        man $random_line 2>/dev/null
	#sleep 10s		
        ((counter++))
done

