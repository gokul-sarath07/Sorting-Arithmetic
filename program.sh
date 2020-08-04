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
	ct=$(( $ct + 1 ))
done
echo "Array values: " ${array[@]}
des=()
while [ ${#array[@]} -gt 1 ]
do
	last=${array[0]}
	for i in ${array[@]}
	do
		if [[ $i -gt $last ]]
		then
			last="$i"
		fi
	done
	des+=($last)
	for i in ${!array[@]}
	do
		if [[ ${array[i]} -eq $last ]]
		then
			index=$i
			break
		fi
	done
	unset array[$index]
done
des=( "${des[@]}" "${array[@]}" )
echo "Descending Order: " ${des[@]}
