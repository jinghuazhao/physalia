# 20-5-2018 JHZ

ssh-keygen -t rsa -b 4096 -C "jinghua@hotmail.com"
# paraphrase, name
eval $(ssh-agent -s)
ls -al ~/.ssh
ssh-add ~/.ssh/id_rsa
ssh-add -l -E md5

sudo apt install xsel
xsel --clipboard < ~/.ssh/id_rsa.pub
# xsel -b
# paste into GitHub settings for SSH

ssh -T git@github.com

# later change in paraphrase
# ssh-keygen -p

# For additional information, see
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
# clip described at GitHub is actually a Windows application
# clip < ~/.ssh/id_rsa.pub
# Ubuntu 18.04 gives the (wrong but otherwise useful) suggestion:
# sudo apt install geomview
# In fact, there is xclip, https://sourceforge.net/projects/xclip/
# sudo apt install xclip
# xclip -i <input>
# Under OS X, there is pbcopy
# everything in one go:
# https://github.com/sindresorhus/clipboard-cli
