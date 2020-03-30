function getWorkingHours() {
	case $1 in 
	1)
		echo 8
		;;
	2)
		echo 4
		;;
	*)
		echo 0
		;;	
	esac	
}

EmpRatePerHour=20
while [[ $WorkingHours -lt 100 && $WorkingDays -lt 20 ]]
do
	check=$(($RANDOM%3))
	Hours=$( getWorkingHours $check )
	Salary=$(($Hours * $EmpRatePerHour))
	WorkingHours=$(($WorkingHours+$Hours))
	((WorkingDays++))
	Salary[WorkingDays]=$Salary
	MonthlySalary=$(($Salary+$MonthlySalary)) 
done
echo "Monthly salary : $MonthlyWage"
echo "Day : ${!Salary[@]}"
echo "Salary : ${Salary[@]}"

