#!/bin/bash

case $# in
2)	from="$1"; to="$2";;
3)	if [ "$1" != '-t' ]; then
		echo "error: flag $1 not recognized, exiting" 1>&2
		exit 2;
	fi
	trust="1"; from="$2"; to="$3"
	;;
*)	echo "emv [-t] FROM TO" 1>&2
	exit 1
	;;
esac

for i in `ls | grep "$from"`; do
	j=`echo "$i" | sed "s/$from/$to/"`

	if [ -e "$j" -a "$trust" != "1" ]; then
		echo "error: not replacing $j with $i, exiting" >/dev/stderr; exit 3;
	fi
	mv "$i" "$j"
done
