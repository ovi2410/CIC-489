#!/bin/bash -x

echo "enter the year u want to check :"
read year
a='expr $year % 400'
b='expr $year % 4'
c='expr $year % 100'
zero=0
if (($b==$zero))
then 
	if (($a==$zero))
	then
		if (($c==$zero))
		then
		echo "$year is leap year "
		fi
	fi
else
	echo "$year is not a leap year "
fi
