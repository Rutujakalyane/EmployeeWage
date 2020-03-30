function getWorkingHours() {
	case $1 in 
	1)
		echo 8
		;;
	2)
		echo 4
		;;
	*)
		echo 8
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
	MonthlyWage=$(($Salary+$MonthlyWage)) 
done
echo $MonthlyWage
echo ${Salary[@]}
