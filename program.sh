#!/bin/bash -x
echo "Sorting Arithmetic Computation"
read -p "Enter three inputs: " a b c
declare -A dict
dict[UC_2]=$(( $a + $b * $c ))
dict[UC_3]=$(( $a * $b + $c ))
dict[UC_4]=$(( $c + $a / $b ))
dict[UC_5]=$(( $a % $b + $c ))
echo "All the values: " ${dict[@]}
echo "All the keys: " ${!dict[@]}
ct=0
for value in ${dict[@]}
do
    array[$ct]=$value
    ct=$(( $ct + 1 ))
done
echo "Array values: " ${array[@]}
