# Slides

Preentation slides are greatly faciliated by Markdown, as is shown here.

- The template, [slides.md](slides/slides.md)
- All files: <https://github.com/jinghuazhao/physalia/tree/master/docs/slides>

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

## ppt/pptx

Pandoc produces awkward slides, and it is more appealing with other tools,

- online-convert, <https://document.online-convert.com/convert/pdf-to-ppt>
    - <a href="slides.ppt">slides.ppt</a> with images.
- iLovePDF, <https://www.ilovepdf.com/pdf_to_powerpoint>
    - <a href="slides.pptx">slides.pptx</a> with OCR but <100% math conversion.

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
