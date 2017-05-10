include config.mk

all: install

install: $(BIN)
	mkdir -p $(PREFIX)/bin $(PREFIX)/share/man/man1
	cp $(BIN) $(PREFIX)/bin
	cp $(MAN) $(PREFIX)/share/man/man1
	chmod 755 $(PREFIX)/bin/$(BIN)
	chmod 644 $(PREFIX)/share/man/man1/$(MAN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN) $(PREFIX)/share/man/man1/$(MAN)

.PHONY: all install uninstall
