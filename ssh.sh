# 13-9-2018 JHZ

ssh-keygen -t rsa -b 4096 -C "jinghuazhao@hotmail.com"
# paraphrase, name
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
ls -al ~/.ssh

sudo apt install xsel
xsel --clipboard < ~/.ssh/id_rsa.pub
# paste into GitHub settings for SSH

ssh -T git@github.com

ssh-add -l -E md5

# later change in paraphrase
# ssh-keygen -p

# For additional information, see
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
# clip described at GitHub is actually a Windows application
# clip < ~/.ssh/id_rsa.pub
# Ubuntu 18.04 gives the (wrong but otherwise useful) suggestion:
# sudo apt install geomview
