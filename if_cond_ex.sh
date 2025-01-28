#!/bin/bash


read -p "Enter the number:" number

if [[ $((number % 2)) -eq 0 ]]; then
	echo "This number is Even"
elif [[ $((number % 5)) -eq 0 && $((number % 3)) -eq 0 ]]; then
	echo "This number is divisible by 5 or 3"
else
	echo "This number is Odd"
fi
