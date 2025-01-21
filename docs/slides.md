# Slides

Preentation slides are greatly faciliated by Markdown, as is shown here.

It is notable that the LaTeX environment needs to be made available, e.g., `module load texlive`.

## PDF

The slides in PDF are rendered as follows,

```bash
#!/usr/bin/bash

pandoc -t beamer --variable theme:metropolis slides.md -o slides.pdf
```

See <a href="slides.pdf">slides.pdf</a>.

## html

This is done as follows,

```bash
pandoc -t revealjs --variable theme:metropolis -s slides.md -o slides.html
```

See <a href="slides.html">slides.html</a>.
