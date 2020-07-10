#!/bin/bash  
#uc3
Heads=0
Tails=0
flips=0
while [ $flips ]
do
	randomcheck=$(( RANDOM%2 ))
	if [ $randomcheck -eq 1 ]
	then
		Heads=`expr $Heads + 1`
	else
		Tails=`expr $Tails + 1`
	fi
	flips=`expr $flips + 1`
if [[ ($Heads -eq 21) || ($Tails -eq 21) ]]
then 
	if [ $Heads -eq 21 ]
	then
		echo "Heads won"
		echo "Won by:"$Heads
		break
	else 
		echo "Tails won"
		echo "Won by:"$Tails 
		break
	fi
else
	continue
fi
done

