#!/bin/bash -x

echo "read the length of rectangular plot feet: "
read l
echo "read the bredth of rectangular plot feet: "
read b
a=$(($l * $b))
echo "area of plot in feet $a"
metercon=0.092903
meter=$(awk 'BEGIN {print '$a' * '$metercon'}')
echo "area in meters $meter"
