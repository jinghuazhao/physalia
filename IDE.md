# IDE -- integrated development environment

[Git](https://git-scm.com/) comes with its own GUI as well as a shell, which has a Linux flavour to enable operations under Linux/Unix, Mac and Windows.

* [git gui](https://git-scm.com/docs/git-gui) and [gitk](https://git-scm.com/docs/gitk).
* [Atom](https://atom.io/).
* [GitHub Destkop](https://desktop.github.com/).
* [Visual Studio Code](https://code.visualstudio.com/).

IDEs such as [RStudio](https://www.rstudio.com/) and [Visual Studio Code](https://code.visualstudio.com/) are able to work with Git, but the following GUIs are purposely built.

## GitKraken

Hosted at [https://www.gitkraken.com/](https://www.gitkraken.com/) and made available with
```bash
sudo apt install libgnome-keyring-common
sudo apt install libgnome-keyring-dev
wget -qO- https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz | tar fvxz -
cd gitkraken
ln -s $PWD/gitkraken $HOME/bin/gitkraken
gitkraken &

```

## SmartGit

Hosted at [https://www.syntevo.com/smartgit/](https://www.syntevo.com/smartgit/) and made available with
```bash
wget -qO- https://www.syntevo.com/downloads/smartgit/smartgit-linux-18_1_4.tar.gz | tar fvxz -
cd smartgit
ln -s $PWD/bin/smartgit.sh $HOME/bin/smartgit.sh
smartgit.sh &
```

## Git-Cola

Hosted at [https://git-cola.github.io/](https://git-cola.github.io/) and made available with
```bash
sudo apt install git-cola
git-cola &
```
