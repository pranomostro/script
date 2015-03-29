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
	mv ${a[$d]} ${c[$d]}
done
