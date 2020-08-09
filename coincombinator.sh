#!/bin/bash

declare -A Ischoicedict
Ischoicedict[HHH]=0
Ischoicedict[HHT]=0
Ischoicedict[HTH]=0
Ischoicedict[THH]=0
Ischoicedict[HTT]=0
Ischoicedict[THT]=0
Ischoicedict[TTH]=0
Ischoicedict[TTT]=0

for (( i=0 ; i<20 ; i++ ))
do
	isChoice=$((RANDOM%2))
	isChoice2=$((RANDOM%2))
	isChoice3=$((RANDOM%2))
	case $isChoice$isChoice2$isChoice3 in
		000)
			((Ischoicedict[HHH]++))
			;;
		001)
			((Ischoicedict[HHT]++))
			;;
		010)
			((Ischoicedict[HTH]++))
			;;
		100)
			((Ischoicedict[THH]++))
			;;
		011)
			((Ischoicedict[HTT]++))
			;;
		101)
			((Ischoicedict[THT]++))
			;;
		110)
			((Ischoicedict[TTH]++))
			;;
		111)
			((Ischoicedict[TTT]++))
			;;
	esac
done
echo "percnt of HHH is $((${Ischoicedict[HHH]}*100/20))%"
echo "percnt of HHT is $((${Ischoicedict[HHT]}*100/20))%"
echo "percnt of HTH is $((${Ischoicedict[HTH]}*100/20))%"
echo "percnt of THH is $((${Ischoicedict[THH]}*100/20))%"
echo "percnt of HTT is $((${Ischoicedict[HTT]}*100/20))%"
echo "percnt of THT is $((${Ischoicedict[THT]}*100/20))%"
echo "percnt of TTH is $((${Ischoicedict[TTH]}*100/20))%"
echo "percnt of TTT is $((${Ischoicedict[TTT]}*100/20))%"
