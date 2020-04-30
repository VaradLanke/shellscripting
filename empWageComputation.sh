#!/bin/bash
ispresent=1
dailywage=100
echo "Welcome to Wage Computation Program on Master"
for(( count=0;count<=10;count++ ))
do
	status=$(($RANDOM%2))
	if [ $status -eq $ispresent ]
	then
		echo "Present"
	else
		echo "Absent"
	fi
done
