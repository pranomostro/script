#!/usr/bin/env sh

IFS='
'

if [ "$#" -le '0' ]; then
	echo 'r FILES' 2>&1
	exit 1
fi

for i in "$@"; do
	if [ -d $i ]; then
		/usr/bin/rm -rf ~/trash/"$i"
	fi
	mv -f "$i" ~/trash
done
