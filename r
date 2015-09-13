#!/usr/bin/env bash

IFS='
'

for i in "$@"; do
	mv "$i" ~/trash
done
