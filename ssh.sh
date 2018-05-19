# notes to set up ssh connection

# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "jinghua@hotmail.com"
# paraphrase, name
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

sudo apt install xsel
xsel --clipboard < ~/.ssh/id_rsa.pub

# clip is actually avaiable from Windows
# clip < ~/.ssh/id_rsa.pub
# GitHub gives the wrong suggestions!
# sudo apt install geomview

ssh -T git@github.com
# ssh-keygen -p

ssh-add -l -E md5
