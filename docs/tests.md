# Tests

This directory consists of early experiments on MathJax and Mermaid. Over time, it is fortunate that GitHub now supports both.

## MathJax

We have <a href="mathjax.html">mathjax.html</a>

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


## Mermaid

We have <a href="mermaid.html">mermaid.html</a>

```mermaid
graph TB;
setup ==> 1 ==> 2;
    1 --> idmap.do; 1 --> wgs.wrap;
    2 --> 2.1 --> spa.sb; 2.1 --> bgen.sb;
    2 --> 2.2 --> wes.R; 2.2 --> wgs.R; 2.2 --> weswgs.R; 2.2 --> rva.sb; 2.2 --> prune.wrap`;
```
