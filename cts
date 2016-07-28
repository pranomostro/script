#!/usr/bin/env rc

cat $HOME/etc/cntct | awk -F: '{ print($2) }' | tr ';' '\n' | tr -d ' ' | sort | dmenu -l 10 -nf black -nb white -sb '#ffb405' -fn 'envypn-15:pixelsize=15:antialias=false:autohint=false'
