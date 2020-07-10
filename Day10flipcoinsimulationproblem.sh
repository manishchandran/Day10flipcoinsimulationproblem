#!/bin/bash  
#uc2
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
if [[ ($Heads -eq 10) || ($Tails -eq 10) ]]
then 
	break
else
	continue
fi
done
echo "No of times heads won:"$Heads 
echo "No of times tails won:"$Tails


