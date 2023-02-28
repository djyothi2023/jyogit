#!/bin/bash
echo "Enter string to be reversed" 
read userval
count=$(echo $userval | awk '{print length}')   
for (( i=$count; i>0; i--)); do
  revstr+=$(echo $userval | awk -v  idx=$i '{print substr($0, idx, 1)}') 
done
echo $revstr



