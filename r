#!/usr/bin/env rc

ifs='
'

if(test -z $"*){
	echo 'r FILES' >[1=2]
	exit 1
}

for(i){
	if(test -d $i)
		/usr/bin/rm -rf /home/$USER/trash/$i
	mv -f $i /home/$USER/trash
}
