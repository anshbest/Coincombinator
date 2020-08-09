#!/bin/bash

Ischoice=$((RANDOM%2))
if [ $Ischoice -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi

