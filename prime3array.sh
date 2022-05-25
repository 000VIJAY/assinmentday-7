#!/bin/bash -x

num=0
read -p "Enter a number =" x

echo "The prime factors of $x are"

for(( i = 2; i * i <= x; ))
do
	if(( x % i == 0 ))
then
	array[num++]=$i
	(( x /= i ))
else 
	(( i += 1 ))
fi
done

array[num]=$x
echo "${array[@]}"
