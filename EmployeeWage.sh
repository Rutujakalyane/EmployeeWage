  


NUM_WORKING_DAYS=20
EmpRatePerHour=20
MAX_HR_IN_MONTH=4
function getWorkingHours() {
	case $1 in
		1)
			workHours=8
			;;
		2)
			workHours=4
			;;
		*)
			workHours=0
			;;
	esac
		echo $workHours
}
while [[ (( $totalWorkHours -lt 100 )) || (( $totalWorkingDays -lt 20 )) ]]
 do
	((TotalWorkingDays++))
	check=$(($RANDOM%3))
	workHours="$( getWorkingHours $check  )"
	totalWorkHours=$(($totalWorkHours + $workHours))
done
totalSalary=$(($totalWorkingHours * $EmpRatePerHour))
echo $totalWorkHours $totalSalary
