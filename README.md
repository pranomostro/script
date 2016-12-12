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

* 4img [BOARD]: Script that downloads a bunch of images currently on BOARD, requires curl.
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
* findup NAME: Print the full relative path of NAME in the parent directories.
	Return 2 if the file does not exist.
* gm ACTION: Perform ACTION in every git repo in the file sources in /usr/local/src.
* ircjoin SERVER:CHANNEL[:CHANNEL]: Start ii for the servers, join the channels on
	the servers with the nickname pranomostro.
	Requires [ii](http://tools.suckless.org/ii) and take from
	[fields](https://github.com/pranomostro/fields)
* lg [FILES]: Line game, every none whitespace is translated to '_'.
	Guess the programming language.
* musconv: Rename and restructure files to a certain standard,
	convert music files to ogg, delete the others.
	Requires ffmpeg und fds.
* pfm: Displays the activity in the current git repo.
* play FILES: Plays a ogg file in the background.
	Requires ogg123.
* plng: Print the music that is played at the moment. Depends on ell.
* pprz: Make a screenshot around every half an hour, silently.
	Requires xscreenshot.
* r FILES: Move FILES to ~/trash.
* rip NAME DIR: Rips a cd into a ogg file.
	Requires cdparanoia and oggenc.
* sal: Sort the input lines after their length.
* shp: Send an email with the last commit to the suckless hackers mailing list.
	Uses git send-mail.
* sts [ARGS]: Starts an instance of the sam text editor in the background.
* taknot NOTES: add NOTES to the note file for the current month, or create it.
	Makes assumptions about the layout of the filesystem.
* tlc FILE: Show the change of linecount of a file in the current
	git repo over time. Requires tac, git.
* tmpimg [URLS]: view images temporarily, delete them after viewing.
	Needs curl.
* up [FILES]: puts FILES, concatenated, to sprunge.us, otherwise
	uses stdin.

wmutils scripts:

* barign: Wait until X has fully started and then ignore the bar.
	Needs the variable SB (small border) to be set.
* beau [w|h] [WIN]: Resizes a window conforming to the golden ratio.
* big [WIN]: Resize a window so that it leaves a gap of the correct width at the side.
* cnt [WIN]: Center the current window, needs wmutils.
* note: Reads one line from the input, displays it as a note
	in the left lower corner of the screen.
	Depends on dzen2, needs the variable SB (small border) set.
* wrm OUT IN: read messages for ii/ratox to IN and append them to OUT. Does not work atm
	because 9base rc segfaults on sigint.
* wsch [SIZE] [WIN]: Change window size without moving the middle of the window.
* zug: Map/Unmap windows by their names from dmenu.
	Requires dmenu.

ratox scripts:

* burca BACKUPDIR: back up ratox communications in BACKUPDIR, encrypted and signed with
	pgp. Depends on gpg2.
* dwfn: create a directory friends with symlinks to the friend directories named
	after the linked friends name

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
