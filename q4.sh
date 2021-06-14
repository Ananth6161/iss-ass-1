#! /usr/bin/bash
while read line
do
  sed  -i "s/\s\b$line\b\s/ /g" "$1"
  sed  -i "s/\b$line\b\s//g" "$1"
  sed  -i "s/\s\b$line\b\././g" "$1"
done < stopwords.txt

while read line
do
n=$(echo $line| grep -wo "$2"| wc -l)
m=$(echo $line| wc -w)
echo -ne "$line, 0"
echo $n / $m |bc -l
done < $1