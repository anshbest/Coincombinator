#!/bin/bash

declare -A tossdict
tossdict[H]=0
tossdict[T]=0

for (( i=0 ; i<20 ; i++ ))
do
	Ischoice=$((RANDOM%2))
	if [ $Ischoice -eq 0 ]
	then
		((tossdict[H]++))
	else
		((tossdict[T]++))
	fi
done
echo "H prcnt  is $((${tossdict[H]}*100/20))%"
echo " T prcnt is $((${tossdict[T]}*100/20))%"
