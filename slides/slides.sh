#!/usr/bin/bash

pandoc -H premeable.tex -t beamer --variable theme:metropolis slides.md -o slides.pdf
pandoc -H premeable.tex -t revealjs --variable theme:metropolis -s slides.md -o slides.html
