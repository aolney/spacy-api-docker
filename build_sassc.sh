#!/bin/bash

mkdir -p /tmp/sass
cd /tmp/sass
git clone https://github.com/sass/sassc.git
#choose last building commit
cd sassc
git reset --hard 3f84e2358019dab2fdba5fe1fc0ecff23aa24608
cd ..
#end choose last building commit
. sassc/script/bootstrap
make -C sassc -j4
PREFIX="/usr" make -C sassc install
cd 
rm -rf /tmp/sass

