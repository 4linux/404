#!/usr/bin/env bash

count=0

until [[ -f stop.txt ]]
do
	count=$[$count +1]
	echo $count >> contador.txt
	sleep 1
done

