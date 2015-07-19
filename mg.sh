#!/bin/bash
if [ $# -eq 1 ]; then
	a=($(ls | grep "$1"))
else
	a=($(ls))
fi
b=`echo ${a[*]} | wc -w`
c=($(gen $b))
b=`expr $b - 1`

for d in `seq 0 $b`;do
	if [ -e "${c[$d]}" ]; then
		echo "error: not replacing ${c[$d]} with ${a[$d]}" >/dev/stderr;
		exit 1;
	fi

	mv "${a[$d]}" "${c[$d]}"
done
