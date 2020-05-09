#!/bin/bash

function rich_echo {
	if [ $2 -eq 0 ]; then
		echo "$1 = true"
	else
		echo "$1 = false"
	fi
}

a=1
b=2
[ $a -lt $b ]; rich_echo "$a < $b" $?
[ $a -gt $b ]; rich_echo "$a > $b" $?
[ $a -eq $b ]; rich_echo "$a == $b" $?
[ $a -ne $b ]; rich_echo "$a != $b" $?
[ $a -le $b ]; rich_echo "$a <= $b" $?
[ $a -ge $b ]; rich_echo "$a >= $b" $?

c="GNU"
d="UNIX"

[ $c < $d ]; rich_echo "$c < $d" $?
[ $c > $d ]; rich_echo "$c > $d" $?
[ $c = $d ]; rich_echo "$c = $d" $?
[ $c != $d ]; rich_echo "$c != $d" $?

# check empty val, unset val
g=
[ -z $g ]; rich_echo "$g is empty " $?

d="/home/$(whoami)/Documents"
[ ! -d $d ]; rich_echo "$d is directory" $?















