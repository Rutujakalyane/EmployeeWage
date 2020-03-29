EmpRatePerHour=20
check=$((RANDOM%3))
if [ $check -eq 1 ]
then 
	TotalHour=8
else [ $check -eq 2 ]
	TotalHour=4
fi
sal=$(($EmpRatePerHour*$TotalHour))
echo "Salary of employee is : $sal"
