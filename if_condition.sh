#!/bin/bash


function amount () {
if [[ $1 -ge 750 && $1 -le 1000 ]]; then
	echo "the amount is high "
elif [[ $1 -ge 500 && $1 -le 749 ]]; then
	echo "good amount"
else
	echo "amount is low"
fi
}

amount 500
