# 19-5-2018 JHZ

# Adapted from the following URL,
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "jinghua@hotmail.com"
# paraphrase, name
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

sudo apt install xsel
xsel --clipboard < ~/.ssh/id_rsa.pub

# clip is actually a Windows application
# clip < ~/.ssh/id_rsa.pub
# Ubuntu 18.04 gives the (wrong but otherwise useful) suggestion:
# sudo apt install geomview

ssh -T git@github.com

ssh-add -l -E md5

# later change in paraphrase
# ssh-keygen -p
