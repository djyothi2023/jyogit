#!/bin/bash
currentfolder=$HOME/perscholas/learnbash
fileName="jyothi"
echo $currentfolder
cd $currentfolder
#ls | grep "jyothi" | awk '{print substr($0,7)}'
numbers=($(ls | grep "jyothi" | awk '{print substr($0,7)}'))
maxNum=${#numbers[@]}
echo $maxNum

if [ $maxNum  == 0 ]; then
  for (( i=1 ; i<26 ; i++ )); do
   	touch $fileName$i;
	#echo $fileName;
	#echo $i;
  done
echo "Done creation of Files"
else
	for (( i=$maxNum+1 ; i<=$maxNum+25 ; i++)); do
		touch $fileName$i;
		
	done
echo "Done creation of Files"

fi
    


#for i in "${numbers[@]}"
#do
   # echo "$i"
#done



#for file in *

#do

#if [-f $file ]
#then

#maxNumber=  | awk '{print substr($0,7)}'
#echo $maxNumber

#fi
#done

