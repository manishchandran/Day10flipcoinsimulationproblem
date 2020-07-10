#!/bin/bash  
#uc4

Heads=0
Tails=0
flips=0
while [ $flips -le 40 ]
do
        randomcheck=$(( RANDOM%2 ))
        if [ $randomcheck -eq 1 ]
        then
                Heads=`expr $Heads + 1`
        else
                Tails=`expr $Tails + 1`
        fi
        ((flips++))
if [[ ($Heads -eq 21) || ($Tails -eq 21) ]]
then 
        if [ $Heads -eq 21 ]
        then
                echo "Heads won"
                echo "Won by:"$Heads
                break
        elif [ $Tails -eq 21 ]
	then
                echo "Tails won"
                echo "Won by:"$Tails 
                break
	elif [ $Heads -eq $Tails ]
	then
        	echo "It is a tie"
	else
		echo "Not working"
	fi
else
        continue
fi
done
echo $Heads $Tails
