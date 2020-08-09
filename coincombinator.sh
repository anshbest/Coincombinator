#!/bin/bash

declare -A Ischoicedict
Ischoicedict[H]=0
Ischoicedict[T]=0
Ischoicedict[HH]=0
Ischoicedict[HT]=0
Ischoicedict[TH]=0
Ischoicedict[TT]=0

for (( i=0 ; i<10 ; i++ ))
do
	isChoice=$((RANDOM%2))
	if [ $isChoice -eq 0 ]
	then
		((Ischoicedict[H]++))
	else
		((Ischoicedict[T]++))
	fi
	isChoice2=$((RANDOM%2))
	case $isChoice$isChoice2 in
		00)
			((Ischoicedict[HH]++))
			;;
		01)
			((Ischoicedict[HT]++))
			;;
		10)
			((Ischoicedict[TH]++))
			;;
		11)
			((Ischoicedict[TT]++))
			;;
	esac
done
echo "percnt of H is $((${Ischoicedict[H]}*100/10))%"
echo "percnt of T is $((${Ischoicedict[T]}*100/10))%"
echo "percnt of HH is $((${Ischoicedict[HH]}*100/10))%"
echo "percnt of H T is $((${Ischoicedict[HT]}*100/10))%"
echo "percnt of T H is $((${Ischoicedict[TH]}*100/10))%"
echo "percnt of T T is $((${Ischoicedict[TT]}*100/10))%"
