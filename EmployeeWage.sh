EmpRatePerHour=20
DaysPerMonth=20
for (( i=1;i<=DaysPerMonth;i++ ))
do
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
SalaryPerDay=$(($EmpRatePerHour * $TotalHour))
MonthlySalary=$(($MonthlySalary+$SalaryPerDay))
done
echo "Monthly salary of employee is : $MonthlySalary"
