#!/bin/sh

ln -s /dev/stdout /dev/log

echo Starting agetty

# ENTRYPOINT /sbin/agetty --extract-baud --timeout 60 --init-string 'ATE0Q1&D2&C1S0=1\015' ttyUSB0 9600,2400,1200,300
# AT
# E0 (echo off)
# Q1 (no results codes)
# &D2 (normal DTR operations)
# &C1 (normal CD operations)
# S0=1 (Auto Answer after 1 ring)
# \015 ???

/sbin/agetty --extract-baud --timeout 300 --init-string 'ATE1&D2&C1S0=1\012' -J -w ttyUSB0 9600,2400,1200,300
