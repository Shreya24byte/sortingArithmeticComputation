#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Program";

#User input
read -p "Enter the first number:" num1;
read -p "Enter the second number:" num2;
read -p "Enter the third number:" num3;

#Computation
computation1=$(($num1 + $num2 * $num3));
echo "a+b*c =" $computation1;
