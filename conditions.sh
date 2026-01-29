#!/bin/bash

NUMBER=$1

if [ "$NUMBER" -gt 20 ]; then
echo " Given number: $NUMBER is greater than 20"

elif [ "$NUMBER" -lt 20 ] ; then
echo "given number : $NUMBER is less than 20"

elif [ "$NUMBER" -eq 20 ] ; then
echo " Given number: $NUMBER is equal to 20"
else
echo " Please provide a valid number"

fi