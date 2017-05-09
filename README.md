Small scripts
=============

This repo contains small and short shell scripts for simplifying daily tasks on
the command line, and ranges from long one-liners to compact, but more complex
solutions (all under 50 lines long).

--------- MDOCIFY THIS ----------------------

Descriptions
------------

* 4img [BOARD]: Script that downloads a bunch of images currently on BOARD, requires curl.
	The unsafest way of browsing 4chan currently known to humanity.
* 9 PROGRAM [ARGS]: Script that launches a program from /usr/local/plan9/bin.
* bns NEW: Adjusts the screen brightness.
* bomb: Fork bomb.
* bu: _Very_ simple backup utility, just copy+archive+compress the files changed since
	the last backup. Make a full backup every month.
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
* gitpost: Show an overview for the current git projects in the directory tree
	Requires git
* gm ACTION: Perform ACTION in every git repo in the file sources in /usr/local/src.
* ircjoin SERVER:[PORT]:[CRYPT]:CHANNEL[:CHANNEL]: Start ii for the servers, join
	the channels onthe servers with the nickname pranomostro (and then tail-f's
	the out files on the terminal. Use PORT when given, as well as CRYPT for ii.
	These two options works with the [ii-ssl patch](http://tools.suckless.org/ii/patches/ssl).
	Requires [ii](http://tools.suckless.org/ii)
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

-------------------------------------------

Requirements
------------

Generally, the standard base utilities
([coreutils](https://www.gnu.org/software/coreutils/coreutils.html)
[sbase](http://git.suckless.org/sbase)
and [ubase](http://git.suckless.org/ubase)) are required.
Nearly all of these scripts are written in the rc
shell scripting language, the plan 9 shell, which is
available in [9base](http://git.suckless.org/9base),
[plan9port](https://swtch.com/plan9port/) or [an independent
reimplementation](https://github.com/rakitzis/rc) (although some scripts
might not work with that one since it has some differences from the
original plan9 version, which I prefer).
* [amixer](https://linux.die.net/man/1/amixer) is needed for chv
* [awk](https://www.gnu.org/software/gawk/) is required for cgdc, chv, cts, field. ircjoin, note, pfm, plng, sal, tlc and zug.
* [bc](https://www.gnu.org/software/bc/) is required for beau, big, chv, cnt, note, pprz and wsch.
* [bzip2](http://bzip.org/) is needed for pprz.
* [cdparanoia](https://xiph.org/paranoia/) is required for rip.
* [curl](https://curl.haxx.se/) is required by 4img, tmping and up.
* [dmenu](http://git.suckless.org/dmenu) is needed for cts and zug.
* [dzen2](https://github.com/robm/dzen) is needed for note.
* [ffmpeg](https://ffmpeg.org/) is needed for musconv.
* [gen](https://github.com/pranomostro/gen) is required for mg.
* [git](https://git-scm.com/) is required for gitpost, pfm, shp taknot and tlc.
* [gpg2](https://gnupg.org/) is needed by burca, cts, dec and enc.
* [gzip](http://www.gzip.org/) is needed for bu.
* [ii](http://git.suckless.org/ii) with the [ssl patch](http://tools.suckless.org/ii/patches/ssl) is needed by ircjoin.
* [meh](https://github.com/jhawthorn/meh) is required for tmpimg.
* [nc](http://nc110.sourceforge.net/) is needed for plng.
* [oggenc](https://xiph.org/downloads/) is also needed for rip.
* [ratox](http://git.z3bra.org/ratox/log.html) is required for burca and dwfn.
* [sam](http://sam.cat-v.org/) is needed for sts.
* [wmutils core](https://github.com/wmutils/core) is required for barign, beau, big, cnt, note, wsch and zug.
* [wmutils opt](https://github.com/wmutils/opt) is needed for barign and zug.
* [xscreenshot](http://git.2f30.org/xscreenshot/log.html) is needed for ppprz.

Installation
------------

    make

and for uninstalling

    make uninstall

License
=======

See [LICENSE](./LICENSE).
