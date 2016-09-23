#!/usr/bin/env rc

gpg -k --with-colons |
grep '^uid' |
awk -F: '{ print($10) }' |
sort |
dmenu -l 10 -nf black -nb white -sb '#ffb405' -fn 'envypn-15:pixelsize=15:antialias=false:autohint=false' |
sed 's/^[^<]\+ <\([^>]\+\)>/\1/'
