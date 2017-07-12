#!/usr/bin/env rc

ifs='
'

if(test -z $"*){
	echo 'r files' >[1=2]
	exit 1
}

test $TRASHDIR || TRASHDIR=trash/

for(i){
	if(test -d $i)
		/usr/bin/rm -rf $HOME/$TRASHDIR/$i
	mv -f $i $HOME/$TRASHDIR
}
