#!/bin/bash -x
echo "Sorting Arithmetic Computation"
read -p "Enter three inputs: " a b c
echo $(( $a + $b * $c ))
echo $(( $a * $b + $c ))
echo $(( $c + $a / $b ))
echo $(( $a % $b + $c ))
