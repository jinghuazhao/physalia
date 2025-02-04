---
title: "Genetic Association Analysis with R (II)"
author: "Jing Hua Zhao"
date: "4 February 2025"
institute: ""
bibliography: REFERENCES.bib
csl: nature-genetics.csl
theme: "metropolis"
transition: "transdissolve"
colorlinks: true
linkcolor: red
linkstyle: bold
urlcolor: red
filecolor: red
fontsize: 16pt
mainfont: "Palatino"
monofont: "Courier"
titlegraphic: ucam.png
header-includes:
 - \input{premeable.tex}
abstract: |
  This is an update to Henry-Stewart Talk in 2009.
keywords: ["Genetic Association", "R Programming", "Statistical Genetics", "GWAS"]
---

# Slide 1 Two columns

::: columns

:::: {.column width=50%}

Bullet points

- Point 1
- Point 2
- Point 3

::::

:::: {.column width=40%}

Ordered list

1. First item
2. Another item
3. A third item

::::

:::

---

# **Key Features of the Template**

1. **YAML Front Matter**:
   - Set metadata like the title, author, theme, and transitions.
2. **Headings**:
   - Use `#` for slide titles, `##` or `###` for smaller headers.
3. **Horizontal Slide Separation**:
   - Use `---` to separate individual slides.
4. **Code Blocks**:
   - Wrap code in triple backticks for syntax highlighting.
5. **Others**:
   - Embed images as `![alt text](path)`, vite a paper @zhao06a, color URLs, number figures and tables.

---

# Slide with Image

![physalis\label{fig:physalia}](https://animaldiversity.org/collections/contributors/Grzimek_inverts/Hydrozoa/Physalia_physalis_polyp/medium.jpg)

---

# Code/Math/Figure Example

```python
# Sample Python code
def hello_world():
    print("Hello, world!")
```

$$
\begin{aligned}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{aligned}
$$

Figure \ref{fig:physalia} is shown on last page.

---

# A table

Table: A summary of files

File | Description
-----|-----------------------------
nature-genetics.csl | style
premeable.tex | premeable
REFERENCES.bib | reference library
slides.html | .html output
slides.md | markdown file
slides.pdf | .pdf output
slides.sh* | Bash command file
sunflower.jpg* | sunflower as a logo


# **Tools to Render Markdown Slides**
- **Reveal.js**: Use [Reveal.js](https://revealjs.com/) for beautiful web-based presentations. Convert your Markdown using `reveal-md`.
- **Marp**: A tool for creating slides directly from Markdown and exporting them to PDF or PowerPoint.
- **Pandoc**: Convert Markdown to various formats, including slides in HTML5 or LaTeX Beamer.

---

# References
