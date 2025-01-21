# Slides

## PDF

The slides in PDF are rendered as follows,

```bash
#!/usr/bin/bash

pandoc -t beamer --variable theme:metropolis slides.md -o slides.pdf
```

See <a href="slides/slides.pdf">slides.pdf</a>.

## html

This is done as follows,

```bash
pandoc -t revealjs -s slides.md -o slides.html
```

See <a href="slides/slides.html>slides.html</a>.
