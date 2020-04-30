#!/bin/bash
ispresent=1
hourlywage=20
salary=0
echo "Welcome to Wage Computation Program on Master"
for(( days=1;days<=20;days++ ))
do
	status=$(($RANDOM%2))
	if [ $status -eq $ispresent ]
	then
		whours=$((RANDOM%10))
		salary=$(( $salary + $(( $whours * $hourlywage )) ))
		echo "Present : $salary = $whours x $hourlywage"
	else
		echo "Absent"
	fi
done
echo "Final Salary : " $salary
