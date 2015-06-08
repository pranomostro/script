#!/bin/bash

for i in `find "$1" -type l -print`
	j=`basename "$i"`
	k=`sed "s/${j}$//"`
	cd "$k"
	l=`ls -l $i | awk '{ print $11 }'`
	if test ! -e "$l"
		echo "$i"
	end
end
