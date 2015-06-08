#!/bin/bash

for i in `find "$1" -type l -print`; do

	j=`basename "$i"`
	k=`sed "s/${j}$//"`
	cd "$k"
	l=`ls -l $i | awk '{ print $11 }'`

	if [ ! -e "$l" ]; then
		echo "$i"
	fi
done
