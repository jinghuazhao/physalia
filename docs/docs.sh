#!/usr/bin/bash

function legacy()
{
# 6-8-2018 MRC-Epid JHZ

git add IDE.md
git commit -m "IDE for repository development"
git add NOTES.md
git commit -m "important notes"
git add README.md
git commit -m "README"
git add setup.sh
git commit -m "setup.sh"
git add ssh.sh
git commit -m "ssh.sh"
git add .gitconfig
git commit -m ".gitconfig"
git add st.sh
git commit -m "st.sh"
git push
}

function setup()
{
  module load python/3.8
  source ~/rds/public_databases/software/py38/bin/activate
}

setup

if [ "$(uname -n | sed 's/-[0-9]*$//')" == "login-q" ]; then
   module load ceuadmin/libssh/0.10.6-icelake
   module load ceuadmin/openssh/9.7p1-icelake
fi

mkdocs build
mkdocs gh-deploy

git add .gitignore
git commit -m ".gitignore"
git add README.md
git commit -m "README"
git add docs
git commit -m "physalia"
git add mkdocs.yml
git commit -m "mkdocs.yml"
git push

