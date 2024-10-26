#!/usr/bin/env sh

if  [ ! -e /tiddlywiki ]; then
    tiddlywiki /tiddlywiki --init server
fi

tiddlywiki /tiddlywiki --listen host=0.0.0.0
