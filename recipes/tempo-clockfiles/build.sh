#!/bin/bash

# ------------------- Tempo part
cd tempo

# Write a README
rdme='clock/README'
echo "tempo clock file directory v$PKG_VERSION" > $rdme

# Update ut1.dat
cd util/ut1
./get_ut1_new
./make_ut1 > ../../clock/ut1.dat

# Install everything
cd tempo
tempodir=$PREFIX/share/tempo
mkdir -p $tempodir
cp -a clock $tempodir

