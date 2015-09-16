#!/usr/bin/env sh

IFS='
'

for i in "$@"; do
	mv "$i" ~/trash
done
