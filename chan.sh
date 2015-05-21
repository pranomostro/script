#!/bin/bash
for f in `ls | grep "$1"`; do
	echo -e "H\n"",s/$2/$3/g\n"",w" | ed "$f"
done

