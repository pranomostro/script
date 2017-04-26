#!/usr/bin/env rc

if(~ $1 '-t'){
	trust='1'
	shift
}

if(~ $#* 0){
	echo 'mg [-t] FILES' >[1=2]
	exit 1
}

nam=`{gen $#*}

for(c in `{seq 1 $#*}){
	if(! ~ $trust '1' && test -e $nam($c)){
		echo 'error: not replacing '$nam($c)', exiting' >[1=2]
		exit 2
	}
	mv $*($c) $nam($c)
}
