# physalia

This is a template for what you would do with a newly created repository. It was named while the Physalia course, GWAS-course, in preparation.

The GRM.grm.gz can be reassembled via the following command,
```
zcat GRM.grm-0{0..2}.gz | gzip -cf > GRM.grm.gz
```
where GRM.grm-0{0..2} were originally generated from,
```
export N=$(($(gunzip -c GRM.grm.gz | wc -l)/3+1))
gunzip < GRM.grm.gz | split - --numeric-suffixes --lines=$N GRM.grm-; gzip GRM.grm-*
```
