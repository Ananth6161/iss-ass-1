#! /usr/bin/bash
echo -n  > q1_output.txt
while read line
do
    len=${#line}
    if [ $len -lt 5 ]
    then
      echo  $line >> q1_output.txt
    else
      echo -n ${line:0:4} >> q1_output.txt
    for ((i=4;i<$len-1;i++))
    do
    echo -n "#" >> q1_output.txt
    done
    echo "#" >> q1_output.txt
    fi

done < "${1:-/dev/stdin}"