#!/bin/sh

gs="6.10.4 6.12.1 6.12.2 6.12.3 7.0.1 7.0.2 7.0.3 7.0.4 7.2.1 7.2.2 7.4.1 7.4.2-RC1"

for g in $gs; do
    printf "\n\n *** $g ***\n\n"
    hub set $g
    hub info
    make clean
    make
    ./smoke.exe
done
