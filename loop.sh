#!/bin/bash

dir=$(dirname "${BASH_SOURCE[0]}")
files=$(find -f $dir)
for f in $files; do
	echo -n $f; echo -n $f | wc -c
done

arr=($files)
len=${#arr[@]}

echo ${arr[@]}

# for loop
for (( i=0; i<$len; i++)); do
	echo "For at $i ${arr[$i]}"
done

# while loop
idx=0
while [ $idx -lt $len ]; do
	let idx+=1
	echo "While at $idx ${arr[$idx]}"
done

idx=$len
until [ $idx -lt 1 ]; do
	let idx-=1
	echo "Until at $idx ${arr[$idx]}"
done
