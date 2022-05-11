.POSIX:
.SUFFIXES:
HARE=hare
HAREFLAGS=

DESTDIR=
PREFIX=/usr/local
SRCDIR=$(PREFIX)/src
HARESRCDIR=$(SRCDIR)/hare
THIRDPARTYDIR=$(HARESRCDIR)/third-party

all:
	# no-op

clean:
	# no-op

check:
	$(HARE) test

install:
	# mkdir -p $(DESTDIR)$(THIRDPARTYDIR)/prom
	# install -m644 prom/* $(DESTDIR)$(THIRDPARTYDIR)/prom
	# mkdir -p $(DESTDIR)$(THIRDPARTYDIR)/promhttp
	# install -m644 promhttp/* $(DESTDIR)$(THIRDPARTYDIR)/promhttp

uninstall:
	# rm -rf $(DESTDIR)$(THIRDPARTYDIR)/prom
	# rm -rf $(DESTDIR)$(THIRDPARTYDIR)/promhttp

.PHONY: all clean check install uninstall