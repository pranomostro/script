#!/usr/bin/env sh

IFS='
'

for i in "$@"; do
	if [ -d $i ]; then
		/usr/bin/rm -rf ~/trash/"$i"
	fi
	mv -f "$i" ~/trash
done
