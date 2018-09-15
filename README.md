Small scripts
=============

This repo contains small and short shell scripts for simplifying daily tasks on
the command line, and ranges from long one-liners to compact, but more complex
solutions (all under 50 lines long).

Requirements
------------

Generally, the standard base utilities
([coreutils](https://www.gnu.org/software/coreutils/coreutils.html)/
[sbase](http://git.suckless.org/sbase)
and [ubase](http://git.suckless.org/ubase)) are required.
Nearly all of these scripts are written in the rc
shell scripting language, the plan 9 shell, which is
available in [9base](http://git.suckless.org/9base),
[plan9port](https://swtch.com/plan9port/) or [an independent
reimplementation](https://github.com/rakitzis/rc) (although some scripts
might not work with that one since it has some differences from the
original plan9 version, which I prefer).

Some of the scripts depend on each other.

* [acpi](http://sourceforge.net/projects/acpiclient/) is needed for batwatch.
* [amixer](https://linux.die.net/man/1/amixer) is needed for chv.
* [awk](https://www.gnu.org/software/gawk/) is required for cgdc, chv, cts, field. ircjoin, note, partsum, pfm, plng, sal, tflt and zug.
* [bc](https://www.gnu.org/software/bc/) is required for beau, big, chv, cnt, note, pprz and wsch.
* [bzip2](http://bzip.org/) is needed for pprz.
* [cdparanoia](https://xiph.org/paranoia/) is required for rip.
* [chromium](http://chromium.org/) is needed for chrm.
* [curl](https://curl.haxx.se/) is required by 4img, tmping and up.
* [dmenu](http://git.suckless.org/dmenu) is needed for cts and zug.
* [fenc)[https://github.com/pranomostro/fenc] is needed for bu.
* [dzen2](https://github.com/robm/dzen) is needed for batwatch and note.
* [ffmpeg](https://ffmpeg.org/) is needed for musconv.
* [gen](https://github.com/pranomostro/gen) is required for mg.
* [git](https://git-scm.com/) is required for gitpost, pfm, shp, takquip and tflt.
* [gpg2](https://gnupg.org/) is needed by cts, dec, enc, dwpd and rat-log.
* [gzip](http://www.gzip.org/) is needed for bu.
* [ii](http://git.suckless.org/ii) with the [ssl patch](http://tools.suckless.org/ii/patches/ssl) is needed by ircjoin.
* [mpv](https://mpv.io) is required for tagesschau.
* [nc](http://nc110.sourceforge.net/) is needed for plng and sad-pickup.
* [oggenc](https://xiph.org/downloads/) is also needed for rip.
* [ratox](http://git.z3bra.org/ratox/log.html) is required for rat-frienddir and rat-log.
* [sad](https://git.2f30.org/sad/log.html) is required for sad-pickup.
* [sam](http://sam.cat-v.org/) is needed for sts.
* [scp](https://linux.die.net/man/1/scp) is needed for bu.
* [spm](https://notabug.org/kl3/spm) is needed for bu.
* [sxiv](https://github.com/muennich/sxiv) is required for tmpimg.
* [wmutils core](https://github.com/wmutils/core) is required for barign, beau, big, cnt, note, wsch and zug.
* [wmutils opt](https://github.com/wmutils/opt) is needed for barign and zug.
* [xscreenshot](http://git.2f30.org/xscreenshot/log.html) is needed for ppprz.

Utilities included in the GNU coreutils, but not specified by POSIX:

* find with the `-maxdepth` flag for gitpost and musconv.
* mktemp for 4img, cgdc, cts, note, tflt, tmpimg, zug.
* readlink for nt and plng.
* sleep with floating point arguments for barign and note.
* stat for bu and cgdc.
* tac for tflt.

Utilities included in util-linux, but not specified by POSIX:

* eject for rip

Installation
------------

	make

and for uninstalling

	make uninstall

License
=======

See [LICENSE](./LICENSE).
