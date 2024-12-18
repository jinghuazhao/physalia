# Notes

## Getting helps

Consult [git-scm command reference](https://git-scm.com/docs/),

```
man git
man git-add
...
```
The latter will give more specific command-line options available.

## Git Bash for Windows

It is helpful to note that c:/ and u:/ can be used as well as /c and /u, respectively.

## MarkDown code extraction

To extract `bash` code from GitHub markdown, the following is helpful,

```bash
sudo apt install npm
sudo npm install -g codedown
cat README.md | \
codedown bash
```
This also works when the keyword is wrapped in braces, e.g., {r}.

Additional information on npm (Node Package Manager) is available from https://www.w3schools.com/whatis/whatis_npm.asp.

Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine, available from https://nodejs.org/en/download/.

## MarkDown editor

One may prefer Typora, available from [https://typora.io/](https://typora.io/). In particular, it supports mermaid, e.g., [https://mermaid-js.github.io/mermaid-live-editor/](https://mermaid-js.github.io/mermaid-live-editor/). The following is an example generated from the link to SVG,

![](https://tinyurl.com/y6cmwvn6)

The following code sets up remarkable.
```bash
wget https://remarkableapp.github.io/files/remarkable_1.87_all.deb
sudo apt-get update
sudo apt-get install gir1.2-webkit-3.0
sudo dpkg -i remarkable_1.87_all.deb
sudo apt-get install -f
git clone https://github.com/mathjax/MathJax.git MathJax
```
The last step enables mathtype formatting in the html format (e.g., via pandoc) with
```js
<script type="text/javascript" src="MathJax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/javascript" src="MathJax/MathJax.js"></script>
```

## MathJax and mermaid

On-the-fly examples for html are here,

* MathJax, [https://jinghuazhao.github.io/SCALLOP-Seq/tests/mathjax.html](https://jinghuazhao.github.io/SCALLOP-Seq/tests/mathjax.html).
* mermaid, [https://jinghuazhao.github.io/SCALLOP-Seq/tests/mermaid.html](https://jinghuazhao.github.io/SCALLOP-Seq/tests/mermaid.html).

## Octotree

Employ this add-on for a drop-down menu within your browser for GitHub repositories.

## Pop-up windows

A window may pop up for password, which could cause problems with command-line interface but this can be disabled with
```bash
 unset SSH_ASKPASS
```
or `unset GIT_ASKPASS` which could be part of `.bashrc`. Alternatively, this could be achieved with disabling DISPLAY, i.e.,
```bash
DISPLAY=
git push
```

## Additional tips

```bash
# https://stackoverflow.com/questions/953481/find-and-restore-a-deleted-file-in-a-git-repository
# recover directory R-packages that has been deleted

git checkout $(git rev-list -n 1 HEAD -- "R-packages")^ -- "R-packages"

# or zsh with the EXTENDED_GLOB option enabled for $file
git checkout $(git rev-list -n 1 HEAD -- "$file")~1 -- "$file"

# Recursive clone

git clone --recursive https://github.com/ekg/vcflib/

# add

git add README.md

# config

git config --global --unset-all core.editor
git config --unset-all core.editor
git config --global core.editor "pico -w"

# commit

git commit -m "README"

# diff

git diff README.md

# mv

git mv -f README.md NOTES.md

# pull

git pull

# push

git push

# rebase

git rebase

# reset

git reset --hard

# revert

git revert

# rm

git rm README.md

# clean

git clean -d -f -x

```
As with many repositories here, a collection of the commands can be built into a batch file to save typing.

## Token

Login at [https://github.com/settings/tokens](https://github.com/settings/tokens) and regenerate; make sure to make a copy afterwards.

## Utilities

* [git recall](https://github.com/Fakerr/git-recall.git).
* [git-extras](https://github.com/tj/git-extras).
