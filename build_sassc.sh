#!/bin/bash

mkdir -p /tmp/sass
cd /tmp/sass
git clone https://github.com/sass/sassc.git
#choose last building commit
cd sassc
git reset --hard aa6d5c635ea8faf44d542a23aaf85d27e5777d48
cd ..
#end choose last building commit
. sassc/script/bootstrap
make -C sassc -j4
PREFIX="/usr" make -C sassc install
cd 
rm -rf /tmp/sass

