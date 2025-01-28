#!/bin/bash

function directory () {
	mkdir demo
}

if ! directory; then

	echo "file already exists "
	exit 1
fi	

echo "not projected"
