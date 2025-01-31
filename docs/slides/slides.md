---
title: My Henry-Stewart Talk
author: Jing Hua Zhao
date: "31 January 2025"
institute: "University of Cambridge"
bibliography: REFERENCES.bib
csl: nature-genetics.csl
output:
  beamer_presentation:
    theme: "metropolis"
    colortheme: "seahorse"
    fonttheme: "structurebold"
    transition: "transdissolve"
    fontsize: 16pt
    mainfont: "Palatino"
    monofont: "Courier"
header-includes:
 - \input{premeable.tex}
abstract: |
  This is a template for a Henry-Stewart Talk.
keywords: ["beamer", "Markdown", "literate programming"]
---

# Slide 1 Title

Content for the first slide.

- Point 1
- Point 2
- Point 3

---

# Slide 2 Title

1. Ordered list item
2. Another item
3. A third item

---

# Slide with Image

![](https://animaldiversity.org/collections/contributors/Grzimek_inverts/Hydrozoa/Physalia_physalis_polyp/medium.jpg)

---

# Code/Math Example

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

# **Key Features of the Template**
1. **YAML Front Matter**:
   - Set metadata like the title, author, theme, and transitions using the front matter.
2. **Headings**:
   - Use `#` for slide titles, `##` or `###` for smaller headers.
3. **Horizontal Slide Separation**:
   - Use `---` to separate individual slides.
4. **Code Blocks**:
   - Wrap code in triple backticks for syntax highlighting.
5. **Images**:
   - Embed images using the standard Markdown syntax: `![alt text](path)`.
6. **Reference**:
   - I could cite a paper @zhao06a

---

# **Tools to Render Markdown Slides**
- **Reveal.js**: Use [Reveal.js](https://revealjs.com/) for beautiful web-based presentations. Convert your Markdown using `reveal-md`.
- **Marp**: A tool for creating slides directly from Markdown and exporting them to PDF or PowerPoint.
- **Pandoc**: Convert Markdown to various formats, including slides in HTML5 or LaTeX Beamer.

---

# Reference
