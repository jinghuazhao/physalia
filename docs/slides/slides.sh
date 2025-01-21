#!/usr/bin/bash

pandoc -t beamer --variable theme:metropolis slides.md -o slides.pdf
pandoc -t revealjs --variable theme:metropolis -s slides.md -o slides.html
