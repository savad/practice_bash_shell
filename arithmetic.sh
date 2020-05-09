#!/bin/bash

a=4
b=5

# arithmetic expansion
echo $[$a+$b]
echo $((a+b))
echo $[a+b]
echo $((a+b))

expr 2 + 2
expr 6 \* 6
expr 6 / 3

let a=2+2
#let b=4*(a-1)
#let c=($b**3)/2
#let c++
#let c--
#echo $c

# decimal
echo '8.5/2.3' | bc
echo 'scale=2;8.5/2.3' | bc
echo 'scale=30;8.5/2.3' | bc
echo $(echo 'scale=50;sqrt(50)' | bc)
