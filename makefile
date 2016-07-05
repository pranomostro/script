include config.mk

all: install

install: $(TARGET)
	mkdir -p $(PREFIX)/bin $(PREFIX)/share/man/man1
	cp emv ecp $(PREFIX)/bin
	cp emv.1 ecp.1 $(PREFIX)/share/man/man1/
	chmod 755 $(PREFIX)/bin/emv $(PREFIX)/bin/ecp
	chmod 644 $(PREFIX)/share/man/man1/emv.1 $(PREFIX)/share/man/man1/ecp.1

uninstall:
	cd $(PREFIX)/bin/ && rm -f ecp emv
	cd $(PREFIX)/share/man/man1 && rm -f ecp.1 emv.1

.PHONY: all install uninstall
