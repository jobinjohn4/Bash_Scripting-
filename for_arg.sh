#!/bin/bash

for (( num=0; num<=10; num++ )); do

	if [[ $((num%2)) -ne 0 ]]; then
		echo "$num"
	fi
done
