#!/bin/sh
# petcat and c1541 are included in VICE 2.4 - 3.5
rm *.prg *.d64
ls *.bas | sed 's/\.bas//' | while read p
    do cat $p.bas | awk '{print tolower($0)}' | petcat -w2 -o $p.prg
done
c1541 -format amateur-radio_m6,00 d64 amateur-radio-electronics.d64
ls *.bas | sed 's/\.bas//' | while read p
    do c1541 -attach amateur-radio-electronics.d64 -write $p.prg $p
done