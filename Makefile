default: test

test:
	./test/validation

install:
	install -d $(PREFIX)/usr/bin
	install -m755 udctl $(PREFIX)/usr/bin/udctl
	install -m755 udctl-update-home $(PREFIX)/usr/bin/udctl-update-home

.PHONY: default test install
