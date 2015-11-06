PREFIX ?= /usr/local

install:
	install -d $(PREFIX)/bin
	install bin/nodejs-install $(PREFIX)/bin
