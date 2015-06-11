#!/bin/bash

a=`pwd`

for i in `find "$1" -type l -print`; do

	j=`basename "$i"`
	k=`echo "$i" | sed "s/$j$//"`

	cd "$k"

	l=`ls -l "$j" | awk '{ print $11 }'`

	if [ ! -e "$l" ]; then
		echo "$i"
	fi

	cd "$a"
done
