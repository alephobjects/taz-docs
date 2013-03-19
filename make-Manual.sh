#!/bin/sh

set -x
clear
rm -f Manual.pdf && \
pdflatex  -halt-on-error Manual.tex && \
makeindex -s Manual.gst -o Manual.gls Manual.glo && \
makeindex -s Manual.ist Manual.idx && \
pdflatex  -halt-on-error Manual.tex && \
evince Manual.pdf 

