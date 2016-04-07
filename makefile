include config.mk

all: install

install: $(TARGET)
	mkdir -p $(PREFIX)/bin
	cp $(TARGET) $(PREFIX)/bin
	cd $(PREFIX)/bin && chmod 755 $(TARGET)

uninstall:
	cd $(PREFIX)/bin && rm -f $(TARGET)
