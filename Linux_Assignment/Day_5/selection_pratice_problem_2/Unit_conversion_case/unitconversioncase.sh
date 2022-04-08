#!/bin/bash
echo "1. feet to inch"
echo "2. feet to meter"
echo "3. inch to feet"
echo "4. meter to feet"
read n
case "$n" in
1)
	echo "enter the value in feet : "
	read a
	inch=$(awk 'BEGIN {print '$a' * '12'}')
	echo "$a feet= $inch inch"
;;
2)
	echo "enter the value in feet : "
	read a
	inch=$(awk 'BEGIN {print '$a' * '0.3048'}')
	echo "$a feet= $inch meter"
;;
3)	
	echo "enter the value in inch : "
	read a
	inch=$(awk 'BEGIN {print '$a' * '0.0833333'}')
	echo "$a inch= $inch feet"
;;
4)
	echo "enter the value in meter : "
	read a
	inch=$(awk 'BEGIN {print '$a' * '3.28084'}')
	echo "$a meter= $inch feet"
;;
*)	echo "invalid case"
;;
esac
