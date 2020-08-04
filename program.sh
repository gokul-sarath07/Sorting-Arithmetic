#!/bin/bash
echo "Sorting Conflict"
echo "New Heading"
read -p "Enter three inputs: " a b c
declare -A dict
dict[UC_2]=$(( $a + $b * $c ))
dict[UC_3]=$(( $a * $b + $c ))
dict[UC_4]=$(( $c + $a / $b ))
dict[UC_5]=$(( $a * $b - $c ))
echo "All the values of dictionary: " ${dict[@]}
echo "All the keys dictionary: " ${!dict[@]}
ct=0
for value in ${dict[@]}
do
	array[$ct]=$value
	ct=$(( $ct + 1 ))
done
echo "Array values: " ${array[@]}
asc=()
while [ ${#array[@]} -gt 1 ]
do
    first=${array[0]}
    for i in ${array[@]}
    do
        if [[ $i -lt $first ]]
        then
            first="$i"
        fi
    done
    asc+=($first)
    for i in ${!array[@]}
    do
        if [[ ${array[i]} -eq $first ]]
        then
            index=$i
            break
        fi
    done
    unset array[$index]
done
asc=( "${asc[@]}" "${array[@]}" )
echo "Ascending Order: " ${asc[@]}
