#!/bin/bash

# Source is the official alsa-project.org release tarball, which ships a
# pre-generated ./configure (see recipe/meta.yaml source comment), so no
# autoreconf/autoconf/automake/libtool step is needed here.
./configure --prefix=$PREFIX --build=$BUILD --host=$HOST
make -j${CPU_COUNT}
make check
make install
