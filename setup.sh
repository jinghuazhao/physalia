# 16-8-2018 JHZ

# git config remote.origin.url https://jinghuazhao:{PASSWORD}@github.com/jinghuazhao/physalia.git
# This looks to avoid use of ssh
# check ~/.gitconfig

git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=86400'

git init
git add README.md
git commit -m "README.md"
git remote add origin https://github.com/jinghuazhao/physalia.git
git push -u origin master

# https://stackoverflow.com/questions/953481/find-and-restore-a-deleted-file-in-a-git-repository
# recover directory R-packages that has been deleted

git checkout $(git rev-list -n 1 HEAD -- "R-packages")^ -- "R-packages"

# or zsh with the EXTENDED_GLOB option enabled for $file
git checkout $(git rev-list -n 1 HEAD -- "$file")~1 -- "$file"

# to find out differences
git diff README.md
