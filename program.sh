#!/bin/bash
echo "Sorting Arithmetic Computation"
read -p "Enter three inputs: " a b c
declare -A dict
dict[UC_2]=$(( $a + $b * $c ))
dict[UC_3]=$(( $a * $b + $c ))
dict[UC_4]=$(( $c + $a / $b ))
dict[UC_5]=$(( $a % $b + $c ))
echo "All the values of dictionary: " ${dict[@]}
echo "All the keys dictionary: " ${!dict[@]}
ct=0
for value in ${dict[@]}
do
	array[$ct]=$value
	array2[$ct]=$value
	ct=$(( $ct + 1 ))
done
echo "Array values: " ${array[@]}

des=()
while [ ${#array2[@]} -gt 1 ]
do
    last=${array2[0]}
    for i in ${array2[@]}
    do
        if [[ $i -gt $last ]]
        then
            last="$i"
        fi
    done
    des+=($last)
    for i in ${!array2[@]}
    do
        if [[ ${array2[i]} -eq $last ]]
        then
            index=$i
            break
        fi
    done
    unset array2[$index]
done
des=( "${des[@]}" "${array2[@]}" )
echo "Descending Order: " ${des[@]}

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
