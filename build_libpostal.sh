#!/usr/bin/env bash
./bootstrap.sh
mkdir -p /opt/libpostal_data
./configure --datadir=/opt/libpostal_data --disable-sse2
make -j4
make install
ldconfig
pkg-config --cflags libpostal
