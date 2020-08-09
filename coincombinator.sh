#!/bin/bash

declare -a counttossvalue
declare -a counttosskey
declare -A tossdic
tossdic[HHH]=0
tossdic[HHT]=0
tossdic[HTH]=0
tossdic[THH]=0
tossdic[HTT]=0
tossdic[THT]=0
tossdic[TTH]=0
tossdic[TTT]=0
tossdic[HH]=0
tossdic[HT]=0
tossdic[TH]=0
tossdic[TT]=0
tossdic[H]=0
tossdic[T]=0

for  (( i=0 ; i<40 ; i++ ))
 do
        whatchoice=$((RANDOM%14))
        case $whatchoice in
                0)
                        ((tossdic[HHH]++))
                        ;;
                1)
                        ((tossdic[HHT]++))
                        ;;
                2)
                        ((tossdic[HTH]++))
                        ;;
                3)
                        ((tossdic[THH]++))
                        ;;
                4)
                        ((tossdic[HTT]++))
                        ;;
                5)
                        ((tossdic[THT]++))
                        ;;
                6)
                        ((tossdic[TTH]++))
                        ;;
                7)
                        ((tossdic[TTT]++))
                        ;;
                8)
                        ((tossdic[HH]++))
                        ;;
                9)
                        ((tossdic[HT]++))
                        ;;
                10)
                        ((tossdic[TH]++))
                        ;;
                11)
                        ((tossdic[TT]++))
                        ;;
                12)
                        ((tossdic[H]++))
                        ;;
                13)
                        ((tossdic[T]++))
                        ;;
        esac
done
i=0
for value in `echo ${tossdic[@]}`
do
        counttossvalue[$i]=$value
        ((i++))
done
i=0
for  key in `echo ${!tossdic[@]}`
do
        counttosskey[$i]=$key
        ((i++))
done
comparemax=0
comparemaxindex=0

for  (( index=0 ; index<14 ; index++ ))
do
        if [ ${counttossvalue[$index]} -gt $comparemax ]
        then
                comparemax=${counttossvalue[index]}
                comparemaxindex=$index
        fi
done
echo "H has count%" `awk "BEGIN{print ${tossdic[H]}/40*100}"` "%"
echo "T has count%" `awk "BEGIN{print ${tossdic[T]}/40*100}"` "%"
echo "H H has count%" `awk "BEGIN{print ${tossdic[HH]}/40*100}"` "%"
echo "H T has count%" `awk "BEGIN{print ${tossdic[HT]}/40*100}"` "%"
echo "T H has count%" `awk "BEGIN{print ${tossdic[TH]}/40*100}"` "%"
echo "T T has count%" `awk "BEGIN{print ${tossdic[TT]}/40*100}"` "%"
echo "H H H has count% " `awk "BEGIN{print ${tossdic[HHH]}/40*100}"` "%"
echo "H H T has count%" `awk "BEGIN{print ${tossdic[HHT]}/40*100}"` "%"
echo "H T H has count%" `awk "BEGIN{print ${tossdic[HTH]}/40*100}"` "%"
echo "T H H has count%" `awk "BEGIN{print ${tossdic[THH]}/40*100}"` "%"
echo "H T T has count%" `awk "BEGIN{print ${tossdic[HTT]}/40*100}"` "%"
echo "T H T has count%" `awk "BEGIN{print ${tossdic[THT]}/40*100}"` "%"
echo "T T H has count%" `awk "BEGIN{print ${tossdic[TTH]}/40*100}"` "%"
echo "T T T has count%" `awk "BEGIN{print ${tossdic[TTT]}/40*100}"` "%"
echo "The winner casehere is ${counttosskey[$comparemaxindex]} and it count% is" `awk "BEGIN{print ${counttossvalue[$comparemaxindex]}*100/40}"` "%"
