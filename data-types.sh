#!/bin/bash
# sum of the two numbers
Num1=100
Num2=200

SUM=$((Num1+Num2)) 
echo "Sum is : $SUM"


#Array
FRUITS=("APPLE" "BANANA" "ORANGE" "GRAPES")

echo "Fruits are : ${FRUITS[@]}" #display all array elements
echo "First Fruit is : ${FRUITS[0]}" #display first element
echo "Second Fruit is : ${FRUITS[1]}" #display second element
echo "Total number of fruits: ${#FRUITS[@]}" #display total number of elements in array