git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"

git config remote.origin.url https://jinghuazhao:{PASSWORD}@github.com/jinghuazhao/physalia.git
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"
git config --global credential.helper 'cache --timeout=86400'

# check ~/.gitconfig

git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jinghuazhao/physalia.git
git push -u origin master

