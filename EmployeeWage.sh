check=$(($RANDOM%2))
if [ $check -eq 1 ]
	then 
		WagePerHour=20
		EmpHour=8
		salary=$(($WagePerHour*$EmpHour))
		
	else
		salary=0
	fi
	echo "Daily slary of Employee is : $salary"
