# Slides

Preentation slides are greatly faciliated by Markdown, as is shown here.

The toy slides are in [slides.md](slides/slides.md).

## PDF

The slides in PDF are rendered as follows, noting when adding

```
header-includes:
 - \input{premeable.tex}
```

to YAML at the header section, the commands proceed without `-H premeable.tex`.

```bash
#!/usr/bin/bash

module load texlive
pandoc -H premeable.tex -t beamer --variable theme:metropolis slides.md -o slides.pdf
```

See <a href="slides.pdf">slides.pdf</a>.

## html

This could be done as follows via `pandoc` but `marp` appears to be far better,

```bash
pandoc -H premeable.tex -t revealjs --variable theme:metropolis -s slides.md -o slides.html
module load ceuadmin/node
marp slides.md
```

See <a href="slides.html">slides.html</a>.

## Bibliography

This is part of a YAML header.

```
bibliography: REFERENCES.bib
filter: pandoc-citeproc
csl: /home/jhz22/R/gap/vignettes/nature-genetics.csl
```

which is processed with

```bash
module load texlive
pandoc -t beamer --citeproc --mathjax --standalone --toc --variable theme:metropolis -o gaawr2.pdf gaawr2.md
```

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
