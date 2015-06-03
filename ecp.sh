#!/bin/bash
if [ $# -le 1 -o $# -ge 3 ]; then
	echo "ecp FROM TO"
fi

for i in `ls | grep "$1"`; do
	j=`echo "$i" | sed "s/$1/$2/"`

	if [ -e "$j" ]; then echo "error: not replacing $j with $i, exiting" >/dev/stderr; exit 2; fi
	cp $i $j
done
