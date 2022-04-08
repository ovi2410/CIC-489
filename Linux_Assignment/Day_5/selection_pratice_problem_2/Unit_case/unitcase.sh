#!/bin/bash
echo "enter the single digit number: "
read n
case "$n" in
1) echo "unit"
;;
10) echo "ten"
;;
100) echo "hundred"
;;
1000) echo "thousand"
;;
10000) echo "ten thousand"
;;
100000) echo "hundred thousand"
;;
1000000) echo "million"
;;
10000000) echo "ten million"
;;
100000000) echo "hundred million"
;;
1000000000) echo "billion"
;;
*) echo "greater than billion"
;;
esac
