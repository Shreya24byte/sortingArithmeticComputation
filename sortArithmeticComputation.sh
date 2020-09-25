#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Program";

#User input
read -p "Enter the first number:" num1;
read -p "Enter the second number:" num2;
read -p "Enter the third number:" num3;

#Computations
computation1=$(($num1 + $num2 * $num3));
echo "a+b*c =" $computation1;

computation2=$(($num1 * $num2 + $num3));
echo "a*b+c =" $computation2;

computation3=$(($num3 + $num1 / $num2));
echo "c+a/b =" $computation3;

computation4=$(($num1 % $num2 + $num3));
echo "a%b+c =" $computation4;

#Dictionary to store results
declare -A result
result[computation1]=$computation1;
result[computation2]=$computation2;
result[computation3]=$computation3;
result[computation4]=$computation4;
echo "Computation results dictionary:" ${result[@]};

#Array to store results
declare -a array
for computation in ${result[@]};
do
array+=( $computation );
done
echo "Computation results array:" ${array[@]};
