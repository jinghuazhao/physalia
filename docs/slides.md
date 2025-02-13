# Slides

Preentation slides are greatly faciliated by Markdown, as is shown here.

The template is in [slides.md](slides/slides.md).

## PDF

The slides in PDF are rendered as follows, 

```bash
#!/usr/bin/bash

module load texlive
pandoc -t beamer --citeproc --mathjax -s -V theme:metropolis slides.md -o slides.pdf
```

See <a href="slides.pdf">slides.pdf</a>.

## html

This could be done as follows via `pandoc` but `marp` appears to be far better,

```bash
module load ceuadmin/node
marp slides.md
```

See <a href="slides.html">slides.html</a>.

## pptx

Pandoc produces awkward slides, and <a href="slides.pptx">slides.pptx</a> appears more acceptable with smallpdf, <https://smallpdf.com/pdf-to-ppt>.

## CTAN

This is to make `beamerthemegotham.sty` available.

```bash
wget https://mirrors.ctan.org/macros/latex/contrib/beamer-contrib/themes/beamertheme-gotham.zip
unzip beamertheme-gotham.zip
cd beamertheme-gotham/
latex gotham.ins
mkdir -p ~/texmf/tex/latex/beamertheme-gotham
mv *.sty ~/texmf/tex/latex/beamertheme-gotham
texhash ~/texmf
kpsewhich beamerthemegotham.sty
tlmgr install --user-mode l3kernel
kpsewhich expl3.sty
fc-list
```
