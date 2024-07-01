#!/bin/bash
start=$1
end=$2

if [ -z "$start" ] || [ -z "$end" ]; then
echo "USAGE: $0 <start> <end>"
exit 1
fi

file="inputFile"
rm -f $file

for ((i=$start; i<=$end; i++))
do
echo "$i, $(( RANDOM % 100 )) " >>$file
done
