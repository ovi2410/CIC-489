#! /bin/bash -x
declare -A birthDate
declare -a monthArray
NUMBER_OF_PEOPLE=50

#Months between 92 and 93 are total 24 months but since
#total number of identical month is 12
TOTAL_MONTH_IN_YEAR=12

numberOfPeopleInSameMonth=0;
monthValue='';

monthArray[0]='Jan'
monthArray[1]='Feb'
monthArray[2]='March'
monthArray[3]='April'
monthArray[4]='May'
monthArray[5]='June'
monthArray[6]='July'
monthArray[7]='August'
monthArray[8]='September'
monthArray[9]='October'
monthArray[10]='November'
monthArray[11]='December'

while [ $NUMBER_OF_PEOPLE -gt 0 ]
do
        randomMonth=$((RANDOM%$TOTAL_MONTH_IN_YEAR))
        echo $randomMonth

        monthValue=${monthArray[$randomMonth]}
        numberOfPeopleInSameMonth=`echo ${birthDate[$monthValue]} | awk -F: '{ print $2 }'`
        numberOfPeopleInSameMonth=`echo $numberOfPeopleInSameMonth | awk -F} '{ print $1 }'`
        echo $numberOfPeopleInSameMonth
        numberOfPeopleInSameMonth=$(($numberOfPeopleInSameMonth+1))
        echo '{'$monthValue ':' $numberOfPeopleInSameMonth'}'
        birthDate[$monthValue]=`echo '{'$monthValue ':' $numberOfPeopleInSameMonth'}'`

((NUMBER_OF_PEOPLE--))
done

echo ${birthDate[@]}
#echo ${!birthDate[@]}
#echo ${#birthDate[@]}
