#!/usr/bin/env rc

fn die{
	test $save && rm -f $save
	exit 1
}

fn menu{
	dmenu -l 10 -nf black -nb white -sb '#ffb405' -fn $FONT
}

fn sigint{die}; fn sighup{die}; fn sigalrm{die}; fn sigfpe{die}; fn sigkill {die}; fn sigterm{die}

mult=''
fil=''

while(~ $1 -*){
	switch($1){
	case '-m'
		mult='1'
	case '-M'
		mult=''
	case '-g'
		fil=''
	case '-f'
		if(test $#* -lt 2){
			echo 'the flag -f needs a file argument, exiting.' >[1=2]
			exit 1
		}
		fil=$2
		shift
	}
	shift
}

{
	if(test $fil)
		awk -F: 'length($2)>0 { split($2, a, "; "); for(i in a) print($1, "<"a[i]">") }' <$fil
	if not
		gpg2 --yes -kq --with-colons |
		awk -F: '/^uid/ { print($10) }'
} |
sort |
{
	if(test $mult){
		save=`{mktemp '/tmp/cts.XXXXXX'}
		echo 'end' >$save
		cat >>$save
		i=`{menu <$save}
		while(! ~ $i 'end' && ! ~ $i ''){
			echo $i
			i=`{menu <$save}
		}
		rm -f $save
	}
	if not
		menu
} |
sed 's/^[^<]\+ <\([^>]\+\)>/\1/'
