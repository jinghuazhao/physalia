# Important notes

## Octotree

Employ this add-on for a drop-down menu within your browser for GitHub repositories.

## MarkDown code extraction

To extract `bash` code from GitHub markdown, the following is helpful,

```bash
sudo apt install npm
sudo npm install -g codedown
cat README.md | \
codedown bash
```

## MarkDown editor

The following code sets up remarkable.
```bash
wget https://remarkableapp.github.io/files/remarkable_1.87_all.deb
sudo apt-get install gir1.2-webkit-3.0
sudo apt-get update
sudo apt-get install gir1.2-webkit-3.0
sudo dpkg -i remarkable_1.87_all.deb
sudo apt-get install -f
git clone https://github.com/mathjax/MathJax.git MathJax
```

## Getting helps

Consult [documentation](https://git-scm.com/docs/),

```
man git
man git-add
...
```
The latter will give more specific command-line options available.

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

# reset

git reset --hard

# rm

git rm README.md

# clean

git clean -d -f -x

```
As with many repositories here, a collection of the commands can be built into a batch file to save typing.
