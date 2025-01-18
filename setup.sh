# 22-1-2021 JHZ

# git config remote.origin.url https://jinghuazhao:{PASSWORD}@github.com/jinghuazhao/physalia.git
# This simplifies matters since only one login is required per session to push commits.
# check ~/.gitconfig

git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"
# cache password 24hr long
# Linux = cache, Windows = wincred, Mac = osxkeychain (two ways below)
# git credential.helper-osxkeychain
# brew install git
git config --global credential.helper 'cache --timeout=86400'

# switch remote URLs from https to ssh
git remote -v
git remote set-url origin git@github.com:jinghuazhao/physalia.git
# create a repository on the command line

cd physalia
git init
echo README > README.md
git add README.md
git commit -m "README.md"

# push from the command line
git remote add origin https://github.com/jinghuazhao/physalia.git
git push --set-upstream origin master
git push -u origin master
