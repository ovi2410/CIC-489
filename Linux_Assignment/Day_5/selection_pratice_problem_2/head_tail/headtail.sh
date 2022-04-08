#!/bin/bash -x

a=$((RANDOM%10))
echo $a
Q='expr $a % 2'
Q=$?
if [ ${Q} -eq '0' ];
then
	echo "head"
exit1
else
	echo "tail"
fi
