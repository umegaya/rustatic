#!/bin/bash

curl http://www.musl-libc.org/releases/musl-latest.tar.gz | tar xzf -
cd musl-*
./configure --disable-shared --prefix=/usr
make
make install
cd ..

curl --tlsv1 https://www.openssl.org/source/openssl-1.0.2e.tar.gz | tar xzf -
cd openssl*
./Configure no-asm --prefix=/usr os/compiler:/usr/bin/musl-gcc
make
make install
cd ..

rm -rf musl-* openssl*
