#!/bin/bash
ispresent=1
hourlywage=20
salary=0
wdays=0
echo "Welcome to Wage Computation Program on Master"
for(( days=1;days<=20;days++ ))
do
	status=$(($RANDOM%2))
	case $status in
	1)	whours=$((RANDOM%10))
		salary=$(( $salary + $(( $whours * $hourlywage )) ))
		if [ $whours -lt 9 ]
		then
			echo "(Part-Time) : Present : $salary = $whours x $hourlywage"
		else
			echo "(Full-Time) : Present : $salary = $whours x $hourlywage"
		fi
		wdays=$(($wdays + 1))
	;;
	0)	echo "Absent."
	;;
	esac
done
echo "Final Salary :  $salary  ($wdays days)" 
