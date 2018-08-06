# physalia

A template for a newly created repository. It was named while the Physalia course, [GWAS-course](https://github.com/jinghuazhao/GWAS-course), was in preparation.

 **File** | **Description**
 -----|------------------------------------
 .gitconfig | $HOME/.gitconfig due to setup.sh
 .gitignore | files not synchronised with GitHub
 README.md | this file
 setup.sh | setup for a standard repository
 ssh.sh | setup for SSH
 st.sh | automatic push

NB .gitconfig functions like ssh in the sense that login with username/password is rarely necessary.

Efforts are highly welcome for the site's enrichment as a long-term project, to be used as a framework for other projects.

## How to contribute (adapted from [Apress](https://github.com/apress))

1. Make sure you have a GitHub account.
2. Fork a repository.
3. Create a new branch on which to make your change, e.g. `git checkout -b my_code_contribution`
4. Commit your change. Include a commit message describing the correction. Please note that if your commit message is not clear, the correction will not be accepted.
5. Submit a pull request.

Thank you!

## Code in MarkDown document

To extract `bash` code from GitHub markdown, the following is helpful,

```bash
sudo apt install npm
sudo npm install -g codedown
cat README.md | codedown bash
```

## IDE

**GitKraken** is avaialeble from https://www.gitkraken.com/, e.g.,
```bash
sudo apt install libgnome-keyring-common
sudo apt install libgnome-keyring-dev
wget -qO- https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz | tar fvxz -
cd gitkraken
ln -s $PWD/gitkraken $HOME/bin/gitkraken
gitkraken &

```

**SmartGit** is available from https://www.syntevo.com/smartgit/, e.g., 
```bash
wget -qO- https://www.syntevo.com/downloads/smartgit/smartgit-linux-18_1_4.tar.gz | tar fvxz -
cd smartgit
ln -s $PWD/bin/smartgit.sh $HOME/bin/smartgit.sh
smartgit.sh &
```

**Git-Cola**, https://git-cola.github.io/, can be installed with 
```bash
sudo apt install git-cola
git-cola &
```
