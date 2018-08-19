# Important notes

## MarkDown code extraction

To extract `bash` code from GitHub markdown, the following is helpful,

```bash
sudo apt install npm
sudo npm install -g codedown
cat README.md | codedown bash
```

## Useful tips

```bash
# https://stackoverflow.com/questions/953481/find-and-restore-a-deleted-file-in-a-git-repository
# recover directory R-packages that has been deleted

git checkout $(git rev-list -n 1 HEAD -- "R-packages")^ -- "R-packages"

# or zsh with the EXTENDED_GLOB option enabled for $file
git checkout $(git rev-list -n 1 HEAD -- "$file")~1 -- "$file"

# Identificaiton of differences

git diff README.md

# rm

git rm README.md

# mv

git mv README.md NOTES.md

# Recursive clone

git clone --recursive https://github.com/ekg/vcflib/
```
