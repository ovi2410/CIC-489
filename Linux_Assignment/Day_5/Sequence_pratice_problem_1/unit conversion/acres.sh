#! /bin/bash
echo "read length of rectangle: "
read l
echo "read breadth of rectangle: "
read b
a=$(($l * $b))
echo "area of plot in feet $a"
metercon=0.092903
meter=$(awk 'BEGIN {print '$a' * '$metercon' * '25'}')
echo "area of 25 plots in meters $meter"
sqmetertoacre=0.000247105
acre=$(awk 'BEGIN {print '$meter' * '$sqmetertoacre'}')
echo "in acres $acre"
