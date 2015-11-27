include config.mk

all: install

install: $(TARGET)
	mkdir -p $(PREFIX)/bin $(PREFIX)/share/man/man1
	for i in $(TARGET); do \
		cp $$i $(PREFIX)/bin; \
		cp $$i.1 $(PREFIX)/share/man/man1; \
		chmod 755 $(PREFIX)/bin/$$i; \
		chmod 0644 $(PREFIX)/share/man/man1/$$i.1; \
	done

uninstall:
	for i in $(TARGET); do \
		rm -f $(PREFIX)/bin/$$i $(PREFIX)/share/man/man1/$$i.1; \
	done
