#!/bin/bash 

for((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100))
done
		echo " Initial Array"
 		echo ${arr[@]}
temp=0
for((i=0;i<10;i++))
do
	for((j=i+1;j<10;j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done

echo "sorted Array"
echo ${arr[@]}
