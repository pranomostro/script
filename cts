#!/usr/bin/env rc

gpg2 -k --with-colons |
grep '^uid' |
awk -F: '{ print($10) }' |
sort |
dmenu -l 10 -nf black -nb white -sb '#ffb405' -fn 'monospace:size=8' |
sed 's/^[^<]\+ <\([^>]\+\)>/\1/'
