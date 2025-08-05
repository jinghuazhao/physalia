# physalia

The purpose for this repository, named after the Physalia GWAS-course, <https://github.com/jinghuazhao/GWAS-course> when in preparation, was to record basic uses of GitHub as well as call for contributions to GitHub repositories.

## A summary of files

 **Menu item** | **File** | **Description**
 --------------|-----|---------------------------------------------------------------------------
 API | [api.md](api.md) | Command-line repository creation
 IDE | [IDE.md](IDE.md) | GUI for GitHub repository maintenance
 Notes | [Notes.md](Notes.md) | Important notes
 Slides | [slides.md](slides.md) | A showcase of Markdown slides
 Tests | [tests.md](tests.md) | Tests of MathJax and mermaid
 Hugging Face
 |[README.md](README.md) | this file
 |[csd3.sh](csd3.sh) | A package-building example
 |[setup.sh](setup.sh) | setup for a standard repository
 |[ssh.sh](ssh.sh) | setup for SSH
 |[docs.sh](docs.sh) | batch file for add/commit/push operations

See also GitHub-matters, <https://cambridge-ceu.github.io/GitHub-matters/>.

<img src="https://animaldiversity.org/collections/contributors/Grzimek_inverts/Hydrozoa/Physalia_physalis_polyp/medium.jpg" width="150" height="300" align="right">

## How to contribute 

(Adapted from [Apress](https://github.com/apress))

Efforts are highly welcome as a long-term project, via the following steps:

1. Make sure you have a GitHub account.
2. Fork a repository.
3. Create a new branch on which to make your change, e.g. `git checkout -b my_code_contribution`
4. Commit your change. Include a commit message describing the correction. Please note that if your commit message is not clear, the correction will not be accepted.
5. Submit a pull request.

See also [instructions to GDAL](https://github.com/OSGeo/gdal/blob/master/CONTRIBUTING.md).
Additional information is given in [Notes.md](Notes.md). 

### Ultimate-Neural-Network-Programming-with-Python/jhz

This exemplifies use of GitHub CLI, <https://cli.github.com/>.

```bash
module load ceuadmin/cli/2.76.2
gh auth login
gh auth status
gh repo fork OrangeAVA/Ultimate-Neural-Network-Programming-with-Python --org cambridge-ceu
cd Ultimate-Neural-Network-Programming-with-Python
git checkout -b jhz
# correct typos, modify file paths, rename model/att_net.py, ...
git push --set-upstream origin jhz
```

A pull request is made and the branch now merged into the master branch.

### TwoSampleMR/jhz

It appears you're seeking assistance with the formatting of section numbers in your document. Here's a revised version with corrected section numbering:

**Several steps are necessary:**

**1. Fork TwoSampleMR from <https://github.com/MRCIEU/TwoSampleMR>.**

**2. Clone the package locally, add a fork, add a branch, modify files, and build the web files:**

```bash
git clone https://github.com/MRCIEU/TwoSampleMR
cd TwoSampleMR
git remote -v
git remote add myfork https://github.com/cambridge-ceu/TwoSampleMR.git
git remote -v
git checkout -b jhz
git branch
git status
cp -r ../tests/man/figures man
cp -r ../tests/pkgdown/favicon pkgdown
mv index.md pkgdown
cp ../tests/README.Rmd .
Rscript -e 'knitr::knit("README.Rmd");library(pkgdown);build_site()'
```

*Note: In this step, we copy/replace files from the `tests/` directory created locally.*

**3. Add files:**

```bash
for f in .github .gitignore .Rbuildignore $(ls)# .Rinstignore
do
  echo adding ${f}
  git add ${f}
  git commit -m "${f}"
done
git add --force docs
git commit -m "docs"
git push myfork jhz
du -h --exclude .git --exclude docs
git log --oneline
```

**4. Create a pull request:**

- Navigate to <https://github.com/cambridge-ceu/TwoSampleMR>.
- Click `Compare & pull request`, which will redirect you to <https://github.com/MRCIEU/TwoSampleMR/pulls>, with the following parameters:
  - **Base repository:** MRCIEU/TwoSampleMR
  - **Base branch:** main (or the target branch, e.g., master)
  - **Head repository:** cambridge-ceu/TwoSampleMR
  - **Head branch:** jhz

**5. View the artist's impression:**

- Visit <https://cambridge-ceu.github.io/TwoSampleMR/> (with a logo) and compare it to <https://mrcieu.github.io/TwoSampleMR/>.
