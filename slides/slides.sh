#!/usr/bin/bash

# pandoc
module load texlive
pandoc -t beamer --citeproc --mathjax -s -V theme:metropolis slides.md -o slides.pdf
pandoc -t revealjs --citeproc --mathjax -s -V theme:metropolis -s slides.md -o slides.html

# marp
module load ceuadmin/node
marp slides.md
