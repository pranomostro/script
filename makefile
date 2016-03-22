include config.mk

all: install

install: $(TARGET)
	mkdir -p $(PREFIX)/bin
	cp $(TARGET) $(PREFIX)/bin
	for util in $(TARGET); do \
		chmod 755 $(PREFIX)/bin/$$util; \
	done

uninstall:
	for util in $(TARGET); do \
		rm -f $(PREFIX)/bin/$$util; \
	done
