#!/usr/bin/env bash

set -eruo pipefail

case $# in
1|2)	echo 'chan FROM TO FILES' 1>&2; exit 1
*)	from="$1"; to="$2"; shift 2
esac

for file in $@; do
	echo -e 'H\n ,s/'"$from"'/'"$to"'/g\n wq' | ed "$file"
done

exit 0
