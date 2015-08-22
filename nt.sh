#!/usr/bin/env bash

if [ -n "$1" ]; then
	cd "$1"
fi

searchdir=`pwd`

for i in `find . -type l -print`; do
	j=`basename "$i"`
	k=`echo "$i" | sed "s/$j$//"`

	cd "$k"

	l=`ls -l "$j" | awk '{ print $11 }'`

	if [ ! -e "$l" ]; then
		echo "$i"
	fi

	cd "$searchdir"
done
