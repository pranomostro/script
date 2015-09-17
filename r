#!/usr/bin/env sh

IFS='
'

for i in "$@"; do
	mv -rf "$i" ~/trash
done
