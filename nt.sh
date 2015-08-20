#!/bin/bash

searchdir=${1:-`pwd`}

for i in `find "$searchdir" -type l -print`; do

	j=`basename "$i"`
	k=`echo "$i" | sed "s/$j$//"`

	cd "$k"

	l=`ls -l "$j" | awk '{ print $11 }'`

	if [ ! -e "$l" ]; then
		echo "$i"
	fi

	cd "$searchdir"
done
