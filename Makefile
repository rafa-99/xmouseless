# xmouseless
VERSION = 0.1.1
CC      = cc
CFLAGS  = -Wall
LDFLAGS = -lX11 -lXtst -lpthread

PREFIX = /usr/local

SRC = xmouseless.c
BIN = xmouseless

all: config.h build

build:
	$(CC) $(CFLAGS) -o $(BIN) $(SRC) $(LDFLAGS)

clean:
	rm -f $(BIN)

config.h:
	cp config.def.h config.h

install: all
	mkdir -p $(PREFIX)/bin
	cp -f $(BIN) $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
