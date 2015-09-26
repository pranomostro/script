#!/usr/bin/env sh

IFS='
'

for i in "$@"; do
	mv -f "$i" ~/trash
done
