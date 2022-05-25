#!/bin/bash -x

read -p "enter a number=" x
num=0

for(( i=x; i <= 100; ))
do 
	if(( i % 11 == 0 ))
then
	array[num++]=$i
	(( i += 11 ))
else
	(( i++ ))
fi
done
echo "The required numbers are:"
echo "${array[@]}"
