#!/bin/bash
function function1 {
	echo "jump to function1 with param $1"
}

"$@"
