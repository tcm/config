#!/bin/bash

for i in $(seq 1 2 50)
do
	echo $i
done

echo "---"
LIST="100 101 102"
for i in $LIST
do
	echo $i
done
