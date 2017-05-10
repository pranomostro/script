#!/usr/bin/env rc

ifs='
'

if(test -z $"*){
	echo 'r files' >[1=2]
	exit 1
}

for(i){
	if(test -d $i)
		/usr/bin/rm -rf $HOME/trash/$i
	mv -f $i $HOME/trash
}
