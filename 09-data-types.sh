#!/bin/bash

var1=10
var2=20

echo "$var1+$var2"
echo "$((var1+var2))"

declare -i COUNT=5 # Iam declaring as integer
COUNT=COUNT+1

echo "Count is: $COUNT"

FRUITS=("apple" "banana" "mango")
echo "All fruits: ${FRUITS[@]}"

