EmpRatePerHour=20
while [[ (($TotalWorkingHours -lt 100 )) || (($TotalWorkingDay -lt 20 )) ]]
do
	check=$((RANDOM%3))
	
	case $check in
		1)
			TotalHours=8
			;;
		2)
			TotalHours=4
			;;
		*)
			TotalHours=0
			;;
	esac

	TotalWorkingHours=$(($TotalWorkingHours+$TotalHours))
	((TotalWorkingDay++))
done

sal=$(($EmpRatePerHour*$TotalWorkingHours))
echo "Monthly wage of employee is "$sal
