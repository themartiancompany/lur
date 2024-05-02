#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/lur
DATA_DIR=$(DESTDIR)$(PREFIX)/share/lur
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

DOC_FILES=$(wildcard *.rst)
SCRIPT_FILES=$(wildcard lur/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-lur install-doc

install-doc:

	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

install-lur:

	install -vdm 755 "$(BIN_DIR)"
	install -vDm 755 lur/lur "$(BIN_DIR)"

.PHONY: check install install-doc install-fur shellcheck
