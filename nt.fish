#!/usr/bin/fish
for i in (find . -type l -print)
	set e (ll $i | awk '{ print $11 }')
	if test ! -e $e 
		echo $i
	end
end

