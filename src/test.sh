#!/bin/bash

if [ "$1" = "client" ]; then
    #./ss-local -s ::1 -p 8388 -l 1098 -k abc -m aes-256-cfb --fast-open
    #./ss-local -s 127.0.0.1 -p 8388 -l 1098 -k abc -m aes-256-cfb
    #./ss-local -s nuc -p 8388 -l 1098 -k abc -m aes-256-cfb --fast-open
    ss-local -s nuc -p 8388 -l 1098 -k abc -m aes-256-cfb
    #./ss-local -s 127.0.0.1 -p 8388 -l 1098 -k abc -m aes-256-cfb --fast-open
    #../../python/shadowsocks/local.py -s nuc -p 8388 -l 1098 -k abc -m aes-256-cfb #--fast-open
fi
if [ "$1" = "server" ]; then
    ../../python/shadowsocks/server.py -s :: -p 8388 -k abc -m aes-256-cfb --fast-open
    #./ss-server -s 127.0.0.1 -p 8388 -k abc -m aes-256-cfb --fast-open -v
fi

