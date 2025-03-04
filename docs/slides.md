# Slides

Preentation slides are greatly faciliated by Markdown, as is shown here.

- The template, [slides.md](https://raw.githubusercontent.com/jinghuazhao/physalia/refs/heads/master/docs/slides/slides.md) and [premeable.tex](https://raw.githubusercontent.com/jinghuazhao/physalia/refs/heads/master/docs/slides/premeable.tex).
- All files: <https://github.com/jinghuazhao/physalia/tree/master/docs/slides>.

## PDF

The slides in PDF are rendered as follows, 

```bash
#!/usr/bin/bash

module load texlive
pandoc -t beamer --citeproc --mathjax -s -V theme:metropolis slides.md -o slides.pdf
```

See <a href="slides.pdf">slides.pdf</a>.

## html

This could be done as follows via **pandoc** but **marp** appears to be far better,

```bash
module load ceuadmin/node
marp slides.md
```

See <a href="slides.html">slides.html</a>.

## ppt/pptx

Slides produced by **pandoc** look awkward but generally acceptable with these tools; they can be viewed via MicroSoft Edge without being downloaded,

- <a href="slides.ppt">slides.ppt</a> with images by online-convert, <https://document.online-convert.com/convert/pdf-to-ppt>. It is also done similarly by PDF2Go, <https://www.pdf2go.com/pdf-to-powerpoint> and TinyWow, <https://tinywow.com/pdf/to-ppt>.
- <a href="slides.pptx">slides.pptx</a> with OCR but <100% math conversion by iLovePDF, <https://www.ilovepdf.com/pdf_to_powerpoint>.

None of the following sofware is perfect with mathematical formula (slide 4):

* **Acrobat** (<https://www.adobe.com/uk/acrobat/online/pdf-to-ppt.html>) is mediocre and has a paywall.
* **Foxit** (<https://www.foxit.com/pdf-to-ppt/>) misses the \sum operator.
* **PDFelement** (<https://pdf.wondershare.com/online-pdf/pdf-to-ppt.html>) gets the \sum right the title wrong.
* **Sejda** (<https://www.sejda.com/pdf-to-ppt>) is the winner but misaligned with tortured background.

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
