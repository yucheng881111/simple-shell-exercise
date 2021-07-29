#!/bin/bash

declare -A m

while read LINE
do
	line=$LINE
	for k in $line
	do
		if [ "$k" = "" ];
        	then
                	m["$k"]=1
        	else
                	m["$k"]=$((${m["$k"]}+1))
        	fi	
	done

done  < words.txt

for key in ${!m[*]};
do
	echo $key ${m[$key]};
done | sort -r -k2 -n

