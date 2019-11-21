# 21-11-2019 JHZ

# create a repository on the command line

git init physalia
cd physalia
echo README > README.md
git add README.md
git commit -m "README.md"

# push from the command line
git remote add origin https://github.com/jinghuazhao/physalia.git
git push -u origin master

# import code from another repository

# git config remote.origin.url https://jinghuazhao:{PASSWORD}@github.com/jinghuazhao/physalia.git
# This simplifies matters since only one login is required per session to push commits.
# check ~/.gitconfig

git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=86400'
