Small scripts
=============

These are just some little scripts that do not deserve becoming
own programs. In a very distant future, it is possible that I will
write some proper documentation for them (man-pages) and
in installation script (a makefile).

Until then, this is the most accurate description of what these
shell scripts do.

Some of these are very specialised, some quite general.

Descriptions
------------

* 4img: Script that downloads a bunch of images currently on /b/, requires curl.
	The unsafest way of browsing 4chan currently known to humanity.
* 9 PROGRAM [ARGS]: Script that launches a program from /usr/local/plan9/bin.
* bns NEW: Adjusts the screen brightness.
* bomb: Fork bomb.
* bu: _Very_ simple backup utility, just copy+archive+compress the files changed since
	the last backup. Make a full backup every month.
	Depends on [cgdc](https://github.com/pranomostro/cgdc).
* chv [+-]NUM: Increase/decrease the current audio output volume for NUM percent.
* cts: Select a mail address from the available pgp keys, needs dmenu.
* dec: Simple script for decrypting pgp data. Needs gpg2.
* ell [LEN]: Print the first NUM chars of every input line, substitute the rest
	with '...'. Needs the '{}' regex notation, tested with sbase sed and GNU sed 4.2.2.
* empty: Removes every file from ~/trash.
* enc: Simple script for encrypting an e-mail for somebody.
	Needs gpg2 and cts.
* fds: Print the flattened directory structure.
* field NUM: Print the NUM'th field of every input line.
* gm ACTION: Perform ACTION in every git repo in the file sources in /usr/local/src.
* lg [FILES]: Line game, every none whitespace is translated to '_'.
	Guess the programming language.
* musconv: Rename and restructure files to a certain standard,
	convert music files to ogg, delete the others.
	Requires ffmpeg und fds.
* opus2flac FILE: Script that converts an opus file to a flac file.
	Requires opusdec and flac.
* pfm: Displays the activity in the current git repo.
* play FILES: Plays a ogg file in the background.
	Requires ogg123.
* pprz: Make a screenshot around every half an hour, silently.
	Requires xscreenshot.
* r FILES: Move FILES to ~/trash.
* rip NAME DIR: Rips a cd into a ogg file.
	Requires cdparanoia and oggenc.
* sal: Sort the input lines after their length.
* shp: Send an email with the last commit to the suckless hackers mailing list.
	Uses git send-mail.
* sts [ARGS]: Starts an instance of the sam text editor in the background.
* tb: Launches the Tor browser.
* tlc FILE: Show the change of linecount of a file in the current
	git repo over time. Requires tac, git.

wmutils scripts:

* barign: Wait until X has fully started and then ignore the bar.
* barinfo: Print system information so that it can be processed by lemonbar.
	Is system specific with the brightness, depends on ell.
* beau [w|h] [WIN]: Resizes a window conforming to the golden ratio.
* big [WIN]: Resize a window so that it leaves a gap of the correct width at the side.
* cnt [WIN]: Center the current window, needs wmutils.
* wsch [SIZE] [WIN]: Change window size without moving the middle of the window.
* zug: Map/Unmap windows by their names from dmenu.
	Requires dmenu.

Requirements
------------

Generally, some base utilities (coreutils, sbase+ubase) are required.
Many of these scripts are written in the rc scripting language, the plan 9 shell.
It is needed as well.
The wmutils scripts need wmutils/core installed, barign needs wmutils/opt (for wname).

Installation
------------

    make

and

    make uninstall

License
=======

./COPYING
