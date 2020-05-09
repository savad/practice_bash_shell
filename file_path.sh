#!/bin/bash

cur_dir=$(cd $( dirname ${BASH_SOURCE[0]}) >/dev/null 2>&1 && pwd ); echo "current script dir "$cur_dir

source="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
	target=$(readlink $source)
	if [[ $target == /* ]]; then
		echo "source $source is an absolute symlink to $target"
		source=$target
	else
		dir=$(dirname $source)
		echo "source $source is a relative symlink to $target (relative to $dir)"
		source=$dir/$target #if $source was a relative symlink, we need to resolve it to the path where the symlink file was located
	fi
done
echo "SOURCE is $source"
rdir=$(dirname $source)
dir=$(cd -P $(dirname $source) > /dev/null 2>&1 && pwd)
if [ $dir != $rdir ]; then
	echo "DIR $rdir resolves to $dir"
fi
echo "DIR is $dir"
