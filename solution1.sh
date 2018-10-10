#!/bin/bash

curl -O https://biodataprog.github.io/2018_programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz

du -h Ecoli-vs-Yersinia.BLASTP.tab.gz

# how big is the uncompressed file
gunzip Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab

# print out first 25

head -n 25 Ecoli-vs-Yersinia.BLASTP.tab

# print out the last 3

tail -n 3 Ecoli-vs-Yersinia.BLASTP.tab

# print out the number of lines

wc -l Ecoli-vs-Yersinia.BLASTP.tab

#!/bin/bash

curl -O https://biodataprog.github.io/2018_programming-intro/data/Nc3H.expr.tab

# this sorts but does not keep the header first
#sort -k6,6nr Nc3H.expr.tab > Nc3H.expr.sorted.tab

(head -n 1 Nc3H.expr.tab  && tail -n +2 Nc3H.expr.tab | sort -k6,6nr ) > Nc3H.expr.sorted.tab

#Print out a list of the top 10 most highly expressed genes based on FPKM.
head -n 11 Nc3H.expr.sorted.tab

#!/bin/bash

#curl -O https://biodataprog.github.io/2018_programming-intro/data/D_mel.63B12.gbk
#grep "     CDS" D_mel.63B12.gbk | wc -l

# OR
grep -c "     CDS" D_mel.63B12.gbk


cut -f3 Ecoli-vs-Yersinia.BLASTP.tab | grep -c "100\.0"

awk '$3 > 90 {print $1,$2,$3}' Ecoli-vs-Yersinia.BLASTP.tab | wc -l

