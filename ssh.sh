#!/usr/bin/bash

ssh-keygen -t rsa -b 4096 -C "jinghuazhao@hotmail.com"
# ensure ssh-agent running
# start the ssh-agent in the background
eval $(ssh-agent -s)
# paraphrase, name
# add private key to ssh-agent
ssh-add ~/.ssh/id_rsa
ls -al ~/.ssh

# sudo apt install xsel
xsel --clipboard < ~/.ssh/id_rsa.pub
# paste into GitHub "personal account" SSH/GPH settings
# copy repository address from `Code`/ssh of a repository and replace url from its .git/config

# Check that you are connecting to the correct server
# make sure connection to the right domain
ssh -T git@github.com
ssh -vT git@github.com

# Make sure you have a key that is being used
# 1. start the ssh-agent in the background
eval $(ssh-agent -s)
# 2. Verify that you have a private key generated and loaded into SSH
#  OpenSSH 6.7 or older
ssh-add -l
# OpenSSH 6.8 or newer
ssh-add -l -E md5

# test SSH over the HTTPS port
ssh -T -p 443 git@ssh.github.com
# or .ssh/config
# Host github.com
#  Hostname ssh.github.com
#  Port 443

# later change in paraphrase
# ssh-keygen -p

# For additional information, see
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
# clip described at GitHub is actually a Windows application
# clip < ~/.ssh/id_rsa.pub
# Ubuntu 18.04 gives the (wrong but otherwise useful) suggestion:
# sudo apt install geomview
