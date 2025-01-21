#!/usr/bin/bash

pandoc -t beamer --variable theme:metropolis slides.md -o slides.pdf
