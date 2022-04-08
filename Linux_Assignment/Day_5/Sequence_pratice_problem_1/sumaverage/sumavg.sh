#!/bin/bash

echo "enter first number: "
read a
echo "enter second number: "
read b
echo "enter third number: "
read c
echo "enter fourth number: "
read d
echo "enter fifth number: "
read e

sum=$(($a + $b + $c + $d + $e ))
avg=$(($sum / 5 | bc -l)) 

echo "The sum of these numbers is: " $sum
echo "The average of these numbers is: " $avg


