#!/bin/sh

set -x
clear
rm -f Unpacking-onepage.pdf && \
pdflatex  -halt-on-error Unpacking-onepage.tex && \
pdflatex  -halt-on-error Unpacking-onepage.tex && \
evince Unpacking-onepage.pdf 

