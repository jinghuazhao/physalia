# 24-5-2019 JHZ

# git config remote.origin.url https://jinghuazhao:{PASSWORD}@github.com/jinghuazhao/physalia.git
# This simplifies matters since only one login is required per session to push commits.
# check ~/.gitconfig

git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=86400'

# Suggestions from web setup
# create a new repository on the command line
git init physalia
cd physalia
echo README > README.md
git add README.md
git commit -m "README.md"
git remote add origin https://github.com/jinghuazhao/physalia.git
git push -u origin master

# push an existing repository from the command line
git remote add origin https://github.com/jinghuazhao/GWAS-2017.git
git push -u origin master

# import code from another repository

The option above is with respect to https, and for ssh it would be 

git init GitHub-matters
cd GitHub-matters
echo "# GitHub-matters" >> README.md
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:cambridge-ceu/GitHub-matters.git
git push -u origin master

…or push an existing repository from the command line

git remote add origin git@github.com:cambridge-ceu/GitHub-matters.git
git push -u origin master
