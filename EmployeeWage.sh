checkAttendence=$((RANDOM%2))
if [ $checkAttendence -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi