#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "what is the first number"
read firstnum

echo "what is the second number"
read secondnum

echo "what is the third number"
read thirdnum

sum=$((firstnum+secondnum+thirdnum))
division=$((firstnum/secondnum/thirdnum))
substraction=$((firstnum-secondnum-thirdnum))
multiplication=$((firstnum*secondnum*thirdnum))
modulas=$((firstnum%secondnum%thirdnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum/$thirdnum}")

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum divided by $secondnum divided by $thirdnum is $division
$firstnum substracted by $secondnum substracted by $thirdnum is $substraction
$firstnum multiplied by $secondnum multiplied by $thirdnum is $multiplication
$firstnum divided by $secondnum divided by $thirdnum gives $division with a remainder of $modulas


  - More precisely, it is $fpdividend
EOF
