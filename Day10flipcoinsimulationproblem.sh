#!/bin/bash  
#uc1

flip=$((RANDOM%2))
if [ $flip -eq 1 ]
then
	echo "HEADS IS THE WINNER"
else
	echo "TAILS IS THE WINNER"
fi



