#!/bin/sh

set -e  # Abort on any error
set -x  # Show each instruction at is it run

# LTL2BA
V=1.2b1
wget http://www.lsv.ens-cachan.fr/~gastin/ltl2ba/ltl2ba-$V.tar.gz
tar xvf ltl2ba-$V.tar.gz
cd ltl2ba-$V
make -j4
mv ltl2ba /usr/local/bin/
cd ..
rm -rf ltl2ba-$V ltl2ba-$V.tar.gz

# LTL3BA
V=1.1.2
wget http://sourceforge.net/projects/ltl3ba/files/ltl3ba/1.1/ltl3ba-$V.tar.gz
tar xvf ltl3ba-$V.tar.gz
cd ltl3ba-$V
make -j4
mv ltl3ba /usr/local/bin/
cd ..
rm -rf ltl3ba-$V ltl3ba-$V.tar.gz

# LTL3DRA
V=0.2.1
wget http://sourceforge.net/projects/ltl3dra/files/ltl3dra-$V.tar.gz
tar xvf ltl3dra-$V.tar.gz
cd ltl3dra-$V
make -j4
mv ltl3dra /usr/local/bin/
cd ..
rm -rf ltl3dra-$V ltl3ba-$V.tar.gz

# SPOT
V=1.99a
wget http://www.lrde.epita.fr/~adl/dl/spot-$V.tar.gz
tar xvf spot-$V.tar.gz
cd spot-$V
./configure --disable-static --disable-devel --enable-optimizations --disable-python
make -j4
make install-strip
cd ..
rm -rf spot-$V spot-$V.tar.gz
ldconfig

# ltl2dstar
V=0.5.2
wget http://www.ltl2dstar.de/down/ltl2dstar-0.5.2.tar.gz
tar xvf ltl2dstar-$V.tar.gz
cd ltl2dstar-$V/src
make -j4
mv ltl2dstar /usr/local/bin/

# jhoafparser
V=1.0
wget http://ltl2dstar.de/jhoafparser/down/jhoafparser-$V.jar \
       -O /usr/local/bin/jhoafparser-$V.jar
chmod a+x /usr/local/bin/jhoafparser-$V.jar
