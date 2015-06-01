#!/bin/bash

if [ $# -le 1 -o $# -ge 3 ]; then
	echo "ecp FROM TO"
fi

a="$1"; b="$2"

for i in `ls | grep "$a"`; do
	j=`echo "$i" | sed "s/$a/$b/"`

	if [ -e $j ]; then echo "error: not replacing $f with $n, exiting" >/dev/stderr; exit 2; fi
	cp $i $j
done
