# physalia

A template for a newly created repository. It was named while the Physalia course, [GWAS-course](https://github.com/jinghuazhao/GWAS-course), in preparation.

It is currently used to provide information for [the paper to appear](2367.zip) on [*J Stat Soft*](https://www.jstatsoft.org/index), particularly the GRM and the [BLR example](BLR.zip).

Once the repository is downloaded, the GRM.grm.gz can be reassembled via the following command,
```
zcat GRM.grm-{0..4}.gz | gzip -cf > GRM.grm.gz
```
where GRM.grm-{0..4} were originally generated from,
```
export N=$(($(gunzip -c GRM.grm.gz | wc -l)/5+1))
gunzip < GRM.grm.gz | split - --lines=$N --numeric-suffixes --suffix-length=1 GRM.grm-
gzip GRM.grm-*
```

The Sweave version is [an rar file](jss2367.rar), whose format is described at [https://rarlab.com/](https://rarlab.com/).
