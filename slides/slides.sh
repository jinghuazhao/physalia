#!/usr/bin/bash

# ImageMagick
wget https://www.cam.ac.uk/sites/all/themes/fresh/images/interface/cambridge_university2.svg
convert -density 300 cambridge_university2.svg -resize 30% -units pixelsperinch ucam.png

# pandoc
module load texlive
pandoc -t beamer --citeproc --mathjax -s -V theme:metropolis slides.md -o slides.pdf
pandoc -t revealjs --citeproc --mathjax -s -V theme:metropolis -s slides.md -o slides.html

# marp
module load ceuadmin/node
marp slides.md

# video
# -ss 00:00:01: Snapshot at 1 second into the video
# -vframes 1: Save 1 frame as poster-image.jpg
module load ceuadmin/ffmpeg
ffmpeg -i plum-popcorn.mp4 -ss 00:00:01 -vframes 1 poster-image.jpg
