# physalia

A template for a newly created repository. It was named while the Physalia course, [GWAS-course](https://github.com/jinghuazhao/GWAS-course), was in preparation.

 **File** | **Description**
 -----|------------------------------------
 [.gitconfig](.gitconfig) | $HOME/.gitconfig due to setup.sh
 [.gitignore](.gitignore) | files not synchronised with GitHub
 [IDE.md](IDE.md) | GUI for GitHub repository maintenance
 [README.md](README.md) | this file
 [setup.sh](setup.sh) | setup for a standard repository
 [ssh.sh](setup.sh) | setup for SSH
 [st.sh](st.sh) | automatic push

NB .gitconfig functions like ssh in the sense that login with username/password is rarely necessary.

Efforts are highly welcome for the site's enrichment as a long-term project, to be used as a framework for other projects.

## A note on Code extraction

To extract `bash` code from GitHub markdown, the following is helpful,

```bash
sudo apt install npm
sudo npm install -g codedown
cat README.md | codedown bash
```

## How to contribute (adapted from [Apress](https://github.com/apress))

1. Make sure you have a GitHub account.
2. Fork a repository.
3. Create a new branch on which to make your change, e.g. `git checkout -b my_code_contribution`
4. Commit your change. Include a commit message describing the correction. Please note that if your commit message is not clear, the correction will not be accepted.
5. Submit a pull request.

Thank you!
