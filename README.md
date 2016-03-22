Small scripts
=============

These are just some little scripts that do not deserve becoming
own programs. In a very distant future, it is possible that I will
write some proper documentation for them (man-pages) and
in installation script (a makefile).

Until then, this is the most accurate description of what these
shell scripts do.

Some of these are very specialised, some quite general.
The wmutils/ directory contains some wmutils specific scripts.

Descriptions
------------

* 4img: script that downloads a bunch of images currently on /b/, requires curl
* 9 PROGRAM [ARGS]: script that launches a program from /usr/local/plan9/bin
* bns NEW: adjusts the screen brightness
* bomb: fork bomb
* bu: _very_ simple backup utility, just copy+archive+compress file changed since
	the last backup. Make a full backup every month.
	depends on cgdc
* chv [+-]NUM: increase/decrease the current audio output volume for NUM percent
* ell [LEN]: print the first NUM chars of every input line, substitute the rest
	with '…'.
	Needs the '{}' regex notation, tested with sbase sed and GNU sed 4.2.2
* empty: removes every file from ~/trash
* fds: print the flattened directory structure
* field NUM: print the NUM'th field of every input line.
* gm ACTION: Perform ACTION in every git repo in the file sources in /usr/local/src.
* lg [FILES]: line game, every none whitespace is translated to '_'.
	Guess the programming language.
* musconv: rename and restructure files to a certain standard,
	convert music files to flac, delete the others.
	requires ffmpeg und fds
* must: compile a program with musl and tcc, not working yet
	requires tcc and musl
* opus2flac FILE: script that converts an opus file to a flac file.
	requires opusdec and flac.
* pfm: displays the activity in the current git repo.
	requires [stag](https://www.github.com/seenaburns/stag)
* pprz: make a screenshot around every half an hour, silently
	requires scrot.
* play FILES: plays a flac file in the background.
	requires ogg123
* rip NAME DIR: rips a cd into a flac file.
	requires cdparanoia and flac
* sal: sort the input lines after their length
* sts [ARGS]: starts an instance of the sam text editor in the background
* r FILES: moves file(s) to ~/trash
* tb: launches the Tor browser

wmutils scripts:

* barign: wait until X has fully started and then ignore the bar.
* barinfo: print system information so that it can be processed by lemonbar
	is system specific with the brightness, depends on ell
* beau [w|h] [WIN]: resizes a window conforming to the golden ratio
* big [WIN]: resize a window so that it leaves a gap of the correct width at the side
* cnt [WIN]: center the current window, needs wmutils
* wsch [SIZE] [WIN]: change window size without moving the middle of the window

Requirements
------------

Generally, some base utilities (coreutils, sbase+ubase) are required.
Many of these scripts are written in the rc scripting language, the plan 9 shell.
It is needed as well.
The wmutils scripts need wmutils/core installed, barign needs wmutils/opt (for wname).

Installation
------------

Just copy these into your path.

License
=======

./COPYING
