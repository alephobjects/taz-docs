#!/bin/sh

set -x
clear
rm -f Manual.pdf && \
xelatex  -halt-on-error Manual.tex && \
makeindex -s Manual.gst -o Manual.gls Manual.glo && \
makeindex -s Manual.ist Manual.idx && \
xelatex  -halt-on-error Manual.tex && \
evince Manual.pdf 

