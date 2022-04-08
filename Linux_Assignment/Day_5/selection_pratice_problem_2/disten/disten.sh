#!/bin/bash -x
echo "enter the single digit no. "
read n
if [ $n -eq 1 ]
then
	echo "Unit"
elif [ $n -eq 10 ]
then
	echo "Ten"
elif [ $n -eq 100 ]
then
        echo "hundred"
elif [ $n -eq 1000 ]
then
        echo "thousand"
elif [ $n -eq 10000 ]
then
        echo "Ten thousand"
elif [ $n -eq 100000 ]
then
        echo "hundred thousand"
elif [ $n -eq 1000000 ]
then
        echo "million"
elif [ $n -eq 10000000 ]
then
        echo "Ten million"
elif [ $n -eq 100000000 ]
then
        echo "hundred million"
elif [ $n -eq 1000000000 ]
then
	echo "billion"
else
	echo "greater than billion"
fi

