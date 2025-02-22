---
title: "A Template for Markdown Beamer Slides with Pandoc"
author: "Jing Hua Zhao"
institute: ""
date: "22 February 2025"
bibliography: REFERENCES.bib
csl: nature-genetics.csl
theme: "metropolis"
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

# Key Features of the Template

- **YAML Front Matter**: Set metadata like the title, author, theme, and transitions.
- **Headings**: Use `#` for slide titles, `##` or `###` for smaller headers.
- **Horizontal Slide Separation**: Use `---` to separate individual slides.
- **Code Blocks**: Wrap code in triple backticks for syntax highlighting.
- **10 Others**: Title page image, icon on title, background shading, embedded image, citation @zhao06a, colored URLs, figure numbering, table numbering, multiple columns, page / total numbering.

---

# Slide with Image

![physalis\label{fig:physalia}](https://animaldiversity.org/collections/contributors/Grzimek_inverts/Hydrozoa/Physalia_physalis_polyp/medium.jpg){height=85%}

---

# Code/Math \texorpdfstring{($a^2+b^2=c^2$)}{(a^2+b^2=c^2)} Example

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

---

# A Numbered Table

Table:\label{tab:mytable} A summary of files

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

---

# Two Columns

::: columns

:::: {.column width=50%}

## Bullet points

- Point 1
- Point 2
- Point 3

::::

:::: {.column width=40%}

## Ordered list

1. First item
2. Another item
3. A third item

::::

:::

Figure \ref{fig:physalia} and Table \ref{tab:mytable} can be referred, too!

---

# Tools to Render Markdown Slides

Four of them are indicated here,

- **Pandoc**: Convert Markdown to various formats, including slides in HTML5 or LaTeX Beamer. The current presentation is rendered with v2.18.
- **Marp**: A tool for creating slides directly from Markdown and the .html in this presentation is rendered with v4.1.1.
- **Reveal.js**: Use [Reveal.js](https://revealjs.com/) for beautiful web-based presentations. A wonderful demo is by **quarto** below.
- **quarto**: Contain comprehensive facilities for rendering presentations including support for pandoc/Reveal.js, see <https://quarto.org/>.

---

# Videos for Marp

<video width="640" height="360" controls>
  <source src="plum-popcorn.mp4" type="video/mp4">
</video>

```{=latex}
\movie[height=432pt,width=864pt,poster,showcontrols]{not supported for PDF}{plum-popcorn.mp4}
```

---

# References
