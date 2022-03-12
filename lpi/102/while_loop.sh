#!/bin/bash

let counter=1
while [ $counter -le 10 ] 
do

	echo $counter
        let counter=$counter+1
done
