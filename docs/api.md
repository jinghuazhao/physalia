# API

This is an exmaple of generating a repository from the command-line.

## Benchmark

```bash
#!/usr/bin/bash

export user=jinghuazhao
export token=$(cat ~/doc/access)
export API=https://api.github.com
export header="Accept: application/vnd.github.v3+json"
export name=Believe

# 1. create the repository
curl -X POST -u $user:$token -H "$header" -d '{"name": "'"$name"'"}' $API/user/repos

# 2. local addition
git init
git config --global user.email "jinghuazhao@hotmail.com"
git config --global user.name "jinghuazhao@github.com"
git config --global url."https://jinghuazhao@github.com".insteadOf "https://github.com"

git remote add origin https://github.com/jinghuazhao/Believe.git
git push --set-upstream origin main
git add .
git commit -m "Believe"
git push -u origin main
```

At one time, the `git remote origin` command had a typo which is fixed with 

> git remote remove origin

## Generic version

As noted elsewhere at this site, you can use `codedown` to extract the script and adapt as follows,

```bash
cat docs/api.md | \
codedown bash | \
sed 's/jinghuazhao@hotmail.com/your-email-address@yourdomain/;s/jinghuazhao/your-github-username/g;s/Believe/your-repository-name/'
```

for a rather generic version:

```bash
#!/usr/bin/bash

export user=your-github-username
export token=$(cat ~/doc/access)
export API=https://api.github.com
export header="Accept: application/vnd.github.v3+json"
export name=your-repository-name

# 1. create the repository
curl -X POST -u $user:$token -H "$header" -d '{"name": "'"$name"'"}' $API/user/repos

# 2. local addition
git init
git config --global user.email "your-email-address@yourdomain"
git config --global user.name "your-github-username@github.com"
git config --global url."https://your-github-username@github.com".insteadOf "https://github.com"

git remote add origin https://github.com/your-github-username/your-repository-name.git
git push --set-upstream origin main
git add .
git commit -m "your-repository-name"
git push -u origin main
```
