#!/usr/bin/env bash

if [ $# -le 1 -o $# -ge 4 ]; then
	echo "chan [FILES] FROM TO" >/dev/stderr
	exit 1
fi

if [ $# -eq 2 ]; then ptrn=""; from="$1"; to="$2";
else ptrn="$1"; from="$2"; to="$3"; fi

for f in `ls | grep "$ptrn"`; do
	echo -e "H\n,s/$from/$to/g\n,wq" | ed "$f"
done

exit 0
