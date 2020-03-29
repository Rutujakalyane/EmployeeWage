EmpRatePerHour=20
check=$((RANDOM%3))
case $check in
	1)
		TotalHour=8
		;;
	2)
		TotalHour=4
		;;
	*)
		TotalHour=0
		;;
esac
sal=$(($EmpRatePerHour * $TotalHour))
echo "salary of employee is : $sal"
