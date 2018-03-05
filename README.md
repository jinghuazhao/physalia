# physalia

This is a template for what you would do with a newly created repository. It was named while the Physalia course, GWAS-course, in preparation.

The GRM.grm.gz can be reassembled via the following command,

zcat GRM.grm-pa{a..q}.gz | gzip -cf > GRM.grm.gz

Those parts were originally generated from the following,

gunzip < GRM.grm.gz | split - --bytes=50M GRM.grm-p; gzip GRM.grm.p*
