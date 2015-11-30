Purpose of this
===============

These are just some little scripts that do not deserve becoming
own programs. In a very distant future, it is possible that I will
write some proper documentation for them (man-pages) and
in installation script (a makefile).

Until then, this is the most accurate description of what these
shell scripts do.

Some of these are very specialised, some quite general.
The wmutils/ directory contains some wmutils specific scripts.

Descriptions
============

9 PROGRAM [ARGS]: script that launches a program from /usr/local/plan9/bin
bns NEW: adjusts the screen brightness
bomb: fork bomb
bu: _very_ simple backup utility
	depends on cgdc
empty: removes every file from ~/trash
ic REGEX: returns 0 if the input contains REGEX, and 1 if not
lg [FILES]: line game, every none whitespace is translated to '_'.
	Guess the programming language.
musconv: rename and restructure files to a certain standard,
	convert music files to flac, delete the others.
	requires ffmpeg und fds
opus2flac FILE: script that converts an opus file to a flac file.
	requires opusdec and flac.
pfm: displays the activity in the current git repo.
	requires histo
pprz: make a screenshot around every half an hour, silently
	requires scrot.
play FILES: plays a flac file in the background.
	requires ogg123
rip NAME DIR: rips a cd into a flac file.
	requires cdparanoia and flac
r FILES: moves file(s) to ~/trash
tb: launches the Tor browser

barign: wait until X has fully started and then ignore the bar.
barinfo: print system information so that it can be processed by lemonbar
beau [w|h] [WIN]: resizes a window conforming to the golden ratio
big [WIN]: resize a window so that it leaves a gap of the correct width at the side
cnt [WIN]: center the current window, needs wmutils
wsch [SIZE] [WIN]: change window size without moving the middle of the window

Requirements
============

Generally, some base utilities (coreutils, sbase+ubase) are required.
Many of these scripts are written for rc, the plan 9 shell.
It is needed as well.

Installation
============

Just copy these into the corresponding directories.
