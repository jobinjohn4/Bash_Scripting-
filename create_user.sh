#!/bin/bash

<< Description
Creating user based on the input from the user

Description

read -p "Enter the name of the user:" username

sudo useradd $username

echo "New user created is $username"
