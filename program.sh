#!/bin/bash -x
read -p "Enter three inputs: " a b c
echo $(( $a + $b * $c ))
echo $(( $a * $b + $c ))
