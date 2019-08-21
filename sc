#!/usr/bin/env rc

printf 'pause 1\npause 0' |
dmenu -l 10 -nf black -nb white -sb '#ffb405' -fn $FONT |
nc -N -U /tmp/sad-sock
