#!/bin/bash
hourlywage=20
salary=0
twhours=0
echo "Welcome to Wage Computation Program on Master"
while [ $twhours -le 100 ]
do
	status=$(($RANDOM%2))
	case $status in
	1)	whours=$((RANDOM%10))
		if [ $(($whours+$twhours)) -le 100 ]
		then
		salary=$(( $salary + $(( $whours * $hourlywage )) ))
			if [ $whours -lt 9 ]
			then
				echo "(Part-Time) : Present : $salary = $whours x $hourlywage"
			else
				echo "(Full-Time) : Present : $salary = $whours x $hourlywage"
			fi
			twhours=$(($twhours + $whours))
		else
			break
		fi
	;;
	0)	echo "Absent."
	;;
	esac
done
echo "Final Salary :  $salary : $twhours hours" 
